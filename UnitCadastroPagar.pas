unit UnitCadastroPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls,DB, ToolEdit,
  RXDBCtrl;

type
  TfmCadastroPagar = class(TForm)
    Panel1: TPanel;
    btGravar: TButton;
    btCancela: TButton;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    procedure btCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
   IDFORNECEDOR: integer;
   procedure habilitacampos(x: boolean);
   Function VerificaCampos(DataSource : TDataSource) : Boolean;
  end;

var
  fmCadastroPagar: TfmCadastroPagar;

implementation

uses UnitdmConect, ContaPagar, UnitDmSesi;

{$R *.dfm}

procedure TfmCadastroPagar.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfmCadastroPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TfmCadastroPagar.habilitacampos(x: boolean);
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

function TfmCadastroPagar.VerificaCampos(
  DataSource: TDataSource): Boolean;
Var
  C : Byte;
begin                                                             // A rotina ao lado faz um laço em todos os fields da
   Result := True;                                                // tabela  e procura por fields que sejam
   With(DataSource.DataSet)Do                                     // requeridos pelo sistema e estejam em branco.
   Begin                                                          // Se houver algum requerido em branco, então o sistema
      For C := 0 To FieldCount -1 Do                              // emitirá uma mensagem sobre o ocorrido e colocará o
      Begin                                                       // focus "SetFocus" no campo não preenchido;
         If((Fields[C].Required))And(Trim(Fields[C].Text)='')Then
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

procedure TfmCadastroPagar.btGravarClick(Sender: TObject);
begin
  dmSesi.cdsContaPagar.FieldByName('FORNECEDOR_IDFORNECEDOR').AsInteger:=IDFORNECEDOR;
  dmSesi.cdsContaPagar.FieldByName('ATIVO').AsString:='1';
  if VerificaCampos(dmSesi.dsContaPagar) then
    begin
      dmSesi.cdsContaPagar.ApplyUpdates(0);
      habilitacampos(false);
    end;
  fmContaPagar.cdsPagar.Close;
  fmContaPagar.cdsPagar.Params.ParamByName('fornecedor').AsInteger:=IDFORNECEDOR;
  fmContaPagar.cdsPagar.Open;
  fmContaPagar.totalizador;
  close;
end;

end.
