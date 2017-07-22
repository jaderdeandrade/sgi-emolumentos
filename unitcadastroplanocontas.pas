unit UnitCadastroPlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Mask,DB;

type
  TformCadastroPlanoContas = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Panel1: TPanel;
    btGravar: TButton;
    btCancelar: TButton;
    btEditar: TButton;
    DBComboBox1: TDBComboBox;
    Button1: TButton;
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
   private
    { Private declarations }
  public
    procedure habilitacampos(x: boolean);
    Function VerificaCampos(DataSource : TDataSource) : Boolean;
    { Public declarations }
  end;

var
  formCadastroPlanoContas: TformCadastroPlanoContas;

implementation

uses UnitDmSesi, UnitPlanoContas,UnitdmConect;

{$R *.dfm}

procedure TformCadastroPlanoContas.btCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TformCadastroPlanoContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmPlanoContas.cdsPlanoConta.Close;
  fmPlanoContas.cdsPlanoConta.Open;  
  action:=cafree;
end;

procedure TformCadastroPlanoContas.habilitacampos(x: boolean);
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

            if Self.Components[count].ClassType = TDBComboBox then
            (Self.Components[count] as TDBComboBox).Enabled:= true;

            if Self.Components[count].ClassType = TButton then
              begin
               if (Self.Components[count] as TButton).Name = 'btGravar' then
                (Self.Components[count] as TButton).Enabled:= true;
              end;

        end;
    end;

end;

function TformCadastroPlanoContas.VerificaCampos(
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

procedure TformCadastroPlanoContas.btGravarClick(Sender: TObject);
begin
 dmsesi.cdsPlanoContaTIPO.AsString:= DBComboBox1.Text;
  if VerificaCampos(dmsesi.dsPlanoConta) then
    begin
      dmsesi.cdsPlanoConta.ApplyUpdates(0);
      habilitacampos(false);
    end;
end;

procedure TformCadastroPlanoContas.FormActivate(Sender: TObject);
begin
  dmsesi.cdsPlanoConta.Open;
end;

procedure TformCadastroPlanoContas.Button1Click(Sender: TObject);
begin
  dmsesi.cdsPlanoConta.Insert;
  dmsesi.spPlanoConta.ExecProc;
  dmsesi.cdsPlanoConta.FieldByName('IDPLANOCONTAS').AsInteger:=dmsesi.spPlanoConta.Params.ParamByName('ID').AsInteger;
  habilitacampos(true);
end;

procedure TformCadastroPlanoContas.btEditarClick(Sender: TObject);
begin
  dmsesi.cdsContaPlano.Edit;
  habilitacampos(true);
end;

end.
