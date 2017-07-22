unit UnitRelatorioContaReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, ComCtrls, FMTBcd, SqlExpr,
  DB, DBClient, Provider, Buttons, RLReport, RLXLSFilter, RLPDFFilter,
  RLHTMLFilter, RLFilters, RLRichFilter, RxLookup;

type
  TfmRelatorioContasReceber = class(TForm)
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand3: TRLBand;
    cdsReceber: TClientDataSet;
    dspReceber: TDataSetProvider;
    dsReceber: TDataSource;
    sqlReceber: TSQLDataSet;
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDraw3: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLDraw4: TRLDraw;
    RLLabel10: TRLLabel;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLDBText8: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel14: TRLLabel;
    RLDraw1: TRLDraw;
    RLTotalGeral: TRLLabel;
    RLTotal: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel16: TRLLabel;
    DateEdit1: TDateEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label4: TLabel;
    RxDBLookupomboEmpresa: TRxDBLookupCombo;
    Label5: TLabel;
    btimprimir: TSpeedButton;
    Button1: TButton;
    sqlReceberID: TIntegerField;
    sqlReceberCLIENTE_IDCLIENTE: TIntegerField;
    sqlReceberDATA_EMISSAO: TDateField;
    sqlReceberDATA_VENCIMENTO: TDateField;
    sqlReceberDATA_BAIXA: TDateField;
    sqlReceberDESCRICAO: TStringField;
    sqlReceberDEBITO: TFMTBCDField;
    sqlReceberCREDITO: TFMTBCDField;
    sqlReceberATIVO: TStringField;
    sqlReceberIDCLIENTE: TIntegerField;
    sqlReceberNOME: TStringField;
    sqlReceberRAZAOSOCIAL: TStringField;
    sqlReceberRAMOATIVIDADE: TStringField;
    sqlReceberCONTATO: TStringField;
    sqlReceberCNPJCPF: TStringField;
    sqlReceberRGIE: TStringField;
    sqlReceberDATACADASTRO: TDateField;
    sqlReceberENDERECO: TStringField;
    sqlReceberBAIRRO: TStringField;
    sqlReceberCIDADE: TStringField;
    sqlReceberCEP: TStringField;
    sqlReceberESTADO: TStringField;
    sqlReceberTELEFONE: TStringField;
    sqlReceberFAX: TStringField;
    sqlReceberCELULAR: TStringField;
    sqlReceberEMAIL: TStringField;
    sqlReceberSITE: TStringField;
    sqlReceberOBS: TBlobField;
    sqlReceberATIVO_1: TStringField;
    cdsReceberID: TIntegerField;
    cdsReceberCLIENTE_IDCLIENTE: TIntegerField;
    cdsReceberDATA_EMISSAO: TDateField;
    cdsReceberDATA_VENCIMENTO: TDateField;
    cdsReceberDATA_BAIXA: TDateField;
    cdsReceberDESCRICAO: TStringField;
    cdsReceberDEBITO: TFMTBCDField;
    cdsReceberCREDITO: TFMTBCDField;
    cdsReceberATIVO: TStringField;
    cdsReceberIDCLIENTE: TIntegerField;
    cdsReceberNOME: TStringField;
    cdsReceberRAZAOSOCIAL: TStringField;
    cdsReceberRAMOATIVIDADE: TStringField;
    cdsReceberCONTATO: TStringField;
    cdsReceberCNPJCPF: TStringField;
    cdsReceberRGIE: TStringField;
    cdsReceberDATACADASTRO: TDateField;
    cdsReceberENDERECO: TStringField;
    cdsReceberBAIRRO: TStringField;
    cdsReceberCIDADE: TStringField;
    cdsReceberCEP: TStringField;
    cdsReceberESTADO: TStringField;
    cdsReceberTELEFONE: TStringField;
    cdsReceberFAX: TStringField;
    cdsReceberCELULAR: TStringField;
    cdsReceberEMAIL: TStringField;
    cdsReceberSITE: TStringField;
    cdsReceberOBS: TBlobField;
    cdsReceberATIVO_1: TStringField;
    cdsRecebersaldo: TFloatField;
    dscliente: TDataSource;
    cdscliente: TClientDataSet;
    cdsclienteIDCLIENTE: TIntegerField;
    cdsclienteNOME: TStringField;
    cdsclienteRAZAOSOCIAL: TStringField;
    cdsclienteRAMOATIVIDADE: TStringField;
    cdsclienteCONTATO: TStringField;
    cdsclienteCNPJCPF: TStringField;
    cdsclienteRGIE: TStringField;
    cdsclienteDATACADASTRO: TDateField;
    cdsclienteENDERECO: TStringField;
    cdsclienteBAIRRO: TStringField;
    cdsclienteCIDADE: TStringField;
    cdsclienteCEP: TStringField;
    cdsclienteESTADO: TStringField;
    cdsclienteTELEFONE: TStringField;
    cdsclienteFAX: TStringField;
    cdsclienteCELULAR: TStringField;
    cdsclienteEMAIL: TStringField;
    cdsclienteSITE: TStringField;
    cdsclienteOBS: TBlobField;
    cdsclienteATIVO: TStringField;
    sqlcliente: TSQLDataSet;
    sqlclienteIDCLIENTE: TIntegerField;
    sqlclienteNOME: TStringField;
    sqlclienteRAZAOSOCIAL: TStringField;
    sqlclienteRAMOATIVIDADE: TStringField;
    sqlclienteCONTATO: TStringField;
    sqlclienteCNPJCPF: TStringField;
    sqlclienteRGIE: TStringField;
    sqlclienteDATACADASTRO: TDateField;
    sqlclienteENDERECO: TStringField;
    sqlclienteBAIRRO: TStringField;
    sqlclienteCIDADE: TStringField;
    sqlclienteCEP: TStringField;
    sqlclienteESTADO: TStringField;
    sqlclienteTELEFONE: TStringField;
    sqlclienteFAX: TStringField;
    sqlclienteCELULAR: TStringField;
    sqlclienteEMAIL: TStringField;
    sqlclienteSITE: TStringField;
    sqlclienteOBS: TBlobField;
    sqlclienteATIVO: TStringField;
    dspcliente: TDataSetProvider;
    RLReport2: TRLReport;
    RLBand8: TRLBand;
    RLLabel31: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel32: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLBand5: TRLBand;
    RLDBText14: TRLDBText;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel19: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel29: TRLLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RLDraw5: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure btimprimirClick(Sender: TObject);
    procedure cdsReceberCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    procedure totaliza;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelatorioContasReceber: TfmRelatorioContasReceber;
  saldo : real;
implementation
 uses UnitdmConect;
{$R *.dfm}

procedure TfmRelatorioContasReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TfmRelatorioContasReceber.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfmRelatorioContasReceber.btimprimirClick(Sender: TObject);
var
  data1, data2 : Tdate;
begin
  data1:= StrtoDate(DateEdit1.Text);
  data2:= StrtoDate(DateEdit2.Text);
  //converta a data no padrao americano
  ShortDateFormat:='mm/dd/YYYY';
  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);
  if (RxDBLookupomboEmpresa.Text = '[TODOS]')then
     begin
      cdsReceber.Close;
      cdsReceber.CommandText:='select contasreceber.id,contasreceber.cliente_idcliente, '+
                     ' contasreceber.data_emissao,contasreceber.data_vencimento,'+
                     ' contasreceber.data_baixa,contasreceber.descricao, '+
                     ' contasreceber.debito, contasreceber.credito, '+
                     ' contasreceber.ativo, cliente.idcliente, cliente.nome,'+
                     ' cliente.razaosocial, cliente.ramoatividade,'+
                     ' cliente.contato, cliente.cnpjcpf, cliente.rgie,'+
                     ' cliente.datacadastro, cliente.endereco, cliente.bairro,'+
                     ' cliente.cidade, cliente.cep, cliente.estado, '+
                     ' cliente.telefone, cliente.fax, cliente.celular,'+
                     ' cliente.email, cliente.site, cliente.obs, cliente.ativo '+
                     ' from cliente inner join contasreceber on '+
                     ' (cliente.idcliente = contasreceber.cliente_idcliente) '+
                     ' and (contasreceber.data_vencimento between '+char(39)+DateEdit1.Text+char(39)+
                     ' and ' +char(39)+DateEdit2.Text+char(39)+ ') order by cliente.idcliente';
      cdsReceber.Open;
  end
  else
  if (RxDBLookupomboEmpresa.Text <> '[TODOS]')then
     begin
        cdsReceber.Close;
        cdsReceber.CommandText:='select contasreceber.id,contasreceber.cliente_idcliente, '+
                       ' contasreceber.data_emissao,contasreceber.data_vencimento,'+
                       ' contasreceber.data_baixa,contasreceber.descricao, '+
                       ' contasreceber.debito, contasreceber.credito, '+
                       ' contasreceber.ativo, cliente.idcliente, cliente.nome,'+
                       ' cliente.razaosocial, cliente.ramoatividade,'+
                       ' cliente.contato, cliente.cnpjcpf, cliente.rgie,'+
                       ' cliente.datacadastro, cliente.endereco, cliente.bairro,'+
                       ' cliente.cidade, cliente.cep, cliente.estado, '+
                       ' cliente.telefone, cliente.fax, cliente.celular,'+
                       ' cliente.email, cliente.site, cliente.obs, cliente.ativo '+
                       ' from cliente inner join contasreceber on '+
                       ' (cliente.idcliente = contasreceber.cliente_idcliente) '+
                       ' and (cliente.idcliente = '+QuotedStr(inttostr(cdsclienteIDCLIENTE.AsInteger))+')'+
                       ' and (contasreceber.data_vencimento between '+char(39)+DateEdit1.Text+char(39)+
                       ' and ' +char(39)+DateEdit2.Text+char(39)+ ') order by cliente.idcliente';
        cdsReceber.Open;
     end;
  ShortDateFormat:='dd/mm/YYYY';
  totaliza;
  RLTotal.Caption:= FormatFloat('###,###,##0.00',saldo);
  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);
  if RadioButton2.Checked = true then
    begin
      RLReport2.PreviewModal;
    end;
  if RadioButton1.Checked = true then
    begin
      RLReport1.PreviewModal;
    end;
end;


procedure TfmRelatorioContasReceber.cdsReceberCalcFields(
  DataSet: TDataSet);
begin
  cdsReceber.FieldByName('SALDO').AsFloat:= cdsReceber.FieldByName('DEBITO').AsFloat -
  cdsReceber.FieldByName('CREDITO').AsFloat;
end;

procedure TfmRelatorioContasReceber.FormActivate(Sender: TObject);
begin
  cdscliente.Active:=true;
end;

procedure TfmRelatorioContasReceber.totaliza;
begin
  saldo:=0;
  cdsReceber.First;
  while not cdsReceber.Eof do
    begin
      if cdsReceber.FieldByName('ATIVO').AsString = '1' then
        begin
          saldo:= saldo + cdsReceber.FieldByName('SALDO').AsFloat;
        end;
    cdsReceber.Next;
    end;
end;
end.
