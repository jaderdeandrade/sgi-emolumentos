 unit ContaReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Grids, DBGrids, FMTBcd,
  DB, Provider, DBClient, SqlExpr, Mask, ToolEdit, CurrEdit;

type
  TfmContaReceber = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    edtCPFCNPJ: TEdit;
    edtCodigo: TEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button3: TButton;
    Button5: TButton;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ceSaldo: TCurrencyEdit;
    ceReceber: TCurrencyEdit;
    ceDebito: TCurrencyEdit;
    sqlreceber: TSQLDataSet;
    cdsreceber: TClientDataSet;
    dspreceber: TDataSetProvider;
    dsreceber: TDataSource;
    dsMovCaixa: TDataSource;
    dspMovCaixa: TDataSetProvider;
    cdsMovCaixa: TClientDataSet;
    sqlMovCaixa: TSQLQuery;
    Button2: TButton;
    sqlMovCaixaIDMOVIMENTO: TIntegerField;
    sqlMovCaixaDATA_ABERTURA: TDateField;
    sqlMovCaixaHORA_ABERTURA: TTimeField;
    sqlMovCaixaDATA_FECHAMENTO: TDateField;
    sqlMovCaixaHORA_FECHAMENTO: TTimeField;
    sqlMovCaixaUSUARIO_ABERTURA: TStringField;
    sqlMovCaixaUSUARIO_FECHAMENTO: TStringField;
    sqlMovCaixaVALOR_ABERTURA: TFMTBCDField;
    sqlMovCaixaVALOR_FECHAMENTO: TFMTBCDField;
    sqlMovCaixaATIVO: TStringField;
    cdsMovCaixaIDMOVIMENTO: TIntegerField;
    cdsMovCaixaDATA_ABERTURA: TDateField;
    cdsMovCaixaHORA_ABERTURA: TTimeField;
    cdsMovCaixaDATA_FECHAMENTO: TDateField;
    cdsMovCaixaHORA_FECHAMENTO: TTimeField;
    cdsMovCaixaUSUARIO_ABERTURA: TStringField;
    cdsMovCaixaUSUARIO_FECHAMENTO: TStringField;
    cdsMovCaixaVALOR_ABERTURA: TFMTBCDField;
    cdsMovCaixaVALOR_FECHAMENTO: TFMTBCDField;
    cdsMovCaixaATIVO: TStringField;
    dscliente: TDataSource;
    cdscliente: TClientDataSet;
    sqlcliente: TSQLDataSet;
    dspcliente: TDataSetProvider;
    sqlreceberID: TIntegerField;
    sqlreceberCLIENTE_IDCLIENTE: TIntegerField;
    sqlreceberDATA_EMISSAO: TDateField;
    sqlreceberDATA_VENCIMENTO: TDateField;
    sqlreceberDATA_BAIXA: TDateField;
    sqlreceberDESCRICAO: TStringField;
    sqlreceberDEBITO: TFMTBCDField;
    sqlreceberCREDITO: TFMTBCDField;
    sqlreceberATIVO: TStringField;
    cdsreceberID: TIntegerField;
    cdsreceberCLIENTE_IDCLIENTE: TIntegerField;
    cdsreceberDATA_EMISSAO: TDateField;
    cdsreceberDATA_VENCIMENTO: TDateField;
    cdsreceberDATA_BAIXA: TDateField;
    cdsreceberDESCRICAO: TStringField;
    cdsreceberDEBITO: TFMTBCDField;
    cdsreceberCREDITO: TFMTBCDField;
    cdsreceberATIVO: TStringField;
    cdsreceberSALDO: TFloatField;
    sqlclienteIDCLIENTE: TIntegerField;
    sqlclienteNOME: TStringField;
    sqlclienteRAZAOSOCIAL: TStringField;
    sqlclienteRAMOATIVIDADE: TStringField;
    sqlclienteCONTATO: TStringField;
    sqlclienteCNPJCPF: TStringField;
    sqlclienteRGIE: TStringField;
    sqlclienteDATACADASTRO: TDateField;
    sqlclienteENDERECO: TStringField;
    sqlclienteBAIRRO: TStringField;
    sqlclienteCIDADE: TStringField;
    sqlclienteCEP: TStringField;
    sqlclienteESTADO: TStringField;
    sqlclienteTELEFONE: TStringField;
    sqlclienteFAX: TStringField;
    sqlclienteCELULAR: TStringField;
    sqlclienteEMAIL: TStringField;
    sqlclienteSITE: TStringField;
    sqlclienteOBS: TBlobField;
    sqlclienteATIVO: TStringField;
    cdsclienteIDCLIENTE: TIntegerField;
    cdsclienteNOME: TStringField;
    cdsclienteRAZAOSOCIAL: TStringField;
    cdsclienteRAMOATIVIDADE: TStringField;
    cdsclienteCONTATO: TStringField;
    cdsclienteCNPJCPF: TStringField;
    cdsclienteRGIE: TStringField;
    cdsclienteDATACADASTRO: TDateField;
    cdsclienteENDERECO: TStringField;
    cdsclienteBAIRRO: TStringField;
    cdsclienteCIDADE: TStringField;
    cdsclienteCEP: TStringField;
    cdsclienteESTADO: TStringField;
    cdsclienteTELEFONE: TStringField;
    cdsclienteFAX: TStringField;
    cdsclienteCELULAR: TStringField;
    cdsclienteEMAIL: TStringField;
    cdsclienteSITE: TStringField;
    cdsclienteOBS: TBlobField;
    cdsclienteATIVO: TStringField;
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCPFCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure cdsReceberCalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    credito,debito,saldo : real;
    { Private declarations }
  public
  IDCLIENTE,IDRECEBER : integer;
  procedure totalizador;// totaliza credito,debito e saldo
    { Public declarations }
  end;

var
  fmContaReceber: TfmContaReceber;

implementation
   uses UnitdmConect, UnitDmSesi, UnitConsultaCliente, UnitCadastroReceber, UnitReceber,
  UnitSesi, UnitMovCaixa, UnitImprimeRecibo;
{$R *.dfm}

procedure TfmContaReceber.Button5Click(Sender: TObject);
begin
  close;
end;

procedure TfmContaReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TfmContaReceber.SpeedButton1Click(Sender: TObject);
begin
  fmConsultaCliente:=TfmConsultaCliente.create(self);
  fmConsultaCliente.showmodal;
end;

procedure TfmContaReceber.SpeedButton2Click(Sender: TObject);
begin
  fmConsultaCliente:=TfmConsultaCliente.create(self);
  fmConsultaCliente.showmodal;
end;

procedure TfmContaReceber.SpeedButton3Click(Sender: TObject);
begin
  fmConsultaCliente:=TfmConsultaCliente.create(self);
  fmConsultaCliente.showmodal;
end;

procedure TfmContaReceber.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      cdsCliente.Close;
      cdsCliente.CommandText:='Select * from CLIENTE where  ' +
                             ' (CLIENTE.NOME like '+''''+'%'+edtNome.text+'%'+''')';
      cdsCliente.open;
      edtCodigo.Text:= cdsCliente.FieldByName('IDCLIENTE').AsString;
      edtNome.Text:= cdsCliente.FieldByName('NOME').AsString;
      edtCPFCNPJ.Text:= cdsCliente.FieldByName('CNPJCPF').AsString;
      IDCLIENTE:=cdsCliente.FieldByName('IDCLIENTE').AsInteger;
      cdsReceber.Close;
      cdsReceber.Params.ParamByName('idcliente').AsInteger:=cdscliente.FieldByName('IDCLIENTE').AsInteger;
      cdsReceber.Open;
      totalizador;
    end;
end;

procedure TfmContaReceber.edtCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    begin
      cdsCliente.Close;
      cdsCliente.CommandText:='Select * from CLIENTE where  ' +
                             ' (CLIENTE.IDCLIENTE='+QuotedStr(edtCodigo.text)+')';
      cdsCliente.open;
      edtCodigo.Text:= cdsCliente.FieldByName('IDCLIENTE').AsString;
      edtNome.Text:= cdsCliente.FieldByName('NOME').AsString;
      edtCPFCNPJ.Text:= cdscliente.FieldByName('CNPJCPF').AsString;
      IDCLIENTE:=cdsCliente.FieldByName('IDCLIENTE').AsInteger;
      cdsReceber.Close;
      cdsReceber.Params.ParamByName('idcliente').AsInteger:=cdscliente.FieldByName('IDCLIENTE').AsInteger;
      cdsReceber.Open;
      totalizador;
    end;
end;

procedure TfmContaReceber.edtCPFCNPJKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    begin
      cdsCliente.Close;
      cdsCliente.CommandText:='Select * from CLIENTE where  ' +
                             ' (CLIENTE.CPF='+QuotedStr(edtCPFCNPJ.Text)+')';
      cdsCliente.open;
      edtCodigo.Text:= cdsCliente.FieldByName('IDCLIENTE').AsString;
      edtNome.Text:= cdsCliente.FieldByName('NOME').AsString;
      edtCPFCNPJ.Text:= cdsCliente.FieldByName('CNPJCPF').AsString;
      IDCLIENTE:=cdsCliente.FieldByName('IDCLIENTE').AsInteger;
      cdsReceber.Close;
      cdsReceber.Params.ParamByName('idcliente').AsInteger:=cdscliente.FieldByName('IDCLIENTE').AsInteger;
      cdsReceber.Open;
      totalizador;
    end;
end;

procedure TfmContaReceber.Button1Click(Sender: TObject);
begin
  if IDCLIENTE = 0 then
    begin
      fmConsultaCliente:=TfmConsultaCliente.create(self);
      fmConsultaCliente.showmodal
    end
  else
    begin
      dmSesi.cdsContaReceber.Active:= true;
      dmSesi.cdsContaReceber.Insert;
      fmCadastroReceber:=TfmCadastroReceber.create(self);
      fmCadastroReceber.IDCLIENTE:= cdsclienteIDCLIENTE.AsInteger;
      fmCadastroReceber.habilitacampos(true);
      fmCadastroReceber.showmodal;
    end
end;

procedure TfmContaReceber.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (not odd(cdsReceber.RecNo)) then // Se for impar
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
end;

procedure TfmContaReceber.Button3Click(Sender: TObject);
begin
  if cdsreceberSALDO.AsFloat > 0 then
    begin
      fmReceber:=TfmReceber.create(self);
      fmReceber.ceDebito.Text:= cdsReceber.FieldByName('SALDO').AsString;
      fmReceber.ceReceber.Text:= cdsReceber.FieldByName('SALDO').AsString;
      fmReceber.ceSaldo.Text:= cdsReceber.FieldByName('SALDO').AsString;
      fmReceber.IDRECEBER:= cdsReceber.FieldByName('ID').AsInteger;
      fmReceber.showmodal;
    end;

end;

procedure TfmContaReceber.cdsReceberCalcFields(DataSet: TDataSet);
begin
  cdsReceber.FieldByName('SALDO').AsFloat:= cdsReceber.FieldByName('DEBITO').AsFloat -
  cdsReceber.FieldByName('CREDITO').AsFloat;
end;

procedure TfmContaReceber.DBGrid1DblClick(Sender: TObject);
begin
  fmReceber:=TfmReceber.create(self);
  fmReceber.ceDebito.Text:= cdsReceber.FieldByName('SALDO').AsString;
  fmReceber.ceReceber.Text:= cdsReceber.FieldByName('SALDO').AsString;
  fmReceber.ceSaldo.Text:= cdsReceber.FieldByName('SALDO').AsString;
  fmReceber.IDRECEBER:= cdsReceber.FieldByName('ID').AsInteger;
  fmReceber.showmodal;

end;

procedure TfmContaReceber.totalizador;
begin
  credito:=0;
  debito:=0;
  saldo:=0;
  cdsReceber.First;
  while not cdsReceber.Eof do
    begin
      if cdsReceber.FieldByName('ATIVO').AsString = '1' then
        begin
          credito:= credito + cdsReceber.FieldByName('CREDITO').AsFloat;
          debito:= debito + cdsReceber.FieldByName('DEBITO').AsFloat;
        end;
    cdsReceber.Next;
    end;
  saldo:= debito - credito;
  ceDebito.Text:=FloatToStr(credito);
  ceReceber.Text:=FloatToStr(debito);
  ceSaldo.Text:=FloatToStr(saldo);
end;

procedure TfmContaReceber.Button2Click(Sender: TObject);
begin
  fmImprimeRecibo:=TfmImprimeRecibo.create(self);
  fmImprimeRecibo.IDCLIENTE:= cdsclienteIDCLIENTE.AsInteger;
  fmImprimeRecibo.IDRECEBER:=cdsreceberID.AsInteger;
  fmImprimeRecibo.rlRAZAOSOCIAL.Caption:= cdsclienteNOME.AsString;
  fmImprimeRecibo.rlENDERECO.Caption:= cdsclienteENDERECO.AsString;
  fmImprimeRecibo.rlBAIRRO.Caption:= cdsclienteBAIRRO.AsString;
  fmImprimeRecibo.rlCIDADE.Caption:= cdsclienteCIDADE.AsString;
  fmImprimeRecibo.rlCEP.Caption:= cdsclienteCEP.AsString;
  fmImprimeRecibo.rlESTADO.Caption:= cdsclienteESTADO.AsString;
  fmImprimeRecibo.showmodal;
end;

end.
