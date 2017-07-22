unit UnitReceberCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Mask, DBCtrls, ToolEdit, CurrEdit,DB,
  FMTBcd, Provider, DBClient, SqlExpr, RxLookup;

type
  TfmReceber = class(TForm)
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
    sqlMovCaixaNUMERO_CAIXA: TIntegerField;
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
    cdsMovCaixaNUMERO_CAIXA: TIntegerField;
    dspMovCaixa: TDataSetProvider;
    dsMovCaixa: TDataSource;
    dsnumerocaixa: TDataSource;
    cdsnumerocaixa: TClientDataSet;
    cdsnumerocaixanumero: TIntegerField;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    sqlPlanoConta: TSQLDataSet;
    cdsPlanoConta: TClientDataSet;
    dspPlanoConta: TDataSetProvider;
    dsPlanoConta: TDataSource;
    sqlPlanoContaNOME: TStringField;
    sqlPlanoContaCONTA: TStringField;
    cdsPlanoContaNOME: TStringField;
    cdsPlanoContaCONTA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure ceReceberExit(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  IDRECEBER : integer;
  IDMOVIMENTO: integer;
  Function VerificaCampos(DataSource : TDataSource) : Boolean;
    { Public declarations }
  end;

var
  fmReceber: TfmReceber;

implementation

uses data,dataFinanceiro,  ContaReceber, principal, UnitMovCaixa;

{$R *.dfm}

procedure TfmReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmReceber.FormActivate(Sender: TObject);
begin
   ceReceber.SetFocus;
end;

procedure TfmReceber.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfmReceber.ceReceberExit(Sender: TObject);
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

procedure TfmReceber.btGravarClick(Sender: TObject);
begin
      dmFinanceiro.cdsReceber.Close;
      dmFinanceiro.cdsReceber.CommandText:='select * from CONTA_RECEBER where CONTA_RECEBER.ID='+QuotedStr(IntToStr(IDRECEBER));
      dmFinanceiro.cdsReceber.Open;

      ceSaldo.Text:= dmFinanceiro.cdsReceber.FieldByName('SALDO').AsString;
      //btGravar.Enabled:= false;
      //ceReceber.Enabled:= false;

      // inseri movimento no caixa
      dmFinanceiro.cdsCaixa.Active:= true;
      dmFinanceiro.cdsCaixa.Insert;
      dmFinanceiro.cdsCaixa.FieldByName('DATA_LANCAMENTO').AsDateTime:= date;
      dmFinanceiro.cdsCaixa.FieldByName('IDMOVIMENTO').AsInteger:= IDMOVIMENTO;
      dmFinanceiro.cdsCaixa.FieldByName('USUARIO').AsString:= _principal.nomeusuario;
      dmFinanceiro.cdsCaixa.FieldByName('DESCRICAO').AsString:=  fmContaReceber.edtNome.Text + '/ '
                  + dmFinanceiro.cdsReceber.FieldByName('DESCRICAO').AsString;
      dmFinanceiro.cdsCaixa.FieldByName('SALDO').AsString:='C';
      dmFinanceiro.cdsCaixa.FieldByName('CONTA').AsString:= RxDBLookupCombo1.Value;
      dmFinanceiro.cdsCaixa.FieldByName('VALOR').AsFloat:= strtofloat(ceReceber.Text);
      dmFinanceiro.cdsCaixa.FieldByName('NUMERO_CAIXA').AsInteger:= cdsnumerocaixanumero.AsInteger;
      if VerificaCampos(dmFinanceiro.dsCaixa) then
        begin
          dmFinanceiro.cdsCaixa.ApplyUpdates(0);
          if dmFinanceiro.cdsReceber.FieldByName('SALDO').AsFloat = 0 then
            begin
              dmFinanceiro.cdsReceber.Edit;
              dmFinanceiro.cdsReceber.FieldByName('ATIVO').AsString:= '0';
              dmFinanceiro.cdsReceber.FieldByName('DATA_BAIXA').AsDateTime:=date;
              dmFinanceiro.cdsReceber.ApplyUpdates(0);
              fmContaReceber.cdsReceber.Close;
              fmContaReceber.cdsReceber.Params.ParamByName('empresa').AsInteger:=fmContaReceber.IDEMPRESA;
              fmContaReceber.cdsReceber.Open;
            end
          else
          if dmFinanceiro.cdsReceber.FieldByName('SALDO').AsFloat > 0 then
            begin
              dmFinanceiro.cdsReceber.Edit;
              dmFinanceiro.cdsReceber.FieldByName('CREDITO').AsFloat:= dmFinanceiro.cdsReceber.FieldByName('CREDITO').AsFloat + StrToFloat(ceReceber.Text);
              dmFinanceiro.cdsReceber.ApplyUpdates(0);

              fmContaReceber.cdsReceber.Close;
              fmContaReceber.cdsReceber.Params.ParamByName('empresa').AsInteger:=fmContaReceber.IDEMPRESA;
              fmContaReceber.cdsReceber.Open;
            end;
            fmContaReceber.totalizador;
            
            close;
         end;

end;

procedure TfmReceber.FormShow(Sender: TObject);
begin
  dmFinanceiro.cdsMovCaixa.Active:=true;
  cdsMovCaixa.Close;
  cdsMovCaixa.CommandText:='select * from movimento_caixa where '+
            ' (movimento_caixa.numero_caixa='+QuotedStr(IntToStr(cdsnumerocaixanumero.AsInteger))+') '+
            ' and (movimento_caixa.ativo='+QuotedStr('1')+') '+
            ' and (movimento_caixa.data_fechamento is null)';
   cdsMovCaixa.Open;
   IDMOVIMENTO:= cdsMovCaixaIDMOVIMENTO.AsInteger;
   if cdsMovCaixa.IsEmpty then
      begin
        dmFinanceiro.cdsMovCaixa.Insert;
        dmFinanceiro.spMovCaixa.ExecProc;
        dmFinanceiro.cdsMovCaixaIDMOVIMENTO.AsInteger:= dmFinanceiro.spMovCaixa.Params.ParamByName('ID').AsInteger;
        IDMOVIMENTO:= dmFinanceiro.spMovCaixa.Params.ParamByName('ID').AsInteger;
        dmFinanceiro.cdsMovCaixaATIVO.AsString:='1';
        dmFinanceiro.cdsMovCaixaDATA_ABERTURA.AsDateTime:= date;
        dmFinanceiro.cdsMovCaixaHORA_ABERTURA.AsDateTime:= Time;
        dmFinanceiro.cdsMovCaixaUSUARIO_ABERTURA.AsString:= _Principal.NOMEUSUARIO;
        dmFinanceiro.cdsMovCaixaNUMERO_CAIXA.AsInteger:= cdsnumerocaixanumero.AsInteger;
        dmFinanceiro.cdsMovCaixaVALOR_ABERTURA.AsFloat:= 0;
        fmMovimentoCaixa:=TfmMovimentoCaixa.create(self);
        fmMovimentoCaixa.showmodal;
        fmMovimentoCaixa.Free;
      end;
    cdsPlanoConta.Open;
    
end;

function TfmReceber.VerificaCampos(DataSource: TDataSource): Boolean;
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
