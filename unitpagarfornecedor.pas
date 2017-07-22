unit UnitPagarFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Mask, DBCtrls, ToolEdit, CurrEdit,DB;

type
  TfmPagar = class(TForm)
    Panel1: TPanel;
    btGravar: TButton;
    btCancela: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    ceDebito: TCurrencyEdit;
    ceReceber: TCurrencyEdit;
    ceSaldo: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure ceReceberExit(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
  IDPAGAR : integer;
    { Public declarations }
  end;

var
  fmPagar: TfmPagar;

implementation

uses dataFinanceiro,data, ContaReceber, ContaPagar, principal;

{$R *.dfm}

procedure TfmPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmPagar.FormActivate(Sender: TObject);
begin
   ceReceber.SetFocus;
end;

procedure TfmPagar.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfmPagar.ceReceberExit(Sender: TObject);
var
 a,b : real;
begin
  a:= StrToFloat(ceDebito.Text);
  b:= StrToFloat(ceReceber.Text);
  if not (b > a) then
    begin
      ceSaldo.Text:= FloatToStr(a - b);
    end
  else
    begin
      showmessage('ATENÇÃO! O valor a receber não poder maior que o valor do Débito.');
      ceReceber.Text:= ceDebito.Text;
    end;
end;

procedure TfmPagar.btGravarClick(Sender: TObject);

begin
  dmFinanceiro.cdsPagar.Close;
  dmFinanceiro.cdsPagar.CommandText:='select * from CONTA_PAGAR where CONTA_PAGAR.ID='+QuotedStr(IntToStr(IDPAGAR));
  dmFinanceiro.cdsPagar.Open;

  dmFinanceiro.cdsPagar.Edit;
  dmFinanceiro.cdsPagar.FieldByName('CREDITO').AsFloat:= dmFinanceiro.cdsPagar.FieldByName('CREDITO').AsFloat + StrToFloat(ceReceber.Text);
  dmFinanceiro.cdsPagar.ApplyUpdates(0);
  ceSaldo.Text:= dmFinanceiro.cdsPagar.FieldByName('SALDO').AsString;
  btGravar.Enabled:= false;
  ceReceber.Enabled:= false;

  // inseri movimento no caixa
  dmFinanceiro.cdsCaixa.Active:= true;
  dmFinanceiro.cdsCaixa.Insert;
  dmFinanceiro.cdsCaixa.FieldByName('DATA').AsDateTime:= date;
  dmFinanceiro.cdsCaixa.FieldByName('ID_USUARIO').AsInteger:= _principal.IDFUNCIONARIO;
  dmFinanceiro.cdsCaixa.FieldByName('HISTORICO').AsString:=  fmContaPagar.edtNome.Text + '/ '
              + dmFinanceiro.cdsReceber.FieldByName('DESCRICAO').AsString;
  dmFinanceiro.cdsCaixa.FieldByName('SALDO').AsString:='D';
  dmFinanceiro.cdsCaixa.FieldByName('VALOR').AsFloat:= strtofloat(ceReceber.Text);
  dmFinanceiro.cdsCaixa.ApplyUpdates(0);

  //********//
  fmContaPagar.cdsPagar.Close;
  fmContaPagar.cdsPagar.Params.ParamByName('fornecedor').AsInteger:=fmContaPagar.IDFORNECEDOR;
  fmContaPagar.cdsPagar.Open;

  if dmFinanceiro.cdsPagar.FieldByName('SALDO').AsFloat = 0 then
    begin
      dmFinanceiro.cdsPagar.Edit;
      dmFinanceiro.cdsPagar.FieldByName('ATIVO').AsString:= '0';
      dmFinanceiro.cdsPagar.FieldByName('DATA_BAIXA').AsDateTime:=date;
      dmFinanceiro.cdsPagar.ApplyUpdates(0);

      fmContaPagar.cdsPagar.Close;
      fmContaPagar.cdsPagar.Params.ParamByName('fornecedor').AsInteger:=fmContaPagar.IDFORNECEDOR;
      fmContaPagar.cdsPagar.Open;
    end;
    fmContaPagar.totalizador;
    close;
end;

end.
