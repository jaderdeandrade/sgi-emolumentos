unit UnitCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, CurrEdit, StdCtrls,
  Buttons, Mask, ToolEdit, RXDBCtrl, Grids, DBGrids, ComCtrls, ExtCtrls,
  RxLookup, RLReport,RLXLSFilter, RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter,
  RLDraftFilter;

type
  TfmCaixa = class(TForm)
    Panel1: TPanel;
    btCancela: TButton;
    sqlCaixa: TSQLDataSet;
    dspCaixa: TDataSetProvider;
    cdsCaixa: TClientDataSet;
    dsCaixa: TDataSource;
    sqlcredito: TSQLDataSet;
    sqlcreditoSUM: TFMTBCDField;
    cdscredito: TClientDataSet;
    cdscreditoSUM: TFMTBCDField;
    dspcredito: TDataSetProvider;
    dscredito: TDataSource;
    dsdebito: TDataSource;
    dspdebito: TDataSetProvider;
    cdsdebito: TClientDataSet;
    cdsdebitoSUM: TFMTBCDField;
    sqldebito: TSQLDataSet;
    sqldebitoSUM: TFMTBCDField;
    sdsUsuarios: TSQLDataSet;
    dspUsuarios: TDataSetProvider;
    cdsUsuarios: TClientDataSet;
    dsusuarios: TDataSource;
    RLReport1: TRLReport;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabelData1: TRLLabel;
    RLLabelData2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabelUsuario: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabelCredito: TRLLabel;
    RLLabelDebito: TRLLabel;
    RLLabelSaldo: TRLLabel;
    cdsCaixaIDCAIXA: TIntegerField;
    cdsCaixaDESCRICAO: TStringField;
    cdsCaixaSALDO: TStringField;
    cdsCaixaDATA_LANCAMENTO: TDateField;
    cdsCaixaVALOR: TFMTBCDField;
    cdsCaixaUSUARIO: TStringField;
    cdsCaixaCONTA: TStringField;
    cdsCaixaIDMOVIMENTO: TIntegerField;
    sdsUsuariosUSU_ID: TIntegerField;
    sdsUsuariosUSU_LOGIN: TStringField;
    sdsUsuariosUSU_SENHA: TStringField;
    sdsUsuariosUSU_DATA: TDateField;
    cdsUsuariosUSU_ID: TIntegerField;
    cdsUsuariosUSU_LOGIN: TStringField;
    cdsUsuariosUSU_SENHA: TStringField;
    cdsUsuariosUSU_DATA: TDateField;
    sqlRelCaixa: TSQLDataSet;
    cdsRelCaixa: TClientDataSet;
    dspRelCaixa: TDataSetProvider;
    dsRelCaixa: TDataSource;
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
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    RxDBLookupComboUsuario: TRxDBLookupCombo;
    Label1: TLabel;
    btimprimir: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btimprimirClick(Sender: TObject);
    procedure cdsRelCaixaCalcFields(DataSet: TDataSet);
  private
    
    { Private declarations }
  public
    valor: Double;
    procedure filtro; // pesquisa no movimento de caixa
    { Public declarations }
  end;

var
 fmCaixa: TfmCaixa;

implementation

uses UnitdmConect,UnitDmSesi, UnitEstorno, UnitSesi;

{$R *.dfm}

procedure TfmCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TfmCaixa.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfmCaixa.FormActivate(Sender: TObject);
begin
  cdsUsuarios.Open;
  DateEdit1.Text:=datetostr(date);
  DateEdit2.Text:=datetostr(date);
  filtro;

end;

procedure TfmCaixa.filtro;
var
  data1, data2 : Tdate;
begin
  valor:= 0;

  data1:= StrtoDate(DateEdit1.Text);
  data2:= StrtoDate(DateEdit2.Text);
  {converta a data no padrao americano}
  ShortDateFormat:='mm/dd/YYYY';
  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);
  if RxDBLookupComboUsuario.Text = '[TODOS]' then
    begin
      // agrupa caixa e tipo de operações para saber o histórico de cada lançamento
      cdscaixa.Close;
      cdsCaixa.CommandText:='select * from CAIXA where(CAIXA.DATA_LANCAMENTO between '+char(39)+DateEdit1.Text+char(39)+' and '
      +char(39)+DateEdit2.Text+char(39)+')  order by CAIXA.IDCAIXA';
      cdscaixa.Open;
      {retornar a data no formato portugues}
      // somatorio dos creditos
      cdscredito.Close;
      cdscredito.CommandText:='Select sum(VALOR) from CAIXA where (CAIXA.SALDO ='+QuotedStr('C')+') ' +
                           ' and (CAIXA.DATA_LANCAMENTO between '+char(39)+DateEdit1.Text+char(39)+' and ' +char(39)+DateEdit2.Text+char(39)+ ')';
      cdscredito.open;
      // somatorio dos debitos
      cdsdebito.Close;
      cdsdebito.CommandText:='Select sum(VALOR) from CAIXA where (SALDO ='+QuotedStr('D')+') ' +
                           ' and (CAIXA.DATA_LANCAMENTO between '+char(39)+DateEdit1.Text+char(39)+' and ' +char(39)+DateEdit2.Text+char(39)+ ')';
      cdsdebito.open;
    end
  else
  if RxDBLookupComboUsuario.Text <> '[TODOS]' then
    begin
      // agrupa caixa e tipo de operações para saber o histórico de cada lançamento
      cdscaixa.Close;
      cdsCaixa.CommandText:='select * from CAIXA where '+
      ' (CAIXA.USUARIO = '+QuotedStr(RxDBLookupComboUsuario.Text)+')'+
      ' and (CAIXA.DATA_LANCAMENTO between '+char(39)+DateEdit1.Text+char(39)+' and '
      +char(39)+DateEdit2.Text+char(39)+')  order by CAIXA.IDCAIXA';
      cdsCaixa.Open;
      {retornar a data no formato portugues}
      // somatorio dos creditos
      cdscredito.Close;
      cdscredito.CommandText:='Select sum(VALOR) from CAIXA where '+
      ' (CAIXA.USUARIO = '+QuotedStr(RxDBLookupComboUsuario.Text)+')'+
      ' and (CAIXA.SALDO ='+QuotedStr('C')+') ' +
      ' and (CAIXA.DATA_LANCAMENTO between '+char(39)+DateEdit1.Text+char(39)+' and ' +char(39)+DateEdit2.Text+char(39)+ ')';
      cdscredito.open;
      // somatorio dos debitos
      cdsdebito.Close;
      cdsdebito.CommandText:='Select sum(VALOR) from CAIXA where '+
      ' (CAIXA.USUARIO = '+QuotedStr(RxDBLookupComboUsuario.Text)+')'+
      ' and (SALDO ='+QuotedStr('D')+') ' +
      ' and (CAIXA.DATA_LANCAMENTO between '+char(39)+DateEdit1.Text+char(39)+' and ' +char(39)+DateEdit2.Text+char(39)+ ')';
      cdsdebito.open;
    end;

  valor:= cdscredito.fieldbyname('SUM').AsFloat - cdsdebito.fieldbyname('SUM').AsFloat;  // total disponivel
  ShortDateFormat:='dd/mm/YYYY';

  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);
end;

procedure TfmCaixa.FormShow(Sender: TObject);
begin
  cdsUsuarios.Open;
end;

procedure TfmCaixa.btimprimirClick(Sender: TObject);
var
  data1, data2 : Tdate;
begin
  data1:= StrtoDate(DateEdit1.Text);
  data2:= StrtoDate(DateEdit2.Text);
  {converta a data no padrao americano}
    ShortDateFormat:='mm/dd/YYYY';
    DateEdit1.Text:=DatetoStr(data1);
    DateEdit2.Text:=DatetoStr(data2);

    filtro;
    RLLabelData1.Caption:=DateEdit1.Text;
    RLLabelData2.Caption:=DateEdit2.Text;
    RLLabelUsuario.Caption:=RxDBLookupComboUsuario.Text;
    RLLabelCredito.Caption:=cdscredito.fieldbyname('SUM').AsString;
    RLLabelDebito.Caption:=cdsdebito.fieldbyname('SUM').AsString;
    RLLabelSaldo.Caption:= FloatToStr(valor);
    RLReport1.PreviewModal;

    ShortDateFormat:='dd/mm/YYYY';
    DateEdit1.Text:=DatetoStr(data1);
    DateEdit2.Text:=DatetoStr(data2);
end;

procedure TfmCaixa.cdsRelCaixaCalcFields(DataSet: TDataSet);
begin
  cdsRelCaixatot.AsFloat:= cdsRelCaixaVALOR.AsFloat * 1;
end;

end.
