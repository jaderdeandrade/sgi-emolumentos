unit UnitEstorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, ExtCtrls, ComCtrls, FMTBcd,
  DB, Provider, DBClient, SqlExpr, RxLookup;

type
  TfmEstorno = class(TForm)
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
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    edtDescricao: TEdit;
    Label2: TLabel;
    ceReceber: TCurrencyEdit;
    Label4: TLabel;
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
    sqlPlanoContaIDSERVICO: TIntegerField;
    sqlPlanoContaEMOLUMENTO: TStringField;
    sqlPlanoContaDESCRICAO: TStringField;
    sqlPlanoContaVALOR: TFMTBCDField;
    cdsPlanoContaIDSERVICO: TIntegerField;
    cdsPlanoContaEMOLUMENTO: TStringField;
    cdsPlanoContaDESCRICAO: TStringField;
    cdsPlanoContaVALOR: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelaClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
  private
    { Private declarations }
  public
  Function VerificaCampos(DataSource : TDataSource) : Boolean;  
    { Public declarations }
  end;

var
  fmEstorno: TfmEstorno;

implementation

uses UnitDmSesi, UnitCaixa,UnitSesi, UnitMovCaixa,UnitdmConect;

{$R *.dfm}

procedure TfmEstorno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//fmCaixa
  action:= cafree;
end;

procedure TfmEstorno.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfmEstorno.btGravarClick(Sender: TObject);
begin
  if messagedlg('Confirma o lan�amento?',mtinformation, [mbyes,mbno],0)= mryes then
    begin
          cdsMovCaixa.Close;
          cdsMovCaixa.CommandText:='select * from movimento_caixa where '+
                    ' (movimento_caixa.ativo='+QuotedStr('1')+') '+
                    ' and (movimento_caixa.data_fechamento is null)';
          cdsMovCaixa.Open;
          if not cdsMovCaixa.IsEmpty then
              begin

                dmsesi.cdsCaixa.Active:= true;
                dmsesi.cdsCaixa.Insert;
                dmsesi.cdsCaixa.FieldByName('DATA_LANCAMENTO').AsDateTime:= date;
                dmsesi.cdsCaixa.FieldByName('USUARIO').AsString:= fmSGI.USUARIO;
                dmsesi.cdsCaixa.FieldByName('DESCRICAO').AsString:=Trim(edtDescricao.Text);
                dmsesi.cdsCaixa.FieldByName('SALDO').AsString:='C';
                dmsesi.cdsCaixa.FieldByName('CONTA').AsString:= 'EML|' + cdsPlanoConta.FieldByName('EMOLUMENTO').AsString;
                dmsesi.cdsCaixa.FieldByName('IDMOVIMENTO').AsInteger:=cdsMovCaixaIDMOVIMENTO.AsInteger;
                dmsesi.cdsCaixa.FieldByName('VALOR').AsFloat:= ceReceber.Value;
                if VerificaCampos(dmsesi.dsCaixa) then
                  begin
                    dmsesi.cdsCaixa.ApplyUpdates(0);
                    showmessage('O lan�amento foi efetuado com sucesso!');
                    close;
                  end;
              end;
 
          if cdsMovCaixa.IsEmpty then
            begin
              showmessage('ERRO! O lan�amento  n�o foi efetuado com sucesso!'+#13+'N�o existe um Movimento de Caixa aberto.');
              close;
            end;
        end;
end;

procedure TfmEstorno.FormShow(Sender: TObject);
begin
  cdsMovCaixa.Close;
  cdsMovCaixa.CommandText:='select * from movimento_caixa where '+
            ' (movimento_caixa.ativo='+QuotedStr('1')+') '+
            ' and (movimento_caixa.data_fechamento is null)';
  cdsMovCaixa.Open;
  if cdsMovCaixa.IsEmpty then
      begin
        dmsesi.cdsMovCaixa.Active:=true;
        dmsesi.cdsMovCaixa.Insert;
        dmsesi.spMovCaixa.ExecProc;
        dmsesi.cdsMovCaixaIDMOVIMENTO.AsInteger:= dmsesi.spMovCaixa.Params.ParamByName('ID').AsInteger;
        dmsesi.cdsMovCaixaATIVO.AsString:='1';
        dmsesi.cdsMovCaixaDATA_ABERTURA.AsDateTime:= Date;
        dmsesi.cdsMovCaixaHORA_ABERTURA.AsDateTime:= Time;
        dmsesi.cdsMovCaixaUSUARIO_ABERTURA.AsString:= fmSGI.USUARIO;
        dmsesi.cdsMovCaixaVALOR_ABERTURA.AsFloat:= 0;
        fmMovimentoCaixa:=TfmMovimentoCaixa.create(self);
        fmMovimentoCaixa.showmodal;
        fmMovimentoCaixa.Free;
  end;
  cdsPlanoConta.Open;
end;



function TfmEstorno.VerificaCampos(DataSource: TDataSource): Boolean;
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

procedure TfmEstorno.RxDBLookupCombo1Change(Sender: TObject);
begin
  edtDescricao.Text:=RxDBLookupCombo1.Text;
  ceReceber.Text:= cdsPlanoContaVALOR.Text;
end;

end.
