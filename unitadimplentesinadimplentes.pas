unit UnitAdimplentesInadimplentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, Mask, ToolEdit, FMTBcd, DB, Provider,
  DBClient, SqlExpr, RLReport, Grids, DBGrids, RLXLSFilter, RLPDFFilter,
  RLHTMLFilter, RLFilters, RLRichFilter, RLDraftFilter;

type
  TfmAdimplenteInadimplentes = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    rbInadimplentes: TRadioButton;
    rbAdimplentes: TRadioButton;
    DateEdit1: TDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    sqlCliente: TSQLDataSet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    dsservico: TDataSource;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
    cdsServicoIDSERVICO: TIntegerField;
    cdsServicoDESCRICAO: TStringField;
    cdsServicoVALOR: TFMTBCDField;
    cdsServicoCONTA: TStringField;
    sqlServico: TSQLDataSet;
    sqlServicoIDSERVICO: TIntegerField;
    sqlServicoDESCRICAO: TStringField;
    sqlServicoVALOR: TFMTBCDField;
    sqlServicoCONTA: TStringField;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    sqlClienteDATAPAGAMENTO: TDateField;
    sqlClienteVALOR: TFMTBCDField;
    sqlClienteDESCRICAO: TStringField;
    sqlClienteCLIENTE_IDCLIENTE: TIntegerField;
    sqlClienteIDCLIENTE: TIntegerField;
    sqlClienteNOME: TStringField;
    sqlClienteTELEFONE: TStringField;
    sqlClienteIDENTIDADE: TStringField;
    sqlClienteDESCRICAO_1: TStringField;
    cdsClienteDATAPAGAMENTO: TDateField;
    cdsClienteVALOR: TFMTBCDField;
    cdsClienteDESCRICAO: TStringField;
    cdsClienteCLIENTE_IDCLIENTE: TIntegerField;
    cdsClienteIDCLIENTE: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteTELEFONE: TStringField;
    cdsClienteIDENTIDADE: TStringField;
    cdsClienteDESCRICAO_1: TStringField;
    RLDraw3: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDraw4: TRLDraw;
    RLLabel7: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAdimplenteInadimplentes: TfmAdimplenteInadimplentes;

implementation
     uses UnitdmConect;
{$R *.dfm}

procedure TfmAdimplenteInadimplentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmAdimplenteInadimplentes.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfmAdimplenteInadimplentes.Button1Click(Sender: TObject);
var
  data1, data2 : Tdate;
begin
  // filtra todas as modalidades que estejam inativados
  data1:= StrtoDate(DateEdit1.Text);
  {converta a data no padrao americano}
  ShortDateFormat:='mm/dd/YYYY';
  DateEdit1.Text:=DatetoStr(data1);
//PROCURA OS INADIMPLENTES POR  CATEGORIAS
  if rbInadimplentes.Checked = true then
    begin
      cdsCliente.Close;
      cdscliente.CommandText:='select modalidade.datapagamento, modalidade.valor, '+
            ' modalidade.descricao, modalidade.cliente_idcliente, cliente.idcliente, '+
            ' cliente.nome, cliente.telefone, cliente.identidade, servico.descricao '+
            ' from servico '+
            ' inner join modalidade on (servico.descricao = modalidade.descricao)'+
            ' inner join cliente on (modalidade.cliente_idcliente = cliente.idcliente) '+
          ' where ((modalidade.datapagamento <'+QuotedStr(DateEdit1.Text)+') '+
          ' and (modalidade.descricao='+QuotedStr(cdsServicoDESCRICAO.AsString)+')) order by cliente.nome';
      cdsCliente.Open;
      RLLabel1.Caption:='INADIMPLENTES';
    end;
  //PROCURA OS ADIMPLENTES POR  CATEGORIAS
  if rbAdimplentes.Checked = true then
    begin
      cdsCliente.Close;
      cdscliente.CommandText:='select modalidade.datapagamento, modalidade.valor, '+
            ' modalidade.descricao, modalidade.cliente_idcliente, cliente.idcliente, '+
            ' cliente.nome, cliente.telefone, cliente.identidade, servico.descricao '+
            ' from servico '+
            ' inner join modalidade on (servico.descricao = modalidade.descricao)'+
            ' inner join cliente on (modalidade.cliente_idcliente = cliente.idcliente) '+
          ' where ((modalidade.datapagamento >'+QuotedStr(DateEdit1.Text)+') '+
          ' and (modalidade.descricao='+QuotedStr(cdsServicoDESCRICAO.AsString)+'))order by cliente.nome';
      cdsCliente.Open;
      RLLabel1.Caption:='ADIMPLENTES';
    end;
  ShortDateFormat:='dd/mm/YYYY';
  DateEdit1.Text:=DatetoStr(data1);
  RLReport1.PreviewModal;
end;

procedure TfmAdimplenteInadimplentes.FormActivate(Sender: TObject);
begin
  cdsServico.Active:=true;
end;

end.
