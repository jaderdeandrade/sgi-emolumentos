unit UnitConsultaFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, StdCtrls, ExtCtrls, DB, Provider,
  DBClient, SqlExpr, Buttons;

type
  TfmConsultaFornecedor = class(TForm)
    sqlfornecedor: TSQLDataSet;
    cdsfornecedor: TClientDataSet;
    dspfornecedor: TDataSetProvider;
    dsfornecedor: TDataSource;
    Panel1: TPanel;
    Edit1: TEdit;
    Panel2: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    btProcura: TSpeedButton;
    sqlfornecedorID: TIntegerField;
    sqlfornecedorNOME: TStringField;
    sqlfornecedorCNPJ_CPF: TStringField;
    sqlfornecedorIE_RG: TStringField;
    sqlfornecedorENDERECO: TStringField;
    sqlfornecedorBAIRRO: TStringField;
    sqlfornecedorCEP: TStringField;
    sqlfornecedorCIDADE: TStringField;
    sqlfornecedorESTADO: TStringField;
    sqlfornecedorEMAIL: TStringField;
    sqlfornecedorSITE: TStringField;
    sqlfornecedorCONTATO: TStringField;
    sqlfornecedorOBSERVACAO: TStringField;
    cdsfornecedorID: TIntegerField;
    cdsfornecedorNOME: TStringField;
    cdsfornecedorCNPJ_CPF: TStringField;
    cdsfornecedorIE_RG: TStringField;
    cdsfornecedorENDERECO: TStringField;
    cdsfornecedorBAIRRO: TStringField;
    cdsfornecedorCEP: TStringField;
    cdsfornecedorCIDADE: TStringField;
    cdsfornecedorESTADO: TStringField;
    cdsfornecedorEMAIL: TStringField;
    cdsfornecedorSITE: TStringField;
    cdsfornecedorCONTATO: TStringField;
    cdsfornecedorOBSERVACAO: TStringField;
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
  fmConsultaFornecedor: TfmConsultaFornecedor;

implementation
  uses UnitdmConect, ContaPagar;
{$R *.dfm}

procedure TfmConsultaFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fmContaPagar.cdsPagar.Close;
  fmContaPagar.cdsPagar.Params.ParamByName('fornecedor').AsInteger:= cdsfornecedor.FieldByName('ID').AsInteger;
  fmContaPagar.cdsPagar.Open;

  fmContaPagar.edtCodigo.Text:= cdsfornecedor.FieldByName('ID').AsString;
  fmContaPagar.edtNome.Text:= cdsfornecedor.FieldByName('NOME').AsString;
  fmContaPagar.IDFORNECEDOR:=cdsfornecedor.FieldByName('ID').AsInteger;
  fmContaPagar.totalizador;
  action :=cafree;
end;

procedure TfmConsultaFornecedor.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (not odd(cdsfornecedor.RecNo)) then // Se for impar
    begin
      // Se a celula n�o est� selecionada
      if (not (gdSelected in State)) then
        begin
          // Define uma cor de fundo
          DBGrid1.Canvas.Brush.Color := $00E6E6E6;
          DBGrid1.Canvas.FillRect(Rect); // pinta a c�lula
          // pinta o texto padr�o
          DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
        end;
    end;
end;

procedure TfmConsultaFornecedor.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
     btProcura.Click;
end;

procedure TfmConsultaFornecedor.btProcuraClick(Sender: TObject);
begin
  cdsfornecedor.Close;
  cdsfornecedor.CommandText:='Select * from FORNECEDORES where (FORNECEDORES.NOME like '+''''+'%'+edit1.text+'%'+''')';
  cdsfornecedor.open;
  if cdsfornecedor.IsEmpty then
    begin
      cdsfornecedor.Close;
      cdsfornecedor.CommandText:='Select * from FORNECEDORES (FORNECEDORES.ID like '+''''+'%'+edit1.text+'%'+''')';
      cdsfornecedor.open;
    end;
end;

procedure TfmConsultaFornecedor.Button1Click(Sender: TObject);
begin
  fmContaPagar.IDFORNECEDOR:= cdsfornecedor.FieldByName('ID').AsInteger;
  close;
end;

procedure TfmConsultaFornecedor.DBGrid1DblClick(Sender: TObject);
begin
  close;
end;

procedure TfmConsultaFornecedor.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    close;
end;

end.
