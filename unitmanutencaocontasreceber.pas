unit UnitManutencaoContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Provider, DBClient, Mask, ToolEdit,
  CurrEdit, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, ComCtrls;

type
  TfmManutencaoContasReceber = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    edtNome: TEdit;
    edtCPFCNPJ: TEdit;
    edtCodigo: TEdit;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ceSaldo: TCurrencyEdit;
    ceReceber: TCurrencyEdit;
    ceDebito: TCurrencyEdit;
    sqlempresa: TSQLDataSet;
    cdsempresa: TClientDataSet;
    dspempresa: TDataSetProvider;
    dsempresa: TDataSource;
    sqlreceber: TSQLDataSet;
    cdsreceber: TClientDataSet;
    dspreceber: TDataSetProvider;
    dsreceber: TDataSource;
    sqlempresaIDCLIENTE: TIntegerField;
    sqlempresaNOME: TStringField;
    sqlempresaRAZAOSOCIAL: TStringField;
    sqlempresaRAMOATIVIDADE: TStringField;
    sqlempresaCONTATO: TStringField;
    sqlempresaCNPJCPF: TStringField;
    sqlempresaRGIE: TStringField;
    sqlempresaDATACADASTRO: TDateField;
    sqlempresaENDERECO: TStringField;
    sqlempresaBAIRRO: TStringField;
    sqlempresaCIDADE: TStringField;
    sqlempresaCEP: TStringField;
    sqlempresaESTADO: TStringField;
    sqlempresaTELEFONE: TStringField;
    sqlempresaFAX: TStringField;
    sqlempresaCELULAR: TStringField;
    sqlempresaEMAIL: TStringField;
    sqlempresaSITE: TStringField;
    sqlempresaOBS: TBlobField;
    sqlempresaATIVO: TStringField;
    cdsempresaIDCLIENTE: TIntegerField;
    cdsempresaNOME: TStringField;
    cdsempresaRAZAOSOCIAL: TStringField;
    cdsempresaRAMOATIVIDADE: TStringField;
    cdsempresaCONTATO: TStringField;
    cdsempresaCNPJCPF: TStringField;
    cdsempresaRGIE: TStringField;
    cdsempresaDATACADASTRO: TDateField;
    cdsempresaENDERECO: TStringField;
    cdsempresaBAIRRO: TStringField;
    cdsempresaCIDADE: TStringField;
    cdsempresaCEP: TStringField;
    cdsempresaESTADO: TStringField;
    cdsempresaTELEFONE: TStringField;
    cdsempresaFAX: TStringField;
    cdsempresaCELULAR: TStringField;
    cdsempresaEMAIL: TStringField;
    cdsempresaSITE: TStringField;
    cdsempresaOBS: TBlobField;
    cdsempresaATIVO: TStringField;
    sqlreceberID: TIntegerField;
    sqlreceberCLIENTE_IDCLIENTE: TIntegerField;
    sqlreceberDATA_EMISSAO: TDateField;
    sqlreceberDATA_VENCIMENTO: TDateField;
    sqlreceberDATA_BAIXA: TDateField;
    sqlreceberDESCRICAO: TStringField;
    sqlreceberDEBITO: TFMTBCDField;
    sqlreceberCREDITO: TFMTBCDField;
    sqlreceberATIVO: TStringField;
    cdsreceberID: TIntegerField;
    cdsreceberCLIENTE_IDCLIENTE: TIntegerField;
    cdsreceberDATA_EMISSAO: TDateField;
    cdsreceberDATA_VENCIMENTO: TDateField;
    cdsreceberDATA_BAIXA: TDateField;
    cdsreceberDESCRICAO: TStringField;
    cdsreceberDEBITO: TFMTBCDField;
    cdsreceberCREDITO: TFMTBCDField;
    cdsreceberATIVO: TStringField;
    cdsrecebersaldo: TFloatField;
    spreceber: TSQLStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dspreceberGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCPFCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure cdsreceberCalcFields(DataSet: TDataSet);
  private
    
    { Private declarations }
  public

   IDEMPRESA : integer;
   procedure totalizador;
   
   { Public declarations }
  end;

var
  fmManutencaoContasReceber: TfmManutencaoContasReceber;

implementation
   uses unitdmConect, UnitDmSesi, UnitConsultaClienteMantContReceber;
{$R *.dfm}

procedure TfmManutencaoContasReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TfmManutencaoContasReceber.SpeedButton1Click(Sender: TObject);
begin
  fmConsultaClienteManutContReceber:=TfmConsultaClienteManutContReceber.create(self);
  fmConsultaClienteManutContReceber.showmodal;
end;

procedure TfmManutencaoContasReceber.SpeedButton2Click(Sender: TObject);
begin
  fmConsultaClienteManutContReceber:=TfmConsultaClienteManutContReceber.create(self);
  fmConsultaClienteManutContReceber.showmodal;
end;

procedure TfmManutencaoContasReceber.SpeedButton3Click(Sender: TObject);
begin
  fmConsultaClienteManutContReceber:=TfmConsultaClienteManutContReceber.create(self);
  fmConsultaClienteManutContReceber.showmodal;
end;

procedure TfmManutencaoContasReceber.dspreceberGetTableName(
  Sender: TObject; DataSet: TDataSet; var TableName: String);
begin
  TableName:='CONTASRECEBER';
end;

procedure TfmManutencaoContasReceber.edtCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    begin
      cdsEmpresa.Close;
      cdsEmpresa.CommandText:='select * from CLIENTE  where (CLIENTE.ATIVO ='+QuotedStr('1')+') and ' +
                             ' (CLIENTE.IDCLIENTE like '+''''+'%'+edtCodigo.text+'%'+''')';
      cdsEmpresa.open;
      edtCodigo.Text:= cdsempresa.FieldByName('IDCLIENTE').AsString;
      edtNome.Text:= cdsempresa.FieldByName('NOME').AsString;
      edtCPFCNPJ.Text:= cdsempresa.FieldByName('CNPJCPF').AsString;
      IDEMPRESA:=cdsempresa.FieldByName('IDCLIENTE').AsInteger;
      cdsReceber.Close;
      cdsReceber.Params.ParamByName('empresa').AsInteger:=cdsempresa.FieldByName('IDCLIENTE').AsInteger;
      cdsReceber.Open;
      totalizador;
    end;
end;

procedure TfmManutencaoContasReceber.edtCPFCNPJKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    begin
      cdsEmpresa.Close;
      cdsempresa.CommandText:='select * from CLIENTE  where (CLIENTE.ATIVO ='+QuotedStr('1')+') and ' +
                             ' (CLIENTE.CNPJCPF like '+''''+'%'+edtCPFCNPJ.text+'%'+''')';
      cdsEmpresa.open;
      edtCodigo.Text:= cdsempresa.FieldByName('IDCLIENTE').AsString;
      edtNome.Text:= cdsempresa.FieldByName('NOME').AsString;
      edtCPFCNPJ.Text:= cdsempresa.FieldByName('CNPJCPF').AsString;
      IDEMPRESA:=cdsempresa.FieldByName('IDCLIENTE').AsInteger;
      cdsReceber.Close;
      cdsReceber.Params.ParamByName('empresa').AsInteger:=cdsempresa.FieldByName('IDCLIENTE').AsInteger;
      cdsReceber.Open;
      totalizador;
    end;
end;

procedure TfmManutencaoContasReceber.edtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    begin
      cdsEmpresa.Close;
      cdsEmpresa.CommandText:='Select * from CLIENTE where (CLIENTE.ATIVO ='+QuotedStr('1')+') and ' +
                             ' (CLIENTE.NOME like '+''''+'%'+edtNome.text+'%'+''')';
      cdsEmpresa.open;
      edtCodigo.Text:= cdsempresa.FieldByName('IDCLIENTE').AsString;
      edtNome.Text:= cdsempresa.FieldByName('NOME').AsString;
      edtCPFCNPJ.Text:= cdsempresa.FieldByName('CNPJCPF').AsString;
      IDEMPRESA:=cdsempresa.FieldByName('IDCLIENTE').AsInteger;
      cdsReceber.Close;
      cdsReceber.Params.ParamByName('empresa').AsInteger:=cdsempresa.FieldByName('IDCLIENTE').AsInteger;
      cdsReceber.Open;
      totalizador;
    end;
end;

procedure TfmManutencaoContasReceber.totalizador;
var
  credito,debito,saldo : real;
begin
  credito:=0;
  debito:=0;
  saldo:=0;
  cdsReceber.First;
  while not cdsReceber.Eof do
    begin
      if cdsReceber.FieldByName('ATIVO').AsString = '1' then
        begin
          credito:= credito + cdsReceber.FieldByName('CREDITO').AsFloat;
          debito:= debito + cdsReceber.FieldByName('DEBITO').AsFloat;
        end;
    cdsReceber.Next;
    end;
  saldo:= debito - credito;
  ceDebito.Text:=FloatToStr(credito);
  ceReceber.Text:=FloatToStr(debito);
  ceSaldo.Text:=FloatToStr(saldo);
end;

procedure TfmManutencaoContasReceber.Button3Click(Sender: TObject);
begin
  if messagedlg('ATENÇÃO! Confirma exclusão do registro?',mtWarning, [mbyes,mbno],0)= mryes then
    begin
      spReceber.ParamByName('IDCONTASRECEBER').AsInteger:= cdsReceber.FieldByName('ID').AsInteger;
      spReceber.ExecProc;
      cdsReceber.Close;
      cdsReceber.Params.ParamByName('empresa').AsInteger:=IDEMPRESA;
      cdsReceber.Open;
      totalizador;
    end;
end;

procedure TfmManutencaoContasReceber.Button4Click(Sender: TObject);
begin
  if messagedlg('ATENÇÃO! Confirma Edição do registro?',mtWarning, [mbyes,mbno],0)= mryes then
    begin
      cdsreceber.Edit;
      Button1.Enabled:=true;
    end;
end;

procedure TfmManutencaoContasReceber.Button1Click(Sender: TObject);
begin
  if messagedlg('ATENÇÃO! Confirma Alteração do registro?',mtWarning, [mbyes,mbno],0)= mryes then
    begin
      cdsreceber.ApplyUpdates(0);
      totalizador;
      Button1.Enabled:=false;
     end;
end;

procedure TfmManutencaoContasReceber.Button5Click(Sender: TObject);
begin
  close;
end;

procedure TfmManutencaoContasReceber.cdsreceberCalcFields(
  DataSet: TDataSet);
begin
  cdsReceber.FieldByName('SALDO').AsFloat:= cdsReceber.FieldByName('DEBITO').AsFloat -
  cdsReceber.FieldByName('CREDITO').AsFloat;
end;

end.
