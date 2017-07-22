unit UnitPesquisaTurma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, ExtCtrls, Grids, DBGrids, SqlExpr, DB,
  Provider, DBClient, Buttons;

type
  TfmPesquisaTurma = class(TForm)
    cdsTurma: TClientDataSet;
    dspTurma: TDataSetProvider;
    dsTurma: TDataSource;
    sqlTurma: TSQLDataSet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    btProcura: TSpeedButton;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btProcuraClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisaTurma: TfmPesquisaTurma;

implementation
  uses UnitdmConect, UnitDmSesi, UnitTurma;
{$R *.dfm}

procedure TfmPesquisaTurma.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (not odd(cdsTurma.RecNo)) then // Se for impar
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

procedure TfmPesquisaTurma.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfmPesquisaTurma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmPesquisaTurma.Button2Click(Sender: TObject);
begin
  dmsesi.cdsTurma.Active:=true;
  dmsesi.cdsTurma.Insert;
  dmsesi.spTurma.ExecProc;
  dmsesi.cdsTurma.FieldByName('IDTURMA').AsInteger:= dmsesi.spTurma.Params.ParamByName('ID').AsInteger;
  fmTurma:=TfmTurma.create(application);
  fmTurma.showmodal;

end;

procedure TfmPesquisaTurma.Button3Click(Sender: TObject);
begin
  if messagedlg('Confirma baixa do registro?',mtinformation, [mbyes,mbno],0)= mryes then
      begin
        dmsesi.cdsTurma.Close;
        dmsesi.cdsTurma.CommandText:='select * from TURMA where IDTURMA='+QuotedStr(cdsTurma.fieldByName('IDTURMA').asString);
        dmsesi.cdsTurma.Open;
        dmsesi.cdsTurma.Delete;
        dmsesi.cdsTurma.ApplyUpdates(0);
        
        cdsTurma.Close;
        cdsTurma.CommandText:='select * from TURMA';
        cdsTurma.Open;
      end;
end;

procedure TfmPesquisaTurma.btProcuraClick(Sender: TObject);
begin
  cdsTurma.Close;
  cdsTurma.CommandText:='Select * from TURMA where  (TURMA.DESCRICAO like '+''''+'%'+edit1.text+'%'+''')';
  cdsTurma.open;
end;

procedure TfmPesquisaTurma.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    btProcura.Click;
end;

procedure TfmPesquisaTurma.DBGrid1DblClick(Sender: TObject);
begin
// seleciona a empresa para edição
  if not cdsTurma.IsEmpty then
    begin
      dmsesi.cdsTurma.Close;
      dmsesi.cdsTurma.CommandText:='select  * from TURMA where TURMA.IDTURMA ='+QuotedStr(cdsTurma.FieldByName('IDTURMA').AsString);
      dmsesi.cdsTurma.Open;

      // apresento o form para edição
      fmTurma:=TfmTurma.create(application);
      dmsesi.cdsTurma.Active:=true;
      dmsesi.cdsTurma.Edit;
      fmTurma.habilitacampos(false);
      fmTurma.IDTURMA:= cdsTurma.FieldByName('IDTURMA').AsInteger;
      fmTurma.habilitaaluno(true);
      fmTurma.pesquisaaluno;
      fmTurma.showmodal;
    end;
end;

procedure TfmPesquisaTurma.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if not cdsTurma.IsEmpty then
        begin
          dmsesi.cdsTurma.Close;
          dmsesi.cdsTurma.CommandText:='select  * from TURMA where TURMA.IDTURMA ='+QuotedStr(cdsTurma.FieldByName('IDTURMA').AsString);
          dmsesi.cdsTurma.Open;

          // apresenta o form para edição
          fmTurma:=TfmTurma.create(application);
          dmsesi.cdsTurma.Active:=true;
          dmsesi.cdsTurma.Edit;
          fmTurma.habilitacampos(false);
          fmTurma.IDTURMA:= cdsTurma.FieldByName('IDTURMA').AsInteger;
          fmTurma.pesquisaaluno;
          fmTurma.habilitaaluno(true);
          fmTurma.showmodal;
        end;
    end;
end;

end.
