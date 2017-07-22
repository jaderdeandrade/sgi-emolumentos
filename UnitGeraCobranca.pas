unit UnitGeraCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, ToolEdit, ExtCtrls, FMTBcd, DB,
  Provider, DBClient, SqlExpr;

type
  TfmGerarPesquisa = class(TForm)
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Label3: TLabel;
    Timer1: TTimer;
    sqlModalidade: TSQLDataSet;
    cdsModalidade: TClientDataSet;
    dspModalidade: TDataSetProvider;
    dsModalidade: TDataSource;
    dtEmissao: TDateEdit;
    dtVencimento: TDateEdit;
    Button1: TButton;
    Button2: TButton;
    sqlModalidadeIDMODALIDADE: TIntegerField;
    sqlModalidadeDESCRICAO: TStringField;
    sqlModalidadeVALOR: TFMTBCDField;
    sqlModalidadeCLIENTE_IDCLIENTE: TIntegerField;
    sqlModalidadeNOME: TStringField;
    sqlModalidadeRAZAOSOCIAL: TStringField;
    sqlModalidadeCNPJCPF: TStringField;
    sqlModalidadeATIVO: TStringField;
    cdsModalidadeIDMODALIDADE: TIntegerField;
    cdsModalidadeDESCRICAO: TStringField;
    cdsModalidadeVALOR: TFMTBCDField;
    cdsModalidadeCLIENTE_IDCLIENTE: TIntegerField;
    cdsModalidadeNOME: TStringField;
    cdsModalidadeRAZAOSOCIAL: TStringField;
    cdsModalidadeCNPJCPF: TStringField;
    cdsModalidadeATIVO: TStringField;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGerarPesquisa: TfmGerarPesquisa;

implementation
   uses UnitdmConect, UnitDmSesi;
{$R *.dfm}

procedure TfmGerarPesquisa.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfmGerarPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmGerarPesquisa.Button1Click(Sender: TObject);
begin
  cdsModalidade.Open;
  if messagedlg('Confirma lançamento de registros '+#13+
    'para todos os clientes no Contas a Receber?',mtConfirmation, [mbyes,mbno],0)= mryes then
    begin
      dmsesi.cdsContaReceber.Active:=true;
      ProgressBar1.Visible:=true;
      cdsModalidade.First;
      while not cdsModalidade.Eof do
        begin
          dmsesi.cdsContaReceber.Insert;
          dmsesi.cdsContaReceberCLIENTE_IDCLIENTE.AsInteger:= cdsModalidadeCLIENTE_IDCLIENTE.AsInteger;
          dmsesi.cdsContaReceberDATA_EMISSAO.AsDateTime:= dtEmissao.Date;
          dmsesi.cdsContaReceberDATA_VENCIMENTO.AsDateTime:= dtVencimento.Date;
          dmsesi.cdsContaReceberDESCRICAO.AsString:= cdsModalidadeDESCRICAO.AsString;
          dmsesi.cdsContaReceberDEBITO.AsFloat:= cdsModalidadeVALOR.AsFloat;
          dmsesi.cdsContaReceberATIVO.AsString:= '1';
          dmsesi.cdsContaReceber.ApplyUpdates(0);
          ProgressBar1.Position:= ProgressBar1.Position + 1;
          cdsModalidade.Next;
        end;
        ProgressBar1.Visible:=false;
    end;
end;

end.
