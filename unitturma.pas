unit UnitTurma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Mask, ExtCtrls, Grids, DBGrids,
  FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TfmTurma = class(TForm)
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Panel1: TPanel;
    btGravar: TButton;
    btEditar: TButton;
    btCancela: TButton;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btNovo: TButton;
    btExcluir: TButton;
    Label1: TLabel;
    sqlalunos: TSQLDataSet;
    dspalunos: TDataSetProvider;
    dsalunos: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit13: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    dspprofessor: TDataSetProvider;
    cdsprofessor: TClientDataSet;
    cdsprofessorNOME: TStringField;
    cdsprofessorENDERECO: TStringField;
    cdsprofessorBAIRRO: TStringField;
    cdsprofessorCEP: TStringField;
    cdsprofessorCIDADE: TStringField;
    cdsprofessorESTADO: TStringField;
    cdsprofessorCPF: TStringField;
    cdsprofessorIDENTIDADE: TStringField;
    cdsprofessorTELEFONE: TStringField;
    cdsprofessorCELULAR: TStringField;
    cdsprofessorEMAIL: TStringField;
    cdsprofessorESPECIFICACAO: TStringField;
    cdsprofessorIDPROFESSOR: TIntegerField;
    dsprofessor: TDataSource;
    sqlprofessor: TSQLDataSet;
    sqlprofessorIDPROFESSOR: TIntegerField;
    sqlprofessorNOME: TStringField;
    sqlprofessorENDERECO: TStringField;
    sqlprofessorBAIRRO: TStringField;
    sqlprofessorCEP: TStringField;
    sqlprofessorCIDADE: TStringField;
    sqlprofessorESTADO: TStringField;
    sqlprofessorCPF: TStringField;
    sqlprofessorIDENTIDADE: TStringField;
    sqlprofessorTELEFONE: TStringField;
    sqlprofessorCELULAR: TStringField;
    sqlprofessorEMAIL: TStringField;
    sqlprofessorESPECIFICACAO: TStringField;
    dsservico: TDataSource;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
    cdsServicoIDSERVICO: TIntegerField;
    cdsServicoDESCRICAO: TStringField;
    cdsServicoVALOR: TFMTBCDField;
    cdsServicoCONTA: TStringField;
    sqlServico: TSQLDataSet;
    sqlServicoIDSERVICO: TIntegerField;
    sqlServicoDESCRICAO: TStringField;
    sqlServicoVALOR: TFMTBCDField;
    sqlServicoCONTA: TStringField;
    sqlalunosIDALUNO: TIntegerField;
    sqlalunosIDTURMA: TIntegerField;
    sqlalunosNOME: TStringField;
    sqlalunosDATAMATRICULA: TDateField;
    sqlalunosBAIXA: TDateField;
    cdsalunos: TClientDataSet;
    cdsalunosIDALUNO: TIntegerField;
    cdsalunosIDTURMA: TIntegerField;
    cdsalunosNOME: TStringField;
    cdsalunosDATAMATRICULA: TDateField;
    cdsalunosBAIXA: TDateField;
    procedure btCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
  IDTURMA: Integer;
  procedure habilitacampos(x: boolean);
  Function VerificaCampos(DataSource : TDataSource) : Boolean;
  procedure habilitaaluno(x: boolean);    
  procedure pesquisaaluno;
    { Public declarations }

  end;

var
  fmTurma: TfmTurma;
  
implementation

uses UnitDmSesi,UnitPesquisaTurma, UnitCadastroAlunos;

{$R *.dfm}

procedure TfmTurma.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfmTurma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmTurma.habilitacampos(x: boolean);
var
  count : integer;
begin
  for count:=0 to Pred(Self.ComponentCount) do
  begin
    if x = false then
      begin
        if Self.Components[count].ClassType = TDBEdit then
        (Self.Components[count] as TDBEdit).Enabled:= false;

        if Self.Components[count].ClassType = TDBCheckBox then
        (Self.Components[count] as TDBCheckBox).Enabled:= false;        

        if Self.Components[count].ClassType = TDBLookupComboBox then
        (Self.Components[count] as TDBLookupComboBox).Enabled:= false;

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

        if Self.Components[count].ClassType = TDBCheckBox then
        (Self.Components[count] as TDBCheckBox).Enabled:= true;

        if Self.Components[count].ClassType = TDBLookupComboBox then
        (Self.Components[count] as TDBLookupComboBox).Enabled:= true;

        if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btGravar' then
          (Self.Components[count] as TButton).Enabled:= true;
        end;
      end;
  end;

end;

function TfmTurma.VerificaCampos(DataSource: TDataSource): Boolean;
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

procedure TfmTurma.btEditarClick(Sender: TObject);
begin
  dmsesi.cdsTurma.Edit;
  habilitacampos(true);
end;

procedure TfmTurma.habilitaaluno(x: boolean);
var
  count : integer;
begin
  for count:=0 to Pred(Self.ComponentCount) do
  begin
    if x = false then
      begin
       if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btNovo' then
          (Self.Components[count] as TButton).Enabled:= false;
        end;
       if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btExcluir' then
          (Self.Components[count] as TButton).Enabled:= false;
        end;
      end
    else
    if x = true then
      begin
       if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btNovo' then
          (Self.Components[count] as TButton).Enabled:= true;
        end;
       if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btExcluir' then
          (Self.Components[count] as TButton).Enabled:= true;
        end;
      end;
  end;

end;

procedure TfmTurma.btGravarClick(Sender: TObject);
begin
  if VerificaCampos(dmsesi.dsTurma) then
    begin
      dmsesi.cdsTurma.ApplyUpdates(0);
      habilitacampos(false);
      habilitaaluno(true);
      IDTURMA:= dmsesi.cdsTurmaIDTURMA.AsInteger;
    end;
  fmPesquisaTurma.cdsTurma.Close;
  fmPesquisaTurma.cdsTurma.CommandText:='select * from TURMA';
  fmPesquisaTurma.cdsTurma.Open;
end;

procedure TfmTurma.FormActivate(Sender: TObject);
begin
  cdsServico.Open;
  cdsprofessor.Open;
  end;

procedure TfmTurma.btNovoClick(Sender: TObject);
begin
  dmsesi.cdsalunos.Active:=true;
  dmsesi.cdsalunos.Insert;
  fmCadastroAlunos:=TfmCadastroAlunos.create(application);
  fmCadastroAlunos.IDTURMA:=IDTURMA;
  fmCadastroAlunos.showmodal;
end;

procedure TfmTurma.btExcluirClick(Sender: TObject);
begin
  if messagedlg('Confirma baixa do registro?',mtinformation, [mbyes,mbno],0)= mryes then
      begin
        dmsesi.cdsalunos.Close;
        dmsesi.cdsalunos.CommandText:='select * from ALUNOS where ALUNOS.IDTURMA ='+QuotedStr(IntToStr(IDTURMA));
        dmsesi.cdsalunos.Open;
        dmsesi.cdsalunos.Delete;
        dmsesi.cdsalunos.ApplyUpdates(0);
        pesquisaaluno;
      end;
end;

procedure TfmTurma.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (not odd(cdsalunos.RecNo)) then // Se for impar
      begin
        // Se a celula não está selecionada
        if (not (gdSelected in State)) then
          begin
            // Define uma cor de fundo
            DBGrid1.Canvas.Brush.Color := $00E6E6E6;
            DBGrid1.Canvas.FillRect(Rect); // pinta a célula
            // pinta o texto padrão
            DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
          end;
      end;
end;

procedure TfmTurma.pesquisaaluno;
begin
  cdsalunos.Close;
  cdsalunos.CommandText:='select * from ALUNOS where ALUNOS.IDTURMA ='+QuotedStr(IntToStr(IDTURMA));
  cdsalunos.Open;
end;

end.
