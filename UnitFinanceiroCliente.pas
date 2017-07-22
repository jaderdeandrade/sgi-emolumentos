unit UnitFinanceiroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, FMTBcd, DB, Provider,
  DBClient, SqlExpr;

type
  TfmFinanceiroCliente = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    sqlModalidade: TSQLDataSet;
    cdsModalidade: TClientDataSet;
    dspModalidade: TDataSetProvider;
    dsModalidade: TDataSource;
    sqlModalidadeIDMODALIDADE: TIntegerField;
    sqlModalidadeDESCRICAO: TStringField;
    sqlModalidadeVALOR: TFMTBCDField;
    sqlModalidadeCLIENTE_IDCLIENTE: TIntegerField;
    cdsModalidadeIDMODALIDADE: TIntegerField;
    cdsModalidadeDESCRICAO: TStringField;
    cdsModalidadeVALOR: TFMTBCDField;
    cdsModalidadeCLIENTE_IDCLIENTE: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IDCLIENTE : integer;
    procedure financeirocliente(cliente : integer);
  end;

var
  fmFinanceiroCliente: TfmFinanceiroCliente;

implementation
    uses UnitDmConect,UnitModalidadeCliente,UnitDmSesi, UnitCadCliente;
{$R *.dfm}




procedure TfmFinanceiroCliente.financeirocliente(cliente: integer);
begin
  cdsModalidade.Close;
  cdsModalidade.Params.ParamByName('idcliente').AsInteger:= cliente;
  cdsModalidade.Open;
end;

procedure TfmFinanceiroCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmFinanceiroCliente.Button3Click(Sender: TObject);
begin
  dmsesi.cdsModalidade.Active:=true;
  dmsesi.cdsModalidade.Insert;
  dmsesi.cdsModalidadeCLIENTE_IDCLIENTE.AsInteger:=IDCLIENTE;
  fmModalidade:=TfmModalidade.Create(application);
  fmModalidade.IDCLIENTE:= IDCLIENTE;
  fmModalidade.ShowModal;
end;

procedure TfmFinanceiroCliente.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfmFinanceiroCliente.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (not odd(cdsModalidade.RecNo)) then // Se for impar
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

procedure TfmFinanceiroCliente.DBGrid1DblClick(Sender: TObject);
begin
  if not cdsModalidade.IsEmpty then
    begin
      dmsesi.cdsModalidade.Active:=true;
      fmModalidade:=TfmModalidade.Create(application);
      dmsesi.cdsModalidade.Active:=true;
      dmsesi.cdsModalidade.Close;
      dmsesi.cdsModalidade.CommandText:='select * from MODALIDADE where IDMODALIDADE ='+QuotedStr(cdsModalidade.FieldByName('IDMODALIDADE').AsString);
      dmsesi.cdsModalidade.Open;
      fmModalidade.habilitacampos(false);
      fmModalidade.IDCLIENTE:= IDCLIENTE;
      fmModalidade.ShowModal;

    end;
end;

procedure TfmFinanceiroCliente.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
    begin
      if not cdsModalidade.IsEmpty then
        begin
          dmsesi.cdsModalidade.Active:=true;
          fmModalidade:=TfmModalidade.Create(application);
          dmsesi.cdsModalidade.Active:=true;
          dmsesi.cdsModalidade.Close;
          dmsesi.cdsModalidade.CommandText:='select * from MODALIDADE where IDMODALIDADE ='+QuotedStr(cdsModalidade.FieldByName('IDMODALIDADE').AsString);
          dmsesi.cdsModalidade.Open;
          fmModalidade.habilitacampos(false);
          fmModalidade.IDCLIENTE:= IDCLIENTE;
          fmModalidade.ShowModal;

        end;
    end;
end;

procedure TfmFinanceiroCliente.Button2Click(Sender: TObject);
begin
  if messagedlg('Confirma baixa do registro?',mtinformation, [mbyes,mbno],0)= mryes then
      begin
        // seleciona empresa
        dmsesi.cdsModalidade.Close;
        dmsesi.cdsModalidade.CommandText:='select * from MODALIDADE where IDMODALIDADE ='+QuotedStr(cdsModalidade.FieldByName('IDMODALIDADE').AsString);
        dmsesi.cdsModalidade.Open;
        dmsesi.cdsModalidade.Delete;
        dmsesi.cdsModalidade.ApplyUpdates(0);
        financeirocliente(cdsModalidade.FieldByName('CLIENTE_IDCLIENTE').AsInteger);
      end;
end;

end.

