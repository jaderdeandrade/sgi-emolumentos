unit ContaPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Grids, DBGrids, FMTBcd,
  DB, Provider, DBClient, SqlExpr, Mask, ToolEdit, CurrEdit;

type
  TfmContaPagar = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    sqlfornecedor: TSQLDataSet;
    cdsfornecedor: TClientDataSet;
    dspfornecedor: TDataSetProvider;
    dsfornecedor: TDataSource;
    ceSaldo: TCurrencyEdit;
    ceReceber: TCurrencyEdit;
    ceDebito: TCurrencyEdit;
    dspagar: TDataSource;
    cdspagar: TClientDataSet;
    dsppagar: TDataSetProvider;
    sqlpagar: TSQLDataSet;
    cdspagarSALDO: TFloatField;
    Panel3: TPanel;
    Label3: TLabel;
    edtCodigo: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    edtNome: TEdit;
    SpeedButton3: TSpeedButton;
    sqlpagarID: TIntegerField;
    sqlpagarFORNECEDOR_IDFORNECEDOR: TIntegerField;
    sqlpagarDATA_EMISSAO: TDateField;
    sqlpagarDATA_VENCIMENTO: TDateField;
    sqlpagarDATA_BAIXA: TDateField;
    sqlpagarDESCRICAO: TStringField;
    sqlpagarDEBITO: TFMTBCDField;
    sqlpagarCREDITO: TFMTBCDField;
    sqlpagarATIVO: TStringField;
    cdspagarID: TIntegerField;
    cdspagarFORNECEDOR_IDFORNECEDOR: TIntegerField;
    cdspagarDATA_EMISSAO: TDateField;
    cdspagarDATA_VENCIMENTO: TDateField;
    cdspagarDATA_BAIXA: TDateField;
    cdspagarDESCRICAO: TStringField;
    cdspagarDEBITO: TFMTBCDField;
    cdspagarCREDITO: TFMTBCDField;
    cdspagarATIVO: TStringField;
    sqlfornecedorID: TIntegerField;
    sqlfornecedorNOME: TStringField;
    sqlfornecedorCNPJ_CPF: TStringField;
    sqlfornecedorIE_RG: TStringField;
    sqlfornecedorENDERECO: TStringField;
    sqlfornecedorBAIRRO: TStringField;
    sqlfornecedorCEP: TStringField;
    sqlfornecedorCIDADE: TStringField;
    sqlfornecedorESTADO: TStringField;
    sqlfornecedorTELEFFONE: TStringField;
    sqlfornecedorFAX: TStringField;
    sqlfornecedorEMAIL: TStringField;
    sqlfornecedorSITE: TStringField;
    sqlfornecedorCONTATO: TStringField;
    sqlfornecedorOBSERVACAO: TStringField;
    cdsfornecedorID: TIntegerField;
    cdsfornecedorNOME: TStringField;
    cdsfornecedorCNPJ_CPF: TStringField;
    cdsfornecedorIE_RG: TStringField;
    cdsfornecedorENDERECO: TStringField;
    cdsfornecedorBAIRRO: TStringField;
    cdsfornecedorCEP: TStringField;
    cdsfornecedorCIDADE: TStringField;
    cdsfornecedorESTADO: TStringField;
    cdsfornecedorTELEFFONE: TStringField;
    cdsfornecedorFAX: TStringField;
    cdsfornecedorEMAIL: TStringField;
    cdsfornecedorSITE: TStringField;
    cdsfornecedorCONTATO: TStringField;
    cdsfornecedorOBSERVACAO: TStringField;
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cdsPagarCalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
  IDFORNECEDOR : integer;
  procedure totalizador;// totaliza credito,debito e saldo
    { Public declarations }
  end;

var
  fmContaPagar: TfmContaPagar;

implementation
   uses UnitDmSesi,UnitdmConect, UnitConsultaFornecedor, UnitCadastroPagar,
  UnitPagar;
{$R *.dfm}

procedure TfmContaPagar.Button5Click(Sender: TObject);
begin
  close;
end;

procedure TfmContaPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TfmContaPagar.SpeedButton1Click(Sender: TObject);
begin
  fmConsultaFornecedor:=TfmConsultaFornecedor.create(self);
  fmConsultaFornecedor.showmodal;
end;

procedure TfmContaPagar.SpeedButton2Click(Sender: TObject);
begin
  fmConsultaFornecedor:=TfmConsultaFornecedor.create(self);
  fmConsultaFornecedor.showmodal;
end;

procedure TfmContaPagar.SpeedButton3Click(Sender: TObject);
begin
  fmConsultaFornecedor:=TfmConsultaFornecedor.create(self);
  fmConsultaFornecedor.showmodal;
end;

procedure TfmContaPagar.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      cdsfornecedor.Close;
      cdsfornecedor.CommandText:='Select * from FORNECEDORES where ' +
                             ' (FORNECEDORES.NOME like '+''''+'%'+edtNome.text+'%'+''')';
      cdsfornecedor.Open;
 
      cdsPagar.Close;
      cdsPagar.Params.ParamByName('fornecedor').AsInteger:= cdsfornecedor.FieldByName('ID').AsInteger;
      cdsPagar.Open;
      cdsfornecedor.open;
      edtCodigo.Text:= cdsfornecedor.FieldByName('ID').AsString;
      edtNome.Text:= cdsfornecedor.FieldByName('NOME').AsString;
      IDFORNECEDOR:= cdsfornecedor.FieldByName('ID').AsInteger;
      
    end;
end;

procedure TfmContaPagar.FormActivate(Sender: TObject);
begin
//  cdsReceber.Active:= true;
//  cdsempresa.Active:= true;
end;

procedure TfmContaPagar.edtCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    begin
      cdsfornecedor.Close;
      cdsfornecedor.CommandText:='Select * from FORNECEDORES where  ' +
                             ' (FORNECEDORES.ID='+QuotedStr(edtCodigo.Text)+')';
      cdsfornecedor.open;
      cdsPagar.Close;
      cdsPagar.Params.ParamByName('fornecedor').AsInteger:= cdsfornecedor.FieldByName('ID').AsInteger;
      cdsPagar.Open;      
      edtCodigo.Text:= cdsfornecedor.FieldByName('ID').AsString;
      edtNome.Text:= cdsfornecedor.FieldByName('NOME').AsString;
      IDFORNECEDOR:= cdsfornecedor.FieldByName('ID').AsInteger;
    end;
end;

procedure TfmContaPagar.Button1Click(Sender: TObject);
begin
  if IDFORNECEDOR = 0 then
    begin
      fmConsultaFornecedor:=TfmConsultaFornecedor.create(self);
      fmConsultaFornecedor.showmodal
    end
  else
    begin
      dmSesi.cdsContaPagar.Active:= true;
      dmSesi.cdsContaPagar.Insert;
      fmCadastroPagar:=TfmCadastroPagar.create(self);
      fmCadastroPagar.IDFORNECEDOR:= IDFORNECEDOR;
      fmCadastroPagar.habilitacampos(true);
      fmCadastroPagar.showmodal;
    end
end;

procedure TfmContaPagar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (not odd(cdsPagar.RecNo)) then // Se for impar
    begin
      // Se a celula não está selecionada
      if (not (gdSelected in State)) then
        begin
          // Define uma cor de fundo
          DBGrid1.Canvas.Brush.Color := $00E6E6E6;
          DBGrid1.Canvas.FillRect(Rect); // pinta a célula
          // pinta o texto padrão
          DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
        end;
    end;
end;

procedure TfmContaPagar.Button4Click(Sender: TObject);
begin
if messagedlg('Confirma baixa do registro?',mtWarning, [mbyes,mbno],0)= mryes then
    begin
      dmSesi.cdsContaPagar.Close;
      dmSesi.cdsContaPagar.CommandText:='select * from CONTA_PAGAR where (CONTA_PAGAR.ID='+QuotedStr(IntToStr(cdspagarID.AsInteger))+')';
      dmSesi.cdsContaPagar.Open;
      dmSesi.cdsContaPagar.Delete;
      dmSesi.cdsContaPagar.ApplyUpdates(0);
      
      cdsPagar.Close;
      cdspagar.CommandText:='select * from CONTA_PAGAR where (CONTA_PAGAR.ATIVO='+QuotedStr('1')+') '+
      ' and (CONTA_PAGAR.FORNECEDOR_IDFORNECEDOR ='+QuotedStr(IntToStr(IDFORNECEDOR))+')';
      cdsPagar.Open;

    end;
end;

procedure TfmContaPagar.Button3Click(Sender: TObject);
begin
  if not cdsPagar.IsEmpty then
    begin
      if cdsPagar.FieldByName('CREDITO').AsString = '' then
        begin
          fmPagar:=TfmPagar.create(self);
          fmPagar.ceDebito.Text:= cdsPagar.FieldByName('DEBITO').AsString;
          fmPagar.ceReceber.Text:= cdsPagar.FieldByName('DEBITO').AsString;
          fmPagar.ceSaldo.Text:= cdsPagar.FieldByName('DEBITO').AsString;
          fmPagar.IDPAGAR:= cdsPagar.FieldByName('ID').AsInteger;
          fmPagar.descricao.Text:=cdspagar.FieldByName('DESCRICAO').AsString;
          fmPagar.IDFORNECEDOR:=IDFORNECEDOR;
          fmPagar.showmodal;
        end
    else
    if cdsPagar.FieldByName('CREDITO').AsString <> '' then
      begin
        fmPagar:=TfmPagar.create(self);
        fmPagar.ceDebito.Text:= cdsPagar.FieldByName('SALDO').AsString;
        fmPagar.ceReceber.Text:= '0';
        fmPagar.ceSaldo.Text:= cdsPagar.FieldByName('SALDO').AsString;
        fmPagar.IDPAGAR:= cdsPagar.FieldByName('ID').AsInteger;
        fmPagar.descricao.Text:=cdspagar.FieldByName('DESCRICAO').AsString;
        fmPagar.IDFORNECEDOR:=IDFORNECEDOR;
        fmPagar.showmodal;
      end;
    end;
end;

procedure TfmContaPagar.cdsPagarCalcFields(DataSet: TDataSet);
begin
  cdsPagar.FieldByName('SALDO').AsFloat:= cdsPagar.FieldByName('DEBITO').AsFloat -
  cdsPagar.FieldByName('CREDITO').AsFloat;
end;

procedure TfmContaPagar.DBGrid1DblClick(Sender: TObject);
begin
 if cdsPagar.FieldByName('CREDITO').AsString = '' then
    begin
     fmPagar:=TfmPagar.create(self);
     fmPagar.ceDebito.Text:= cdsPagar.FieldByName('DEBITO').AsString;
     fmPagar.ceReceber.Text:= cdsPagar.FieldByName('DEBITO').AsString;
     fmPagar.ceSaldo.Text:= cdsPagar.FieldByName('DEBITO').AsString;
     fmPagar.IDPAGAR:= cdsPagar.FieldByName('ID').AsInteger;
     fmPagar.showmodal;
    end
  else
  if cdsPagar.FieldByName('CREDITO').AsString <> '' then
    begin
     fmPagar:=TfmPagar.create(self);
     fmPagar.ceDebito.Text:= cdsPagar.FieldByName('SALDO').AsString;
     fmPagar.ceReceber.Text:= '0';
     fmPagar.ceSaldo.Text:= cdsPagar.FieldByName('SALDO').AsString;
     fmPagar.IDPAGAR:= cdsPagar.FieldByName('ID').AsInteger;
     fmPagar.showmodal;
    end;
end;

procedure TfmContaPagar.totalizador;
var
  credito,debito,saldo : real;
begin
  credito:=0;
  debito:=0;
  saldo:=0;
  cdsPagar.First;
  while not cdsPagar.Eof do
    begin
      if cdsPagar.FieldByName('ATIVO').AsString = '1' then
        begin
          credito:= credito + cdsPagar.FieldByName('CREDITO').AsFloat;
          debito:= debito + cdsPagar.FieldByName('DEBITO').AsFloat;
        end;
    cdsPagar.Next;
    end;
  saldo:= debito - credito;
  ceDebito.Text:=FloatToStr(credito);
  ceReceber.Text:=FloatToStr(debito);
  ceSaldo.Text:=FloatToStr(saldo);
end;

end.
