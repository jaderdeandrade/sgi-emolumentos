
unit unModulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, XTreeView, Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls,
  Grids, DBGrids, ImgList, SqlExpr, DBClient, Menus, FMTBcd, DB, Provider,
  ToolWin, DBXpress;

type
  TfmModulos = class(TForm)
    Paginas: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    p_usuario: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    trvModulos: TXTreeView;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    sdsUsuarios: TSQLDataSet;
    sdsUsuarioItens: TSQLDataSet;
    dsUsuariosLigacao: TDataSource;
    dspUsuarios: TDataSetProvider;
    cdsUsuarios: TClientDataSet;
    cdsUsuariosUSU_ID: TIntegerField;
    cdsUsuariosUSU_LOGIN: TStringField;
    cdsUsuariosUSU_SENHA: TStringField;
    cdsUsuariosUSU_DATA: TDateField;
    dsUsuarios: TDataSource;
    dsUsuariosItens: TDataSource;
    ImageList3: TImageList;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    cdsUsuariossdsUsuarioItens: TDataSetField;
    DBEdit_Login: TDBEdit;
    DBEdit_Senha: TDBEdit;
    edConfSenha: TEdit;
    DBEdit_Data: TDBEdit;
    cdsUsuariosItensUSU_ID: TIntegerField;
    cdsUsuariosItensUSU_SEQUENCIA: TIntegerField;
    cdsUsuariosItensUSU_MENUINDEX: TIntegerField;
    cdsUsuariosItensUSU_PARENT: TIntegerField;
    cdsUsuariosItensUSU_FORM: TStringField;
    cdsUsuariosItensUSU_OBJETO: TStringField;
    cdsUsuariosItensUSU_DESCRICAO: TStringField;
    cdsUsuariosItensUSU_PERMISSAO: TStringField;
    cdsUsuariosItens: TClientDataSet;
    procedure cdsUsuariosReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsUsuariosAfterPost(DataSet: TDataSet);
    procedure cdsUsuariosBeforePost(DataSet: TDataSet);
    procedure cdsUsuariosAfterInsert(DataSet: TDataSet);
    procedure PaginasChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure PaginasChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cdsUsuariosItensAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure trvModulosEditing(Sender: TObject; Node: TTreeNode;
      var AllowEdit: Boolean);
    procedure trvModulosStateClick(CheckState: TCheckState);
    procedure edConfSenhaExit(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    Estado: TDataSetState;
  public
    { Public declarations }
  end;

var
  fmModulos: TfmModulos;
  Seq: integer;

implementation

uses unitDmAcesso,UnitSesi,UnitdmConect, UnitDmSesi;

{$R *.dfm}

{ --------------- In�cio das fun��es de controle de permiss�es --------------- }

(*
 Adicionar registro na tabela que ir� armazenar os itens de cada usu�rio.
*)
procedure AdicionaRegistro(cdsItems: TClientDataSet; Id, MenuIndex, Codigo, Pai: Integer; Descricao, Objeto, Form: string);
begin
  with cdsItems do
  begin
    Append;
    FieldByName('USU_ID').AsInteger        := Id;        // C�digo do usu�rio.
    FieldByName('USU_SEQUENCIA').AsInteger := Codigo;    // Sequencial
    FieldByName('USU_MENUINDEX').AsInteger := MenuIndex; // C�digo do item de menu
    FieldByName('USU_PARENT').AsInteger    := Pai;       // Item "pai"
    FieldByName('USU_DESCRICAO').AsString  := Descricao; // Descri��o
    FieldByName('USU_OBJETO').AsString     := Objeto;    // Nome do objeto/componente
    FieldByName('USU_FORM').AsString       := Form;      // Nome do Formul�rio
    FieldByName('USU_PERMISSAO').AsString  := 'S';       // Permitido, Sim ou N�o.
    Post;
  end;  
end;
(*
 Elimina o "&" do Caption caso exista.
*)
function AcertaCaption(sCaption: String): String;
begin
  if Pos('&', sCaption) > 0 then
    Delete(sCaption, Pos('&', sCaption), 1);
  Result := sCaption;
end;
(*
 Retorna o "caption" ou "texto" de um Componente.
*)
function GetTextObj(Obj: TComponent): String;
begin
  Result := '';
  if (Obj is TButtonControl) or (Obj is TSpeedButton) or (Obj is TToolButton) then
    Result := AcertaCaption(TMostraProp(Obj).Caption);
  if (Obj is TMenuItem) then
    Result := AcertaCaption(TMenuItem(Obj).Caption);
end;
(*
 Retorna um item do Treeview a partir de seu Texto.
*)
function GetNodeFromText(Trv: TXTreeview; Text: string): TTreeNode;
var
  i: Integer;
  s: String;
begin
  // guarda par�metro Text.
  s := Text;
  // assume resultado como vazio.
  Result := nil;
  // para controlar o looping.
  i := 0;
  while (i < Trv.Items.Count) and (Result = nil) do
    // se achou, retorna o item.
    if Trv.Items[i].Text = Text then
      Result := Trv.Items[i]
    else // continua o looping.
      Inc(i);
  // se n�o encontrar, cria o item e retorna o objeto.
  if Result = nil then
  begin
    // incrementa a sequencia (id �nico do registro).
    Inc(Seq);
    // Retorna o item adicionado.
    Result := Trv.Items.Add(nil, Text);
    // Insere na tabela
    AdicionaRegistro(fmModulos.cdsUsuariosItens,
                     fmModulos.cdsUsuarios.FieldByName('USU_ID').AsInteger,
                     Seq, Result.AbsoluteIndex, -1, s, '','' );
  end;
end;
(*
 Retorna um item do Treeview a partir de seu �ndice.
*)
function GetNodeFromIndex(Trv: TXTreeview; Index: Integer): TTreeNode;
var
  Node: TTreeNode;
begin
  // pega o primeiro n� da �rvore.
  Node := Trv.Items[0];
  // faz um looping procurando qual n� tem o indice solicitado.
  while Node <> nil do
  begin
    // se encontrou, retorna e abandona o looping.
    if Integer(Node.Data) = Index then
    begin
      Result := Node;
      Break;
    end
    else // continua looping, passando para o pr�ximo n�.
      Node := Node.GetNext;
  end;
end;
(*
 Varre um TMenuItem e vai adicionando os items recursivamente.
*)
procedure AdicionaItem(pNode: TTreeNode; pMenuItem: TMenuItem; TrvModulos: TXTreeView);
var
  i, Pai: Integer;
  sCaption: String;
  Child: TTreeNode;
begin
  // Acerta o Caption.
  sCaption := GetTextObj(pMenuItem);
  // Verifica se n�o � um "separador"
  if (sCaption <> '-') then
  begin
    // Cria um Item.
    Child := TrvModulos.Items.AddChildObject(pNode, sCaption, pMenuItem);
    // se pNode vazio, indica que o item n�o possui um Pai.
    if pNode <> nil then
      Pai := pNode.AbsoluteIndex
    else
      Pai := -1;
    // incrementa a sequencia (id �nico do registro).
    Inc(Seq);
    // Insere na tabela
    AdicionaRegistro(fmModulos.cdsUsuariosItens,
                     fmModulos.cdsUsuarios.FieldByName('USU_ID').AsInteger,
                     Seq, Child.AbsoluteIndex, Pai, sCaption, pMenuItem.Name, pMenuItem.Owner.Name);
    // continua varrendo os itens.
    for i := 0 to pMenuItem.Count-1 do
      AdicionaItem(Child, pMenuItem.Items[i], TrvModulos);
  end;
end;
(*
 Adiciona outros controles, como exemplo Botoes, etc...
*)
procedure AdicionaOutrosControles(Trv: TXTreeview; pNode: TTreeNode; Controle: TControl);
var
  Pai: integer;
  Child: TTreeNode;
begin
  // incrementa a sequencia (id �nico do registro).
  Inc(Seq);
  // cria item.
  Child := Trv.Items.AddChildObject(pNode, GetTextObj(Controle), Controle);
  // se pNode vazio, indica que o item n�o possui um Pai.
  if pNode <> nil then
    Pai := pNode.AbsoluteIndex
  else
    Pai := -1;
  // Insere na tabela
  AdicionaRegistro(fmModulos.cdsUsuariosItens,
                   fmModulos.cdsUsuarios.FieldByName('USU_ID').AsInteger,
                   Seq, Child.AbsoluteIndex, Pai, GetTextObj(Controle),
                   Controle.Name, Controle.Owner.Name);
end;
(*
 Pega itens do formul�rio especificado, adiciona no treeview e grava na tabela.
*)
procedure GravaItems_e_PreencheTreeview(oFormMenu: TForm; trvModulos: TXTreeView);
var
  i, l: Integer;
  Node: TTreeNode;
begin
  try
    // limpa o Treeview.
    trvModulos.Items.Clear;
    // Sequencia �nica para cada registro (poder� ser utilizado um "generator" no banco de dados.
    Seq := 0;
    // Varre todos os componentes do Form
    with oFormMenu do
    begin
      for i := 0 to ComponentCount-1 do
      begin
        // Se for um MainMenu (Varre os items do menu)
        if Components[i] is TMainMenu then
         for l := 0 to TMenu(Components[i]).Items.Count-1 do
           AdicionaItem(GetNodeFromText(TrvModulos, 'Items do Menu'), TMenu(Components[i]).Items[l], trvModulos);
        // adiciona os outros controles.
        if Pos(UpperCase(Components[i].ClassName), OutrosObjetos) > 0 then
          AdicionaOutrosControles(TrvModulos, GetNodeFromText(TrvModulos, 'Outras Op��es'), TControl(Components[i]));
      end;
    end;
  finally
    trvModulos.FullCollapse;
  end;
end;
(*
 L� a tabela contendo as configura��es do usu�rio e preenche o Treeview.
*)
procedure PreencheTreeview(trvModulos: TXTreeView; cdsUsuarioItens: TClientDataSet);
var
  Pai, Tmp: TTreeNode;
begin
  try
    with trvModulos do
    begin
      // limpa.
      Items.Clear;
      // objetos auxiliares.
      Pai := nil;
      Tmp := nil;
      // vai para o primeiro registro.
      cdsUsuarioItens.First;
      while not cdsUsuarioItens.Eof do
      begin
        // se for "-1", � porque � item principal, n�o tem Pai.
        if cdsUsuarioItens.FieldByName('USU_PARENT').AsInteger = -1 then
          Pai := nil
        else  // ou, procura o pai.
          Pai := GetNodeFromIndex(trvModulos, cdsUsuarioItens.FieldByName('USU_PARENT').AsInteger);
        // se tem pai, devolve o filho para o pai.
        if Pai <> nil then
          Tmp := Items.AddChildObject(Pai, cdsUsuarioItens.FieldByName('USU_DESCRICAO').AsString, TObject(cdsUsuarioItens.FieldByName('USU_SEQUENCIA').AsInteger))
        else
          Tmp := Items.AddObject(nil, cdsUsuarioItens.FieldByName('USU_DESCRICAO').AsString, TObject(cdsUsuarioItens.FieldByName('USU_SEQUENCIA').AsInteger));
        // alternar imagens no treeview.
        if cdsUsuarioItens.FieldByName('USU_PERMISSAO').AsString = 'S' then
        begin
          Tmp.StateIndex := 2;
          Tmp.ImageIndex := 0;
          Tmp.SelectedIndex := 0;
        end
        else
        begin
          Tmp.StateIndex := 1;
          Tmp.ImageIndex := 1;
          Tmp.SelectedIndex := 1;
        end;
        // vai para o pr�ximo registro.
        cdsUsuarioItens.Next;
      end;
    end;
  finally
    trvModulos.FullCollapse;
    trvModulos.Items.EndUpdate;
  end;
end;

{ ---------------- Fim das fun��es de controle de permiss�es ----------------- }

procedure TfmModulos.cdsUsuariosReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  { Mostra erros, caso ocorram }
  ShowMessage(E.Message);
  { cancela a��o }
  Action := raAbort;
end;

procedure TfmModulos.cdsUsuariosAfterPost(DataSet: TDataSet);
begin
  { Confirma grava��o }
 // cdsUsuarios.ApplyUpdates(0);
  { Quando inclui um novo usu�rio, gera os itens na tabela detalhe }
  if (Estado = dsInsert) and (cdsUsuariosItens.IsEmpty) then
    GravaItems_E_PreencheTreeview(fmSGI, trvModulos);
end;


// criptografia da senha.
procedure TfmModulos.cdsUsuariosBeforePost(DataSet: TDataSet);
var
  Senha: String;
begin
  { compara senha }
  Senha := cdsUsuarios.FieldByName('USU_SENHA').AsString;
  if (Senha <> edConfSenha.Text) then
  begin
    ShowMessage('Senha n�o confere! Favor digit�-la novamente!');
    cdsUsuarios.FieldByName('USU_SENHA').Clear;
    edConfSenha.Clear;
    DBEdit_Senha.SetFocus;
    Abort;
  end;
  { guarda estado atual da tabela }
  Estado := DataSet.State;
  { atribui c�digo sequencial de um generator }
  if cdsUsuarios.State = dsInsert then
  begin
    cdsUsuarios.FieldByName('USU_ID').AsInteger := AutoInc('GEN_USUARIOS_ID', dmconect.SQLConnection1);
    cdsUsuarios.FieldByName('USU_SENHA').AsString := Cript(Senha, 'CRIPT');
  end;

end;

procedure TfmModulos.cdsUsuariosAfterInsert(DataSet: TDataSet);
begin
  { atribui data do dia como data default }
  cdsUsuarios.FieldByName('USU_DATA').AsDateTime := Date;
end;

procedure TfmModulos.PaginasChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  (* se tentar mudar para a p�gina do Treeview e n�o tiver nenhum usu�rio cadastrado n�o permitir *)
  if (Paginas.ActivePageIndex = 1) and (cdsUsuarios.IsEmpty) then
  begin
    AllowChange := False;
    Exit;
  end;
end;

procedure TfmModulos.PaginasChange(Sender: TObject);
begin
  (* quando trocar de p�gina e a p�gina for = 1, preenche o treeview e atualiza o nome do usu�rio *)
  if (Paginas.ActivePageIndex = 1) then
  begin
    p_usuario.Caption := 'Usu�rio: ' + cdsUsuarios.FieldByName('USU_LOGIN').AsString;
    PreencheTreeview(trvModulos, cdsUsuariosItens);
  end;
end;

procedure TfmModulos.SpeedButton1Click(Sender: TObject);
begin
  (* fechar treeview *)
  trvModulos.FullCollapse;
end;

procedure TfmModulos.SpeedButton2Click(Sender: TObject);
begin
  (* expandir treeview *)
  trvModulos.FullExpand;
end;

procedure TfmModulos.cdsUsuariosItensAfterPost(DataSet: TDataSet);
begin
  (* Confirma itens *)
  cdsUsuariosItens.ApplyUpdates(0);
end;

procedure TfmModulos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  (* mudar de campo com enter *)
  if Key = vk_Return then
    Perform(wm_NextDlgCtl,0,0);
end;

procedure TfmModulos.trvModulosEditing(Sender: TObject; Node: TTreeNode;
  var AllowEdit: Boolean);
begin
  (* N�o permitir edi��o do item do Treeview *)
  AllowEdit := False;
end;

procedure TfmModulos.trvModulosStateClick(CheckState: TCheckState);
var
  Codigo : Integer;
begin

  (*
   Aqui � feita a edi��o na tabela alterando o campo
   USU_PERMISSAO com "S" ou "N" de acordo com o CheckBox
   no item selecionado do Treeview.
  *)

  (* Se for um ponteiro v�lido, posiciona o registro e faz a edi��o *)
  if (trvModulos.Selected <> nil) then
  begin
    Codigo := Integer(trvModulos.Selected.Data);
    cdsUsuariosItens.Locate('USU_SEQUENCIA', Codigo, []);

    Caption := cdsUsuariosItens.FieldByName('USU_DESCRICAO').AsString;
    cdsUsuariosItens.Edit;
    // Se o item n�o estiver checado, marca "N" e troca a imagem para cadeado fechado
    if CheckState = csUnchecked then
    begin
      cdsUsuariosItens.FieldByName('USU_PERMISSAO').AsString := 'N';
      trvModulos.Selected.ImageIndex := 1;
      trvModulos.Selected.SelectedIndex := 1;
    end
    else // se o item estiver checado, marca "S" e troca a imagem para cadeado aberto
    begin
      cdsUsuariosItens.FieldByName('USU_PERMISSAO').AsString := 'S';
      trvModulos.Selected.ImageIndex := 0;
      trvModulos.Selected.SelectedIndex := 0;
    end;
    cdsUsuariosItens.ApplyUpdates(0);
  end;
end;

procedure TfmModulos.edConfSenhaExit(Sender: TObject);
begin
  if (dsUsuarios.State in [dsInsert, dsEdit]) and (DBEdit_Senha.Text <> edConfSenha.Text) then
  begin
    ShowMessage('Senha n�o confere! Favor digit�-la novamente!');
    cdsUsuarios.FieldByName('USU_SENHA').Clear;
    edConfSenha.Clear;
    DBEdit_Senha.SetFocus;
    Abort;
  end;
end;

procedure TfmModulos.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then
    DBEdit_Login.SetFocus;
end;

procedure TfmModulos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (not odd(cdsUsuarios.RecNo)) then // Se for impar
    begin
      // Se a celula n�o est� selecionada
      if (not (gdSelected in State)) then
        begin
          // Define uma cor de fundo
          DBGrid1.Canvas.Brush.Color := $00E6E6E6;
          DBGrid1.Canvas.FillRect(Rect); // pinta a c�lula
          // pinta o texto padr�o
          DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
        end;
    end;
end;

procedure TfmModulos.FormActivate(Sender: TObject);
begin
  cdsUsuarios.Active:= true;
  cdsUsuariosItens.Active:= true;
  dmAcesso.cdsUsuarios.Active:=true;
  dmAcesso.cdsUsuariosItens.Active:=true;
end;

procedure TfmModulos.Button1Click(Sender: TObject);
begin
  cdsUsuarios.Insert;

end;

procedure TfmModulos.Button2Click(Sender: TObject);
begin
  cdsUsuarios.ApplyUpdates(0);
  cdsUsuarios.Close;
  cdsUsuarios.CommandText:='select * from USUARIOS';
  cdsUsuarios.Open;
end;

procedure TfmModulos.Button3Click(Sender: TObject);
begin
 if messagedlg('ATEN��O:AS CONFIGURA��ES E USU�RIOS SER�O EXCLU�DOS!Confirma exclus�o do registro?',mtWarning, [mbyes,mbno],0)= mryes then
    begin
      dmAcesso.cdsUsuarios.Close;
      dmAcesso.cdsUsuarios.CommandText:='select * from USUARIOS where USU_ID ='+QuotedStr(cdsUsuarios.fieldbyname('USU_ID').AsString);
      dmAcesso.cdsUsuarios.Open;

      dmAcesso.cdsUsuarios.Delete;
      dmAcesso.cdsUsuarios.ApplyUpdates(0);
    end;
  cdsUsuarios.Close;
  cdsUsuarios.CommandText:='select * from USUARIOS';
  cdsUsuarios.Open;
end;

procedure TfmModulos.Button4Click(Sender: TObject);
begin
  close;
end;

end.
