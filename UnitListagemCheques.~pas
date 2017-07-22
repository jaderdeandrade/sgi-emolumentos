unit UnitListagemCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, RLReport, RLPDFFilter, RLHTMLFilter, RLFilters,
  RLRichFilter, RLDraftFilter, StdCtrls, DB, Provider, DBClient, SqlExpr,
  Mask, ToolEdit;

type
  TfmListagemCheques = class(TForm)
    RLReport1: TRLReport;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Button1: TButton;
    Button2: TButton;
    sqlCheque: TSQLDataSet;
    sqlChequeID: TIntegerField;
    sqlChequeVALOR: TFMTBCDField;
    sqlChequeEXTENSO: TStringField;
    sqlChequeCIDADE: TStringField;
    sqlChequeDIA: TStringField;
    sqlChequeANO: TStringField;
    sqlChequeNOME: TStringField;
    sqlChequeMES: TStringField;
    sqlChequeBANCO: TStringField;
    sqlChequeUTILIZADO: TStringField;
    sqlChequeCHEQUENUM: TStringField;
    sqlChequeVISTO: TStringField;
    sqlChequeDATAEMISSAO: TDateField;
    cdsCheque: TClientDataSet;
    cdsChequeID: TIntegerField;
    cdsChequeVALOR: TFMTBCDField;
    cdsChequeEXTENSO: TStringField;
    cdsChequeCIDADE: TStringField;
    cdsChequeDIA: TStringField;
    cdsChequeANO: TStringField;
    cdsChequeNOME: TStringField;
    cdsChequeMES: TStringField;
    cdsChequeBANCO: TStringField;
    cdsChequeUTILIZADO: TStringField;
    cdsChequeCHEQUENUM: TStringField;
    cdsChequeVISTO: TStringField;
    cdsChequeDATAEMISSAO: TDateField;
    dspCheque: TDataSetProvider;
    dsCheque: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmListagemCheques: TfmListagemCheques;

implementation
   uses UnitdmConect;
{$R *.dfm}

procedure TfmListagemCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TfmListagemCheques.Button1Click(Sender: TObject);
var
  data1, data2 : Tdate;
begin
  data1:= StrtoDate(DateEdit1.Text);
  data2:= StrtoDate(DateEdit2.Text);
  ShortDateFormat:='mm/dd/YYYY';
  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);
  cdsCheque.Close;
  cdsCheque.CommandText:='select * from CHEQUEPRINT  where (CHEQUEPRINT.DATAEMISSAO between '+char(39)+DateEdit1.Text+char(39)+' and '
           +char(39)+DateEdit2.Text+char(39)+')';
  cdsCheque.Open;
  ShortDateFormat:='dd/mm/YYYY';
  DateEdit1.Text:=DatetoStr(data1);
  DateEdit2.Text:=DatetoStr(data2);
  RLLabel2.Caption:= 'Listagem de cheques referente a :' + DateEdit1.Text + ' até ' + DateEdit2.Text;  
  RLReport1.PreviewModal;

end;

procedure TfmListagemCheques.Button2Click(Sender: TObject);
begin
  close;
end;

end.
