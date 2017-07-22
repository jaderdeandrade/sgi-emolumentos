unit UnitImprimeMovDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, DB, Provider, DBClient, SqlExpr, ExtCtrls,
  ComCtrls, RxLookup, Mask, ToolEdit, Buttons, RLReport, RLXLSFilter,
  RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter;

type
  TfmImprimeMovimentoDiario = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Button2: TButton;
    PanelMovCaixa: TPanel;
    btimprimir: TSpeedButton;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLReport2: TRLReport;
    RLBand6: TRLBand;
    RLLabel19: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand7: TRLBand;
    RLBand8: TRLBand;
    sqlSintetico: TSQLQuery;
    cdsSintetico: TClientDataSet;
    dspSintetico: TDataSetProvider;
    dsSintetico: TDataSource;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel28: TRLLabel;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLBand9: TRLBand;
    RLDraw7: TRLDraw;
    RLLabel31: TRLLabel;
    sqlSinteticoIDMOVIMENTO: TIntegerField;
    sqlSinteticoNUMERO_CAIXA: TIntegerField;
    sqlSinteticoDATA_ABERTURA: TDateField;
    sqlSinteticoHORA_ABERTURA: TTimeField;
    sqlSinteticoDATA_FECHAMENTO: TDateField;
    sqlSinteticoHORA_FECHAMENTO: TTimeField;
    sqlSinteticoUSUARIO_ABERTURA: TStringField;
    sqlSinteticoUSUARIO_FECHAMENTO: TStringField;
    sqlSinteticoVALOR_ABERTURA: TFMTBCDField;
    sqlSinteticoVALOR_FECHAMENTO: TFMTBCDField;
    sqlSinteticoATIVO: TStringField;
    cdsSinteticoIDMOVIMENTO: TIntegerField;
    cdsSinteticoNUMERO_CAIXA: TIntegerField;
    cdsSinteticoDATA_ABERTURA: TDateField;
    cdsSinteticoHORA_ABERTURA: TTimeField;
    cdsSinteticoDATA_FECHAMENTO: TDateField;
    cdsSinteticoHORA_FECHAMENTO: TTimeField;
    cdsSinteticoUSUARIO_ABERTURA: TStringField;
    cdsSinteticoUSUARIO_FECHAMENTO: TStringField;
    cdsSinteticoVALOR_ABERTURA: TFMTBCDField;
    cdsSinteticoVALOR_FECHAMENTO: TFMTBCDField;
    cdsSinteticoATIVO: TStringField;
    dsSomaMovCaixa: TDataSource;
    dspSomaMovCaixa: TDataSetProvider;
    cdsSomaMovCaixa: TClientDataSet;
    sqlSomaMovCaixa: TSQLDataSet;
    sqlSomaMovCaixaSUM: TFMTBCDField;
    cdsSomaMovCaixaSUM: TFMTBCDField;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    RLDBResult1: TRLDBResult;
    cdsSinteticototal: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure btimprimirClick(Sender: TObject);
    procedure cdsSinteticoCalcFields(DataSet: TDataSet);
  private
    procedure filtradados;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmImprimeMovimentoDiario: TfmImprimeMovimentoDiario;

implementation
    uses data;
{$R *.dfm}

procedure TfmImprimeMovimentoDiario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmImprimeMovimentoDiario.Button2Click(Sender: TObject);
begin
  close;
end;


procedure TfmImprimeMovimentoDiario.btimprimirClick(Sender: TObject);
begin
  filtradados;

end;

procedure TfmImprimeMovimentoDiario.filtradados;
var
 data1, data2 : Tdate;
begin
      data1:= StrtoDate(DateEdit1.Text);
      data2:= StrtoDate(DateEdit2.Text);
      {converta a data no padrao americano}
      ShortDateFormat:='mm/dd/YYYY';
      DateEdit1.Text:=DatetoStr(data1);
      DateEdit2.Text:=DatetoStr(data2);
      cdsSintetico.Close;
      cdsSintetico.CommandText:='Select * from MOVIMENTO_CAIXA where ' +
              ' (MOVIMENTO_CAIXA.DATA_ABERTURA between '+char(39)+DateEdit1.Text+char(39)+
              ' and ' +char(39)+DateEdit2.Text+char(39)+') order by MOVIMENTO_CAIXA.IDMOVIMENTO';
      cdsSintetico.open;
      ShortDateFormat:='dd/mm/YYYY';
      DateEdit1.Text:=DatetoStr(data1);
      DateEdit2.Text:=DatetoStr(data2);
      RLReport2.PreviewModal;
end;

procedure TfmImprimeMovimentoDiario.cdsSinteticoCalcFields(
  DataSet: TDataSet);
begin
  cdsSinteticototal.AsFloat:=cdsSinteticoVALOR_FECHAMENTO.AsFloat * 1;
end;

end.
