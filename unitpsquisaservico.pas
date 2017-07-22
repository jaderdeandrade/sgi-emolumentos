unit UnitPsquisaServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, StdCtrls, Buttons,
  ExtCtrls, Grids, DBGrids;

type
  TfmPesquisaServicos = class(TForm)
    Panel1: TPanel;
    btProcura: TSpeedButton;
    Edit1: TEdit;
    Panel2: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    dsServico: TDataSource;
    cdsServico: TClientDataSet;
    cdsServicoID: TIntegerField;
    cdsServicoDESCRICAO: TStringField;
    cdsServicoVALOR: TFMTBCDField;
    dspServico: TDataSetProvider;
    sqlServico: TSQLDataSet;
    sqlServicoID: TIntegerField;
    sqlServicoDESCRICAO: TStringField;
    sqlServicoVALOR: TFMTBCDField;
    procedure Button1Click(Sender: TObject);
    procedure btProcuraClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisaServicos: TfmPesquisaServicos;

implementation
   uses UnitdmConect,UnitCadastroReceber;
{$R *.dfm}

procedure TfmPesquisaServicos.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfmPesquisaServicos.btProcuraClick(Sender: TObject);
begin
  cdsServico.Close;
  cdsServico.CommandText:='Select * from SERVICO where ' +
                         ' (SERVICO.DESCRICAO like '+''''+'%'+edit1.text+'%'+''')';
  cdsServico.open;
end;

procedure TfmPesquisaServicos.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btProcura.Click;
end;

procedure TfmPesquisaServicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   fmCadastroReceber.DBEdit2.Text:= cdsServicoDESCRICAO.AsString;
   action:=cafree;
end;

procedure TfmPesquisaServicos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (not odd(cdsServico.RecNo)) then // Se for impar
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

procedure TfmPesquisaServicos.DBGrid1DblClick(Sender: TObject);
begin
  close;
end;

procedure TfmPesquisaServicos.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    close;
end;

end.
