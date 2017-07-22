unit UnitConsultaProfessor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DB, DBClient, Grids, DBGrids,
  StdCtrls, Buttons, ExtCtrls;

type
  TfmConsultaProfessor = class(TForm)
    Panel1: TPanel;
    btProcura: TSpeedButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    dspprofessor: TDataSetProvider;
    cdsprofessor: TClientDataSet;
    dsprofessor: TDataSource;
    sqlprofessor: TSQLDataSet;
    sqlprofessorIDPROFESSOR: TIntegerField;
    sqlprofessorNOME: TStringField;
    sqlprofessorENDERECO: TStringField;
    sqlprofessorBAIRRO: TStringField;
    sqlprofessorCEP: TStringField;
    sqlprofessorCIDADE: TStringField;
    sqlprofessorESTADO: TStringField;
    sqlprofessorTELEFONE: TStringField;
    sqlprofessorCELULAR: TStringField;
    sqlprofessorESPECIFICACAO: TStringField;
    cdsprofessorIDPROFESSOR: TIntegerField;
    cdsprofessorNOME: TStringField;
    cdsprofessorENDERECO: TStringField;
    cdsprofessorBAIRRO: TStringField;
    cdsprofessorCEP: TStringField;
    cdsprofessorCIDADE: TStringField;
    cdsprofessorESTADO: TStringField;
    cdsprofessorTELEFONE: TStringField;
    cdsprofessorCELULAR: TStringField;
    cdsprofessorESPECIFICACAO: TStringField;
    procedure Button3Click(Sender: TObject);
    procedure btProcuraClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmConsultaProfessor: TfmConsultaProfessor;

implementation

{$R *.dfm}
  uses  UnitdmConect, UnitDmSesi, UnitCadastroProfessor;



procedure TfmConsultaProfessor.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TfmConsultaProfessor.btProcuraClick(Sender: TObject);
begin
  cdsprofessor.Close;
  cdsprofessor.CommandText:='select * from PROFESSOR where  (PROFESSOR.NOME like '+''''+'%'+edit1.text+'%'+''')';
  cdsprofessor.open;
end;

procedure TfmConsultaProfessor.DBGrid1DblClick(Sender: TObject);
begin
// seleciona a empresa para edição
  if not cdsprofessor.IsEmpty then
    begin
      dmsesi.cdsprofessor.Close;
      dmsesi.cdsprofessor.CommandText:='select  * from PROFESSOR where PROFESSOR.IDPROFESSOR ='+QuotedStr(cdsprofessor.fieldByName('IDPROFESSOR').asString);
      dmsesi.cdsprofessor.Open;

      // apresento o form para edição
      fmCadastroProfessor:=TfmCadastroProfessor.create(self);
      dmsesi.cdsprofessor.Active:=true;
      dmsesi.cdsprofessor.Edit;
      fmCadastroProfessor.habilitacampos(false);
      fmCadastroProfessor.showmodal;
    end;
end;

procedure TfmConsultaProfessor.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (not odd(cdsprofessor.RecNo)) then // Se for impar
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

procedure TfmConsultaProfessor.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    begin
       // seleciona a empresa para edição
      if not cdsprofessor.IsEmpty then
        begin
          dmsesi.cdsprofessor.Close;
          dmsesi.cdsprofessor.CommandText:='select * from PROFESSOR where PROFESSOR.IDPROFESSOR='+QuotedStr(cdsprofessor.fieldByName('IDPROFESSOR').asString);
          dmsesi.cdsprofessor.Open;
          // apresento o form para edição
          fmCadastroProfessor:=TfmCadastroProfessor.create(self);
          dmsesi.cdsprofessor.Active:=true;
          dmsesi.cdsprofessor.Edit;
          fmCadastroProfessor.habilitacampos(false);
          fmCadastroProfessor.showmodal;
        end;
    end;
end;

procedure TfmConsultaProfessor.Button1Click(Sender: TObject);
begin
  fmCadastroProfessor:=TfmCadastroProfessor.create(Application);
  dmsesi.cdsprofessor.Active:=true;
  dmsesi.cdsprofessor.Insert;
  fmCadastroProfessor.habilitacampos(true);
  fmCadastroProfessor.showmodal;
end;

procedure TfmConsultaProfessor.Button2Click(Sender: TObject);
begin
  if messagedlg('Confirma baixa do registro?',mtinformation, [mbyes,mbno],0)= mryes then
      begin
        dmsesi.cdsprofessor.Close;
        dmsesi.cdsprofessor.CommandText:='select * from PROFESSOR where PROFESSOR.IDPROFESSOR='+QuotedStr(cdsprofessor.fieldByName('IDPROFESSOR').asString);
        dmsesi.cdsprofessor.Open;
        dmsesi.cdsprofessor.Delete;
        dmsesi.cdsprofessor.ApplyUpdates(0);

        cdsprofessor.Close;
        cdsprofessor.CommandText:='Select * from PROFESSOR';
        cdsprofessor.Open;
      end;
end;

procedure TfmConsultaProfessor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmConsultaProfessor.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    btProcura.Click;
end;

end.
