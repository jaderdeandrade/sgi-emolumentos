unit UnitImprimirNovoModalidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, RxLookup, StdCtrls, SqlExpr, Provider, DB, DBClient,
  RLFilters, RLDraftFilter, RLXLSFilter, RLPDFFilter, RLHTMLFilter,
  RLRichFilter, RLReport, Mask, ToolEdit, DBCtrls;

type
  TfmImprimirNovoModalidade = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLDraftFilter1: TRLDraftFilter;
    Button1: TButton;
    Button2: TButton;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDraw4: TRLDraw;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    dscliente: TDataSource;
    cdscliente: TClientDataSet;
    sqlcliente: TSQLDataSet;
    dspcliente: TDataSetProvider;
    DBLookupComboBox1: TDBLookupComboBox;
    Label13: TLabel;
    dsCategoria: TDataSource;
    dspCategoria: TDataSetProvider;
    cdsCategoria: TClientDataSet;
    cdsCategoriaIDCATEGORIA: TIntegerField;
    cdsCategoriaNOME: TStringField;
    sqlCategoria: TSQLDataSet;
    sqlCategoriaIDCATEGORIA: TIntegerField;
    sqlCategoriaNOME: TStringField;
    RLBand4: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw3: TRLDraw;
    cdsclienteIDCLIENTE: TIntegerField;
    cdsclienteNOME: TStringField;
    cdsclienteESTADOCIVIL: TStringField;
    cdsclienteDATANASCIMENTO: TDateField;
    cdsclienteCATEGORIATITULAR: TStringField;
    cdsclienteTELEFONE: TStringField;
    cdsclienteDATAATESTADO: TDateField;
    cdsclienteNOME_1: TStringField;
    cdsclienteIDENTIDADE: TStringField;
    cdsclientePARENTESCO: TStringField;
    sqlclienteIDCLIENTE: TIntegerField;
    sqlclienteNOME: TStringField;
    sqlclienteESTADOCIVIL: TStringField;
    sqlclienteDATANASCIMENTO: TDateField;
    sqlclienteCATEGORIATITULAR: TStringField;
    sqlclienteTELEFONE: TStringField;
    sqlclienteDATAATESTADO: TDateField;
    sqlclienteNOME_1: TStringField;
    sqlclienteIDENTIDADE: TStringField;
    sqlclientePARENTESCO: TStringField;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDraw2: TRLDraw;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    sqlclienteDATACADASTRO: TDateField;
    cdsclienteDATACADASTRO: TDateField;
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
  fmImprimirNovoModalidade: TfmImprimirNovoModalidade;

implementation
       uses UnitdmConect;
{$R *.dfm}

procedure TfmImprimirNovoModalidade.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfmImprimirNovoModalidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmImprimirNovoModalidade.Button1Click(Sender: TObject);
var
  data1, data2 : Tdate;
begin
  // filtra todas as modalidades que estejam inativados
  // dentro de um intervalo de data
  if (CheckBox1.Checked = true)then
    begin
      data1:= StrtoDate(DateEdit1.Text);
      data2:= StrtoDate(DateEdit2.Text);
      {converta a data no padrao americano}
      ShortDateFormat:='mm/dd/YYYY';
      DateEdit1.Text:=DatetoStr(data1);
      DateEdit2.Text:=DatetoStr(data2);
      cdscliente.Close;
      cdscliente.Params.ParamByName('data1').AsString:=DateEdit1.Text;
      cdscliente.Params.ParamByName('data2').AsString:=DateEdit2.Text;
      cdscliente.Params.ParamByName('dep').AsString:='S';
      cdscliente.Params.ParamByName('cat').AsString:=cdsCategoriaNOME.AsString;
      cdscliente.Open;
      ShortDateFormat:='dd/mm/YYYY';
      DateEdit1.Text:=DatetoStr(data1);
      DateEdit2.Text:=DatetoStr(data2);
    end;
  if (CheckBox1.Checked = false)then
    begin
      data1:= StrtoDate(DateEdit1.Text);
      data2:= StrtoDate(DateEdit2.Text);
      {converta a data no padrao americano}
      ShortDateFormat:='mm/dd/YYYY';
      DateEdit1.Text:=DatetoStr(data1);
      DateEdit2.Text:=DatetoStr(data2);
      cdscliente.Close;
      cdscliente.Params.ParamByName('data1').AsString:=DateEdit1.Text;
      cdscliente.Params.ParamByName('data2').AsString:=DateEdit2.Text;
      cdscliente.Params.ParamByName('dep').AsString:='N';
      cdscliente.Params.ParamByName('cat').AsString:=cdsCategoriaNOME.AsString;
      cdscliente.Open;
      ShortDateFormat:='dd/mm/YYYY';
      DateEdit1.Text:=DatetoStr(data1);
      DateEdit2.Text:=DatetoStr(data2);
    end;
  RLReport1.PreviewModal;


end;

procedure TfmImprimirNovoModalidade.FormShow(Sender: TObject);
begin
  cdsCategoria.Close;
  cdsCategoria.CommandText:='select * from CATEGORIA';
  cdsCategoria.Open;
end;

end.
