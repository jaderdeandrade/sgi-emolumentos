unit UnitPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Mask, DBCtrls, ToolEdit, CurrEdit,DB,
  FMTBcd, RxLookup, Provider, DBClient, SqlExpr;

type
  TfmPagar = class(TForm)
    Panel1: TPanel;
    btGravar: TButton;
    btCancela: TButton;
    Label3: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label1: TLabel;
    sqlPlanoConta: TSQLDataSet;
    sqlPlanoContaNOME: TStringField;
    sqlPlanoContaCONTA: TStringField;
    cdsPlanoConta: TClientDataSet;
    cdsPlanoContaNOME: TStringField;
    cdsPlanoContaCONTA: TStringField;
    dspPlanoConta: TDataSetProvider;
    dsPlanoConta: TDataSource;
    sqlMovCaixa: TSQLQuery;
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
    cdsMovCaixa: TClientDataSet;
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
    dspMovCaixa: TDataSetProvider;
    dsMovCaixa: TDataSource;
    Label4: TLabel;
    ceDebito: TCurrencyEdit;
    descricao: TEdit;
    ceReceber: TCurrencyEdit;
    ceSaldo: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure ceReceberExit(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  IDPAGAR : Integer;
  IDMOVIMENTO : Integer;
  IDFORNECEDOR : Integer;
  Function VerificaCampos(DataSource : TDataSource) : Boolean;
    { Public declarations }
  end;

var
  fmPagar: TfmPagar;

implementation

uses UnitDmSesi,UnitdmConect, ContaReceber, ContaPagar, UnitSesi,
  UnitMovCaixa;

{$R *.dfm}

procedure TfmPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmPagar.FormActivate(Sender: TObject);
begin
   ceReceber.SetFocus;
   cdsPlanoConta.Open;

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
  dmSesi.cdsContaPagar.Close;
  dmSesi.cdsContaPagar.CommandText:='select * from CONTASPAGAR where CONTASPAGAR.ID='+QuotedStr(IntToStr(IDPAGAR));
  dmSesi.cdsContaPagar.Open;

  dmSesi.cdsContaPagar.Edit;
  dmSesi.cdsContaPagar.FieldByName('CREDITO').AsFloat:= dmSesi.cdsContaPagar.FieldByName('CREDITO').AsFloat + StrToFloat(ceReceber.Text);
  dmSesi.cdsContaPagar.ApplyUpdates(0);
  ceSaldo.Text:= dmSesi.cdsContaPagar.FieldByName('SALDO').AsString;
  btGravar.Enabled:= false;
  ceReceber.Enabled:= false;

  // inseri movimento no caixa
  dmSesi.cdsCaixa.Active:= true;
  dmSesi.cdsCaixa.Insert;
  dmSesi.cdsCaixa.FieldByName('DATA_LANCAMENTO').AsDateTime:= date;
  dmSesi.cdsCaixa.FieldByName('IDMOVIMENTO').AsInteger:= IDMOVIMENTO;
  dmSesi.cdsCaixa.FieldByName('USUARIO').AsString:= fmSGI.USUARIO;
  dmSesi.cdsCaixa.FieldByName('DESCRICAO').AsString:= dmSesi.cdsContaPagar.FieldByName('DESCRICAO').AsString;
  dmSesi.cdsCaixa.FieldByName('SALDO').AsString:='D';
  dmSesi.cdsCaixa.FieldByName('CONTA').AsString:= 'IDFOR-'+IntToStr(IDFORNECEDOR);
  dmSesi.cdsCaixa.FieldByName('VALOR').AsFloat:= strtofloat(ceReceber.Text);

  //********//
  fmContaPagar.cdsPagar.Close;
  fmContaPagar.cdsPagar.Params.ParamByName('fornecedor').AsInteger:=fmContaPagar.IDFORNECEDOR;
  fmContaPagar.cdsPagar.Open;
       if VerificaCampos(dmSesi.dsCaixa) then
        begin
          dmSesi.cdsCaixa.ApplyUpdates(0);
          if dmSesi.cdsContaPagar.FieldByName('SALDO').AsFloat = 0 then
            begin
              dmSesi.cdsContaPagar.Edit;
              dmSesi.cdsContaPagar.FieldByName('ATIVO').AsString:= '0';
              dmSesi.cdsContaPagar.FieldByName('DATA_BAIXA').AsDateTime:=date;
              dmSesi.cdsContaPagar.ApplyUpdates(0);

              fmContaPagar.cdsPagar.Close;
              fmContaPagar.cdsPagar.Params.ParamByName('fornecedor').AsInteger:=fmContaPagar.IDFORNECEDOR;
              fmContaPagar.cdsPagar.Open;
            end;
            fmContaPagar.totalizador;
         end;
  close;
end;

procedure TfmPagar.FormShow(Sender: TObject);
begin
  dmSesi.cdsMovCaixa.Active:=true;
  cdsMovCaixa.Close;
  cdsMovCaixa.CommandText:='select * from movimento_caixa where '+
            ' (movimento_caixa.ativo='+QuotedStr('1')+') '+
            ' and (movimento_caixa.data_fechamento is null)';
   cdsMovCaixa.Open;
   IDMOVIMENTO:= cdsMovCaixaIDMOVIMENTO.AsInteger;
   if cdsMovCaixa.IsEmpty then
      begin
        dmSesi.cdsMovCaixa.Insert;
        dmSesi.spMovCaixa.ExecProc;
        dmSesi.cdsMovCaixaIDMOVIMENTO.AsInteger:= dmSesi.spMovCaixa.Params.ParamByName('ID').AsInteger;
        IDMOVIMENTO:= dmSesi.spMovCaixa.Params.ParamByName('ID').AsInteger;
        dmSesi.cdsMovCaixaATIVO.AsString:='1';
        dmSesi.cdsMovCaixaDATA_ABERTURA.AsDateTime:= date;
        dmSesi.cdsMovCaixaHORA_ABERTURA.AsDateTime:= Time;
        dmSesi.cdsMovCaixaUSUARIO_ABERTURA.AsString:= fmSGI.USUARIO;
        dmSesi.cdsMovCaixaVALOR_ABERTURA.AsFloat:= 0;
        fmMovimentoCaixa:=TfmMovimentoCaixa.create(self);
        fmMovimentoCaixa.showmodal;
        fmMovimentoCaixa.Free;
      end;
    cdsPlanoConta.Open;
end;

function TfmPagar.VerificaCampos(DataSource: TDataSource): Boolean;
Var
  C : Byte;
begin                                                             // A rotina ao lado faz um laço em todos os fields da
   Result := True;                                                // tabela  e procura por fields que sejam
   With(DataSource.DataSet)Do                                     // requeridos pelo sistema e estejam em branco.
   Begin                                                          // Se houver algum requerido em branco, então o sistema
      For C := 0 To FieldCount -1 Do                              // emitirá uma mensagem sobre o ocorrido e colocará o
      Begin                                                       // focus "SetFocus" no campo não preenchido;
         If((Fields[C].Tag=1))And(Trim(Fields[C].Text)='')Then
         Begin
            Result := False;
            MessageBeep(64);
            MessageDlg('Preencha o campo "'+Fields[C].DisplayLabel+'".',mtInformation,[mbOk],0);
            Fields[C].FocusControl;
            Break;
         End;
      End;
   End;

end;

end.
