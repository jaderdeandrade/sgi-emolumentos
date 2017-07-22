unit unLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls,IniFiles,DB;

type
  TfmLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label2: TLabel;
    Label1: TLabel;
    edLogin: TEdit;
    edSenha: TEdit;
    BT_OK: TButton;
    Button2: TButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edSenhaChange(Sender: TObject);
    procedure edLoginEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edLoginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BT_OKClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    Tentativas: Integer;
  public
   
    { Public declarations }
  end;

var
  fmLogin: TfmLogin;

implementation

uses UnitDmAcesso,UnitdmConect, ConvUtils,UnitSesi;

{$R *.dfm}

procedure TfmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //  para tirar o som de apito de mudança de campo com enter
  if key = #13 then
    key := #0;
end;

procedure TfmLogin.edSenhaChange(Sender: TObject);
begin
  BT_OK.Enabled := ((edLogin.Text <> '') and (edSenha.Text <> ''));
end;

procedure TfmLogin.edLoginEnter(Sender: TObject);
begin
  TEdit(Sender).Clear;
end;

procedure TfmLogin.FormShow(Sender: TObject);
begin
  Tentativas := 0;
end;

procedure TfmLogin.edLoginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Return then
    edSenha.SetFocus;
end;

procedure TfmLogin.edSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_Return) and (BT_OK.Enabled) then
    BT_OK.Click;
end;

procedure TfmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  ShowMessage('Você deve informar Login e Senha para acessar o Sistema!');
  CanClose := False;
end;

procedure TfmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action := CaFree;
end;

procedure TfmLogin.FormActivate(Sender: TObject);
var
 data:TIniFile;
 path2: string;
begin
{  dmAcesso.cdsUsuarios.Active:=true;
  dmAcesso.cdsUsuariosItens.Active:=true;
  try
    data:= TiniFile.Create('c:\SGI\worker.ini');
   // path:=Data.ReadString('DEP','DK','');
    path2:=Data.ReadString('Dist','TD','');
    if path2 = '' then
      begin
        frmInformacao:=TfrmInformacao.Create(Self);
        frmInformacao.ShowModal;
      end
   finally
     Data.Free;
     end;   }
 end;


procedure TfmLogin.BT_OKClick(Sender: TObject);
var
 senha : string;
begin
// Controle número de tentativas de acesso ao sistema.
  Inc(Tentativas);
  if Tentativas > 3 then
  begin
    ShowMessage('Número de tentativas esgotado! Consulte o Administrador do Sistema...');
    Application.Terminate;
  end;
  with dmAcesso do
  begin
    // cdsUsuarios.Close;
    cdsUsuarios.Close;
    cdsUsuarios.CommandText := 'select * from USUARIOS where USU_LOGIN = ' + QuotedStr(edLogin.Text);
    cdsUsuarios.Open;
    senha:=Trim(Cript(cdsUsuarios.FieldByName('USU_SENHA').AsString, 'DESCRIPT'));
    fmSGI.USUARIO:= cdsUsuarios.FieldByName('USU_LOGIN').AsString;
    // verifica se encontrou o Login.
    if cdsUsuarios.IsEmpty then
    begin
      ShowMessage('Login não cadastrado! Contate o Administrador do Sistema...');
      edLogin.SetFocus;
      fmSGI.USUARIO:='';
      Exit;
    end;
    // verifica se a senha está correta.
    if edSenha.Text <> senha then
    begin
      ShowMessage('Senha Incorreta, tente novamente!');
      edSenha.SetFocus;
      fmSGI.USUARIO:='';
      Exit;
    end;
    { configura as permissões do usuário }
  //  cdsUsuarios.Open;

    cdsUsuariosItens.Close;
    cdsUsuariosItens.CommandText := 'select * from  USUARIOITENS where USU_ID = ' + QuotedStr(dmAcesso.cdsUsuarios.fieldbyname('USU_ID').AsString);
    cdsUsuariosItens.Open;
    if not dmAcesso.cdsUsuariosItens.IsEmpty then
    begin
      with cdsUsuariosItens do
      begin
        First;
        while not EOF do
        begin
          ConfiguraMenu(Application.MainForm, FieldByName('USU_OBJETO').AsString, FieldByName('USU_PERMISSAO').AsString);
          Next;
        end;
      end;
    end;
    // se validou OK, não executa o evento OnCloseQuery.
    fmLogin.OnCloseQuery := nil;
    // Fecha o form de senha.
    Close;
  end;

end;

procedure TfmLogin.Button2Click(Sender: TObject);
begin
  // se for sair, não executa evento OnCloseQuery.
  fmLogin.OnCloseQuery := nil;
  // Fecha aplicação.
  Application.Terminate;
end;

end.
