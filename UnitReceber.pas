unit UnitReceber;

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
    sqlMovCaixa: TSQLQuery;
    cdsMovCaixa: TClientDataSet;
    dspMovCaixa: TDataSetProvider;
    dsMovCaixa: TDataSource;
    sqlPlanoConta: TSQLDataSet;
    cdsPlanoConta: TClientDataSet;
    dspPlanoConta: TDataSetProvider;
    dsPlanoConta: TDataSource;
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
    Label1: TLabel;
    ceDebito: TCurrencyEdit;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    ceReceber: TCurrencyEdit;
    Bevel1: TBevel;
    Label3: TLabel;
    ceSaldo: TCurrencyEdit;
    sqlPlanoContaIDSERVICO: TIntegerField;
    sqlPlanoContaEMOLUMENTO: TStringField;
    sqlPlanoContaDESCRICAO: TStringField;
    sqlPlanoContaVALOR: TFMTBCDField;
    cdsPlanoContaIDSERVICO: TIntegerField;
    cdsPlanoContaEMOLUMENTO: TStringField;
    cdsPlanoContaDESCRICAO: TStringField;
    cdsPlanoContaVALOR: TFMTBCDField;
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

uses UnitDmSesi,UnitdmConect, ContaReceber, UnitSesi, UnitMovCaixa;

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
  // total a receber pode menor ou igual ao debito
  if not (b > a) then
    begin
      ceSaldo.Text:= FloatToStr(a - b);
    end
    else
      begin
        showmessage('ATEN��O! O valor a receber n�o poder maior que o valor do D�bito.');
        ceReceber.Text:= ceDebito.Text;
      end;
  if (b <= 0) then
    begin
      showmessage('ATEN��O! O valor a receber n�o poder menor que ZERO.');
      ceReceber.Text:= ceDebito.Text;
      ceSaldo.Text:= '';
  end;
  //valor a receber n�o pode ser menor ou igual a zero

end;

procedure TfmReceber.btGravarClick(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      dmSesi.cdsContaReceber.Close;
      dmSesi.cdsContaReceber.CommandText:='select * from CONTASRECEBER where CONTASRECEBER.ID='+QuotedStr(IntToStr(IDRECEBER));
      dmSesi.cdsContaReceber.Open;
      // inseri movimento no caixa
      dmSesi.cdsCaixa.Active:= true;
      dmSesi.cdsCaixa.Insert;
      dmSesi.cdsCaixa.FieldByName('DATA_LANCAMENTO').AsDateTime:= date;
      dmSesi.cdsCaixa.FieldByName('IDMOVIMENTO').AsInteger:= IDMOVIMENTO;
      dmSesi.cdsCaixa.FieldByName('USUARIO').AsString:= fmSGI.USUARIO;;
      dmSesi.cdsCaixa.FieldByName('DESCRICAO').AsString:=  fmContaReceber.edtNome.Text + '/ '
                  + dmSesi.cdsContaReceber.FieldByName('DESCRICAO').AsString;
      dmSesi.cdsCaixa.FieldByName('SALDO').AsString:='C';
      dmSesi.cdsCaixa.FieldByName('CONTA').AsString:='EML|' +  cdsPlanoConta.FieldByName('EMOLUMENTO').AsString;
      dmSesi.cdsCaixa.FieldByName('VALOR').AsFloat:= strtofloat(ceReceber.Text);
      if VerificaCampos(dmSesi.dsCaixa) then
        begin
          dmSesi.cdsCaixa.ApplyUpdates(0);
          if ceSaldo.Value = 0 then
            begin
              dmSesi.cdsContaReceber.Edit;
              dmSesi.cdsContaReceber.FieldByName('ATIVO').AsString:= '0';
              dmSesi.cdsContaReceber.FieldByName('DATA_BAIXA').AsDateTime:=date;
              dmsesi.cdsContaReceber.FieldByName('CREDITO').AsFloat:= dmSesi.cdsContaReceber.FieldByName('CREDITO').AsFloat + StrToFloat(ceReceber.Text);
              dmsesi.cdsContaReceber.FieldByName('ATIVO').AsString:= '0';
              dmSesi.cdsContaReceber.ApplyUpdates(0);

              fmContaReceber.cdsReceber.Close;
              fmContaReceber.cdsReceber.Params.ParamByName('idcliente').AsInteger:=fmContaReceber.IDCLIENTE;
              fmContaReceber.cdsReceber.Open;
            end
          else
          if ceSaldo.Value > 0 then
            begin
              dmSesi.cdsContaReceber.Edit;
              dmSesi.cdsContaReceber.FieldByName('CREDITO').AsFloat:= dmSesi.cdsContaReceber.FieldByName('CREDITO').AsFloat + StrToFloat(ceReceber.Text);
              dmSesi.cdsContaReceber.ApplyUpdates(0);

              fmContaReceber.cdsReceber.Close;
              fmContaReceber.cdsReceber.Params.ParamByName('idcliente').AsInteger:=fmContaReceber.IDCLIENTE;
              fmContaReceber.cdsReceber.Open;
            end;
            fmContaReceber.totalizador;
           close;
         end;
    end
    else
    if RxDBLookupCombo1.Text = '' then
      begin
        ShowMessage('Aten��o! Plano de Contas � obrigat�rio.');
      end;
end;

procedure TfmReceber.FormShow(Sender: TObject);
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

function TfmReceber.VerificaCampos(DataSource: TDataSource): Boolean;
Var
  C : Byte;
begin                                                             // A rotina ao lado faz um la�o em todos os fields da
   Result := True;                                                // tabela  e procura por fields que sejam
   With(DataSource.DataSet)Do                                     // requeridos pelo sistema e estejam em branco.
   Begin                                                          // Se houver algum requerido em branco, ent�o o sistema
      For C := 0 To FieldCount -1 Do                              // emitir� uma mensagem sobre o ocorrido e colocar� o
      Begin                                                       // focus "SetFocus" no campo n�o preenchido;
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
