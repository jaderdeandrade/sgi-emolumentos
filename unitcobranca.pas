unit UnitCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, ComCtrls, FMTBcd, DB,
  Provider, DBClient, SqlExpr;

type
  TfmGeraCobranca = class(TForm)
    sqlEmpresa: TSQLDataSet;
    cdsEmpresa: TClientDataSet;
    dspEmpresa: TDataSetProvider;
    dsEmpresa: TDataSource;
    sqlServico: TSQLDataSet;
    cdsServico: TClientDataSet;
    dspServico: TDataSetProvider;
    dsServico: TDataSource;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Button1: TButton;
    sqlEmpresaIDCLIENTE: TIntegerField;
    sqlEmpresaNOME: TStringField;
    sqlEmpresaRAZAOSOCIAL: TStringField;
    sqlEmpresaRAMOATIVIDADE: TStringField;
    sqlEmpresaCONTATO: TStringField;
    sqlEmpresaCNPJCPF: TStringField;
    sqlEmpresaRGIE: TStringField;
    sqlEmpresaDATACADASTRO: TDateField;
    sqlEmpresaENDERECO: TStringField;
    sqlEmpresaBAIRRO: TStringField;
    sqlEmpresaCIDADE: TStringField;
    sqlEmpresaCEP: TStringField;
    sqlEmpresaESTADO: TStringField;
    sqlEmpresaTELEFONE: TStringField;
    sqlEmpresaFAX: TStringField;
    sqlEmpresaCELULAR: TStringField;
    sqlEmpresaEMAIL: TStringField;
    sqlEmpresaSITE: TStringField;
    sqlEmpresaOBS: TBlobField;
    sqlEmpresaATIVO: TStringField;
    cdsEmpresaIDCLIENTE: TIntegerField;
    cdsEmpresaNOME: TStringField;
    cdsEmpresaRAZAOSOCIAL: TStringField;
    cdsEmpresaRAMOATIVIDADE: TStringField;
    cdsEmpresaCONTATO: TStringField;
    cdsEmpresaCNPJCPF: TStringField;
    cdsEmpresaRGIE: TStringField;
    cdsEmpresaDATACADASTRO: TDateField;
    cdsEmpresaENDERECO: TStringField;
    cdsEmpresaBAIRRO: TStringField;
    cdsEmpresaCIDADE: TStringField;
    cdsEmpresaCEP: TStringField;
    cdsEmpresaESTADO: TStringField;
    cdsEmpresaTELEFONE: TStringField;
    cdsEmpresaFAX: TStringField;
    cdsEmpresaCELULAR: TStringField;
    cdsEmpresaEMAIL: TStringField;
    cdsEmpresaSITE: TStringField;
    cdsEmpresaOBS: TBlobField;
    cdsEmpresaATIVO: TStringField;
    sqlServicoIDMODALIDADE: TIntegerField;
    sqlServicoCONTA: TStringField;
    sqlServicoDESCRICAO: TStringField;
    sqlServicoDATAPAGAMENTO: TDateField;
    sqlServicoDATAMATRICULA: TDateField;
    sqlServicoVALOR: TFMTBCDField;
    sqlServicoDATABAIXA: TDateField;
    sqlServicoCLIENTE_IDCLIENTE: TIntegerField;
    cdsServicoIDMODALIDADE: TIntegerField;
    cdsServicoCONTA: TStringField;
    cdsServicoDESCRICAO: TStringField;
    cdsServicoDATAPAGAMENTO: TDateField;
    cdsServicoDATAMATRICULA: TDateField;
    cdsServicoVALOR: TFMTBCDField;
    cdsServicoDATABAIXA: TDateField;
    cdsServicoCLIENTE_IDCLIENTE: TIntegerField;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cdsEmpresaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGeraCobranca: TfmGeraCobranca;

implementation
   uses UnitdmConect, UnitDmSesi, Math;
{$R *.dfm}

procedure TfmGeraCobranca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmGeraCobranca.Button2Click(Sender: TObject);
var
  data1: Tdate;
  num,nuc: integer;
begin
  cdsEmpresa.Active:= true;
  dmsesi.cdsContaReceber.Active:=true;
  data1:= StrtoDate(DateEdit1.Text);
  ShortDateFormat:='mm/dd/YYYY';
  num:=0;
  nuc:=0;
  try
  if messagedlg('Confirma lançamento no Contas a Receber?',mtinformation, [mbyes,mbno],0)= mryes then
    begin
    if (DateEdit1.Text <> '') and (Edit1.Text <> '') then
      begin
        if  DateEdit1.Date < date then
          begin
            showmessage('ATENÇÃO! A data base não poder menor que a data atual.');
          end
        else
         begin
          cdsEmpresa.First;
          while not cdsEmpresa.Eof do
            begin
              cdsServico.Close;
              cdsServico.CommandText:='select * from MODALIDADE where CLIENTE_IDCLIENTE='+QuotedStr(cdsEmpresa.FieldByName('IDCLIENTE').AsString);
              cdsServico.Open;
              cdsServico.First;
              nuc:= nuc + 1;
              ProgressBar2.Position:= nuc;
              while not cdsServico.Eof do
                begin
                  if not cdsServico.IsEmpty then
                    begin
                      num:= num + 1;
                      ProgressBar1.Position:= num;
                      dmsesi.cdsContaReceber.Insert;
                      dmsesi.cdsContaReceberCLIENTE_IDCLIENTE.AsInteger:= cdsEmpresa.fieldbyname('IDCLIENTE').AsInteger;
                      dmsesi.cdsContaReceberDATA_EMISSAO.AsDateTime:= date;
                      dmsesi.cdsContaReceberDATA_VENCIMENTO.AsDateTime:= DateEdit1.Date;
                      dmsesi.cdsContaReceberDESCRICAO.AsString:=cdsServico.fieldbyname('DESCRICAO').AsString +' / '+ Edit1.Text;
                      dmsesi.cdsContaReceberDEBITO.AsFloat:= cdsServico.fieldbyname('VALOR').AsFloat;
                      dmsesi.cdsContaReceberATIVO.AsString:='1';
                      dmsesi.cdsContaReceber.ApplyUpdates(0);
                    end;
                    cdsServico.Next;
                  end;
              cdsEmpresa.Next;
              end;
         end
      end
    else
      begin
         showmessage('ATENÇÃO! Todos os campos são obrigatórios.');
      end;
  end;
  except
   //showmessage('ATENÇÃO! Todos os campos são obrigatórios.');
  end;
  ShortDateFormat:='dd/mm/YYYY';
  DateEdit1.Text:=DatetoStr(data1);
  // close;
end;

procedure TfmGeraCobranca.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfmGeraCobranca.cdsEmpresaCalcFields(DataSet: TDataSet);
begin
 cdsEmpresa.FieldByName('VALOR_COBRANCA').AsFloat:= cdsEmpresa.FieldByName('QTDEEMPREGADOS').AsInteger * cdsEmpresa.FieldByName('VALOREMPREGADO').AsFloat;
end;

end.
