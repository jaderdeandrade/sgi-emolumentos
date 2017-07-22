unit UnitShowCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, FMTBcd, SqlExpr, DB,
  DBClient, Provider;

type
  TfmShowCliente = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    dscliente: TDataSource;
    dspcliente: TDataSetProvider;
    cdscliente: TClientDataSet;
    sqlcliente: TSQLDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  idcliente : integer;
    { Public declarations }
  end;

var
  fmShowCliente: TfmShowCliente;

implementation
      uses UnitdmConect, UnitCadCliente,UnitDmSesi;
{$R *.dfm}

procedure TfmShowCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmShowCliente.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfmShowCliente.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (not odd(cdscliente.RecNo)) then // Se for impar
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


procedure TfmShowCliente.Edit1Change(Sender: TObject);
begin
  cdsCliente.Close;
  cdsCliente.CommandText:='Select * from CLIENTE where  (CLIENTE.NOME like '+''''+'%'+edit1.text+'%'+''') ';
  cdsCliente.open;
end;

procedure TfmShowCliente.FormActivate(Sender: TObject);
begin
  cdscliente.Open;
end;

procedure TfmShowCliente.DBGrid1DblClick(Sender: TObject);
begin
  close;
end;

procedure TfmShowCliente.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
    close;  
end;

end.
