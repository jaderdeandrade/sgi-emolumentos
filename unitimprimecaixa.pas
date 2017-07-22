unit UnitImprimeCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, CurrEdit, StdCtrls,
  Buttons, Mask, ToolEdit, RXDBCtrl, Grids, DBGrids, ComCtrls, ExtCtrls,
  RxLookup, RLReport,
  RLXLSFilter, RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter,
  RLDraftFilter;

type
  TfmImprimeCaixa = class(TForm)
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
    Button1: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    btimprimir: TSpeedButton;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RxDBLookupComboUsuario: TRxDBLookupCombo;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ceSaldo: TCurrencyEdit;
    ceReceber: TCurrencyEdit;
    ceDebito: TCurrencyEdit;
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
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelaClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btimprimirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cdsRelCaixaCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    
    { Private declarations }
  public
    procedure filtro; // pesquisa no movimento de caixa
    { Public declarations }
  end;

var
 fmImprimeCaixa: TfmImprimeCaixa;

implementation

uses UnitdmConect,UnitDmSesi, UnitEstorno, UnitSesi;

{$R *.dfm}

procedure TfmImprimeCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TfmImprimeCaixa.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfmImprimeCaixa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (not odd(cdsCaixa.RecNo)) then // Se for impar
    begin
      // Se a celula n�o est� selecionada
      if (not (gdSelected in State)) then
        begin
          // Define uma cor de fundo
          DBGrid1.Canvas.Brush.Color := $00E6E6E6;
          DBGrid1.Canvas.FillRect(Rect); // pinta a c�lula
          // pinta o texto padr�o
          DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
        end;
    end;
   if cdsCaixa.FieldByName('SALDO').AsString = 'C' then
      begin
        Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
      end
  else
  if cdsCaixa.FieldByName('SALDO').AsString = 'D' then
      begin
        Dbgrid1.Canvas.Font.Style:= DBGrid1.Canvas.Font.Style + [fsBold];
        Dbgrid1.Canvas.Font.Color:= clGreen;
        Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
      end;
end;

procedure TfmImprimeCaixa.FormActivate(Sender: TObject);
begin
  cdsUsuarios.Open;
  DateEdit1.Text:=datetostr(date);
  DateEdit2.Text:=datetostr(date);
  filtro;

end;

procedure TfmImprimeCaixa.filtro;
var
  v,c,d: Double;
  data1, data2 : Tdate;
begin
  v:= 0;
  c:=0;
  d:= 0;
  data1:= StrtoDate(DateEdit1.Text);
  data2:= StrtoDate(DateEdit2.Text);
  {converta a data no padrao americano}
  ShortDateFormat:='mm/dd/YYYY';
  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);
  if RxDBLookupComboUsuario.Text = '[TODOS]' then
    begin
      // agrupa caixa e tipo de opera��es para saber o hist�rico de cada lan�amento
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
      // agrupa caixa e tipo de opera��es para saber o hist�rico de cada lan�amento
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


  c:=cdscredito.fieldbyname('SUM').AsFloat;  // somatorio dos creditos
  d:=cdsdebito.fieldbyname('SUM').AsFloat;   // somatorio dos debitos

  v:= c - d;  // total disponivel
  ceDebito.Text:= floattostr(d);
  ceReceber.Text:= floattostr(c);
  ceSaldo.Text:= floattostr(v);

  ShortDateFormat:='dd/mm/YYYY';

  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);
end;

procedure TfmImprimeCaixa.FormShow(Sender: TObject);
begin
  cdsUsuarios.Open;
end;

procedure TfmImprimeCaixa.btimprimirClick(Sender: TObject);
var
  data1, data2 : Tdate;
begin
  data1:= StrtoDate(DateEdit1.Text);
  data2:= StrtoDate(DateEdit2.Text);
  {converta a data no padrao americano}
  filtro;
  RLLabelData1.Caption:=DateEdit1.Text;
  RLLabelData2.Caption:=DateEdit2.Text;
  RLLabelUsuario.Caption:=RxDBLookupComboUsuario.Text;
  RLLabelCredito.Caption:=ceReceber.DisplayText;
  RLLabelDebito.Caption:=ceDebito.DisplayText;
  RLLabelSaldo.Caption:=ceSaldo.DisplayText;
  RLReport1.PreviewModal;
  ShortDateFormat:='dd/mm/YYYY';
   {converta a data no padrao PT_BR}
  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);
end;

procedure TfmImprimeCaixa.Button1Click(Sender: TObject);
begin
 dmsesi.cdsCaixa.Active:=true;
 dmsesi.cdsCaixa.Insert;
 fmEstorno:=TfmEstorno.create(application);
 fmEstorno.showmodal;
end;

procedure TfmImprimeCaixa.cdsRelCaixaCalcFields(DataSet: TDataSet);
begin
  cdsRelCaixatot.AsFloat:= cdsRelCaixaVALOR.AsFloat * 1;
end;

procedure TfmImprimeCaixa.SpeedButton1Click(Sender: TObject);
begin
  filtro;
end;

end.
