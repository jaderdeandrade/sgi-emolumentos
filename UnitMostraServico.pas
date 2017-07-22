unit UnitMostraServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, DBClient, Provider, Grids, DBGrids,
  StdCtrls, ExtCtrls;

type
  TfmMostraServico = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    btEditar: TButton;
    DBGrid1: TDBGrid;
    dsservico: TDataSource;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
    sqlServico: TSQLDataSet;
    edtpesquisa: TEdit;
    Button2: TButton;
    sqlServicoIDSERVICO: TIntegerField;
    sqlServicoCODIGO_EMOLUMENTO: TStringField;
    sqlServicoDESCRICAO: TStringField;
    sqlServicoRECOMPE: TFMTBCDField;
    sqlServicoEMOLUMENTO_LIQUIDO: TFMTBCDField;
    sqlServicoTAXA_EMOLUMENTO: TFMTBCDField;
    cdsServicoIDSERVICO: TIntegerField;
    cdsServicoCODIGO_EMOLUMENTO: TStringField;
    cdsServicoDESCRICAO: TStringField;
    cdsServicoRECOMPE: TFMTBCDField;
    cdsServicoEMOLUMENTO_LIQUIDO: TFMTBCDField;
    cdsServicoTAXA_EMOLUMENTO: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtpesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btEditarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure cdsServicoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMostraServico: TfmMostraServico;

implementation
      uses UnitdmConect,UnitServico,UnitDmSesi;
{$R *.dfm}

procedure TfmMostraServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmMostraServico.edtpesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
     cdsServico.Close;
     cdsServico.CommandText:='select * from SERVICO where  (SERVICO.DESCRICAO like '+''''+'%'+edtpesquisa.text+'%'+''')';
     cdsServico.open;

     if cdsServico.RecordCount = 0 then
      begin
         cdsServico.Close;
         cdsServico.CommandText:='select * from SERVICO where  (SERVICO.CODIGO_EMOLUMENTO like '+''''+'%'+edtpesquisa.text+'%'+''')';
         cdsServico.open;
      end
    end;
end;

procedure TfmMostraServico.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (not odd(cdsServico.RecNo)) then // Se for impar
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

procedure TfmMostraServico.btEditarClick(Sender: TObject);
begin
  dmsesi.cdsServico.Active:=true;
  dmsesi.cdsServico.Insert;
  fmServico:=TfmServico.create(application);
  fmServico.Show;
end;

procedure TfmMostraServico.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfmMostraServico.Button2Click(Sender: TObject);
begin
    if messagedlg('Confirma baixa do registro?',mtinformation, [mbyes,mbno],0)= mryes then
      begin
        // seleciona empresa
        dmsesi.cdsServico.Close;
        dmsesi.cdsServico.CommandText:='select * from SERVICO where IDSERVICO='+ QuotedStr(cdsServico.FieldByName('IDSERVICO').AsString);
        dmsesi.cdsServico.Open;
        dmsesi.cdsServico.Delete;
        dmsesi.cdsServico.ApplyUpdates(0);
        cdsServico.Close;
        cdsServico.CommandText:='select * from SERVICO';
        cdsServico.Open;
      end;
end;

procedure TfmMostraServico.DBGrid1DblClick(Sender: TObject);
begin
  if not cdsServico.IsEmpty then
    begin
      fmServico:=TfmServico.create(application);
      dmsesi.cdscliente.Active:=true;
      dmsesi.cdsServico.Close;
      dmsesi.cdsServico.CommandText:='select * from SERVICO where IDSERVICO='+ QuotedStr(cdsServico.FieldByName('IDSERVICO').AsString);
      dmsesi.cdsServico.Open;
      fmServico.habilitacampos(false);
      fmServico.show;
    end;
end;

procedure TfmMostraServico.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
    begin
      if not cdsServico.IsEmpty then
        begin
          fmServico:=TfmServico.create(application);
          dmsesi.cdscliente.Active:=true;
          dmsesi.cdsServico.Close;
          dmsesi.cdsServico.CommandText:='select * from SERVICO where IDSERVICO='+ QuotedStr(cdsServico.FieldByName('IDSERVICO').AsString);
          dmsesi.cdsServico.Open;
          fmServico.habilitacampos(false);
          fmServico.show;
        end;
    end;
end;

procedure TfmMostraServico.DBGrid1TitleClick(Column: TColumn);
var
  campo:string;
begin
  campo:=column.fieldname; // CAMPO RECEBE O NOME DA COLUNA CLICADA,
  application.ProcessMessages; // para considerar algo que aconte�a no dbgrid durante a entrada nesta procedure
  if not cdsServico.IsEmpty then
    begin
      cdsServico.Close;
      cdsServico.CommandText:='select * from SERVICO order by '+campo;
      cdsServico.Open;
    end;

end;

procedure TfmMostraServico.cdsServicoCalcFields(DataSet: TDataSet);
begin
  cdsServico.FieldByName('EMOLUMENTO_BRUTO').AsFloat:= cdsServico.FieldByName('RECOMPE').AsFloat +
  cdsServico.FieldByName('EMOLUMENTO_LIQUIDO').AsFloat;

  cdsServico.FieldByName('VALOR_FINAL').AsFloat:= cdsServico.FieldByName('EMOLUMENTO_BRUTO').AsFloat +  cdsServico.FieldByName('RECOMPE').AsFloat +
  cdsServico.FieldByName('EMOLUMENTO_LIQUIDO').AsFloat;
end;

end.
