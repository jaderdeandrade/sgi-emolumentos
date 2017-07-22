unit UnitConsultaClienteMantContReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, StdCtrls, ExtCtrls, DB, Provider,
  DBClient, SqlExpr, Buttons;

type
  TfmConsultaClienteManutContReceber = class(TForm)
    sqlempresa: TSQLDataSet;
    cdsempresa: TClientDataSet;
    dspempresa: TDataSetProvider;
    dsempresa: TDataSource;
    Panel1: TPanel;
    Edit1: TEdit;
    Panel2: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    btProcura: TSpeedButton;
    sqlempresaIDCLIENTE: TIntegerField;
    sqlempresaNOME: TStringField;
    sqlempresaRAZAOSOCIAL: TStringField;
    sqlempresaRAMOATIVIDADE: TStringField;
    sqlempresaCONTATO: TStringField;
    sqlempresaCNPJCPF: TStringField;
    sqlempresaRGIE: TStringField;
    sqlempresaDATACADASTRO: TDateField;
    sqlempresaENDERECO: TStringField;
    sqlempresaBAIRRO: TStringField;
    sqlempresaCIDADE: TStringField;
    sqlempresaCEP: TStringField;
    sqlempresaESTADO: TStringField;
    sqlempresaTELEFONE: TStringField;
    sqlempresaFAX: TStringField;
    sqlempresaCELULAR: TStringField;
    sqlempresaEMAIL: TStringField;
    sqlempresaSITE: TStringField;
    sqlempresaOBS: TBlobField;
    sqlempresaATIVO: TStringField;
    cdsempresaIDCLIENTE: TIntegerField;
    cdsempresaNOME: TStringField;
    cdsempresaRAZAOSOCIAL: TStringField;
    cdsempresaRAMOATIVIDADE: TStringField;
    cdsempresaCONTATO: TStringField;
    cdsempresaCNPJCPF: TStringField;
    cdsempresaRGIE: TStringField;
    cdsempresaDATACADASTRO: TDateField;
    cdsempresaENDERECO: TStringField;
    cdsempresaBAIRRO: TStringField;
    cdsempresaCIDADE: TStringField;
    cdsempresaCEP: TStringField;
    cdsempresaESTADO: TStringField;
    cdsempresaTELEFONE: TStringField;
    cdsempresaFAX: TStringField;
    cdsempresaCELULAR: TStringField;
    cdsempresaEMAIL: TStringField;
    cdsempresaSITE: TStringField;
    cdsempresaOBS: TBlobField;
    cdsempresaATIVO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure btProcuraClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmConsultaClienteManutContReceber: TfmConsultaClienteManutContReceber;

implementation
  uses unitdmConect, UnitManutencaoContasReceber;
{$R *.dfm}

procedure TfmConsultaClienteManutContReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  action :=cafree;
end;

procedure TfmConsultaClienteManutContReceber.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (not odd(cdsempresa.RecNo)) then // Se for impar
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

procedure TfmConsultaClienteManutContReceber.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
     btProcura.Click;
end;

procedure TfmConsultaClienteManutContReceber.btProcuraClick(Sender: TObject);
begin
  cdsEmpresa.Close;
  cdsempresa.CommandText:='select * from CLIENTE  where (CLIENTE.ATIVO ='+QuotedStr('1')+') and ' +
                         ' (CLIENTE.NOME like '+''''+'%'+edit1.text+'%'+''')';
  cdsEmpresa.open;

end;

procedure TfmConsultaClienteManutContReceber.FormActivate(Sender: TObject);
begin
  cdsempresa.Active:= true;
end;

procedure TfmConsultaClienteManutContReceber.Button1Click(Sender: TObject);
begin
  fmManutencaoContasReceber.cdsEmpresa.Close;
  fmManutencaoContasReceber.cdsEmpresa.CommandText:='select * from CLIENTE  where (CLIENTE.ATIVO ='+QuotedStr('1')+') and ' +
                         ' (CLIENTE.IDCLIENTE='+QuotedStr(IntToStr(cdsempresa.FieldByName('IDCLIENTE').AsInteger))+')';
  fmManutencaoContasReceber.cdsEmpresa.open;
  
  fmManutencaoContasReceber.cdsReceber.Close;
  fmManutencaoContasReceber.cdsReceber.Params.ParamByName('empresa').AsInteger:=cdsempresa.FieldByName('IDCLIENTE').AsInteger;
  fmManutencaoContasReceber.cdsReceber.Open;

  fmManutencaoContasReceber.edtCodigo.Text:= cdsempresa.FieldByName('IDCLIENTE').AsString;
  fmManutencaoContasReceber.edtNome.Text:= cdsempresa.FieldByName('NOME').AsString;
  fmManutencaoContasReceber.edtCPFCNPJ.Text:= cdsempresa.FieldByName('CNPJCPF').AsString;
  fmManutencaoContasReceber.IDEMPRESA:=cdsempresa.FieldByName('IDCLIENTE').AsInteger;
  //fmContaReceber.IDRECEBER:= 
  fmManutencaoContasReceber.totalizador;
  close;
end;

procedure TfmConsultaClienteManutContReceber.DBGrid1DblClick(Sender: TObject);
begin
  Button1.Click;
end;

procedure TfmConsultaClienteManutContReceber.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    Button1.Click;
end;

end.
