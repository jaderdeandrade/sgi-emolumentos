unit fmEstornoIndividualCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, Provider, DBClient, Mask, ToolEdit,
  CurrEdit, StdCtrls,ExtCtrls;

type
  TfmEstornoIndCaixa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    btGravar: TButton;
    btCancela: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    edtDescricao: TEdit;
    ceReceber: TCurrencyEdit;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
     Function VerificaCampos(DataSource : TDataSource) : Boolean;  { Public declarations }
  end;

var
  fmEstornoIndCaixa: TfmEstornoIndCaixa;

implementation
  uses UnitDmSesi, UnitCaixa,UnitSesi, UnitMovCaixa,UnitdmConect;
{$R *.dfm}

procedure TfmEstornoIndCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:= cafree;
end;

procedure TfmEstornoIndCaixa.btGravarClick(Sender: TObject);
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
                if edtDescricao.Text <> '' then
                  begin
                    if RadioButton1.Checked = true  then
                      begin
                        dmsesi.cdsCaixa.Active:= true;
                        dmsesi.cdsCaixa.Insert;
                        dmsesi.cdsCaixa.FieldByName('DATA_LANCAMENTO').AsDateTime:= date;
                        dmsesi.cdsCaixa.FieldByName('USUARIO').AsString:= fmSGI.USUARIO;;
                        dmsesi.cdsCaixa.FieldByName('DESCRICAO').AsString:=Trim(edtDescricao.Text);
                        dmsesi.cdsCaixa.FieldByName('SALDO').AsString:='D';

                        dmsesi.cdsCaixa.FieldByName('IDMOVIMENTO').AsInteger:=cdsMovCaixaIDMOVIMENTO.AsInteger;
                        dmsesi.cdsCaixa.FieldByName('VALOR').AsFloat:= ceReceber.Value;
                        dmsesi.cdsCaixa.FieldByName('CONTA').AsString:='ESTORNO';
                        if VerificaCampos(dmsesi.dsCaixa) then
                          begin
                            dmsesi.cdsCaixa.ApplyUpdates(0);
                            showmessage('O Estorno foi efetuado com sucesso!');
                            close;
                          end;
                        end
                    else
                    if RadioButton2.Checked = true  then
                      begin
                        dmsesi.cdsCaixa.Active:= true;
                        dmsesi.cdsCaixa.Insert;
                        dmsesi.cdsCaixa.FieldByName('DATA_LANCAMENTO').AsDateTime:= date;
                        dmsesi.cdsCaixa.FieldByName('USUARIO').AsString:= fmSGI.USUARIO;;
                        dmsesi.cdsCaixa.FieldByName('DESCRICAO').AsString:=Trim(edtDescricao.Text);
                        dmsesi.cdsCaixa.FieldByName('SALDO').AsString:='C';

                        dmsesi.cdsCaixa.FieldByName('IDMOVIMENTO').AsInteger:=cdsMovCaixaIDMOVIMENTO.AsInteger;
                        dmsesi.cdsCaixa.FieldByName('VALOR').AsFloat:= ceReceber.Value;
                        dmsesi.cdsCaixa.FieldByName('CONTA').AsString:='ESTORNO';
                        if VerificaCampos(dmsesi.dsCaixa) then
                          begin
                            dmsesi.cdsCaixa.ApplyUpdates(0);
                            showmessage('O lan�amento foi efetuado com sucesso!');
                            close;
                          end;
                      end;

                  end
                else
                if edtDescricao.Text = '' then
                  begin
                    showmessage('ATEN��O! Preencha todos os campos.');
                  end;
              end
          else
          if cdsMovCaixa.IsEmpty then
            begin
              showmessage('ERRO! O lan�amento  n�o foi efetuado com sucesso!'+#13+'N�o existe um Movimento de Caixa aberto.');
              close;
            end;
        end;
end;

procedure TfmEstornoIndCaixa.btCancelaClick(Sender: TObject);
begin
  Close;
end;

function TfmEstornoIndCaixa.VerificaCampos(DataSource: TDataSource): Boolean;
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
