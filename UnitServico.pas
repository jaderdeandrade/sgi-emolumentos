unit UnitServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, FMTBcd, SqlExpr,
  Provider, DB, DBClient, Mask, Buttons;

type
  TfmServico = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    btGravar: TButton;
    btEditar: TButton;
    btInserir: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btGravarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    Function VerificaCampos(DataSource : TDataSource) : Boolean;
    procedure habilitacampos(x: boolean);  
    { Public declarations }
  end;

var
  fmServico: TfmServico;

implementation

uses UnitDmSesi,UnitdmConect,UnitMostraServico, UnitNossoServicos;

{$R *.dfm}

procedure TfmServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmServico.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfmServico.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TfmServico.btGravarClick(Sender: TObject);
begin
  if VerificaCampos(dmsesi.dsservico) then
    begin
      dmsesi.cdsServico.ApplyUpdates(0);
      habilitacampos(false);
      btInserir.Enabled:=True;
       end;
  fmMostraServico.cdsServico.Close;
  fmMostraServico.cdsServico.CommandText:='select * from SERVICO';
  fmMostraServico.cdsServico.Open;
end;

procedure TfmServico.habilitacampos(x: boolean);
var
  count : integer;
begin
  for count:=0 to Pred(Self.ComponentCount) do
  begin
    if x = false then
      begin
        if Self.Components[count].ClassType = TDBEdit then
        (Self.Components[count] as TDBEdit).Enabled:= false;

        if Self.Components[count].ClassType = TDBLookupComboBox then
        (Self.Components[count] as TDBLookupComboBox).Enabled:= false;


        if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btGravar' then
          (Self.Components[count] as TButton).Enabled:= false;
        end;
      end
    else
    if x = true then
      begin
        if Self.Components[count].ClassType = TDBEdit then
        (Self.Components[count] as TDBEdit).Enabled:= true;

        if Self.Components[count].ClassType = TDBLookupComboBox then
        (Self.Components[count] as TDBLookupComboBox).Enabled:= true;

        if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btGravar' then
          (Self.Components[count] as TButton).Enabled:= true;
        end;

      end;
  end;

end;

function TfmServico.VerificaCampos(DataSource: TDataSource): Boolean;
Var
  C : Byte;
begin                                                             // A rotina ao lado faz um laço em todos os fields da
   Result := True;                                                // tabela  e procura por fields que sejam
   With(DataSource.DataSet)Do                                     // requeridos pelo sistema e estejam em branco.
   Begin                                                          // Se houver algum requerido em branco, então o sistema
      For C := 0 To FieldCount -1 Do                              // emitirá uma mensagem sobre o ocorrido e colocará o
      Begin                                                       // focus "SetFocus" no campo não preenchido;
         If((Fields[C].Tag=1))And(Trim(Fields[C].Text)='')Then
         Begin
            Result := False;
            MessageBeep(64);
            MessageDlg('Preencha o campo "'+Fields[C].DisplayLabel+'".',mtInformation,[mbOk],0);
            Fields[C].FocusControl;
            Break;
         End;
      End;
   End;

end;

procedure TfmServico.btEditarClick(Sender: TObject);
begin
  dmsesi.cdsServico.Edit;
  habilitacampos(true);
end;

procedure TfmServico.btInserirClick(Sender: TObject);
begin
 dmsesi.cdsServico.Insert;
 habilitacampos(true);
 btInserir.Enabled:=False;

end;

end.
