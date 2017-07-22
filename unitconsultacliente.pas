unit UnitConsultaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, StdCtrls, ExtCtrls, DB, Provider,
  DBClient, SqlExpr, Buttons;

type
  TfmConsultaCliente = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Panel2: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    btProcura: TSpeedButton;
    sqlcliente: TSQLDataSet;
    cdscliente: TClientDataSet;
    dspcliente: TDataSetProvider;
    dscliente: TDataSource;
    sqlclienteIDCLIENTE: TIntegerField;
    sqlclienteNOME: TStringField;
    sqlclienteRAZAOSOCIAL: TStringField;
    sqlclienteRAMOATIVIDADE: TStringField;
    sqlclienteCONTATO: TStringField;
    sqlclienteCNPJCPF: TStringField;
    sqlclienteRGIE: TStringField;
    sqlclienteDATACADASTRO: TDateField;
    sqlclienteENDERECO: TStringField;
    sqlclienteBAIRRO: TStringField;
    sqlclienteCIDADE: TStringField;
    sqlclienteCEP: TStringField;
    sqlclienteESTADO: TStringField;
    sqlclienteTELEFONE: TStringField;
    sqlclienteFAX: TStringField;
    sqlclienteCELULAR: TStringField;
    sqlclienteEMAIL: TStringField;
    sqlclienteSITE: TStringField;
    sqlclienteOBS: TBlobField;
    sqlclienteATIVO: TStringField;
    cdsclienteIDCLIENTE: TIntegerField;
    cdsclienteNOME: TStringField;
    cdsclienteRAZAOSOCIAL: TStringField;
    cdsclienteRAMOATIVIDADE: TStringField;
    cdsclienteCONTATO: TStringField;
    cdsclienteCNPJCPF: TStringField;
    cdsclienteRGIE: TStringField;
    cdsclienteDATACADASTRO: TDateField;
    cdsclienteENDERECO: TStringField;
    cdsclienteBAIRRO: TStringField;
    cdsclienteCIDADE: TStringField;
    cdsclienteCEP: TStringField;
    cdsclienteESTADO: TStringField;
    cdsclienteTELEFONE: TStringField;
    cdsclienteFAX: TStringField;
    cdsclienteCELULAR: TStringField;
    cdsclienteEMAIL: TStringField;
    cdsclienteSITE: TStringField;
    cdsclienteOBS: TBlobField;
    cdsclienteATIVO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure btProcuraClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmConsultaCliente: TfmConsultaCliente;

implementation
  uses UnitDmConect, ContaReceber;
{$R *.dfm}

procedure TfmConsultaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fmContaReceber.cdscliente.Close;
  fmContaReceber.cdscliente.CommandText:='select * from CLIENTE  where (CLIENTE.IDCLIENTE='+QuotedStr(cdscliente.FieldByName('IDCLIENTE').AsString)+')';
  fmContaReceber.cdscliente.open;

  fmContaReceber.cdsReceber.Close;
  fmContaReceber.cdsReceber.Params.ParamByName('idcliente').AsInteger:=cdscliente.FieldByName('IDCLIENTE').AsInteger;
  fmContaReceber.cdsReceber.Open;

  fmContaReceber.edtCodigo.Text:= cdscliente.FieldByName('IDCLIENTE').AsString;
  fmContaReceber.edtNome.Text:= cdscliente.FieldByName('NOME').AsString;
  fmContaReceber.edtCPFCNPJ.Text:= cdscliente.FieldByName('CNPJCPF').AsString;
  fmContaReceber.IDCLIENTE:=cdscliente.FieldByName('IDCLIENTE').AsInteger;
  //fmContaReceber.IDRECEBER:=
  fmContaReceber.totalizador;
  action :=cafree;
end;

procedure TfmConsultaCliente.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TfmConsultaCliente.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
     btProcura.Click;
end;

procedure TfmConsultaCliente.btProcuraClick(Sender: TObject);
begin
  cdscliente.Close;
  cdscliente.CommandText:='select * from CLIENTE where (CLIENTE.NOME like '+''''+'%'+edit1.text+'%'+''')';
  cdscliente.open;
end;

procedure TfmConsultaCliente.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfmConsultaCliente.DBGrid1DblClick(Sender: TObject);
begin
  close;
end;

procedure TfmConsultaCliente.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    close;
end;

end.
