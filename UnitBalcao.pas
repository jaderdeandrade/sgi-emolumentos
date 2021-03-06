unit UnitBalcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Mask, DBCtrls, StdCtrls, ExtCtrls, DB, DBClient,
  Buttons, dbcgrids, FMTBcd, Provider, SqlExpr, ToolEdit, CurrEdit, ImgList,
  RLReport, RLPDFFilter, RLFilters, RLDraftFilter, RLRichFilter,
  RLHTMLFilter, ComCtrls, ToolWin, RLRichText;

type
  TfmBalcao = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    dbGridItens: TDBGrid;
    sqlMovCaixa: TSQLQuery;
    sqlMovCaixaIDMOVIMENTO: TIntegerField;
    sqlMovCaixaDATA_ABERTURA: TDateField;
    sqlMovCaixaHORA_ABERTURA: TTimeField;
    sqlMovCaixaDATA_FECHAMENTO: TDateField;
    sqlMovCaixaHORA_FECHAMENTO: TTimeField;
    sqlMovCaixaUSUARIO_ABERTURA: TStringField;
    sqlMovCaixaUSUARIO_FECHAMENTO: TStringField;
    sqlMovCaixaVALOR_ABERTURA: TFMTBCDField;
    sqlMovCaixaVALOR_FECHAMENTO: TFMTBCDField;
    sqlMovCaixaATIVO: TStringField;
    cdsMovCaixa: TClientDataSet;
    cdsMovCaixaIDMOVIMENTO: TIntegerField;
    cdsMovCaixaDATA_ABERTURA: TDateField;
    cdsMovCaixaHORA_ABERTURA: TTimeField;
    cdsMovCaixaDATA_FECHAMENTO: TDateField;
    cdsMovCaixaHORA_FECHAMENTO: TTimeField;
    cdsMovCaixaUSUARIO_ABERTURA: TStringField;
    cdsMovCaixaUSUARIO_FECHAMENTO: TStringField;
    cdsMovCaixaVALOR_ABERTURA: TFMTBCDField;
    cdsMovCaixaVALOR_FECHAMENTO: TFMTBCDField;
    cdsMovCaixaATIVO: TStringField;
    dspMovCaixa: TDataSetProvider;
    dsMovCaixa: TDataSource;
    RLReport1: TRLReport;
    spcontador: TSQLStoredProc;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLDraftFilter1: TRLDraftFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    rlnumero: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    rlnome: TRLLabel;
    rldoc: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
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
    Panel3: TPanel;
    Label2: TLabel;
    cedtValor: TCurrencyEdit;
    DBText3: TDBText;
    Panel2: TPanel;
    btnEmolumento: TSpeedButton;
    btnImprimir: TSpeedButton;
    SpeedButton3: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnReceber: TSpeedButton;
    DBText2: TDBText;
    Label6: TLabel;
    Panel1: TPanel;
    btnCadastroCliente: TSpeedButton;
    edtPesquisa: TEdit;
    btnNovo: TSpeedButton;
    dsItens_Servico: TDataSource;
    dspItens_Servico: TDataSetProvider;
    cdsItens_Servico: TClientDataSet;
    sqlItens_Servico: TSQLDataSet;
    spGeradorId: TSQLStoredProc;
    Label7: TLabel;
    Label8: TLabel;
    dsTemp: TDataSource;
    dbGridTemp: TDBGrid;
    RLBand4: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    sqlItens_ServicoID: TIntegerField;
    sqlItens_ServicoIDCLIENTE_SERVICO: TIntegerField;
    sqlItens_ServicoQTDE: TIntegerField;
    sqlItens_ServicoCODIGO_EMOLUMENTO: TStringField;
    sqlItens_ServicoDESCRICAO: TStringField;
    sqlItens_ServicoRECOMPE: TFMTBCDField;
    sqlItens_ServicoEMOLUMENTO_LIQUIDO: TFMTBCDField;
    sqlItens_ServicoTAXA_FISCALIZACAO: TFMTBCDField;
    cdsItens_ServicoID: TIntegerField;
    cdsItens_ServicoIDCLIENTE_SERVICO: TIntegerField;
    cdsItens_ServicoQTDE: TIntegerField;
    cdsItens_ServicoCODIGO_EMOLUMENTO: TStringField;
    cdsItens_ServicoDESCRICAO: TStringField;
    cdsItens_ServicoRECOMPE: TFMTBCDField;
    cdsItens_ServicoEMOLUMENTO_LIQUIDO: TFMTBCDField;
    cdsItens_ServicoTAXA_FISCALIZACAO: TFMTBCDField;
    cdsItens_ServicoVALOR: TCurrencyField;
    cdsTemp: TClientDataSet;
    cdsTempIDCLIENTE_EMOLUMENTO: TIntegerField;
    cdsTempCODIGO_EMOLUMENTO: TStringField;
    cdsTempDESCRICAO: TStringField;
    cdsTempRECOMPE: TCurrencyField;
    cdsTempEMOLUMENTO_LIQUIDO: TCurrencyField;
    cdsTempTAXA_FISCALIZACAO: TCurrencyField;
    cdsTempQTDE: TIntegerField;
    cdsTempVALOR: TCurrencyField;
    RLDraw4: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    Label5: TLabel;
    cedtEmolumentos: TCurrencyEdit;
    Label9: TLabel;
    cedtRecompe: TCurrencyEdit;
    Label10: TLabel;
    cedtTaxaFiscalizacao: TCurrencyEdit;
    RLLabel19: TRLLabel;
    RLDBText4: TRLDBText;
    rlEmol: TRLLabel;
    rlRecompe: TRLLabel;
    rlTaxa: TRLLabel;
    rlTotal: TRLLabel;
    RLLabel20: TRLLabel;
    rlData: TRLLabel;
    RLBand5: TRLBand;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    RLLabel27: TRLLabel;
    RLDraw5: TRLDraw;
    rlCodAtosPraticados: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel26: TRLLabel;
    Label11: TLabel;
    Label12: TLabel;
    RLLabel5: TRLLabel;
    DBRichEdit1: TDBRichEdit;
    RLDBMemo1: TRLDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnCadastroClienteClick(Sender: TObject);
    procedure btnEmolumentoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnReceberClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure cdsTempAfterPost(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure cdsItens_ServicoCalcFields(DataSet: TDataSet);
    procedure cdsTempCalcFields(DataSet: TDataSet);
    procedure totalizador;
    procedure caixa;
    procedure SpeedButton1Click(Sender: TObject);
  private

    { Private declarations }
  public
  Function VerificaCampos(DataSource : TDataSource) : Boolean;
     { Public declarations }
  end;

var
  fmBalcao: TfmBalcao;
implementation
   uses UnitdmConect,UnitDmSesi, UnitSesi, UnitMovCaixa, UnitCadCliente,
  UnitReceberBalcao,Extensos, UnitSelecionarServico;
{$R *.dfm}

procedure TfmBalcao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TfmBalcao.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      
      cdscliente.Close;
      cdscliente.CommandText:='select *  from cliente '+
            ' where  (CLIENTE.NOME like '+''''+'%'+edtpesquisa.text+'%'+''')';
      cdscliente.open;

      if cdscliente.RecordCount > 0 then
        begin
          if messagedlg('Prosseguir na emiss�o de recibo para este cliente. Confirma?',mtConfirmation, [mbyes,mbno],0)= mryes then
            begin
               btnCadastroCliente.Enabled:=false;
               //Format('%5.5d',[Numero]); // resulta '00123';
               spcontador.ExecProc;
               label7.Caption:=Format('%5.5d',[spcontador.Params.ParamByName('ID').AsInteger]);//IntToStr(spcontador.Params.ParamByName('ID').AsInteger);
               dmsesi.cdsCliente_Servico.active := true;
               dmsesi.cdsCliente_Servico.Insert;
               spGeradorId.ExecProc;
               dmsesi.cdsCliente_Servico.FieldByName('ID').AsInteger:= spGeradorId.Params.ParamByName('ID').AsInteger;
               dmsesi.cdsCliente_Servico.FieldByName('IDCLIENTE').AsInteger:= cdscliente.FieldByName('IDCLIENTE').AsInteger;
               dmsesi.cdsCliente_Servico.FieldByName('DATA_ATENDIMENTO').AsDateTime:=Date;
               btnEmolumento.Enabled:=true;
            end;
        end;

     {cdsContaReceber.Close;
     cdsContaReceber.Params.ParamByName('idcliente').AsInteger:= cdscliente.fieldbyname('IDCLIENTE').AsInteger;
     cdsContaReceber.Open; }

  end;
end;




procedure TfmBalcao.btnCadastroClienteClick(Sender: TObject);
begin
  fmCadCliente:=TfmCadCliente.create(self);
  dmsesi.cdscliente.active := true;
  dmsesi.cdscliente.Insert;
  dmsesi.cdsclienteDATACADASTRO.AsDateTime:=Date;
  fmCadCliente.habilitacampos(true);
  fmCadCliente.setaFormBusca:=1;
  fmCadCliente.showmodal;
end;

procedure TfmBalcao.btnEmolumentoClick(Sender: TObject);
begin
  fmReceberBalcao:=TfmReceberBalcao.create(self);
  fmReceberBalcao.idClienteServico:= spGeradorId.Params.ParamByName('ID').AsInteger;
  fmReceberBalcao.ShowModal;
end;

procedure TfmBalcao.btnImprimirClick(Sender: TObject);
begin
  spcontador.ExecProc;
  rlnumero.Caption:=Format('%5.5d',[spcontador.Params.ParamByName('ID').AsInteger]);
  rlnome.Caption:= cdscliente.fieldbyname('NOME').AsString;
  rldoc.Caption:= cdscliente.fieldbyname('CNPJCPF').AsString;
  rlEmol.Caption:= cedtEmolumentos.Text;
  rlRecompe.Caption:= cedtRecompe.Text;
  rlTaxa.Caption:= cedtTaxaFiscalizacao.Text;
  rlTotal.Caption:= cedtValor.Text;
  rlData.Caption:= DBText2.Caption;
  rlCodAtosPraticados.Caption:= DBEdit1.Text;
  RLReport1.PreviewModal;
end;

procedure TfmBalcao.SpeedButton3Click(Sender: TObject);
begin
 close;
end;

procedure TfmBalcao.btnReceberClick(Sender: TObject);
begin
cdsMovCaixa.Close;
  cdsMovCaixa.CommandText:='select * from movimento_caixa where '+
            ' (movimento_caixa.ativo='+QuotedStr('1')+') '+
            ' and (movimento_caixa.data_fechamento is null)';
  cdsMovCaixa.Open;
  if cdsMovCaixa.IsEmpty then
      begin
        dmsesi.cdsMovCaixa.Active:=true;
        dmsesi.cdsMovCaixa.Insert;
        dmsesi.spMovCaixa.ExecProc;
        dmsesi.cdsMovCaixaIDMOVIMENTO.AsInteger:= dmsesi.spMovCaixa.Params.ParamByName('ID').AsInteger;
        dmsesi.cdsMovCaixaATIVO.AsString:='1';
        dmsesi.cdsMovCaixaDATA_ABERTURA.AsDateTime:= date;
        dmsesi.cdsMovCaixaHORA_ABERTURA.AsDateTime:= Time;
        dmsesi.cdsMovCaixaUSUARIO_ABERTURA.AsString:= fmSGI.USUARIO;
        dmsesi.cdsMovCaixaVALOR_ABERTURA.AsFloat:= 0;
        fmMovimentoCaixa:=TfmMovimentoCaixa.create(self);
        fmMovimentoCaixa.showmodal;
        fmMovimentoCaixa.Free;
  end
  else
  if not cdsMovCaixa.IsEmpty then
      begin
        if VerificaCampos(dmsesi.dsCliente_Servico) then
          begin
            dmsesi.cdsCliente_Servico.FieldByName('NUMERO_RECIBO').asInteger := spcontador.Params.ParamByName('ID').AsInteger;
            dmsesi.cdsCliente_Servico.ApplyUpdates(0);
            dmsesi.cdsItens_Servico.Active:=true;
              cdsTemp.First;
                while not cdsTemp.Eof do
                   begin
                      dmsesi.cdsItens_Servico.Insert;
                      dmsesi.cdsItens_Servico.FieldByName('IDCLIENTE_SERVICO').AsInteger:= cdsTempIDCLIENTE_EMOLUMENTO.AsInteger;
                      dmsesi.cdsItens_Servico.FieldByName('CODIGO_EMOLUMENTO').AsString:= cdsTempCODIGO_EMOLUMENTO.AsString;
                      dmsesi.cdsItens_Servico.FieldByName('DESCRICAO').AsString:=cdsTempDESCRICAO.AsString;
                      dmsesi.cdsItens_Servico.FieldByName('RECOMPE').AsFloat:=cdsTempRECOMPE.AsCurrency;
                      dmsesi.cdsItens_Servico.FieldByName('EMOLUMENTO_LIQUIDO').AsFloat:=cdsTempEMOLUMENTO_LIQUIDO.AsCurrency;
                      dmsesi.cdsItens_Servico.FieldByName('TAXA_FISCALIZACAO').AsFloat:= cdsTempTAXA_FISCALIZACAO.AsCurrency;
                      dmsesi.cdsItens_Servico.FieldByName('QTDE').AsInteger:= cdsTempQTDE.AsInteger;
                      dmsesi.cdsItens_Servico.ApplyUpdates(0);
                      cdsTemp.Next;
                   end;
                   dbGridTemp.Visible:= false;
                   dbGridItens.Visible:= true;
                   
                   cdsItens_Servico.Close;
                   cdsItens_Servico.Params.ParamByName('idcliente_servico').AsInteger:= spGeradorId.Params.ParamByName('ID').AsInteger;
                   cdsItens_Servico.Open;

                   btnReceber.Enabled:=false;
                   btnImprimir.Enabled:=true;
                   btnExcluir.Enabled:=false;
                   btnEmolumento.Enabled:= false;
                   cdsTemp.EmptyDataSet;
                   totalizador;
                   caixa;


          end;
      end;
 { spcontador.ExecProc;
  rlnumero.Caption:=INTTOSTR(spcontador.Params.ParamByName('ID').AsInteger);
  //rlnome.Caption:= cdsModalidade.fieldbyname('NOME').AsString;
 // rldoc.Caption:= cdsModalidade.fieldbyname('CNPJCPF').AsString;
  RLReport1.PreviewModal;   }
end;

procedure TfmBalcao.btnNovoClick(Sender: TObject);
begin
  if messagedlg('Para emitir um novo recibo � preciso definir um cliente ou cadastrar um novo. Confirma?',mtConfirmation, [mbyes,mbno],0)= mryes then
      begin
        edtPesquisa.Enabled:= true;
        btnCadastroCliente.Enabled:= true;
        edtPesquisa.SetFocus;
        if dbGridItens.Visible = true then
          begin
            dbGridItens.Visible:=false;
            dbGridTemp.Visible:= true;
          end;
      end;
end;

procedure TfmBalcao.cdsTempAfterPost(DataSet: TDataSet);
begin
  if cdsTemp.RecordCount > 0 then
    begin
      btnReceber.Enabled:= true;
      btnExcluir.Enabled:= true;
    end;
end;

function TfmBalcao.VerificaCampos(DataSource: TDataSource): Boolean;
Var
  C : Byte;
begin                                                             // A rotina ao lado faz um la�o em todos os fields da
   Result := True;                                                // tabela  e procura por fields que sejam
   With(DataSource.DataSet)Do                                     // requeridos pelo sistema e estejam em branco.
     begin                                                          // Se houver algum requerido em branco, ent�o o sistema
        For C := 0 To FieldCount -1 Do                              // emitir� uma mensagem sobre o ocorrido e colocar� o
          begin                                                       // focus "SetFocus" no campo n�o preenchido;
             If((Fields[C].Tag=1))And(Trim(Fields[C].Text)='')Then
               begin
                  Result := False;
                  MessageBeep(64);
                  MessageDlg('Preencha o campo "'+Fields[C].DisplayLabel+'".',mtInformation,[mbOk],0);
                  Fields[C].FocusControl;
                  Break;
               end;
          end;
     end;
end;
procedure TfmBalcao.btnExcluirClick(Sender: TObject);
begin
  cdsTemp.Delete;
  totalizador;
end;

procedure TfmBalcao.cdsItens_ServicoCalcFields(DataSet: TDataSet);
begin
  cdsItens_ServicoVALOR.AsCurrency:= cdsItens_ServicoQTDE.AsInteger * (cdsItens_ServicoRECOMPE.AsCurrency + cdsItens_ServicoEMOLUMENTO_LIQUIDO.AsCurrency + cdsItens_ServicoTAXA_FISCALIZACAO.AsCurrency);
end;

procedure TfmBalcao.cdsTempCalcFields(DataSet: TDataSet);
begin
  cdsTempVALOR.AsCurrency:= cdsTempQTDE.AsInteger * (cdsTempRECOMPE.AsCurrency + cdsTempEMOLUMENTO_LIQUIDO.AsCurrency + cdsTempTAXA_FISCALIZACAO.AsCurrency);
end;

procedure TfmBalcao.totalizador;
var
  valor, emolumento, recompe, taxa : real;
begin
  valor:=0;
  emolumento:=0;
  recompe:=0;
  taxa:=0;
  if dbGridTemp.Visible = true then
    begin
      cdsTemp.First;
      while not cdsTemp.Eof do
        begin
          valor:= valor + cdsTempVALOR.AsCurrency;
          emolumento:= emolumento +  (cdsTempQTDE.AsInteger * cdsTempEMOLUMENTO_LIQUIDO.AsCurrency);
          recompe:=recompe + (cdsTempQTDE.AsInteger * cdsTempRECOMPE.AsCurrency);
          taxa:= taxa + (cdsTempQTDE.AsInteger * cdsTempTAXA_FISCALIZACAO.AsCurrency);
          cdsTemp.Next;
        end;
    end;

  if dbGridItens.Visible = true then
    begin
      cdsItens_Servico.First;
      while not cdsItens_Servico.Eof do
        begin
          valor:= valor + cdsItens_ServicoVALOR.AsCurrency;
          emolumento:= emolumento + (cdsItens_ServicoQTDE.AsInteger * cdsItens_ServicoEMOLUMENTO_LIQUIDO.AsCurrency);
          recompe:= recompe + (cdsItens_ServicoQTDE.AsInteger * cdsItens_ServicoRECOMPE.AsCurrency);
          taxa:= taxa +  (cdsItens_ServicoQTDE.AsInteger * cdsItens_ServicoTAXA_FISCALIZACAO.AsCurrency);
          cdsItens_Servico.Next;
        end;
    end;
   cedtValor.Text:=FloatToStr(valor);
   cedtEmolumentos.Text:=FloatToStr(emolumento);
   cedtRecompe.Text:=FloatToStr(recompe);
   cedtTaxaFiscalizacao.Text:=FloatToStr(taxa);
end;

procedure TfmBalcao.caixa;
begin
if not cdsMovCaixa.IsEmpty then
  begin
    dmsesi.cdsCaixa.Active:= true;
    dmsesi.cdsCaixa.Insert;
    dmsesi.cdsCaixa.FieldByName('DATA_LANCAMENTO').AsDateTime:= date;
    dmsesi.cdsCaixa.FieldByName('USUARIO').AsString:= fmSGI.USUARIO;
    dmsesi.cdsCaixa.FieldByName('DESCRICAO').AsString:='SERV.' + cdsclienteNOME.AsString + 'TICKET: ' + Label7.Caption;
    dmsesi.cdsCaixa.FieldByName('SALDO').AsString:='C';
    dmsesi.cdsCaixa.FieldByName('CONTA').AsString:= 'REC|' + Label7.Caption;
    dmsesi.cdsCaixa.FieldByName('IDMOVIMENTO').AsInteger:=cdsMovCaixaIDMOVIMENTO.AsInteger;
    dmsesi.cdsCaixa.FieldByName('VALOR').AsFloat:= cedtValor.Value;
    dmsesi.cdsCaixa.ApplyUpdates(0);
  end;
end;

procedure TfmBalcao.SpeedButton1Click(Sender: TObject);
begin
  fmServicoRealizado:=TfmServicoRealizado.create(self);
  fmServicoRealizado.ShowModal;
end;

end.
