unit UnitCategorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, FMTBcd, SqlExpr,
  Provider, DB, DBClient;

type
  TfmCategorias = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCategorias: TfmCategorias;

implementation

uses UnitDmSesi;

{$R *.dfm}

procedure TfmCategorias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmCategorias.Button1Click(Sender: TObject);
begin
  dmsesi.cdsCategoria.ApplyUpdates(0);
  close;
end;

procedure TfmCategorias.FormActivate(Sender: TObject);
begin
  dmsesi.cdsCategoria.Open;
end;

procedure TfmCategorias.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TfmCategorias.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (not odd(dmsesi.cdsCategoria.RecNo)) then // Se for impar
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
end.
