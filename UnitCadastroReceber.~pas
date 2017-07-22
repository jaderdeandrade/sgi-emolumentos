unit UnitCadastroReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls,DB, ToolEdit,
  RXDBCtrl, Buttons;

type
  TfmCadastroReceber = class(TForm)
    Panel1: TPanel;
    btGravar: TButton;
    btCancela: TButton;
    Label1: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure btCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
   IDCLIENTE: integer;
   procedure habilitacampos(x: boolean);
   Function VerificaCampos(DataSource : TDataSource) : Boolean;
  end;

var
  fmCadastroReceber: TfmCadastroReceber;

implementation

uses UnitdmConect,UnitDmSesi, ContaReceber;

{$R *.dfm}

procedure TfmCadastroReceber.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfmCadastroReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TfmCadastroReceber.habilitacampos(x: boolean);
var
  count : integer;
begin
  for count:=0 to Pred(Self.ComponentCount) do
  begin
    if x = false then
      begin
        if Self.Components[count].ClassType = TDBEdit then
        (Self.Components[count] as TDBEdit).Enabled:= false;

        if Self.Components[count].ClassType = TDBDateEdit then
        (Self.Components[count] as TDBDateEdit).Enabled:= false;

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

        if Self.Components[count].ClassType = TDBDateEdit then
        (Self.Components[count] as TDBDateEdit).Enabled:= true;

        if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btGravar' then
          (Self.Components[count] as TButton).Enabled:= true;
        end;
      end;
  end;

end;

function TfmCadastroReceber.VerificaCampos(
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

procedure TfmCadastroReceber.btGravarClick(Sender: TObject);
begin
  dmSesi.cdsContaReceber.FieldByName('CLIENTE_IDCLIENTE').AsInteger:=IDCLIENTE;
  dmSesi.cdsContaReceber.FieldByName('ATIVO').AsString:='1';
  if VerificaCampos(dmSesi.dsContaReceber) then
    begin
      dmSesi.cdsContaReceber.ApplyUpdates(0);
      habilitacampos(false);
    end;

  fmContaReceber.cdsReceber.Close;
  fmContaReceber.cdsReceber.Params.ParamByName('idcliente').AsInteger:=IDCLIENTE;
  fmContaReceber.cdsReceber.Open;
  fmContaReceber.totalizador;
  close;
end;

end.
