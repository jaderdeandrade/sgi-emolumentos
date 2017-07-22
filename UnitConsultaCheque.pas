unit UnitConsultaCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, Grids, DBGrids,
  StdCtrls, ExtCtrls, Buttons;

type
  TfmConsultaCheque = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    DBGrid1: TDBGrid;
    sqlCheque: TSQLDataSet;
    sqlChequeID: TIntegerField;
    sqlChequeVALOR: TFMTBCDField;
    sqlChequeEXTENSO: TStringField;
    sqlChequeCIDADE: TStringField;
    sqlChequeDIA: TStringField;
    sqlChequeANO: TStringField;
    sqlChequeNOME: TStringField;
    sqlChequeMES: TStringField;
    cdsCheque: TClientDataSet;
    cdsChequeID: TIntegerField;
    cdsChequeVALOR: TFMTBCDField;
    cdsChequeEXTENSO: TStringField;
    cdsChequeCIDADE: TStringField;
    cdsChequeDIA: TStringField;
    cdsChequeANO: TStringField;
    cdsChequeNOME: TStringField;
    cdsChequeMES: TStringField;
    dspCheque: TDataSetProvider;
    dsCheque: TDataSource;
    Panel2: TPanel;
    btProcura: TSpeedButton;
    edtpesquisa: TEdit;
    Label1: TLabel;
    Button1: TButton;
    sqlChequeBANCO: TStringField;
    sqlChequeUTILIZADO: TStringField;
    sqlChequeCHEQUENUM: TStringField;
    sqlChequeVISTO: TStringField;
    sqlChequeDATAEMISSAO: TDateField;
    cdsChequeBANCO: TStringField;
    cdsChequeUTILIZADO: TStringField;
    cdsChequeCHEQUENUM: TStringField;
    cdsChequeVISTO: TStringField;
    cdsChequeDATAEMISSAO: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtpesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btProcuraClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmConsultaCheque: TfmConsultaCheque;

implementation
     uses UnitdmConect, UnitDmSesi, UnitChequePrint;
{$R *.dfm}

procedure TfmConsultaCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmConsultaCheque.Button2Click(Sender: TObject);
begin
  if cdsCheque.RecordCount >= 1 then
    begin
      dmsesi.cdsCheque.Close;
      dmsesi.cdsCheque.CommandText:='select * from CHEQUEPRINT  where (CHEQUEPRINT.ID ='+QuotedStr(IntToStr(cdsChequeID.AsInteger))+')';
      dmsesi.cdsCheque.open;
      fmChequePrint.textID.Text:=IntToStr(dmsesi.cdsChequeID.AsInteger);
      fmChequePrint.textValor.Value:= dmsesi.cdsChequeVALOR.AsFloat;
      fmChequePrint.textExtenso.Text:= dmsesi.cdsChequeEXTENSO.AsString;
      fmChequePrint.textNome.Text:= dmsesi.cdsChequeNOME.AsString;
      fmChequePrint.textCidade.Text:= dmsesi.cdsChequeCIDADE.AsString;
      fmChequePrint.textMes.Text:= dmsesi.cdsChequeMES.AsString;
      fmChequePrint.textDia.Text:= dmsesi.cdsChequeDIA.AsString;
      fmChequePrint.textAno.Text:= dmsesi.cdsChequeANO.AsString;
      fmChequePrint.textNumCheque.Text:= dmsesi.cdsChequeCHEQUENUM.AsString;
      fmChequePrint.textBanco.Text:=dmsesi.cdsChequeBANCO.AsString;
      fmChequePrint.textUtilizado.Text:=dmsesi.cdsChequeUTILIZADO.AsString;
      fmChequePrint.textVisto.Text:=dmsesi.cdsChequeVISTO.AsString;
      fmChequePrint.Button2.Enabled:= true;
      dmsesi.cdsCheque.Edit;
    end;
  close;
end;

procedure TfmConsultaCheque.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (not odd(cdsCheque.RecNo)) then // Se for impar
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

procedure TfmConsultaCheque.edtpesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
     btProcura.Click;
end;

procedure TfmConsultaCheque.FormActivate(Sender: TObject);
begin
   cdsCheque.Open;
end;

procedure TfmConsultaCheque.btProcuraClick(Sender: TObject);
begin
   cdsCheque.Close;
   cdsCheque.CommandText:='select * from CHEQUEPRINT where  (CHEQUEPRINT.NOME like '+''''+'%'+edtpesquisa.text+'%'+''') order by ID';
   cdsCheque.open;
end;

procedure TfmConsultaCheque.DBGrid1DblClick(Sender: TObject);
begin
  Button2.Click;
end;

procedure TfmConsultaCheque.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    Button2.Click;
end;

procedure TfmConsultaCheque.Button1Click(Sender: TObject);
begin
  if  cdsCheque.RecordCount >= 1 then
    begin
      if messagedlg('Confirma baixa do registro?',mtinformation, [mbyes,mbno],0)= mryes then
          begin
            dmsesi.cdsCheque.Close;
            dmsesi.cdsCheque.CommandText:='select * from CHEQUEPRINT  where (CHEQUEPRINT.ID ='+QuotedStr(IntToStr(cdsChequeID.AsInteger))+')';
            dmsesi.cdsCheque.open;
            dmsesi.cdsCheque.Delete;
            dmsesi.cdsCheque.ApplyUpdates(0);
          end;
        cdsCheque.Close;
        cdsCheque.CommandText:='select * from CHEQUEPRINT';
        cdsCheque.open;
    end;
end;

end.
