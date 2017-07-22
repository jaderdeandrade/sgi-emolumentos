unit UnitCaixa2Via;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, CurrEdit, StdCtrls,
  Buttons, Mask, ToolEdit, RXDBCtrl, Grids, DBGrids, ComCtrls, ExtCtrls,
  RpRenderText, RpRenderRTF, RpRenderHTML, RpRender, RpRenderPDF, RpCon,
  RpConDS, RpBase, RpSystem, RpDefine, RpRave, RxLookup, RLReport,
  RLXLSFilter, RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter,
  RLDraftFilter;

type
  Tfm2Via = class(TForm)
    Panel1: TPanel;
    btCancela: TButton;
    sqlCaixa: TSQLDataSet;
    dspCaixa: TDataSetProvider;
    cdsCaixa: TClientDataSet;
    dsCaixa: TDataSource;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    cdsCaixaIDCAIXA: TIntegerField;
    cdsCaixaDESCRICAO: TStringField;
    cdsCaixaSALDO: TStringField;
    cdsCaixaDATA_LANCAMENTO: TDateField;
    cdsCaixaVALOR: TFMTBCDField;
    cdsCaixaUSUARIO: TStringField;
    cdsCaixaCONTA: TStringField;
    cdsCaixaIDMOVIMENTO: TIntegerField;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    btimprimir: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    rlnumero: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    rlnome: TRLLabel;
    rldoc: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand3: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel4: TRLLabel;
    rlsegundavia: TRLLabel;
    RLDraw2: TRLDraw;
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
 fm2Via: Tfm2Via;

implementation

uses UnitdmConect,UnitDmSesi, UnitEstorno, UnitSesi;

{$R *.dfm}

procedure Tfm2Via.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure Tfm2Via.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure Tfm2Via.FormActivate(Sender: TObject);
begin
  cdsUsuarios.Open;
  DateEdit1.Text:=datetostr(date);
  DateEdit2.Text:=datetostr(date);
  filtro;

end;

procedure Tfm2Via.filtro;
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

procedure Tfm2Via.FormShow(Sender: TObject);
begin
  cdsUsuarios.Open;
end;

procedure Tfm2Via.btimprimirClick(Sender: TObject);
var
  data1, data2 : Tdate;
begin
  data1:= StrtoDate(DateEdit1.Text);
  data2:= StrtoDate(DateEdit2.Text);
  {converta a data no padrao americano}
  ShortDateFormat:='mm/dd/YYYY';
  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);

     cdscaixa.Close;
     cdsCaixa.CommandText:='select * from caixa where(caixa.data_lancamento between '+char(39)+DateEdit1.Text+char(39)+' and '
               +char(39)+DateEdit2.Text+char(39)+')';
     cdsCaixa.Open;

  ShortDateFormat:='dd/mm/YYYY';

  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);
  {  spcontador.ExecProc;
  rlnumero.Caption:=IntToStr(spcontador.Params.ParamByName('ID').AsInteger);
  cdsmyservice.Filter:='chec = '+QuotedStr('true');
  cdsmyservice.Filtered:=true;
  rlnome.Caption:= cdsModalidade.fieldbyname('NOME').AsString;
  rldoc.Caption:= cdsModalidade.fieldbyname('CPF').AsString;
  rlsegundavia.Caption:= '2a. Via do Recibo.';
  RLReport1.PreviewModal;}
end;

procedure Tfm2Via.cdsRelCaixaCalcFields(DataSet: TDataSet);
begin
  cdsRelCaixatot.AsFloat:= cdsRelCaixaVALOR.AsFloat * 1;
end;

end.
