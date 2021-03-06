program SGI;

uses
  Forms,
  UnitSesi in 'unitsesi.pas' {fmSGI},
  UnitdmConect in 'unitdmconect.pas' {dmconect: TDataModule},
  UnitDmSesi in 'unitdmsesi.pas' {dmsesi: TDataModule},
  UnitPesquisaCliente in 'UnitPesquisaCliente.pas' {fmPesquisaCliente},
  UnitCadCliente in 'unitcadcliente.pas' {fmCadCliente},
  UnitServico in 'UnitServico.pas' {fmServico},
  UnitShowDependente in 'UnitShowDependente.pas' {fmShowDependente},
  UnitShowCliente in 'unitshowcliente.pas' {fmShowCliente},
  UnitCategorias in 'UnitCategorias.pas' {fmCategorias},
  UnitPlanoContas in 'UnitPlanoContas.pas' {fmPlanoContas},
  UnitContaPlano in 'UnitContaPlano.pas' {fmSubContaPlano},
  UnitCadastroPlanoContas in 'UnitCadastroPlanoContas.pas' {formCadastroPlanoContas},
  UnitMostraServico in 'UnitMostraServico.pas' {fmMostraServico},
  UnitPesquisaModalidade in 'UnitPesquisaModalidade.pas' {fmPesquisaModalidade},
  UnitFinanceiroCliente in 'UnitFinanceiroCliente.pas' {fmFinanceiroCliente},
  UnitModalidadeCliente in 'unitmodalidadecliente.pas' {fmModalidade},
  configuracao in 'configuracao.pas' {fmConfiguracao},
  UnitImprimeCaixa in 'unitimprimecaixa.pas' {fmImprimeCaixa},
  UnitEstorno in 'UnitEstorno.pas' {fmEstorno},
  UnitMovCaixa in 'UnitMovCaixa.pas' {fmMovimentoCaixa},
  UnitMovimentoCaixa in 'UnitMovimentoCaixa.pas' {fmFechaMovimentoCaixa},
  UnitDmAcesso in 'unitdmacesso.pas' {dmAcesso: TDataModule},
  unLogin in 'unLogin.pas' {fmLogin},
  unModulos in 'unModulos.pas' {fmModulos},
  xsistema in 'xsistema.pas' {_xsistema},
  ContaReceber in 'ContaReceber.pas' {fmContaReceber},
  UnitCadastroReceber in 'UnitCadastroReceber.pas' {fmCadastroReceber},
  UnitReceber in 'UnitReceber.pas' {fmReceber},
  UnitImprimeRecibo in 'UnitImprimeRecibo.pas' {fmImprimeRecibo},
  Extensos in 'Extensos.pas',
  UnitParametros in 'UnitParametros.pas' {fmParametros},
  UnitPesquisaParametro in 'UnitPesquisaParametro.pas' {fmPesquisaParametro},
  ContaPagar in 'ContaPagar.pas' {fmContaPagar},
  UnitConsultaFornecedor in 'UnitConsultaFornecedor.pas' {fmConsultaFornecedor},
  UnitPagar in 'UnitPagar.pas' {fmPagar},
  UnitCadastroPagar in 'UnitCadastroPagar.pas' {fmCadastroPagar},
  UnitRelatorioContaPagar in 'UnitRelatorioContaPagar.pas' {fmRelatorioContasPagar},
  UnitImprimeMovCaixa in 'UnitImprimeMovCaixa.pas' {fmImprimeMovimentoCaixa},
  UnitNossoServicos in 'UnitNossoServicos.pas' {fmNossosServicos},
  UnitPesquisaFornecedor in 'UnitPesquisaFornecedor.pas' {fmPesquisaFornecedor},
  UnitCadastroFornecedor in 'UnitCadastroFornecedor.pas' {fmCadastroFornecedor},
  UnitImprimirNovoModalidade in 'UnitImprimirNovoModalidade.pas' {fmImprimirNovoModalidade},
  UnitImprimirCursoModalidade in 'unitimprimircursomodalidade.pas' {fmImprimirCursoModalidade},
  UnitImprimirDepModalidade in 'UnitImprimirDepModalidade.pas' {fmImprimirDepModalidade},
  ajuda in 'ajuda.pas' {fmajuda},
  UnitCaixa in 'unitcaixa.pas' {fmCaixa},
  UnitExtrato in 'UnitExtrato.pas' {fmExtrato},
  UnitImprimirModalidade in 'UnitImprimirModalidade.pas' {fmImprimirModalidade},
  UnitCobranaBoleta in 'UnitCobranaBoleta.pas' {fmCobrancaBoleta},
  UnitRelatorioContaReceber in 'UnitRelatorioContaReceber.pas' {fmRelatorioContasReceber},
  UnitGeraCobranca in 'UnitGeraCobranca.pas' {fmGerarPesquisa},
  unitListagemClientes in 'unitListagemClientes.pas' {fmListagemClientes},
  UnitManutencaoContasReceber in 'unitmanutencaocontasreceber.pas' {fmManutencaoContasReceber},
  UnitConsultaClienteMantContReceber in 'unitconsultaclientemantcontreceber.pas' {fmConsultaClienteManutContReceber},
  UnitChequePrint in 'UnitChequePrint.pas' {fmChequePrint},
  UnitConsultaCheque in 'UnitConsultaCheque.pas' {fmConsultaCheque},
  UnitListagemCheques in 'UnitListagemCheques.pas' {fmListagemCheques},
  fmEstornoIndividualCaixa in 'fmEstornoIndividualCaixa.pas' {fmEstornoIndCaixa},
  UnitBalcao in 'UnitBalcao.pas' {fmBalcao},
  UnitReceberBalcao in 'UnitReceberBalcao.pas' {fmReceberBalcao},
  UnitAuditoria in 'UnitAuditoria.pas' {fmAuditoria},
  UnitSelecionarServico in 'UnitSelecionarServico.pas' {fmServicoRealizado};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SISTEMA CARTORIO';
  Application.CreateForm(TfmSGI, fmSGI);
  Application.CreateForm(Tdmconect, dmconect);
  Application.CreateForm(Tdmsesi, dmsesi);
  Application.CreateForm(TdmAcesso, dmAcesso);
  Application.Run;
end.
