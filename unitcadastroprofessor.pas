unit UnitCadastroProfessor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, DBCtrls, Mask;

type
  TfmCadastroProfessor = class(TForm)
    Panel1: TPanel;
    btGravar: TButton;
    btEditar: TButton;
    btCancela: TButton;
    Label1: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
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
  fmCadastroProfessor: TfmCadastroProfessor;

implementation

uses UnitDmSesi, UnitConsultaProfessor;

{$R *.dfm}

procedure TfmCadastroProfessor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TfmCadastroProfessor.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfmCadastroProfessor.habilitacampos(x: boolean);
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
        end
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

function TfmCadastroProfessor.VerificaCampos(
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

procedure TfmCadastroProfessor.btGravarClick(Sender: TObject);
begin
  if VerificaCampos(dmsesi.dsprofessor) then
    begin
      dmsesi.cdsprofessor.ApplyUpdates(0);
      habilitacampos(false);
    end;
  fmConsultaProfessor.cdsprofessor.Close;
  fmConsultaProfessor.cdsprofessor.CommandText:='select * from PROFESSOR';
  fmConsultaProfessor.cdsprofessor.Open;
end;

procedure TfmCadastroProfessor.btEditarClick(Sender: TObject);
begin
  dmsesi.cdsprofessor.Edit;
  habilitacampos(true);
end;

end.
