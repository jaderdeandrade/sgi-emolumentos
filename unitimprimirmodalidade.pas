unit UnitImprimirModalidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, RxLookup, StdCtrls, SqlExpr, Provider, DB, DBClient,
  RLFilters, RLDraftFilter, RLXLSFilter, RLPDFFilter, RLHTMLFilter,
  RLRichFilter, RLReport, Mask, ToolEdit;

type
  TfmImprimirModalidade = class(TForm)
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
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    sqlModalidadeNOME: TStringField;
    sqlModalidadeENDERECO: TStringField;
    sqlModalidadeBAIRRO: TStringField;
    sqlModalidadeCIDADE: TStringField;
    sqlModalidadeCEP: TStringField;
    sqlModalidadeESTADO: TStringField;
    sqlModalidadeTELEFONE: TStringField;
    sqlModalidadeEMAIL: TStringField;
    sqlModalidadeDESCRICAO: TStringField;
    sqlModalidadeCLIENTE_IDCLIENTE: TIntegerField;
    cdsModalidadeNOME: TStringField;
    cdsModalidadeENDERECO: TStringField;
    cdsModalidadeBAIRRO: TStringField;
    cdsModalidadeCIDADE: TStringField;
    cdsModalidadeCEP: TStringField;
    cdsModalidadeESTADO: TStringField;
    cdsModalidadeTELEFONE: TStringField;
    cdsModalidadeEMAIL: TStringField;
    cdsModalidadeDESCRICAO: TStringField;
    cdsModalidadeCLIENTE_IDCLIENTE: TIntegerField;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
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
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
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
  fmImprimirModalidade: TfmImprimirModalidade;

implementation
       uses UnitdmConect;
{$R *.dfm}

procedure TfmImprimirModalidade.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfmImprimirModalidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmImprimirModalidade.Button1Click(Sender: TObject);
var
  data1, data2 : Tdate;
begin
  // filtra todas as modalidades que estejam inativados
  // dentro de um intervalo de data
  if (RxDBLookupCombo1.Text = '[TODOS]') and (CheckBox1.Checked = true)then
    begin
      data1:= StrtoDate(DateEdit1.Text);
      data2:= StrtoDate(DateEdit2.Text);
      {converta a data no padrao americano}
      ShortDateFormat:='mm/dd/YYYY';
      DateEdit1.Text:=DatetoStr(data1);
      DateEdit2.Text:=DatetoStr(data2);
      cdsModalidade.Close;
      cdsModalidade.CommandText:='select cliente.nome, cliente.endereco, '+
      ' cliente.bairro, cliente.cidade, cliente.cep, cliente.estado, '+
      ' cliente.telefone, cliente.email, modalidade.descricao, '+
      ' modalidade.cliente_idcliente '+
      ' from modalidade '+
      ' inner join cliente on (modalidade.cliente_idcliente = cliente.idcliente)'+
      ' inner join servico on (modalidade.descricao = servico.descricao)'+
      ' where  (modalidade.databaixa between '+char(39)+DateEdit1.Text+char(39)+' and '
               +char(39)+DateEdit2.Text+char(39)+')';
      cdsModalidade.Open;
      ShortDateFormat:='dd/mm/YYYY';
      DateEdit1.Text:=DatetoStr(data1);
      DateEdit2.Text:=DatetoStr(data2);
    end;
  // filtra todos de determinada modalidade que estejam inativados
  // dentro de um intervalo de data
 if (RxDBLookupCombo1.Text <> '[TODOS]')and (CheckBox1.Checked = true)then
    begin
      data1:= StrtoDate(DateEdit1.Text);
      data2:= StrtoDate(DateEdit2.Text);
      {converta a data no padrao americano}
      ShortDateFormat:='mm/dd/YYYY';
      DateEdit1.Text:=DatetoStr(data1);
      DateEdit2.Text:=DatetoStr(data2);
      cdsModalidade.Close;
      cdsModalidade.CommandText:='select cliente.nome, cliente.endereco, '+
        ' cliente.bairro, cliente.cidade, cliente.cep, cliente.estado, '+
        ' cliente.telefone, cliente.email, modalidade.descricao, '+
        ' modalidade.cliente_idcliente '+
        ' from modalidade '+
        ' inner join cliente on (modalidade.cliente_idcliente = cliente.idcliente)'+
        ' inner join servico on (modalidade.descricao = servico.descricao)'+
        ' where (modalidade.descricao ='+QuotedStr(cdsServicoDESCRICAO.AsString)+ ')'+
        ' and (modalidade.databaixa between '+char(39)+DateEdit1.Text+char(39)+' and '
                 +char(39)+DateEdit2.Text+char(39)+')';
      cdsModalidade.Open;
      ShortDateFormat:='dd/mm/YYYY';
      DateEdit1.Text:=DatetoStr(data1);
      DateEdit2.Text:=DatetoStr(data2);
     end;
 //filtra todos de toda modalidade que esteja inativado
 if (RxDBLookupCombo1.Text = '[TODOS]')and (CheckBox1.Checked = false)then
    begin
      cdsModalidade.Close;
      cdsModalidade.CommandText:='select cliente.nome, cliente.endereco, '+
        ' cliente.bairro, cliente.cidade, cliente.cep, cliente.estado, '+
        ' cliente.telefone, cliente.email, modalidade.descricao, '+
        ' modalidade.cliente_idcliente '+
        ' from modalidade '+
        ' inner join cliente on (modalidade.cliente_idcliente = cliente.idcliente)'+
        ' inner join servico on (modalidade.descricao = servico.descricao)'+
        ' where modalidade.databaixa is null';
      cdsModalidade.Open;
    end;
  //filtra todos de determinada modalidade
 if (RxDBLookupCombo1.Text <> '[TODOS]')and (CheckBox1.Checked = false)then
    begin
      cdsModalidade.Close;
      cdsModalidade.CommandText:='select cliente.nome, cliente.endereco, '+
        ' cliente.bairro, cliente.cidade, cliente.cep, cliente.estado, '+
        ' cliente.telefone, cliente.email, modalidade.descricao, '+
        ' modalidade.cliente_idcliente '+
        ' from modalidade '+
        ' inner join cliente on (modalidade.cliente_idcliente = cliente.idcliente)'+
        ' inner join servico on (modalidade.descricao = servico.descricao)'+
        ' where (modalidade.descricao ='+QuotedStr(cdsServicoDESCRICAO.AsString)+ ')'+
        ' and (modalidade.databaixa is null)';
      cdsModalidade.Open;
    end;
  RLReport1.PreviewModal;


end;

procedure TfmImprimirModalidade.FormShow(Sender: TObject);
begin
  cdsServico.Close;
  cdsServico.CommandText:='select * from SERVICO order by DESCRICAO';
  cdsServico.Open;
end;

end.
