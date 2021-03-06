unit UnitDmSesi;

interface

uses
  SysUtils, Classes, FMTBcd, Provider, SqlExpr, DB, DBClient;

type
  Tdmsesi = class(TDataModule)
    dscliente: TDataSource;
    cdscliente: TClientDataSet;
    sqlcliente: TSQLDataSet;
    dspcliente: TDataSetProvider;
    cdsCategoria: TClientDataSet;
    dsCategoria: TDataSource;
    dspCategoria: TDataSetProvider;
    sqlCategoria: TSQLDataSet;
    sqlCategoriaIDCATEGORIA: TIntegerField;
    sqlCategoriaNOME: TStringField;
    cdsCategoriaIDCATEGORIA: TIntegerField;
    cdsCategoriaNOME: TStringField;
    dsservico: TDataSource;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
    sqlServico: TSQLDataSet;
    sqlPlanoConta: TSQLDataSet;
    sqlPlanoContaIDPLANOCONTAS: TIntegerField;
    sqlPlanoContaNOME: TStringField;
    sqlPlanoContaTIPO: TStringField;
    cdsPlanoConta: TClientDataSet;
    cdsPlanoContaIDPLANOCONTAS: TIntegerField;
    cdsPlanoContaNOME: TStringField;
    cdsPlanoContaTIPO: TStringField;
    dspPlanoConta: TDataSetProvider;
    dsPlanoConta: TDataSource;
    sqlContaPlano: TSQLDataSet;
    sqlContaPlanoIDCONTA: TIntegerField;
    sqlContaPlanoIDPLACOCONTA: TIntegerField;
    sqlContaPlanoNOME: TStringField;
    sqlContaPlanoCONTA: TStringField;
    cdsContaPlano: TClientDataSet;
    cdsContaPlanoIDCONTA: TIntegerField;
    cdsContaPlanoIDPLACOCONTA: TIntegerField;
    cdsContaPlanoNOME: TStringField;
    cdsContaPlanoCONTA: TStringField;
    dspContaPlano: TDataSetProvider;
    dsContaPLano: TDataSource;
    spPlanoConta: TSQLStoredProc;
    sqlModalidade: TSQLDataSet;
    cdsModalidade: TClientDataSet;
    dspModalidade: TDataSetProvider;
    dsModalidade: TDataSource;
    dsMovCaixa: TDataSource;
    dspMovCaixa: TDataSetProvider;
    cdsMovCaixa: TClientDataSet;
    sqlCaixa: TSQLDataSet;
    cdsCaixa: TClientDataSet;
    dspCaixa: TDataSetProvider;
    dsCaixa: TDataSource;
    sqlMovCaixa: TSQLDataSet;
    sqlCaixaIDCAIXA: TIntegerField;
    sqlCaixaDESCRICAO: TStringField;
    sqlCaixaSALDO: TStringField;
    sqlCaixaDATA_LANCAMENTO: TDateField;
    sqlCaixaVALOR: TFMTBCDField;
    sqlCaixaUSUARIO: TStringField;
    sqlCaixaCONTA: TStringField;
    sqlCaixaIDMOVIMENTO: TIntegerField;
    cdsCaixaIDCAIXA: TIntegerField;
    cdsCaixaDESCRICAO: TStringField;
    cdsCaixaSALDO: TStringField;
    cdsCaixaDATA_LANCAMENTO: TDateField;
    cdsCaixaVALOR: TFMTBCDField;
    cdsCaixaUSUARIO: TStringField;
    cdsCaixaCONTA: TStringField;
    cdsCaixaIDMOVIMENTO: TIntegerField;
    spMovCaixa: TSQLStoredProc;
    sqlMovCaixaIDMOVIMENTO: TIntegerField;
    sqlMovCaixaDATA_ABERTURA: TDateField;
    sqlMovCaixaHORA_ABERTURA: TTimeField;
    sqlMovCaixaDATA_FECHAMENTO: TDateField;
    sqlMovCaixaHORA_FECHAMENTO: TTimeField;
    sqlMovCaixaUSUARIO_ABERTURA: TStringField;
    sqlMovCaixaUSUARIO_FECHAMENTO: TStringField;
    sqlMovCaixaVALOR_ABERTURA: TFMTBCDField;
    sqlMovCaixaVALOR_FECHAMENTO: TFMTBCDField;
    L: TStringField;
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
    dsContaReceber: TDataSource;
    dsContaPagar: TDataSource;
    dspContaReceber: TDataSetProvider;
    dspContaPagar: TDataSetProvider;
    cdsContaReceber: TClientDataSet;
    cdsContaPagar: TClientDataSet;
    sqlContaReceber: TSQLDataSet;
    sqlContaPagar: TSQLDataSet;
    sqlContaPagarID: TIntegerField;
    sqlContaPagarFORNECEDOR_IDFORNECEDOR: TIntegerField;
    sqlContaPagarDATA_EMISSAO: TDateField;
    sqlContaPagarDATA_VENCIMENTO: TDateField;
    sqlContaPagarDATA_BAIXA: TDateField;
    sqlContaPagarDESCRICAO: TStringField;
    sqlContaPagarDEBITO: TFMTBCDField;
    sqlContaPagarCREDITO: TFMTBCDField;
    sqlContaPagarATIVO: TStringField;
    cdsContaPagarID: TIntegerField;
    cdsContaPagarFORNECEDOR_IDFORNECEDOR: TIntegerField;
    cdsContaPagarDATA_EMISSAO: TDateField;
    cdsContaPagarDATA_VENCIMENTO: TDateField;
    cdsContaPagarDATA_BAIXA: TDateField;
    cdsContaPagarDESCRICAO: TStringField;
    cdsContaPagarDEBITO: TFMTBCDField;
    cdsContaPagarCREDITO: TFMTBCDField;
    cdsContaPagarATIVO: TStringField;
    cdsFornecedor: TClientDataSet;
    dspFornecedor: TDataSetProvider;
    dsFornecedor: TDataSource;
    sqlFornecedor: TSQLDataSet;
    sqlFornecedorID: TIntegerField;
    sqlFornecedorNOME: TStringField;
    sqlFornecedorCNPJ_CPF: TStringField;
    sqlFornecedorIE_RG: TStringField;
    sqlFornecedorENDERECO: TStringField;
    sqlFornecedorBAIRRO: TStringField;
    sqlFornecedorCEP: TStringField;
    sqlFornecedorCIDADE: TStringField;
    sqlFornecedorESTADO: TStringField;
    sqlFornecedorTELEFFONE: TStringField;
    sqlFornecedorFAX: TStringField;
    sqlFornecedorEMAIL: TStringField;
    sqlFornecedorSITE: TStringField;
    sqlFornecedorCONTATO: TStringField;
    sqlFornecedorOBSERVACAO: TStringField;
    cdsFornecedorID: TIntegerField;
    cdsFornecedorNOME: TStringField;
    cdsFornecedorCNPJ_CPF: TStringField;
    cdsFornecedorIE_RG: TStringField;
    cdsFornecedorENDERECO: TStringField;
    cdsFornecedorBAIRRO: TStringField;
    cdsFornecedorCEP: TStringField;
    cdsFornecedorCIDADE: TStringField;
    cdsFornecedorESTADO: TStringField;
    cdsFornecedorTELEFFONE: TStringField;
    cdsFornecedorFAX: TStringField;
    cdsFornecedorEMAIL: TStringField;
    cdsFornecedorSITE: TStringField;
    cdsFornecedorCONTATO: TStringField;
    cdsFornecedorOBSERVACAO: TStringField;
    dsParametro: TDataSource;
    dspParametro: TDataSetProvider;
    cdsParametro: TClientDataSet;
    sqlParametro: TSQLDataSet;
    sqlParametroID: TIntegerField;
    sqlParametroNOME: TStringField;
    sqlParametroCNPJ: TStringField;
    sqlParametroENDERECO: TStringField;
    sqlParametroBAIRRO: TStringField;
    sqlParametroCEP: TStringField;
    sqlParametroCIDADE: TStringField;
    sqlParametroESTADO: TStringField;
    sqlParametroTELEFONE: TStringField;
    sqlParametroFAX: TStringField;
    sqlParametroEMAIL: TStringField;
    sqlParametroSITE: TStringField;
    sqlParametroLOGOMARCA: TStringField;
    cdsParametroID: TIntegerField;
    cdsParametroNOME: TStringField;
    cdsParametroCNPJ: TStringField;
    cdsParametroENDERECO: TStringField;
    cdsParametroBAIRRO: TStringField;
    cdsParametroCEP: TStringField;
    cdsParametroCIDADE: TStringField;
    cdsParametroESTADO: TStringField;
    cdsParametroTELEFONE: TStringField;
    cdsParametroFAX: TStringField;
    cdsParametroEMAIL: TStringField;
    cdsParametroSITE: TStringField;
    cdsParametroLOGOMARCA: TStringField;
    cdsContaPagarSALDO: TFloatField;
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
    sqlContaReceberID: TIntegerField;
    sqlContaReceberCLIENTE_IDCLIENTE: TIntegerField;
    sqlContaReceberDATA_EMISSAO: TDateField;
    sqlContaReceberDATA_VENCIMENTO: TDateField;
    sqlContaReceberDATA_BAIXA: TDateField;
    sqlContaReceberDESCRICAO: TStringField;
    sqlContaReceberDEBITO: TFMTBCDField;
    sqlContaReceberCREDITO: TFMTBCDField;
    sqlContaReceberATIVO: TStringField;
    cdsContaReceberID: TIntegerField;
    cdsContaReceberCLIENTE_IDCLIENTE: TIntegerField;
    cdsContaReceberDATA_EMISSAO: TDateField;
    cdsContaReceberDATA_VENCIMENTO: TDateField;
    cdsContaReceberDATA_BAIXA: TDateField;
    cdsContaReceberDESCRICAO: TStringField;
    cdsContaReceberDEBITO: TFMTBCDField;
    cdsContaReceberCREDITO: TFMTBCDField;
    cdsContaReceberATIVO: TStringField;
    sqlModalidadeIDMODALIDADE: TIntegerField;
    sqlModalidadeDESCRICAO: TStringField;
    sqlModalidadeVALOR: TFMTBCDField;
    sqlModalidadeCLIENTE_IDCLIENTE: TIntegerField;
    cdsModalidadeIDMODALIDADE: TIntegerField;
    cdsModalidadeDESCRICAO: TStringField;
    cdsModalidadeVALOR: TFMTBCDField;
    cdsModalidadeCLIENTE_IDCLIENTE: TIntegerField;
    sqlCheque: TSQLDataSet;
    cdsCheque: TClientDataSet;
    dspCheque: TDataSetProvider;
    dsCheque: TDataSource;
    sqlChequeID: TIntegerField;
    sqlChequeVALOR: TFMTBCDField;
    sqlChequeEXTENSO: TStringField;
    sqlChequeCIDADE: TStringField;
    sqlChequeDIA: TStringField;
    sqlChequeANO: TStringField;
    cdsChequeID: TIntegerField;
    cdsChequeVALOR: TFMTBCDField;
    cdsChequeEXTENSO: TStringField;
    cdsChequeCIDADE: TStringField;
    cdsChequeDIA: TStringField;
    cdsChequeANO: TStringField;
    sqlChequeNOME: TStringField;
    cdsChequeNOME: TStringField;
    sqlChequeMES: TStringField;
    cdsChequeMES: TStringField;
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
    cdsCliente_Servico: TClientDataSet;
    dspCliente_Servico: TDataSetProvider;
    dsCliente_Servico: TDataSource;
    sqlCliente_Servico: TSQLDataSet;
    sqlItens_Servico: TSQLDataSet;
    cdsItens_Servico: TClientDataSet;
    dspItens_Servico: TDataSetProvider;
    dsItens_Servico: TDataSource;
    sqlCliente_ServicoID: TIntegerField;
    sqlCliente_ServicoIDCLIENTE: TIntegerField;
    sqlCliente_ServicoDATA_ATENDIMENTO: TDateField;
    sqlCliente_ServicoCODIGOS_ATOS_PRATICADOS: TStringField;
    sqlCliente_ServicoNUMERO_RECIBO: TIntegerField;
    cdsCliente_ServicoID: TIntegerField;
    cdsCliente_ServicoIDCLIENTE: TIntegerField;
    cdsCliente_ServicoDATA_ATENDIMENTO: TDateField;
    cdsCliente_ServicoCODIGOS_ATOS_PRATICADOS: TStringField;
    cdsCliente_ServicoNUMERO_RECIBO: TIntegerField;
    sqlItens_ServicoID: TIntegerField;
    sqlItens_ServicoIDCLIENTE_SERVICO: TIntegerField;
    sqlItens_ServicoCODIGO_EMOLUMENTO: TStringField;
    sqlItens_ServicoDESCRICAO: TStringField;
    sqlItens_ServicoRECOMPE: TFMTBCDField;
    sqlItens_ServicoEMOLUMENTO_LIQUIDO: TFMTBCDField;
    sqlItens_ServicoTAXA_FISCALIZACAO: TFMTBCDField;
    sqlItens_ServicoQTDE: TIntegerField;
    cdsItens_ServicoID: TIntegerField;
    cdsItens_ServicoIDCLIENTE_SERVICO: TIntegerField;
    cdsItens_ServicoCODIGO_EMOLUMENTO: TStringField;
    cdsItens_ServicoDESCRICAO: TStringField;
    cdsItens_ServicoRECOMPE: TFMTBCDField;
    cdsItens_ServicoEMOLUMENTO_LIQUIDO: TFMTBCDField;
    cdsItens_ServicoTAXA_FISCALIZACAO: TFMTBCDField;
    cdsItens_ServicoQTDE: TIntegerField;
    sqlCliente_ServicoOBSERVACAO: TStringField;
    cdsCliente_ServicoOBSERVACAO: TStringField;
    procedure dspclienteGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspCategoriaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspServicoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspPlanoContaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspContaPlanoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspModalidadeGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspCaixaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspMovCaixaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspContaPagarGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspContaReceberGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dspFornecedorGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsContaReceberCalcFields(DataSet: TDataSet);
    procedure cdsContaPagarCalcFields(DataSet: TDataSet);
    procedure dspTurmaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspalunosGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspprofessorGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspChequeGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmsesi: Tdmsesi;

implementation
      uses UnitdmConect;
{$R *.dfm}

procedure Tdmsesi.dspclienteGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName:='CLIENTE';
end;

procedure Tdmsesi.dspCategoriaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName:='CATEGORIA';
end;

procedure Tdmsesi.dspServicoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
   TableName:='SERVICO';
end;

procedure Tdmsesi.dspPlanoContaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName:='PLANOCONTAS';
end;

procedure Tdmsesi.dspContaPlanoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName:='CONTAPLANO';
end;

procedure Tdmsesi.dspModalidadeGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName:='MODALIDADE';
end;

procedure Tdmsesi.dspCaixaGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
  TableName:='CAIXA';
end;

procedure Tdmsesi.dspMovCaixaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName:='MOVIMENTO_CAIXA';
end;

procedure Tdmsesi.dspContaPagarGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName:='CONTASPAGAR';
end;

procedure Tdmsesi.dspContaReceberGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName:='CONTASRECEBER';
end;

procedure Tdmsesi.dspFornecedorGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName:='FORNECEDORES';
end;

procedure Tdmsesi.cdsContaReceberCalcFields(DataSet: TDataSet);
begin
  cdsContaReceber.FieldByName('SALDO').AsFloat:= cdsContaReceber.FieldByName('DEBITO').AsFloat -
  cdsContaReceber.FieldByName('CREDITO').AsFloat;
end;

procedure Tdmsesi.cdsContaPagarCalcFields(DataSet: TDataSet);
begin
  cdsContaPagar.FieldByName('SALDO').AsFloat:= cdsContaPagar.FieldByName('DEBITO').AsFloat -
  cdsContaPagar.FieldByName('CREDITO').AsFloat;
end;

procedure Tdmsesi.dspTurmaGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
  TableName:='TURMA';
end;

procedure Tdmsesi.dspalunosGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
  TableName:='ALUNOS';
end;

procedure Tdmsesi.dspprofessorGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName:='PROFESSOR';
end;

procedure Tdmsesi.dspChequeGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
  TableName:='CHEQUEPRINT';
end;

end.
