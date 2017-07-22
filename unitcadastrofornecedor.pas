unit UnitCadastroFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, DBCtrls, Mask;

type
  TfmCadastroFornecedor = class(TForm)
    Panel1: TPanel;
    btGravar: TButton;
    btEditar: TButton;
    btCancela: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelaClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
  procedure habilitacampos(x: boolean);
  Function VerificaCampos(DataSource : TDataSource) : Boolean;
    { Public declarations }
  end;

var
  fmCadastroFornecedor: TfmCadastroFornecedor;

implementation

uses UnitDmSesi, UnitPesquisaFornecedor;

{$R *.dfm}

procedure TfmCadastroFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TfmCadastroFornecedor.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfmCadastroFornecedor.habilitacampos(x: boolean);
var
  count : integer;
begin
  for count:=0 to Pred(Self.ComponentCount) do
  begin
    if x = false then
      begin
        if Self.Components[count].ClassType = TDBEdit then
        (Self.Components[count] as TDBEdit).Enabled:= false;

        if Self.Components[count].ClassType = TDBComboBox then
        (Self.Components[count] as TDBComboBox).Enabled:= false;

        if Self.Components[count].ClassType = TDBMemo then
        (Self.Components[count] as TDBMemo).Enabled:= false;

        if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btGravar' then
          (Self.Components[count] as TButton).Enabled:= false;
        end
      end
    else
    if x = true then
      begin
        if Self.Components[count].ClassType = TDBEdit then
        (Self.Components[count] as TDBEdit).Enabled:= true;

        if Self.Components[count].ClassType = TDBComboBox then
        (Self.Components[count] as TDBComboBox).Enabled:= true;

        if Self.Components[count].ClassType = TDBMemo then
        (Self.Components[count] as TDBMemo).Enabled:= true;

        if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btGravar' then
          (Self.Components[count] as TButton).Enabled:= true;
        end;
      end;
  end;
end;

function TfmCadastroFornecedor.VerificaCampos(
  DataSource: TDataSource): Boolean;
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

procedure TfmCadastroFornecedor.btGravarClick(Sender: TObject);
begin
  if VerificaCampos(dmsesi.dsfornecedor) then
    begin
      dmsesi.cdsFornecedor.ApplyUpdates(0);
      habilitacampos(false);
    end;
  fmPesquisaFornecedor.cdsfornecedor.Close;
  fmPesquisaFornecedor.cdsfornecedor.CommandText:='select * from FORNECEDORES';
  fmPesquisaFornecedor.cdsfornecedor.Open;
end;

procedure TfmCadastroFornecedor.btEditarClick(Sender: TObject);
begin
  dmsesi.cdsfornecedor.Edit;
  habilitacampos(true);
end;

end.
