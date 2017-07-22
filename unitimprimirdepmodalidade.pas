unit UnitImprimirDepModalidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, RxLookup, StdCtrls, SqlExpr, Provider, DB, DBClient,
  RLFilters, RLDraftFilter, RLXLSFilter, RLPDFFilter, RLHTMLFilter,
  RLRichFilter, RLReport, Mask, ToolEdit;

type
  TfmImprimirDepModalidade = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLDraftFilter1: TRLDraftFilter;
    dsModalidade: TDataSource;
    cdsModalidade: TClientDataSet;
    dspModalidade: TDataSetProvider;
    sqlModalidade: TSQLDataSet;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDraw4: TRLDraw;
    dscategoria: TDataSource;
    dspcategoria: TDataSetProvider;
    cdscategoria: TClientDataSet;
    sqlcategoria: TSQLDataSet;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    sqlcategoriaIDCATEGORIA: TIntegerField;
    sqlcategoriaNOME: TStringField;
    cdscategoriaIDCATEGORIA: TIntegerField;
    cdscategoriaNOME: TStringField;
    RLBand2: TRLBand;
    RLDraw2: TRLDraw;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand4: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw3: TRLDraw;
    sqlModalidadeIDCLIENTE: TIntegerField;
    sqlModalidadeNOME: TStringField;
    sqlModalidadeENDERECO: TStringField;
    sqlModalidadeBAIRRO: TStringField;
    sqlModalidadeCIDADE: TStringField;
    sqlModalidadeCEP: TStringField;
    sqlModalidadeESTADO: TStringField;
    sqlModalidadeESTADOCIVIL: TStringField;
    sqlModalidadeIDENTIDADE: TStringField;
    sqlModalidadeCPF: TStringField;
    sqlModalidadeCTPS: TStringField;
    sqlModalidadeDATANASCIMENTO: TDateField;
    sqlModalidadeCATEGORIATITULAR: TStringField;
    sqlModalidadeTELEFONE: TStringField;
    sqlModalidadeCELULAR: TStringField;
    sqlModalidadeEMAIL: TStringField;
    sqlModalidadeDEPENDENTE: TStringField;
    sqlModalidadeCOTATITULAR: TIntegerField;
    sqlModalidadeDATACADASTRO: TDateField;
    sqlModalidadePARENTESCO: TStringField;
    sqlModalidadeDATAATESTADO: TDateField;
    sqlModalidadeFOTO: TStringField;
    sqlModalidadeSEXO: TStringField;
    sqlModalidadeRESPONSAVEL: TStringField;
    sqlModalidadePAI: TStringField;
    sqlModalidadeRGPAI: TStringField;
    sqlModalidadeCPFPAI: TStringField;
    sqlModalidadeMAE: TStringField;
    sqlModalidadeRGMAE: TStringField;
    sqlModalidadeCPFMAE: TStringField;
    sqlModalidadeEMPRESA: TStringField;
    sqlModalidadeTELEMPRESA: TStringField;
    cdsModalidadeIDCLIENTE: TIntegerField;
    cdsModalidadeNOME: TStringField;
    cdsModalidadeENDERECO: TStringField;
    cdsModalidadeBAIRRO: TStringField;
    cdsModalidadeCIDADE: TStringField;
    cdsModalidadeCEP: TStringField;
    cdsModalidadeESTADO: TStringField;
    cdsModalidadeESTADOCIVIL: TStringField;
    cdsModalidadeIDENTIDADE: TStringField;
    cdsModalidadeCPF: TStringField;
    cdsModalidadeCTPS: TStringField;
    cdsModalidadeDATANASCIMENTO: TDateField;
    cdsModalidadeCATEGORIATITULAR: TStringField;
    cdsModalidadeTELEFONE: TStringField;
    cdsModalidadeCELULAR: TStringField;
    cdsModalidadeEMAIL: TStringField;
    cdsModalidadeDEPENDENTE: TStringField;
    cdsModalidadeCOTATITULAR: TIntegerField;
    cdsModalidadeDATACADASTRO: TDateField;
    cdsModalidadePARENTESCO: TStringField;
    cdsModalidadeDATAATESTADO: TDateField;
    cdsModalidadeFOTO: TStringField;
    cdsModalidadeSEXO: TStringField;
    cdsModalidadeRESPONSAVEL: TStringField;
    cdsModalidadePAI: TStringField;
    cdsModalidadeRGPAI: TStringField;
    cdsModalidadeCPFPAI: TStringField;
    cdsModalidadeMAE: TStringField;
    cdsModalidadeRGMAE: TStringField;
    cdsModalidadeCPFMAE: TStringField;
    cdsModalidadeEMPRESA: TStringField;
    cdsModalidadeTELEMPRESA: TStringField;
    RLLabel3: TRLLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmImprimirDepModalidade: TfmImprimirDepModalidade;

implementation
       uses UnitdmConect;
{$R *.dfm}

procedure TfmImprimirDepModalidade.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfmImprimirDepModalidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmImprimirDepModalidade.Button1Click(Sender: TObject);
var
  data1, data2 : Tdate;
begin
  data1:= StrtoDate(DateEdit1.Text);
  data2:= StrtoDate(DateEdit2.Text);
  {converta a data no padrao americano}
  ShortDateFormat:='mm/dd/YYYY';
  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);
  cdsModalidade.Close;
  cdsModalidade.CommandText:='select * from cliente where (cliente.dependente='+QuotedStr('S')+')'+
    ' and (cliente.categoriatitular ='+QuotedStr(RxDBLookupCombo1.Text)+')'+
    ' and(cliente.datacadastro between '+ char(39)+DateEdit1.Text+char(39)+' and ' +char(39)+DateEdit2.Text+char(39)+')';
  cdsModalidade.Open;
  ShortDateFormat:='dd/mm/YYYY';
  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);
  RLLabel3.Caption:= cdscategoriaNOME.AsString;
  RLReport1.PreviewModal;

end;

procedure TfmImprimirDepModalidade.FormShow(Sender: TObject);
begin
  cdscategoria.Close;
  cdscategoria.CommandText:='select * from CATEGORIA order by NOME';
  cdscategoria.Open;
end;

end.
