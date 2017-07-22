unit UnitContaPlano;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls,DB, FMTBcd, SqlExpr, Provider,
  DBClient;

type
  TfmSubContaPlano = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    btGravar: TButton;
    btCancelar: TButton;
    btEditar: TButton;
    Button1: TButton;
    Label3: TLabel;
    lbconta: TLabel;
    dsContaPLano: TDataSource;
    cdsContaPlano: TClientDataSet;
    cdsContaPlanoIDCONTA: TIntegerField;
    cdsContaPlanoIDPLACOCONTA: TIntegerField;
    cdsContaPlanoNOME: TStringField;
    cdsContaPlanoCONTA: TStringField;
    dspContaPlano: TDataSetProvider;
    sqlContaPlano: TSQLDataSet;
    sqlContaPlanoIDCONTA: TIntegerField;
    sqlContaPlanoIDPLACOCONTA: TIntegerField;
    sqlContaPlanoNOME: TStringField;
    sqlContaPlanoCONTA: TStringField;
    SP_GEN_CONTAPLANO_ID: TSQLStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pconta: integer;
    procedure habilitacampos(x: boolean);
    Function VerificaCampos(DataSource : TDataSource) : Boolean;
  end;

var
  fmSubContaPlano: TfmSubContaPlano;

implementation
   uses UnitdmConect, UnitDMSesi, UnitPlanoContas;
{$R *.dfm}

function PreencheComZeros(numero, digitos : Integer) : String;
var
  i : Integer;
begin
  Result := IntToStr(numero);
  for i := Length(Result) to digitos-1 do
    Result := '0'+Result;
end;

procedure TfmSubContaPlano.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmPlanoContas.cdsContaPlano.Close;
  fmPlanoContas.cdsContaPlano.Open;
  dmsesi.cdsContaPlano.Close;
  action:=cafree;
end;

procedure TfmSubContaPlano.btCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfmSubContaPlano.habilitacampos(x: boolean);
var
  count : integer;
begin
  for count:=0 to Pred(Self.ComponentCount) do
    begin
      if x = false then
        begin
        if Self.Components[count].ClassType = TDBEdit then
          (Self.Components[count] as TDBEdit).Enabled:= false;

          if Self.Components[count].ClassType = TButton then
            begin
             if (Self.Components[count] as TButton).Name = 'btGravar' then
              (Self.Components[count] as TButton).Enabled:= false;
            end;

        end
      else
      if x = true then
        begin
          if Self.Components[count].ClassType = TDBEdit then
            (Self.Components[count] as TDBEdit).Enabled:= true;

            if Self.Components[count].ClassType = TButton then
              begin
               if (Self.Components[count] as TButton).Name = 'btGravar' then
                (Self.Components[count] as TButton).Enabled:= true;
              end;

        end;
    end;

end;

function TfmSubContaPlano.VerificaCampos(DataSource: TDataSource): Boolean;
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

procedure TfmSubContaPlano.btGravarClick(Sender: TObject);
begin
  cdsContaPlano.Close;
  cdsContaPlano.CommandText:='select * from CONTAPLANO where CONTA='+QuotedStr(DBEdit2.Text);
  cdsContaPlano.Open;
   if cdsContaPlano.IsEmpty then
    begin
      dmsesi.cdsContaPlanoIDPLACOCONTA.AsInteger:=pconta;
      if VerificaCampos(dmsesi.dsContaPLano) then
          begin
            dmsesi.cdsContaPlano.ApplyUpdates(0);
            habilitacampos(false);
          end;
    end
  else
    begin
      showmessage('Esta conta já existe!Escolha outro número de conta.');
      DBEdit2.Clear;
    end;
end;

procedure TfmSubContaPlano.btEditarClick(Sender: TObject);
begin
  dmsesi.cdsContaPlano.Edit;
  habilitacampos(true);
end;

procedure TfmSubContaPlano.Button1Click(Sender: TObject);
begin
  dmsesi.cdsContaPlano.Active:=true;
  dmsesi.cdsContaPlano.Insert;
  SP_GEN_CONTAPLANO_ID.ExecProc;
  dmsesi.cdsContaPlanoIDCONTA.AsInteger:= SP_GEN_CONTAPLANO_ID.Params.Parambyname('ID').AsInteger;
  dmsesi.cdsContaPlanoCONTA.AsString:= PreencheComZeros(dmsesi.cdsContaPlanoIDCONTA.AsInteger,4);
  habilitacampos(true);
end;

end.
