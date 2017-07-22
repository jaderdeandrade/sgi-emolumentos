unit UnitImprimeRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, FMTBcd, DB, Provider, DBClient,
  SqlExpr, RLReport, RLXLSFilter, RLPDFFilter, RLHTMLFilter, RLFilters,
  RLRichFilter, RLDraftFilter;

type
  TfmImprimeRecibo = class(TForm)
    sqlContaReceber: TSQLDataSet;
    cdsContaReceber: TClientDataSet;
    dspContaReceber: TDataSetProvider;
    dsContaReceber: TDataSource;
    recibo: TRLReport;
    RLBand5: TRLBand;
    toperacao: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw3: TRLDraw;
    RLBand4: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLBand2: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    rlRAZAOSOCIAL: TRLLabel;
    rlENDERECO: TRLLabel;
    rlBAIRRO: TRLLabel;
    rlCEP: TRLLabel;
    rlCIDADE: TRLLabel;
    rlESTADO: TRLLabel;
    rlEXTENSO: TRLLabel;
    RLBand3: TRLBand;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLLabel5: TRLLabel;
    RLLabel19: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel15: TRLLabel;
    rlTOTAL: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    rgRecibo: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    dsParametro: TDataSource;
    dspParametro: TDataSetProvider;
    cdsParametro: TClientDataSet;
    cdsParametroID: TIntegerField;
    cdsParametroNOME: TStringField;
    cdsParametroCNPJ: TStringField;
    cdsParametroENDERECO: TStringField;
    cdsParametroBAIRRO: TStringField;
    cdsParametroCEP: TStringField;
    cdsParametroCIDADE: TStringField;
    cdsParametroESTADO: TStringField;
    cdsParametroTELEFONE: TStringField;
    cdsParametroFAX: TStringField;
    cdsParametroEMAIL: TStringField;
    cdsParametroSITE: TStringField;
    cdsParametroLOGOMARCA: TStringField;
    sqlParametro: TSQLDataSet;
    sqlParametroID: TIntegerField;
    sqlParametroNOME: TStringField;
    sqlParametroCNPJ: TStringField;
    sqlParametroENDERECO: TStringField;
    sqlParametroBAIRRO: TStringField;
    sqlParametroCEP: TStringField;
    sqlParametroCIDADE: TStringField;
    sqlParametroESTADO: TStringField;
    sqlParametroTELEFONE: TStringField;
    sqlParametroFAX: TStringField;
    sqlParametroEMAIL: TStringField;
    sqlParametroSITE: TStringField;
    sqlParametroLOGOMARCA: TStringField;
    sqlContaReceberID: TIntegerField;
    sqlContaReceberCLIENTE_IDCLIENTE: TIntegerField;
    sqlContaReceberDATA_EMISSAO: TDateField;
    sqlContaReceberDATA_VENCIMENTO: TDateField;
    sqlContaReceberDATA_BAIXA: TDateField;
    sqlContaReceberDESCRICAO: TStringField;
    sqlContaReceberDEBITO: TFMTBCDField;
    sqlContaReceberCREDITO: TFMTBCDField;
    sqlContaReceberATIVO: TStringField;
    sqlContaReceberIDCLIENTE: TIntegerField;
    sqlContaReceberNOME: TStringField;
    sqlContaReceberENDERECO: TStringField;
    sqlContaReceberBAIRRO: TStringField;
    sqlContaReceberCIDADE: TStringField;
    sqlContaReceberCEP: TStringField;
    sqlContaReceberESTADO: TStringField;
    sqlContaReceberRGIE: TStringField;
    sqlContaReceberCNPJCPF: TStringField;
    cdsContaReceberID: TIntegerField;
    cdsContaReceberCLIENTE_IDCLIENTE: TIntegerField;
    cdsContaReceberDATA_EMISSAO: TDateField;
    cdsContaReceberDATA_VENCIMENTO: TDateField;
    cdsContaReceberDATA_BAIXA: TDateField;
    cdsContaReceberDESCRICAO: TStringField;
    cdsContaReceberDEBITO: TFMTBCDField;
    cdsContaReceberCREDITO: TFMTBCDField;
    cdsContaReceberATIVO: TStringField;
    cdsContaReceberIDCLIENTE: TIntegerField;
    cdsContaReceberNOME: TStringField;
    cdsContaReceberENDERECO: TStringField;
    cdsContaReceberBAIRRO: TStringField;
    cdsContaReceberCIDADE: TStringField;
    cdsContaReceberCEP: TStringField;
    cdsContaReceberESTADO: TStringField;
    cdsContaReceberRGIE: TStringField;
    cdsContaReceberCNPJCPF: TStringField;
    cdsContaReceberSALDO: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cdsContaReceberCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
  IDCLIENTE: integer;
  IDRECEBER: integer;
  procedure totalizador;
    { Public declarations }
  end;

var
  fmImprimeRecibo: TfmImprimeRecibo;
  saldo : real;
implementation
    uses UnitDmSesi,Extensos, UnitdmConect;
{$R *.dfm}

procedure TfmImprimeRecibo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmImprimeRecibo.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfmImprimeRecibo.Button1Click(Sender: TObject);
var
  valor : string;
  f:TextFile;
  s: string;
begin
// imprime todos os registros da referente empresa
  if rgRecibo.ItemIndex = 0 then
    begin
      cdsContaReceber.Close;
      cdsContaReceber.CommandText:='select contasreceber.id,'+
      ' contasreceber.cliente_idcliente, contasreceber.data_emissao,'+
      ' contasreceber.data_vencimento, contasreceber.data_baixa,'+
      ' contasreceber.descricao, contasreceber.debito,' +
      ' contasreceber.credito, contasreceber.ativo,'+
      ' cliente.idcliente, cliente.nome, cliente.endereco, '+
      ' cliente.bairro, cliente.cidade, cliente.cep,' +
      ' cliente.estado, cliente.rgie, cliente.cnpjcpf '+
      ' from cliente inner join contasreceber on (cliente.idcliente = contasreceber.cliente_idcliente) '+
      ' where ((contasreceber.ativo = '+QuotedStr('1')+'))' +
      ' and (cliente.idcliente='+QuotedStr(IntToStr(IDCLIENTE))+')';
      cdsContaReceber.Open;
      totalizador;
      rlEXTENSO.Caption:=Extenso(saldo);
      str(saldo:5:2,valor);
      rlTOTAL.Caption:='R$ '+ valor;
      recibo.PreviewModal;
    end;
// imprime somente um registro referente a empresa
  if rgRecibo.ItemIndex = 1 then
    begin
      cdsContaReceber.Close;
      cdsContaReceber.CommandText:='select contasreceber.id,'+
      ' contasreceber.cliente_idcliente, contasreceber.data_emissao,'+
      ' contasreceber.data_vencimento, contasreceber.data_baixa,'+
      ' contasreceber.descricao, contasreceber.debito,' +
      ' contasreceber.credito, contasreceber.ativo,'+
      ' cliente.idcliente, cliente.nome, cliente.endereco, '+
      ' cliente.bairro, cliente.cidade, cliente.cep,' +
      ' cliente.estado, cliente.rgie, cliente.cnpjcpf '+
      ' from cliente inner join contasreceber on (cliente.idcliente = contasreceber.cliente_idcliente) '+
      ' where ((contasreceber.ativo = '+QuotedStr('1')+'))' +
      ' and (contasreceber.id='+QuotedStr(IntToStr(IDRECEBER))+')';
      cdsContaReceber.Open;
      totalizador;
      rlEXTENSO.Caption:=Extenso(saldo);
      str(saldo:5:2,valor);
      rlTOTAL.Caption:='R$ '+ valor;
      cdsParametro.Open;
      recibo.PreviewModal;
    end;

end;

procedure TfmImprimeRecibo.cdsContaReceberCalcFields(DataSet: TDataSet);
begin
  cdsContaReceber.FieldByName('SALDO').AsFloat:=
          cdsContaReceber.FieldByName('DEBITO').AsFloat -
          cdsContaReceber.FieldByName('CREDITO').AsFloat;
end;

procedure TfmImprimeRecibo.totalizador;
var
  credito,debito: real;
begin
  credito:=0;
  debito:=0;
  saldo:=0;
  cdsContaReceber.First;
  while not cdsContaReceber.Eof do
    begin
      if cdsContaReceber.FieldByName('ATIVO').AsString = '1' then
        begin
          credito:= credito + cdsContaReceber.FieldByName('CREDITO').AsFloat;
          debito:= debito + cdsContaReceber.FieldByName('DEBITO').AsFloat;
        end;
    cdsContaReceber.Next;
    end;
  saldo:= debito - credito;

 end;
procedure TfmImprimeRecibo.FormActivate(Sender: TObject);
begin
  dmSesi.cdsParametro.Active:=true;
end;

end.
