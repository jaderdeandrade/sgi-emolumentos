unit UnitImprimeMovCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, DB, Provider, DBClient, SqlExpr, ExtCtrls,
  ComCtrls, RxLookup, Mask, ToolEdit, Buttons, RLReport, RLXLSFilter,
  RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter;

type
  TfmImprimeMovimentoCaixa = class(TForm)
    cdsmovcaixa: TClientDataSet;
    dspmovcaixa: TDataSetProvider;
    dsmovcaixa: TDataSource;
    sqlmovcx: TSQLQuery;
    cdsmovcx: TClientDataSet;
    dspmovcx: TDataSetProvider;
    dsmovcx: TDataSource;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    sqlmovcaixa: TSQLDataSet;
    RLBand2: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw2: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText10: TRLDBText;
    RLDraw1: TRLDraw;
    RLBand4: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText14: TRLDBText;
    RLDraw4: TRLDraw;
    RLLabel13: TRLLabel;
    DataSource1: TDataSource;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    SQLQuery1: TSQLQuery;
    RLBand3: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText15: TRLDBText;
    sqlCredito: TSQLDataSet;
    cdsCredito: TClientDataSet;
    dspCredito: TDataSetProvider;
    dsCredito: TDataSource;
    sqlCreditoSUM: TFMTBCDField;
    cdsCreditoSUM: TFMTBCDField;
    Panel1: TPanel;
    dsRelCaixa: TDataSource;
    dspRelCaixa: TDataSetProvider;
    cdsRelCaixa: TClientDataSet;
    cdsRelCaixaNOME: TStringField;
    cdsRelCaixaCONTA: TStringField;
    cdsRelCaixaIDCAIXA: TIntegerField;
    cdsRelCaixaDESCRICAO: TStringField;
    cdsRelCaixaSALDO: TStringField;
    cdsRelCaixaDATA_LANCAMENTO: TDateField;
    cdsRelCaixaVALOR: TFMTBCDField;
    cdsRelCaixaUSUARIO: TStringField;
    cdsRelCaixaCONTA_1: TStringField;
    cdsRelCaixaIDMOVIMENTO: TIntegerField;
    cdsRelCaixaIDPLANOCONTAS: TIntegerField;
    cdsRelCaixaTIPO: TStringField;
    cdsRelCaixatot: TFloatField;
    sqlRelCaixa: TSQLDataSet;
    sqlRelCaixaNOME: TStringField;
    sqlRelCaixaCONTA: TStringField;
    sqlRelCaixaIDCAIXA: TIntegerField;
    sqlRelCaixaDESCRICAO: TStringField;
    sqlRelCaixaSALDO: TStringField;
    sqlRelCaixaDATA_LANCAMENTO: TDateField;
    sqlRelCaixaVALOR: TFMTBCDField;
    sqlRelCaixaUSUARIO: TStringField;
    sqlRelCaixaCONTA_1: TStringField;
    sqlRelCaixaIDMOVIMENTO: TIntegerField;
    sqlRelCaixaIDPLANOCONTAS: TIntegerField;
    sqlRelCaixaTIPO: TStringField;
    RLReport2: TRLReport;
    RLBand5: TRLBand;
    RLLabel2: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand6: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLBand7: TRLBand;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLLabel23: TRLLabel;
    RLDraw3: TRLDraw;
    RLBand8: TRLBand;
    RLDraw5: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLLabel24: TRLLabel;
    SQLQuery1IDMOVIMENTO: TIntegerField;
    SQLQuery1DATA_ABERTURA: TDateField;
    SQLQuery1HORA_ABERTURA: TTimeField;
    SQLQuery1DATA_FECHAMENTO: TDateField;
    SQLQuery1HORA_FECHAMENTO: TTimeField;
    SQLQuery1USUARIO_ABERTURA: TStringField;
    SQLQuery1USUARIO_FECHAMENTO: TStringField;
    SQLQuery1VALOR_ABERTURA: TFMTBCDField;
    SQLQuery1VALOR_FECHAMENTO: TFMTBCDField;
    SQLQuery1ATIVO: TStringField;
    ClientDataSet1IDMOVIMENTO: TIntegerField;
    ClientDataSet1DATA_ABERTURA: TDateField;
    ClientDataSet1HORA_ABERTURA: TTimeField;
    ClientDataSet1DATA_FECHAMENTO: TDateField;
    ClientDataSet1HORA_FECHAMENTO: TTimeField;
    ClientDataSet1USUARIO_ABERTURA: TStringField;
    ClientDataSet1USUARIO_FECHAMENTO: TStringField;
    ClientDataSet1VALOR_ABERTURA: TFMTBCDField;
    ClientDataSet1VALOR_FECHAMENTO: TFMTBCDField;
    ClientDataSet1ATIVO: TStringField;
    sqlmovcxIDMOVIMENTO: TIntegerField;
    sqlmovcxDATA_ABERTURA: TDateField;
    sqlmovcxHORA_ABERTURA: TTimeField;
    sqlmovcxDATA_FECHAMENTO: TDateField;
    sqlmovcxHORA_FECHAMENTO: TTimeField;
    sqlmovcxUSUARIO_ABERTURA: TStringField;
    sqlmovcxUSUARIO_FECHAMENTO: TStringField;
    sqlmovcxVALOR_ABERTURA: TFMTBCDField;
    sqlmovcxVALOR_FECHAMENTO: TFMTBCDField;
    sqlmovcxATIVO: TStringField;
    cdsmovcxIDMOVIMENTO: TIntegerField;
    cdsmovcxDATA_ABERTURA: TDateField;
    cdsmovcxHORA_ABERTURA: TTimeField;
    cdsmovcxDATA_FECHAMENTO: TDateField;
    cdsmovcxHORA_FECHAMENTO: TTimeField;
    cdsmovcxUSUARIO_ABERTURA: TStringField;
    cdsmovcxUSUARIO_FECHAMENTO: TStringField;
    cdsmovcxVALOR_ABERTURA: TFMTBCDField;
    cdsmovcxVALOR_FECHAMENTO: TFMTBCDField;
    cdsmovcxATIVO: TStringField;
    sqlmovcaixaIDCAIXA: TIntegerField;
    sqlmovcaixaDESCRICAO: TStringField;
    sqlmovcaixaSALDO: TStringField;
    sqlmovcaixaDATA_LANCAMENTO: TDateField;
    sqlmovcaixaVALOR: TFMTBCDField;
    sqlmovcaixaUSUARIO: TStringField;
    sqlmovcaixaCONTA: TStringField;
    sqlmovcaixaIDMOVIMENTO: TIntegerField;
    cdsmovcaixaIDCAIXA: TIntegerField;
    cdsmovcaixaDESCRICAO: TStringField;
    cdsmovcaixaSALDO: TStringField;
    cdsmovcaixaDATA_LANCAMENTO: TDateField;
    cdsmovcaixaVALOR: TFMTBCDField;
    cdsmovcaixaUSUARIO: TStringField;
    cdsmovcaixaCONTA: TStringField;
    cdsmovcaixaIDMOVIMENTO: TIntegerField;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btimprimir: TSpeedButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure btimprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cdsRelCaixaCalcFields(DataSet: TDataSet);
  private
    procedure filtradados;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmImprimeMovimentoCaixa: TfmImprimeMovimentoCaixa;

implementation
    uses UnitdmConect,UnitSesi;
{$R *.dfm}

procedure TfmImprimeMovimentoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmImprimeMovimentoCaixa.Button2Click(Sender: TObject);
begin
  close;
end;


procedure TfmImprimeMovimentoCaixa.btimprimirClick(Sender: TObject);
begin

      filtradados;
      cdsmovcaixa.Close;
      cdsmovcaixa.CommandText:='select * from caixa where '+
        ' caixa.idmovimento='+QuotedStr(ClientDataSet1.FieldByName('IDMOVIMENTO').asstring);
      cdsmovcaixa.Open;

      cdsmovcx.Close;
      cdsmovcx.CommandText:='Select * from MOVIMENTO_CAIXA where ' +
              ' MOVIMENTO_CAIXA.IDMOVIMENTO='+QuotedStr(ClientDataSet1.FieldByName('IDMOVIMENTO').asstring);
      cdsmovcx.open;

      cdscredito.Close;
      cdscredito.CommandText:='Select sum(VALOR) from CAIXA where ' +
                      ' caixa.idmovimento='+QuotedStr(ClientDataSet1.FieldByName('IDMOVIMENTO').asstring);
      cdscredito.open;
      
      RLReport1.PreviewModal;

end;




procedure TfmImprimeMovimentoCaixa.filtradados;

begin
      cdsmovcaixa.Close;
      cdsmovcaixa.CommandText:='select * from caixa where '+
        ' caixa.idmovimento='+QuotedStr(ClientDataSet1.FieldByName('IDMOVIMENTO').asstring);
      cdsmovcaixa.Open;

      cdsmovcx.Close;
      cdsmovcx.CommandText:='Select * from MOVIMENTO_CAIXA where ' +
              ' MOVIMENTO_CAIXA.IDMOVIMENTO='+QuotedStr(ClientDataSet1.FieldByName('IDMOVIMENTO').asstring);
      cdsmovcx.open;

      cdscredito.Close;
      cdscredito.CommandText:='Select sum(VALOR) from CAIXA where ' +
                      ' caixa.idmovimento='+QuotedStr(ClientDataSet1.FieldByName('IDMOVIMENTO').asstring);
      cdscredito.open;
      RLReport1.PreviewModal;
end;

procedure TfmImprimeMovimentoCaixa.FormActivate(Sender: TObject);
begin
  ClientDataSet1.Active:=true;
end;

procedure TfmImprimeMovimentoCaixa.cdsRelCaixaCalcFields(
  DataSet: TDataSet);
begin
 cdsRelCaixatot.AsFloat:= cdsRelCaixaVALOR.AsFloat * 1;
end;

end.
