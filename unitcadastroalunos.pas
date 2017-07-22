unit UnitCadastroAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FMTBcd, RxLookup, Provider, SqlExpr, DB,
  DBClient, Mask, DBCtrls;

type
  TfmCadastroAlunos = class(TForm)
    Panel1: TPanel;
    btGravar: TButton;
    btEditar: TButton;
    btCancela: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dscliente: TDataSource;
    cdscliente: TClientDataSet;
    cdsclienteIDCLIENTE: TIntegerField;
    cdsclienteNOME: TStringField;
    cdsclienteENDERECO: TStringField;
    cdsclienteBAIRRO: TStringField;
    cdsclienteCIDADE: TStringField;
    cdsclienteCEP: TStringField;
    cdsclienteESTADO: TStringField;
    cdsclienteESTADOCIVIL: TStringField;
    cdsclienteIDENTIDADE: TStringField;
    cdsclienteCPF: TStringField;
    cdsclienteCTPS: TStringField;
    cdsclienteDATANASCIMENTO: TDateField;
    cdsclienteCATEGORIATITULAR: TStringField;
    cdsclienteTELEFONE: TStringField;
    cdsclienteCELULAR: TStringField;
    cdsclienteEMAIL: TStringField;
    cdsclienteNOMEEMPRESA: TStringField;
    cdsclienteTELEFONEEMPRESA: TStringField;
    cdsclienteENDERECOEMPRESA: TStringField;
    cdsclienteBAIRROEMPRESA: TStringField;
    cdsclienteCIDADEEMPRESA: TStringField;
    cdsclienteCEPEMPRESA: TStringField;
    cdsclienteDEPENDENTE: TStringField;
    cdsclienteCOTATITULAR: TIntegerField;
    cdsclienteDATACADASTRO: TDateField;
    cdsclientePARENTESCO: TStringField;
    cdsclienteDATAATESTADO: TDateField;
    cdsclienteFOTO: TStringField;
    cdsclienteESTADOEMPRESA: TStringField;
    cdsclienteSEXO: TStringField;
    cdsclienteRESPONSAVEL: TStringField;
    sqlcliente: TSQLDataSet;
    sqlclienteIDCLIENTE: TIntegerField;
    sqlclienteNOME: TStringField;
    sqlclienteENDERECO: TStringField;
    sqlclienteBAIRRO: TStringField;
    sqlclienteCIDADE: TStringField;
    sqlclienteCEP: TStringField;
    sqlclienteESTADO: TStringField;
    sqlclienteESTADOCIVIL: TStringField;
    sqlclienteIDENTIDADE: TStringField;
    sqlclienteCPF: TStringField;
    sqlclienteCTPS: TStringField;
    sqlclienteDATANASCIMENTO: TDateField;
    sqlclienteCATEGORIATITULAR: TStringField;
    sqlclienteTELEFONE: TStringField;
    sqlclienteCELULAR: TStringField;
    sqlclienteEMAIL: TStringField;
    sqlclienteNOMEEMPRESA: TStringField;
    sqlclienteTELEFONEEMPRESA: TStringField;
    sqlclienteENDERECOEMPRESA: TStringField;
    sqlclienteBAIRROEMPRESA: TStringField;
    sqlclienteCIDADEEMPRESA: TStringField;
    sqlclienteCEPEMPRESA: TStringField;
    sqlclienteDEPENDENTE: TStringField;
    sqlclienteCOTATITULAR: TIntegerField;
    sqlclienteDATACADASTRO: TDateField;
    sqlclientePARENTESCO: TStringField;
    sqlclienteDATAATESTADO: TDateField;
    sqlclienteFOTO: TStringField;
    sqlclienteESTADOEMPRESA: TStringField;
    sqlclienteSEXO: TStringField;
    sqlclienteRESPONSAVEL: TStringField;
    dspcliente: TDataSetProvider;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
  IDTURMA: integer;
  procedure habilitacampos(x: boolean);
  Function VerificaCampos(DataSource : TDataSource) : Boolean;
    { Public declarations }
  end;

var
  fmCadastroAlunos: TfmCadastroAlunos;
  
implementation

uses UnitDmSesi, UnitTurma;

{$R *.dfm}

procedure TfmCadastroAlunos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmCadastroAlunos.FormActivate(Sender: TObject);
begin
  cdscliente.Open;
end;

procedure TfmCadastroAlunos.habilitacampos(x: boolean);
var
  count : integer;
begin
  for count:=0 to Pred(Self.ComponentCount) do
  begin
    if x = false then
      begin
        if Self.Components[count].ClassType = TDBEdit then
        (Self.Components[count] as TDBEdit).Enabled:= false;

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

        if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btGravar' then
          (Self.Components[count] as TButton).Enabled:= true;
        end;
      end;
  end;

end;

function TfmCadastroAlunos.VerificaCampos(
  DataSource: TDataSource): Boolean;
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

procedure TfmCadastroAlunos.btEditarClick(Sender: TObject);
begin
  habilitacampos(true);
  dmsesi.cdsalunos.Edit;
end;

procedure TfmCadastroAlunos.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfmCadastroAlunos.btGravarClick(Sender: TObject);
begin
  dmsesi.cdsalunosIDTURMA.AsInteger:=IDTURMA;
  if VerificaCampos(dmsesi.dsalunos) then
    begin
      dmsesi.cdsalunos.ApplyUpdates(0);
      habilitacampos(false);
    end;
  fmTurma.pesquisaaluno;
end;

end.
