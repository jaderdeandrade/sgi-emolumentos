unit UnitAuditoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DB, DBClient, Buttons, StdCtrls,
  Mask, ToolEdit, RLReport;

type
  TfmAuditoria = class(TForm)
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cdsAuditoria: TClientDataSet;
    dsAuditoria: TDataSource;
    dspAuditoria: TDataSetProvider;
    sqlAuditoria: TSQLDataSet;
    sqlAuditoriaNOME: TStringField;
    sqlAuditoriaIDCLIENTE: TIntegerField;
    sqlAuditoriaIDCLIENTE_1: TIntegerField;
    sqlAuditoriaNUMERO_RECIBO: TIntegerField;
    sqlAuditoriaDATA_ATENDIMENTO: TDateField;
    sqlAuditoriaCNPJCPF: TStringField;
    sqlAuditoriaSUM_OF_TAXA_FISCALIZACAO: TFMTBCDField;
    sqlAuditoriaSUM_OF_EMOLUMENTO_LIQUIDO: TFMTBCDField;
    sqlAuditoriaSUM_OF_RECOMPE: TFMTBCDField;
    cdsAuditoriaNOME: TStringField;
    cdsAuditoriaIDCLIENTE: TIntegerField;
    cdsAuditoriaIDCLIENTE_1: TIntegerField;
    cdsAuditoriaNUMERO_RECIBO: TIntegerField;
    cdsAuditoriaDATA_ATENDIMENTO: TDateField;
    cdsAuditoriaCNPJCPF: TStringField;
    cdsAuditoriaSUM_OF_TAXA_FISCALIZACAO: TFMTBCDField;
    cdsAuditoriaSUM_OF_EMOLUMENTO_LIQUIDO: TFMTBCDField;
    cdsAuditoriaSUM_OF_RECOMPE: TFMTBCDField;
    cdsAuditoriaValor: TCurrencyField;
    RLReport1: TRLReport;
    RLBand4: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    cdsAuditoriaRecibo: TStringField;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLLabel9: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLDraw3: TRLDraw;
    RLDBResult2: TRLDBResult;
    cdsAuditoriaemol: TCurrencyField;
    cdsAuditoriataxa: TCurrencyField;
    cdsAuditoriarecompe: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsAuditoriaCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAuditoria: TfmAuditoria;

implementation
     uses UnitdmConect;
{$R *.dfm}

procedure TfmAuditoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfmAuditoria.cdsAuditoriaCalcFields(DataSet: TDataSet);
begin
  cdsAuditoriaValor.AsCurrency:= cdsAuditoriaSUM_OF_EMOLUMENTO_LIQUIDO.AsCurrency + cdsAuditoriaSUM_OF_RECOMPE.AsCurrency +  cdsAuditoriaSUM_OF_TAXA_FISCALIZACAO.AsCurrency;
  cdsAuditoriaRecibo.AsString:= Format('%5.5d',[cdsAuditoriaNUMERO_RECIBO.AsInteger]);
  cdsAuditoriaemol.AsCurrency:= cdsAuditoriaSUM_OF_EMOLUMENTO_LIQUIDO.AsCurrency;
  cdsAuditoriarecompe.AsCurrency:= cdsAuditoriaSUM_OF_RECOMPE.AsCurrency;
  cdsAuditoriataxa.AsCurrency:= cdsAuditoriaSUM_OF_TAXA_FISCALIZACAO.AsCurrency;
end;

procedure TfmAuditoria.SpeedButton1Click(Sender: TObject);
var
  dataIni, dataFin : Tdate;
begin
  try
    dataIni:= StrtoDate(DateEdit1.Text);
    dataFin:= StrtoDate(DateEdit2.Text);
    //converta a data no padrao americano
    ShortDateFormat:='mm/dd/YYYY';
    DateEdit1.Text:=DatetoStr(dataIni);
    DateEdit2.Text:=DatetoStr(dataFin);

    cdsAuditoria.Close;
    cdsAuditoria.Params.ParamByName('data1').AsString:= DateEdit1.Text;
    cdsAuditoria.Params.ParamByName('data2').AsString:= DateEdit2.Text;
    cdsAuditoria.Open;

    ShortDateFormat:='dd/mm/YYYY';
    DateEdit1.Text:=DatetoStr(dataIni);
    DateEdit2.Text:=DatetoStr(dataFin);

    RLReport1.PreviewModal;
  except
    begin
      ShowMessage('Data no formato inv�lido!');
    end;
  end;
end;
procedure TfmAuditoria.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

end.
