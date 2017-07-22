unit UnitShowDependente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, FMTBcd, SqlExpr, DB,
  DBClient, Provider;

type
  TfmShowDependente = class(TForm)
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
  procedure dependente(titular: String);
    { Public declarations }
  end;

var
  fmShowDependente: TfmShowDependente;

implementation
      uses UnitdmConect, UnitCadCliente,UnitDmSesi;
{$R *.dfm}

procedure TfmShowDependente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmShowDependente.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfmShowDependente.DBGrid1DrawColumnCell(Sender: TObject;
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


procedure TfmShowDependente.Edit1Change(Sender: TObject);
begin
  cdsCliente.Close;
  cdsCliente.CommandText:='Select * from CLIENTE where  (CLIENTE.NOME like '+''''+'%'+edit1.text+'%'+''') '+
                          ' and (CLIENTE.DEPENDENTE='+QuotedStr('S')+')';
  cdsCliente.open;
end;

procedure TfmShowDependente.FormActivate(Sender: TObject);
begin
  cdscliente.Open;
end;

procedure TfmShowDependente.DBGrid1DblClick(Sender: TObject);
begin
  close;
end;

procedure TfmShowDependente.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
    close;  
end;


procedure TfmShowDependente.dependente(titular: String);
begin
  cdscliente.Close;
  cdscliente.CommandText:='select * from CLIENTE where COTATITULAR='+QuotedStr(titular);
  cdscliente.Open;
end;

end.
