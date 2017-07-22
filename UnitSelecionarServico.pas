unit UnitSelecionarServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, ExtCtrls, FMTBcd, Grids, DBGrids,
  DB, Provider, DBClient, SqlExpr, RLReport;

type
  TfmServicoRealizado = class(TForm)
    Panel1: TPanel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    cdsServicoRealizado: TClientDataSet;
    dspServicoRealizado: TDataSetProvider;
    dsServicoRealizado: TDataSource;
    sqlServicoRealizado: TSQLDataSet;
    sqlServicoRealizadoDATA_ATENDIMENTO: TDateField;
    sqlServicoRealizadoNUMERO_RECIBO: TIntegerField;
    sqlServicoRealizadoNOME: TStringField;
    sqlServicoRealizadoCNPJCPF: TStringField;
    cdsServicoRealizadoDATA_ATENDIMENTO: TDateField;
    cdsServicoRealizadoNUMERO_RECIBO: TIntegerField;
    cdsServicoRealizadoNOME: TStringField;
    cdsServicoRealizadoCNPJCPF: TStringField;
    cdsServicoRealizadoRECIBO: TStringField;
    sqlItens_Servico: TSQLDataSet;
    sqlItens_ServicoID: TIntegerField;
    sqlItens_ServicoIDCLIENTE_SERVICO: TIntegerField;
    sqlItens_ServicoQTDE: TIntegerField;
    sqlItens_ServicoCODIGO_EMOLUMENTO: TStringField;
    sqlItens_ServicoDESCRICAO: TStringField;
    sqlItens_ServicoRECOMPE: TFMTBCDField;
    sqlItens_ServicoEMOLUMENTO_LIQUIDO: TFMTBCDField;
    sqlItens_ServicoTAXA_FISCALIZACAO: TFMTBCDField;
    cdsItens_Servico: TClientDataSet;
    cdsItens_ServicoID: TIntegerField;
    cdsItens_ServicoIDCLIENTE_SERVICO: TIntegerField;
    cdsItens_ServicoQTDE: TIntegerField;
    cdsItens_ServicoCODIGO_EMOLUMENTO: TStringField;
    cdsItens_ServicoDESCRICAO: TStringField;
    cdsItens_ServicoRECOMPE: TFMTBCDField;
    cdsItens_ServicoEMOLUMENTO_LIQUIDO: TFMTBCDField;
    cdsItens_ServicoTAXA_FISCALIZACAO: TFMTBCDField;
    cdsItens_ServicoVALOR: TCurrencyField;
    dspItens_Servico: TDataSetProvider;
    dsItens_Servico: TDataSource;
    dspSelecionaRecibo: TDataSetProvider;
    dsSelecionaRecibo: TDataSource;
    sqlSelecionaRecibo: TSQLDataSet;
    sqlSelecionaReciboDATA_ATENDIMENTO: TDateField;
    sqlSelecionaReciboNUMERO_RECIBO: TIntegerField;
    sqlSelecionaReciboNOME: TStringField;
    sqlSelecionaReciboCNPJCPF: TStringField;
    sqlSelecionaReciboCODIGOS_ATOS_PRATICADOS: TStringField;
    Label4: TLabel;
    sqlSelecionaReciboID: TIntegerField;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    rlnumero: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    rlnome: TRLLabel;
    rldoc: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    rlData: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel27: TRLLabel;
    RLDraw5: TRLDraw;
    rlCodAtosPraticados: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    rlEmol: TRLLabel;
    rlRecompe: TRLLabel;
    rlTaxa: TRLLabel;
    rlTotal: TRLLabel;
    RLBand4: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLBand5: TRLBand;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    cdsSelecionaRecibo: TClientDataSet;
    cdsSelecionaReciboID: TIntegerField;
    cdsSelecionaReciboDATA_ATENDIMENTO: TDateField;
    cdsSelecionaReciboNUMERO_RECIBO: TIntegerField;
    cdsSelecionaReciboNOME: TStringField;
    cdsSelecionaReciboCNPJCPF: TStringField;
    cdsSelecionaReciboCODIGOS_ATOS_PRATICADOS: TStringField;
    RLLabel26: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel5: TRLLabel;
    sqlSelecionaReciboOBSERVACAO: TStringField;
    cdsSelecionaReciboOBSERVACAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cdsServicoRealizadoCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cdsItens_ServicoCalcFields(DataSet: TDataSet);
  private
     valor, emolumento, recompe, taxa : real;
  procedure totalizador;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmServicoRealizado: TfmServicoRealizado;

implementation
  uses UnitDmConect, UnitDmSesi, UnitBalcao;
{$R *.dfm}

procedure TfmServicoRealizado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:= caFree;
end;

procedure TfmServicoRealizado.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfmServicoRealizado.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (not odd(cdsServicoRealizado.RecNo)) then // Se for impar
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

procedure TfmServicoRealizado.cdsServicoRealizadoCalcFields(
  DataSet: TDataSet);
begin
  cdsServicoRealizadoRECIBO.AsString:= Format('%5.5d',[cdsServicoRealizadoNUMERO_RECIBO.AsInteger]);
end;

procedure TfmServicoRealizado.SpeedButton1Click(Sender: TObject);
var
  dataIni, dataFin : Tdate;
begin
 try
    dataIni:= StrtoDate(DateEdit1.Text);
    dataFin:= StrtoDate(DateEdit2.Text);
    //converta a data no padrao americano
    ShortDateFormat:='mm/dd/YYYY';
    DateEdit1.Text:=DatetoStr(dataIni);
    DateEdit2.Text:=DatetoStr(dataFin);

    cdsServicoRealizado.Close;
    cdsServicoRealizado.Params.ParamByName('data1').AsString:= DateEdit1.Text;
    cdsServicoRealizado.Params.ParamByName('data2').AsString:= DateEdit2.Text;
    cdsServicoRealizado.Open;

    ShortDateFormat:='dd/mm/YYYY';
    DateEdit1.Text:=DatetoStr(dataIni);
    DateEdit2.Text:=DatetoStr(dataFin);
  except
    begin
      ShowMessage('Data no formato inválido!');
    end;

  end;
end;
procedure TfmServicoRealizado.Button1Click(Sender: TObject);
begin
  cdsSelecionaRecibo.Close;
  cdsSelecionaRecibo.Params.ParamByName('recibo').AsInteger:= cdsServicoRealizadoNUMERO_RECIBO.AsInteger;
  cdsSelecionaRecibo.Open;

  cdsItens_Servico.Close;
  cdsItens_Servico.Params.ParamByName('idcliente_servico').AsInteger:= cdsSelecionaReciboID.AsInteger;
  cdsItens_Servico.Open;

  totalizador;

  rlnumero.Caption:=Format('%5.5d',[cdsSelecionaReciboNUMERO_RECIBO.AsInteger]);
  rlnome.Caption:= cdsSelecionaReciboNOME.AsString;
  rldoc.Caption:=  cdsSelecionaReciboCNPJCPF.AsString;
  rlEmol.Caption:= FloatToStr(emolumento);
  rlRecompe.Caption:= FloatToStr(recompe);
  rlTaxa.Caption:= FloatToStr(taxa);
  rlTotal.Caption:= FloatToStr(valor);
  rlData.Caption:= DateToStr(cdsSelecionaReciboDATA_ATENDIMENTO.AsDateTime);
  rlCodAtosPraticados.Caption:= cdsSelecionaReciboCODIGOS_ATOS_PRATICADOS.asString;

  RLReport1.PreviewModal;
end;

procedure TfmServicoRealizado.totalizador;
begin
  valor:=0;
  emolumento:=0;
  recompe:=0;
  taxa:=0;
      cdsItens_Servico.First;
      while not cdsItens_Servico.Eof do
        begin
          valor:= valor + cdsItens_ServicoVALOR.AsCurrency;
          emolumento:= emolumento + ( cdsItens_ServicoQTDE.AsInteger *  cdsItens_ServicoEMOLUMENTO_LIQUIDO.AsCurrency);
          recompe:= recompe + ( cdsItens_ServicoQTDE.AsInteger *  cdsItens_ServicoRECOMPE.AsCurrency);
          taxa:= taxa + ( cdsItens_ServicoQTDE.AsInteger *  cdsItens_ServicoTAXA_FISCALIZACAO.AsCurrency);
          cdsItens_Servico.Next;
        end;
end;

procedure TfmServicoRealizado.cdsItens_ServicoCalcFields(
  DataSet: TDataSet);
begin
  cdsItens_ServicoVALOR.AsCurrency:= cdsItens_ServicoQTDE.AsInteger * (cdsItens_ServicoRECOMPE.AsCurrency + cdsItens_ServicoEMOLUMENTO_LIQUIDO.AsCurrency + cdsItens_ServicoTAXA_FISCALIZACAO.AsCurrency);
end;

end.
