unit UnitReceberBalcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, FMTBcd, SqlExpr, DB, DBClient, Provider,
  RxLookup, Grids, DBGrids, Buttons, ExtCtrls, RXSpin;

type
  TfmReceberBalcao = class(TForm)
    dsServico: TDataSource;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
    sqlServico: TSQLDataSet;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    sqlServicoIDSERVICO: TIntegerField;
    sqlServicoCODIGO_EMOLUMENTO: TStringField;
    sqlServicoDESCRICAO: TStringField;
    sqlServicoRECOMPE: TFMTBCDField;
    sqlServicoEMOLUMENTO_LIQUIDO: TFMTBCDField;
    sqlServicoTAXA_EMOLUMENTO: TFMTBCDField;
    cdsServicoIDSERVICO: TIntegerField;
    cdsServicoCODIGO_EMOLUMENTO: TStringField;
    cdsServicoDESCRICAO: TStringField;
    cdsServicoRECOMPE: TFMTBCDField;
    cdsServicoEMOLUMENTO_LIQUIDO: TFMTBCDField;
    cdsServicoTAXA_EMOLUMENTO: TFMTBCDField;
    RxSpinEdit1: TRxSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idClienteServico : Integer;
  end;

var
  fmReceberBalcao: TfmReceberBalcao;

implementation

uses UnitDmConect, UnitDmSesi, UnitBalcao;

{$R *.dfm}

procedure TfmReceberBalcao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfmReceberBalcao.Button2Click(Sender: TObject);
begin
  fmBalcao.totalizador;
  close;
end;

procedure TfmReceberBalcao.Button1Click(Sender: TObject);
begin
 fmBalcao.cdsTemp.Insert;
 fmBalcao.cdsTempIDCLIENTE_EMOLUMENTO.AsInteger:= idClienteServico;
 fmBalcao.cdsTempCODIGO_EMOLUMENTO.AsString:= cdsServicoCODIGO_EMOLUMENTO.AsString;
 fmBalcao.cdsTempDESCRICAO.AsString:= cdsServicoDESCRICAO.AsString;
 fmBalcao.cdsTempRECOMPE.AsFloat:= cdsServicoRECOMPE.AsFloat;
 fmBalcao.cdsTempEMOLUMENTO_LIQUIDO.AsFloat:= cdsServicoEMOLUMENTO_LIQUIDO.AsFloat;
 fmBalcao.cdsTempTAXA_FISCALIZACAO.AsFloat:= cdsServicoTAXA_EMOLUMENTO.AsFloat;
 fmBalcao.cdsTempQTDE.AsInteger:=StrToInt(RxSpinEdit1.Text);
 fmBalcao.cdsTemp.Post;
 fmBalcao.totalizador;
end;


{

**************
var
N: Integer;
...
try
N := StrToInt(Edit1.Text);
except
// Edit1 contem um texto que n�o � um n�mero
end;
**************

if key=#13 then
    begin
     cdsServico.Close;
     cdsServico.CommandText:='select * from SERVICO where  (SERVICO.DESCRICAO like '+''''+'%'+edtpesquisa.text+'%'+''')';
     cdsServico.open;

     if cdsServico.RecordCount = 0 then
      begin
         cdsServico.Close;
         cdsServico.CommandText:='select * from SERVICO where  (SERVICO.CODIGO_EMOLUMENTO like '+''''+'%'+edtpesquisa.text+'%'+''')';
         cdsServico.open;
      end
    end;}
procedure TfmReceberBalcao.FormActivate(Sender: TObject);
begin
  cdsServico.Active:=true;
  cdsServico.Open;
end;

end.
