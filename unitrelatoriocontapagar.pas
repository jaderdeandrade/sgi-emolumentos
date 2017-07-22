unit UnitRelatorioContaPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, ComCtrls, FMTBcd, SqlExpr,
  DB, DBClient, Provider, Buttons, RLReport, RLXLSFilter, RLPDFFilter,
  RLHTMLFilter, RLFilters, RLRichFilter;

type
  TfmRelatorioContasPagar = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
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
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDraw3: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLDraw4: TRLDraw;
    RLLabel10: TRLLabel;
    sqlPagar: TSQLDataSet;
    cdsPagar: TClientDataSet;
    dspPagar: TDataSetProvider;
    dsPagar: TDataSource;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    sqlPagarID: TIntegerField;
    sqlPagarNOME: TStringField;
    sqlPagarCNPJ_CPF: TStringField;
    sqlPagarIE_RG: TStringField;
    sqlPagarENDERECO: TStringField;
    sqlPagarBAIRRO: TStringField;
    sqlPagarCEP: TStringField;
    sqlPagarCIDADE: TStringField;
    sqlPagarESTADO: TStringField;
    sqlPagarTELEFFONE: TStringField;
    sqlPagarFAX: TStringField;
    sqlPagarEMAIL: TStringField;
    sqlPagarSITE: TStringField;
    sqlPagarCONTATO: TStringField;
    sqlPagarOBSERVACAO: TStringField;
    sqlPagarID_1: TIntegerField;
    sqlPagarFORNECEDOR_IDFORNECEDOR: TIntegerField;
    sqlPagarDATA_EMISSAO: TDateField;
    sqlPagarDATA_VENCIMENTO: TDateField;
    sqlPagarDATA_BAIXA: TDateField;
    sqlPagarDESCRICAO: TStringField;
    sqlPagarDEBITO: TFMTBCDField;
    sqlPagarCREDITO: TFMTBCDField;
    sqlPagarATIVO: TStringField;
    cdsPagarID: TIntegerField;
    cdsPagarNOME: TStringField;
    cdsPagarCNPJ_CPF: TStringField;
    cdsPagarIE_RG: TStringField;
    cdsPagarENDERECO: TStringField;
    cdsPagarBAIRRO: TStringField;
    cdsPagarCEP: TStringField;
    cdsPagarCIDADE: TStringField;
    cdsPagarESTADO: TStringField;
    cdsPagarTELEFFONE: TStringField;
    cdsPagarFAX: TStringField;
    cdsPagarEMAIL: TStringField;
    cdsPagarSITE: TStringField;
    cdsPagarCONTATO: TStringField;
    cdsPagarOBSERVACAO: TStringField;
    cdsPagarID_1: TIntegerField;
    cdsPagarFORNECEDOR_IDFORNECEDOR: TIntegerField;
    cdsPagarDATA_EMISSAO: TDateField;
    cdsPagarDATA_VENCIMENTO: TDateField;
    cdsPagarDATA_BAIXA: TDateField;
    cdsPagarDESCRICAO: TStringField;
    cdsPagarDEBITO: TFMTBCDField;
    cdsPagarCREDITO: TFMTBCDField;
    cdsPagarATIVO: TStringField;
    cdsPagarSALDO: TFloatField;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    btimprimir: TSpeedButton;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure btimprimirClick(Sender: TObject);
    procedure cdsReceberCalcFields(DataSet: TDataSet);
    procedure cdsPagarCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelatorioContasPagar: TfmRelatorioContasPagar;

implementation
 uses UnitDmSesi,UnitdmConect;
{$R *.dfm}

procedure TfmRelatorioContasPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TfmRelatorioContasPagar.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfmRelatorioContasPagar.btimprimirClick(Sender: TObject);
var
  data1, data2 : Tdate;
begin
  data1:= StrtoDate(DateEdit1.Text);
  data2:= StrtoDate(DateEdit2.Text);

  //converta a data no padrao americano

  ShortDateFormat:='mm/dd/YYYY';

  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);

  cdsPagar.Close;
  cdsPagar.Params.ParamByName('data1').AsString:= DateEdit1.Text;
  cdsPagar.Params.ParamByName('data2').AsString:= DateEdit2.Text;
  cdsPagar.Open;
  ShortDateFormat:='dd/mm/YYYY';
  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);
  RLReport1.PreviewModal;

end;


procedure TfmRelatorioContasPagar.cdsReceberCalcFields(
  DataSet: TDataSet);
begin
  cdsPagar.FieldByName('SALDO').AsFloat:= cdsPagar.FieldByName('DEBITO').AsFloat -
  cdsPagar.FieldByName('CREDITO').AsFloat;
end;

procedure TfmRelatorioContasPagar.cdsPagarCalcFields(DataSet: TDataSet);
begin
  cdsPagar.FieldByName('SALDO').AsFloat:= cdsPagar.FieldByName('DEBITO').AsFloat -
  cdsPagar.FieldByName('CREDITO').AsFloat;
end;

end.
