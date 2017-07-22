unit UnitExtrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, Mask, ToolEdit,
  CurrEdit, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, ComCtrls, DBCtrls,
  RLReport, RLXLSFilter, RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter,
  RLDraftFilter, RxLookup;

type
  TfmExtrato = class(TForm)
    dsReceber: TDataSource;
    sqlcliente: TSQLDataSet;
    cdscliente: TClientDataSet;
    spdcliente: TDataSetProvider;
    dscliente: TDataSource;
    cdsReceber: TClientDataSet;
    dspReceber: TDataSetProvider;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel1: TRLLabel;
    rlEmpresa: TRLLabel;
    RLLabel4: TRLLabel;
    rlCNPJ: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand3: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDraw4: TRLDraw;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLDraftFilter1: TRLDraftFilter;
    sqlreceber: TSQLDataSet;
    sqlreceberID: TIntegerField;
    sqlreceberCLIENTE_IDCLIENTE: TIntegerField;
    sqlreceberDATA_EMISSAO: TDateField;
    sqlreceberDATA_VENCIMENTO: TDateField;
    sqlreceberDATA_BAIXA: TDateField;
    sqlreceberDESCRICAO: TStringField;
    sqlreceberDEBITO: TFMTBCDField;
    sqlreceberCREDITO: TFMTBCDField;
    sqlreceberATIVO: TStringField;
    cdsReceberID: TIntegerField;
    cdsReceberCLIENTE_IDCLIENTE: TIntegerField;
    cdsReceberDATA_EMISSAO: TDateField;
    cdsReceberDATA_VENCIMENTO: TDateField;
    cdsReceberDATA_BAIXA: TDateField;
    cdsReceberDESCRICAO: TStringField;
    cdsReceberDEBITO: TFMTBCDField;
    cdsReceberCREDITO: TFMTBCDField;
    cdsReceberATIVO: TStringField;
    cdsReceberSALDO: TFloatField;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Bevel1: TBevel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    btimprimir: TSpeedButton;
    Button5: TButton;
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
    procedure Button5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btimprimirClick(Sender: TObject);
    procedure cdsReceberCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
  IDEMPRESA: integer;
    { Public declarations }
  end;

var
  fmExtrato: TfmExtrato;

implementation
  uses UnitdmConect;
{$R *.dfm}

procedure TfmExtrato.Button5Click(Sender: TObject);
begin
  close;
end;

procedure TfmExtrato.FormActivate(Sender: TObject);
begin
  cdscliente.Active:= true;
  cdsReceber.Active:= true;
end;

procedure TfmExtrato.btimprimirClick(Sender: TObject);
var
  data1, data2 : Tdate;
begin
  data1:= StrtoDate(DateEdit1.Text);
  data2:= StrtoDate(DateEdit2.Text);

  //converta a data no padrao americano

  ShortDateFormat:='mm/dd/YYYY';

  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);

  cdsReceber.close;
  cdsReceber.Params.ParamByName('idcliente').AsInteger:= cdsclienteIDCLIENTE.AsInteger;
  cdsReceber.Params.ParamByName('data1').AsString:= DateEdit1.Text;
  cdsReceber.Params.ParamByName('data2').AsString:= DateEdit2.Text;
  cdsReceber.Open;

  ShortDateFormat:='dd/mm/YYYY';

  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);

  rlEmpresa.Caption:= cdsclienteNOME.AsString;
  rlCNPJ.Caption:= cdsclienteCNPJCPF.AsString;
  RLReport1.PreviewModal;
end;

procedure TfmExtrato.cdsReceberCalcFields(DataSet: TDataSet);
begin
  cdsReceber.FieldByName('SALDO').AsFloat:= cdsReceber.FieldByName('DEBITO').AsFloat -
  cdsReceber.FieldByName('CREDITO').AsFloat;
end;

end.
