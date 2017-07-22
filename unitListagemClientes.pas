unit unitListagemClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLFilters, RLDraftFilter, RLPDFFilter, RLHTMLFilter,
  RLRichFilter, StdCtrls, RLXLSFilter, FMTBcd, Provider, SqlExpr, DB,
  DBClient, RLReport;

type
  TfmListagemClientes = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    txtNome: TEdit;
    Label2: TLabel;
    txtRamoAtividade: TEdit;
    Label3: TLabel;
    txtCidade: TEdit;
    btImprimir: TButton;
    Button2: TButton;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLDraftFilter1: TRLDraftFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    dscliente: TDataSource;
    cdscliente: TClientDataSet;
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
    sqlcliente: TSQLDataSet;
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
    dspcliente: TDataSetProvider;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLLabel12: TRLLabel;
    RLReport2: TRLReport;
    RLBand4: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLBand3: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText24: TRLDBText;
    CheckBox1: TCheckBox;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btImprimirClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Etiquetas;
  end;

var
  fmListagemClientes: TfmListagemClientes;

implementation
   uses UnitdmConect;
{$R *.dfm}

procedure TfmListagemClientes.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfmListagemClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmListagemClientes.btImprimirClick(Sender: TObject);
begin
  if (txtNome.Text = '') and (txtRamoAtividade.Text = '')  and (txtCidade.Text = '') then
    begin
       cdsCliente.Close;
       cdscliente.CommandText:='Select * from CLIENTE order by IDCLIENTE';
       cdsCliente.open;
    end;

  if (txtNome.Text <> '') and (txtRamoAtividade.Text = '')  and (txtCidade.Text = '') then
    begin
       cdsCliente.Close;
       cdsCliente.CommandText:='Select * from CLIENTE where  (CLIENTE.NOME like '+''''+'%'+txtNome.text+'%'+''') order by IDCLIENTE';
       cdsCliente.open;
    end;

  if (txtNome.Text = '') and (txtRamoAtividade.Text <>'')  and (txtCidade.Text = '') then
    begin
       cdsCliente.Close;
       cdscliente.CommandText:='Select * from CLIENTE where  (CLIENTE.RAMOATIVIDADE like '+''''+'%'+txtRamoAtividade.text+'%'+''') order by IDCLIENTE';
       cdsCliente.open;
    end;

  if (txtNome.Text = '') and (txtRamoAtividade.Text ='')  and (txtCidade.Text <> '') then
    begin
       cdsCliente.Close;
       cdscliente.CommandText:='Select * from CLIENTE where  (CLIENTE.CIDADE like '+''''+'%'+txtCidade.text+'%'+''') order by IDCLIENTE';
       cdsCliente.open;
    end;

  if (txtNome.Text = '') and (txtRamoAtividade.Text <>'')  and (txtCidade.Text <> '') then
    begin
       cdsCliente.Close;
       cdscliente.CommandText:='Select * from CLIENTE where  (CLIENTE.RAMOATIVIDADE ='+QuotedStr(txtRamoAtividade.Text)+') '+
          ' (CLIENTE.CIDADE =('+QuotedStr(txtCidade.Text)+') order by IDCLIENTE';
       cdsCliente.open;
    end;

  if (txtNome.Text <> '') and (txtRamoAtividade.Text <>'')  and (txtCidade.Text <> '') then
    begin
       cdsCliente.Close;
       cdsCliente.CommandText:='Select * from CLIENTE where  (CLIENTE.NOME like '+''''+'%'+txtNome.text+'%'+''') order by IDCLIENTE';
       cdsCliente.open;
    end;

  //impressão
  if CheckBox1.Checked = false then
    begin
      if RadioButton1.Checked = true then
        begin
          RLReport1.PreviewModal;
        end;
      if RadioButton2.Checked = true then
        begin
          RLReport2.PreviewModal;
        end;
    end
    else
    if CheckBox1.Checked = true then
      begin
          if messagedlg('Atenção! A impressora matricial está pronta para imprimmir?',mtinformation, [mbyes,mbno],0)= mryes then
              begin
                Etiquetas;
              end;
      end;
end;

procedure TfmListagemClientes.Etiquetas;
var
f:TextFile;
begin
  AssignFile(f,'LPT1:');
  ReWrite(f);
  Write(f);
  cdscliente.First;
  while not cdscliente.Eof do
    begin
      Writeln(f,format('%-40s',[cdsclienteNOME.AsString]));
      Writeln(f,format('%-40s',[cdsclienteENDERECO.AsString + ' - ' + cdsclienteBAIRRO.AsString]));
      Writeln(f,format('%-40s',[cdsclienteCEP.AsString + ' - '+ cdsclienteCIDADE.AsString + ' - '+cdsclienteESTADO.AsString]));;
      cdscliente.Next;
      Writeln(f);
      Writeln(f);
      Writeln(f);
    end;
   closefile(f);

end;

procedure TfmListagemClientes.CheckBox1Click(Sender: TObject);
begin
  RadioButton1.Checked:=false;
  RadioButton2.Checked:=false;
end;

end.
