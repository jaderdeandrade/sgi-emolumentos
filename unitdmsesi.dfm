object dmsesi: Tdmsesi
  OldCreateOrder = False
  Left = 311
  Top = 132
  Height = 584
  Width = 837
  object dscliente: TDataSource
    DataSet = cdscliente
    Left = 24
    Top = 168
  end
  object cdscliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcliente'
    Left = 24
    Top = 64
    object cdsclienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object cdsclienteNOME: TStringField
      Tag = 1
      FieldName = 'NOME'
      Size = 60
    end
    object cdsclienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 60
    end
    object cdsclienteRAMOATIVIDADE: TStringField
      FieldName = 'RAMOATIVIDADE'
    end
    object cdsclienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object cdsclienteCNPJCPF: TStringField
      Tag = 1
      FieldName = 'CNPJCPF'
    end
    object cdsclienteRGIE: TStringField
      FieldName = 'RGIE'
      Size = 15
    end
    object cdsclienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object cdsclienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsclienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsclienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object cdsclienteCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-000;1;_'
      Size = 10
    end
    object cdsclienteESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsclienteFAX: TStringField
      FieldName = 'FAX'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 13
    end
    object cdsclienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 13
    end
    object cdsclienteCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 13
    end
    object cdsclienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cdsclienteSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object cdsclienteOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object cdsclienteATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object sqlcliente: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from CLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 24
    Top = 16
    object sqlclienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object sqlclienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlclienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 60
    end
    object sqlclienteRAMOATIVIDADE: TStringField
      FieldName = 'RAMOATIVIDADE'
    end
    object sqlclienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object sqlclienteCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object sqlclienteRGIE: TStringField
      FieldName = 'RGIE'
      Size = 15
    end
    object sqlclienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object sqlclienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sqlclienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sqlclienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object sqlclienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlclienteESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqlclienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object sqlclienteFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object sqlclienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object sqlclienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object sqlclienteSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object sqlclienteOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object sqlclienteATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspcliente: TDataSetProvider
    DataSet = sqlcliente
    Options = [poIncFieldProps, poAllowCommandText]
    OnGetTableName = dspclienteGetTableName
    Left = 24
    Top = 112
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCategoria'
    Left = 96
    Top = 64
    object cdsCategoriaIDCATEGORIA: TIntegerField
      FieldName = 'IDCATEGORIA'
    end
    object cdsCategoriaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsCategoria: TDataSource
    DataSet = cdsCategoria
    Left = 96
    Top = 168
  end
  object dspCategoria: TDataSetProvider
    DataSet = sqlCategoria
    Options = [poIncFieldProps, poAllowCommandText]
    OnGetTableName = dspCategoriaGetTableName
    Left = 96
    Top = 112
  end
  object sqlCategoria: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from CATEGORIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 96
    Top = 16
    object sqlCategoriaIDCATEGORIA: TIntegerField
      FieldName = 'IDCATEGORIA'
    end
    object sqlCategoriaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsservico: TDataSource
    DataSet = cdsServico
    Left = 176
    Top = 168
  end
  object dspServico: TDataSetProvider
    DataSet = sqlServico
    Options = [poIncFieldProps, poAllowCommandText]
    OnGetTableName = dspServicoGetTableName
    Left = 176
    Top = 112
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServico'
    Left = 176
    Top = 64
    object cdsServicoIDSERVICO: TIntegerField
      FieldName = 'IDSERVICO'
    end
    object cdsServicoCODIGO_EMOLUMENTO: TStringField
      FieldName = 'CODIGO_EMOLUMENTO'
      Size = 10
    end
    object cdsServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsServicoRECOMPE: TFMTBCDField
      FieldName = 'RECOMPE'
      Precision = 15
      Size = 2
    end
    object cdsServicoEMOLUMENTO_LIQUIDO: TFMTBCDField
      FieldName = 'EMOLUMENTO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object cdsServicoTAXA_EMOLUMENTO: TFMTBCDField
      FieldName = 'TAXA_EMOLUMENTO'
      Precision = 15
      Size = 2
    end
  end
  object sqlServico: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from SERVICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 176
    Top = 16
    object sqlServicoIDSERVICO: TIntegerField
      FieldName = 'IDSERVICO'
    end
    object sqlServicoCODIGO_EMOLUMENTO: TStringField
      FieldName = 'CODIGO_EMOLUMENTO'
      Size = 10
    end
    object sqlServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqlServicoRECOMPE: TFMTBCDField
      FieldName = 'RECOMPE'
      Precision = 15
      Size = 2
    end
    object sqlServicoEMOLUMENTO_LIQUIDO: TFMTBCDField
      FieldName = 'EMOLUMENTO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object sqlServicoTAXA_EMOLUMENTO: TFMTBCDField
      FieldName = 'TAXA_EMOLUMENTO'
      Precision = 15
      Size = 2
    end
  end
  object sqlPlanoConta: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from PLANOCONTAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 240
    Top = 16
    object sqlPlanoContaIDPLANOCONTAS: TIntegerField
      FieldName = 'IDPLANOCONTAS'
    end
    object sqlPlanoContaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sqlPlanoContaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 15
    end
  end
  object cdsPlanoConta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlanoConta'
    Left = 240
    Top = 64
    object cdsPlanoContaIDPLANOCONTAS: TIntegerField
      FieldName = 'IDPLANOCONTAS'
    end
    object cdsPlanoContaNOME: TStringField
      Tag = 1
      FieldName = 'NOME'
      Size = 50
    end
    object cdsPlanoContaTIPO: TStringField
      Tag = 1
      FieldName = 'TIPO'
      Size = 15
    end
  end
  object dspPlanoConta: TDataSetProvider
    DataSet = sqlPlanoConta
    Options = [poIncFieldProps, poAllowCommandText]
    OnGetTableName = dspPlanoContaGetTableName
    Left = 240
    Top = 112
  end
  object dsPlanoConta: TDataSource
    DataSet = cdsPlanoConta
    Left = 240
    Top = 168
  end
  object sqlContaPlano: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from CONTAPLANO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPLACOCONTA'
        ParamType = ptInput
        Value = 8
      end>
    SQLConnection = dmconect.SQLConnection1
    Left = 320
    Top = 13
    object sqlContaPlanoIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
    end
    object sqlContaPlanoIDPLACOCONTA: TIntegerField
      FieldName = 'IDPLACOCONTA'
    end
    object sqlContaPlanoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sqlContaPlanoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
  end
  object cdsContaPlano: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDPLACOCONTA'
    MasterFields = 'IDPLANOCONTAS'
    MasterSource = dsPlanoConta
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspContaPlano'
    Left = 320
    Top = 61
    object cdsContaPlanoIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
    end
    object cdsContaPlanoIDPLACOCONTA: TIntegerField
      FieldName = 'IDPLACOCONTA'
    end
    object cdsContaPlanoNOME: TStringField
      Tag = 1
      FieldName = 'NOME'
      Size = 50
    end
    object cdsContaPlanoCONTA: TStringField
      Tag = 1
      FieldName = 'CONTA'
      Size = 10
    end
  end
  object dspContaPlano: TDataSetProvider
    DataSet = sqlContaPlano
    Options = [poIncFieldProps, poAllowCommandText]
    OnGetTableName = dspContaPlanoGetTableName
    Left = 320
    Top = 109
  end
  object dsContaPLano: TDataSource
    DataSet = cdsContaPlano
    Left = 320
    Top = 165
  end
  object spPlanoConta: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = dmconect.SQLConnection1
    StoredProcName = 'SP_GEN_PLANOCONTAS_ID'
    Left = 240
    Top = 216
  end
  object sqlModalidade: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from MODALIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 397
    Top = 11
    object sqlModalidadeIDMODALIDADE: TIntegerField
      FieldName = 'IDMODALIDADE'
    end
    object sqlModalidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sqlModalidadeVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sqlModalidadeCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
    end
  end
  object cdsModalidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModalidade'
    Left = 399
    Top = 60
    object cdsModalidadeIDMODALIDADE: TIntegerField
      FieldName = 'IDMODALIDADE'
    end
    object cdsModalidadeDESCRICAO: TStringField
      Tag = 1
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsModalidadeVALOR: TFMTBCDField
      Tag = 1
      FieldName = 'VALOR'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsModalidadeCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
    end
  end
  object dspModalidade: TDataSetProvider
    DataSet = sqlModalidade
    Options = [poIncFieldProps, poAllowCommandText]
    OnGetTableName = dspModalidadeGetTableName
    Left = 400
    Top = 109
  end
  object dsModalidade: TDataSource
    DataSet = cdsModalidade
    Left = 400
    Top = 165
  end
  object dsMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    Left = 744
    Top = 168
  end
  object dspMovCaixa: TDataSetProvider
    DataSet = sqlMovCaixa
    Options = [poIncFieldProps, poAllowCommandText]
    OnGetTableName = dspMovCaixaGetTableName
    Left = 744
    Top = 120
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovCaixa'
    Left = 744
    Top = 72
    object cdsMovCaixaIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
    object cdsMovCaixaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object cdsMovCaixaHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
    end
    object cdsMovCaixaDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
    end
    object cdsMovCaixaHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
    end
    object cdsMovCaixaUSUARIO_ABERTURA: TStringField
      FieldName = 'USUARIO_ABERTURA'
      Size = 15
    end
    object cdsMovCaixaUSUARIO_FECHAMENTO: TStringField
      FieldName = 'USUARIO_FECHAMENTO'
      Size = 15
    end
    object cdsMovCaixaVALOR_ABERTURA: TFMTBCDField
      FieldName = 'VALOR_ABERTURA'
      Precision = 15
      Size = 2
    end
    object cdsMovCaixaVALOR_FECHAMENTO: TFMTBCDField
      FieldName = 'VALOR_FECHAMENTO'
      Precision = 15
      Size = 2
    end
    object cdsMovCaixaATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object sqlCaixa: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from CAIXA '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 656
    Top = 16
    object sqlCaixaIDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
    end
    object sqlCaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object sqlCaixaSALDO: TStringField
      FieldName = 'SALDO'
      FixedChar = True
      Size = 1
    end
    object sqlCaixaDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
    end
    object sqlCaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sqlCaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object sqlCaixaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object sqlCaixaIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
    end
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCaixa'
    Left = 656
    Top = 64
    object cdsCaixaIDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
    end
    object cdsCaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cdsCaixaSALDO: TStringField
      FieldName = 'SALDO'
      FixedChar = True
      Size = 1
    end
    object cdsCaixaDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
    end
    object cdsCaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsCaixaCONTA: TStringField
      Tag = 1
      FieldName = 'CONTA'
      Size = 15
    end
    object cdsCaixaIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
    end
  end
  object dspCaixa: TDataSetProvider
    DataSet = sqlCaixa
    Options = [poIncFieldProps, poAllowCommandText]
    OnGetTableName = dspCaixaGetTableName
    Left = 656
    Top = 112
  end
  object dsCaixa: TDataSource
    DataSet = cdsCaixa
    Left = 656
    Top = 160
  end
  object sqlMovCaixa: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from MOVIMENTO_CAIXA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 744
    Top = 24
    object sqlMovCaixaIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
    object sqlMovCaixaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object sqlMovCaixaHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
    end
    object sqlMovCaixaDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
    end
    object sqlMovCaixaHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
    end
    object sqlMovCaixaUSUARIO_ABERTURA: TStringField
      FieldName = 'USUARIO_ABERTURA'
      Size = 15
    end
    object sqlMovCaixaUSUARIO_FECHAMENTO: TStringField
      FieldName = 'USUARIO_FECHAMENTO'
      Size = 15
    end
    object sqlMovCaixaVALOR_ABERTURA: TFMTBCDField
      FieldName = 'VALOR_ABERTURA'
      Precision = 15
      Size = 2
    end
    object sqlMovCaixaVALOR_FECHAMENTO: TFMTBCDField
      FieldName = 'VALOR_FECHAMENTO'
      Precision = 15
      Size = 2
    end
    object L: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object spMovCaixa: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
        Size = 4
        Value = 1
      end>
    SQLConnection = dmconect.SQLConnection1
    StoredProcName = 'SP_GEN_MOVIMENTO_CAIXA_ID'
    Left = 744
    Top = 224
  end
  object dsContaReceber: TDataSource
    DataSet = cdsContaReceber
    Left = 32
    Top = 408
  end
  object dsContaPagar: TDataSource
    DataSet = cdsContaPagar
    Left = 120
    Top = 408
  end
  object dspContaReceber: TDataSetProvider
    DataSet = sqlContaReceber
    Options = [poIncFieldProps, poAllowCommandText]
    OnGetTableName = dspContaReceberGetTableName
    Left = 32
    Top = 360
  end
  object dspContaPagar: TDataSetProvider
    DataSet = sqlContaPagar
    Options = [poIncFieldProps, poAllowCommandText]
    OnGetTableName = dspContaPagarGetTableName
    Left = 120
    Top = 360
  end
  object cdsContaReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContaReceber'
    OnCalcFields = cdsContaReceberCalcFields
    Left = 32
    Top = 312
    object cdsContaReceberID: TIntegerField
      FieldName = 'ID'
    end
    object cdsContaReceberCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
    end
    object cdsContaReceberDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cdsContaReceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object cdsContaReceberDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object cdsContaReceberDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cdsContaReceberDEBITO: TFMTBCDField
      FieldName = 'DEBITO'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsContaReceberCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsContaReceberATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsContaPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContaPagar'
    OnCalcFields = cdsContaPagarCalcFields
    Left = 120
    Top = 312
    object cdsContaPagarID: TIntegerField
      FieldName = 'ID'
    end
    object cdsContaPagarFORNECEDOR_IDFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR_IDFORNECEDOR'
    end
    object cdsContaPagarDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cdsContaPagarDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object cdsContaPagarDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object cdsContaPagarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cdsContaPagarDEBITO: TFMTBCDField
      FieldName = 'DEBITO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsContaPagarCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsContaPagarATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsContaPagarSALDO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SALDO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Calculated = True
    end
  end
  object sqlContaReceber: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from CONTASRECEBER'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 32
    Top = 264
    object sqlContaReceberID: TIntegerField
      FieldName = 'ID'
    end
    object sqlContaReceberCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
    end
    object sqlContaReceberDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object sqlContaReceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object sqlContaReceberDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object sqlContaReceberDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object sqlContaReceberDEBITO: TFMTBCDField
      FieldName = 'DEBITO'
      Precision = 15
      Size = 2
    end
    object sqlContaReceberCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      Precision = 15
      Size = 2
    end
    object sqlContaReceberATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object sqlContaPagar: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from CONTASPAGAR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 120
    Top = 264
    object sqlContaPagarID: TIntegerField
      FieldName = 'ID'
    end
    object sqlContaPagarFORNECEDOR_IDFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR_IDFORNECEDOR'
    end
    object sqlContaPagarDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object sqlContaPagarDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object sqlContaPagarDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object sqlContaPagarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object sqlContaPagarDEBITO: TFMTBCDField
      FieldName = 'DEBITO'
      Precision = 15
      Size = 2
    end
    object sqlContaPagarCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      Precision = 15
      Size = 2
    end
    object sqlContaPagarATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 576
    Top = 64
    object cdsFornecedorID: TIntegerField
      FieldName = 'ID'
    end
    object cdsFornecedorNOME: TStringField
      Tag = 1
      FieldName = 'NOME'
      Size = 80
    end
    object cdsFornecedorCNPJ_CPF: TStringField
      Tag = 1
      FieldName = 'CNPJ_CPF'
    end
    object cdsFornecedorIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object cdsFornecedorENDERECO: TStringField
      Tag = 1
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsFornecedorBAIRRO: TStringField
      Tag = 1
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsFornecedorCEP: TStringField
      Tag = 1
      FieldName = 'CEP'
      Size = 10
    end
    object cdsFornecedorCIDADE: TStringField
      Tag = 1
      FieldName = 'CIDADE'
      Size = 60
    end
    object cdsFornecedorESTADO: TStringField
      Tag = 1
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsFornecedorTELEFFONE: TStringField
      FieldName = 'TELEFFONE'
      Size = 13
    end
    object cdsFornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object cdsFornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsFornecedorSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object cdsFornecedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object cdsFornecedorOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 100
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sqlFornecedor
    Options = [poIncFieldProps, poAllowCommandText]
    OnGetTableName = dspFornecedorGetTableName
    Left = 576
    Top = 112
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 576
    Top = 168
  end
  object sqlFornecedor: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from FORNECEDORES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 576
    Top = 16
    object sqlFornecedorID: TIntegerField
      FieldName = 'ID'
    end
    object sqlFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object sqlFornecedorCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sqlFornecedorIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object sqlFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sqlFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sqlFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object sqlFornecedorESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqlFornecedorTELEFFONE: TStringField
      FieldName = 'TELEFFONE'
      Size = 13
    end
    object sqlFornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object sqlFornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object sqlFornecedorSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object sqlFornecedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object sqlFornecedorOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 100
    end
  end
  object dsParametro: TDataSource
    DataSet = cdsParametro
    Left = 191
    Top = 416
  end
  object dspParametro: TDataSetProvider
    DataSet = sqlParametro
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 199
    Top = 368
  end
  object cdsParametro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParametro'
    Left = 199
    Top = 320
    object cdsParametroID: TIntegerField
      FieldName = 'ID'
    end
    object cdsParametroNOME: TStringField
      Tag = 1
      FieldName = 'NOME'
      Size = 60
    end
    object cdsParametroCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object cdsParametroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsParametroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsParametroCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsParametroCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object cdsParametroESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsParametroTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cdsParametroFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object cdsParametroEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsParametroSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object cdsParametroLOGOMARCA: TStringField
      FieldName = 'LOGOMARCA'
      Size = 70
    end
  end
  object sqlParametro: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from PARAMETROS order by PARAMETROS.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 199
    Top = 272
    object sqlParametroID: TIntegerField
      FieldName = 'ID'
    end
    object sqlParametroNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlParametroCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object sqlParametroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sqlParametroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object sqlParametroCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlParametroCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object sqlParametroESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqlParametroTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object sqlParametroFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object sqlParametroEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object sqlParametroSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object sqlParametroLOGOMARCA: TStringField
      FieldName = 'LOGOMARCA'
      Size = 70
    end
  end
  object sqlCheque: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from CHEQUEPRINT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 272
    Top = 272
    object sqlChequeID: TIntegerField
      FieldName = 'ID'
    end
    object sqlChequeVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sqlChequeEXTENSO: TStringField
      FieldName = 'EXTENSO'
      Size = 100
    end
    object sqlChequeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sqlChequeDIA: TStringField
      FieldName = 'DIA'
      Size = 2
    end
    object sqlChequeANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object sqlChequeNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object sqlChequeMES: TStringField
      FieldName = 'MES'
      Size = 8
    end
    object sqlChequeBANCO: TStringField
      FieldName = 'BANCO'
      Size = 60
    end
    object sqlChequeUTILIZADO: TStringField
      FieldName = 'UTILIZADO'
      Size = 80
    end
    object sqlChequeCHEQUENUM: TStringField
      FieldName = 'CHEQUENUM'
      Size = 15
    end
    object sqlChequeVISTO: TStringField
      FieldName = 'VISTO'
      Size = 80
    end
    object sqlChequeDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
  end
  object cdsCheque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCheque'
    Left = 272
    Top = 320
    object cdsChequeID: TIntegerField
      FieldName = 'ID'
    end
    object cdsChequeVALOR: TFMTBCDField
      Tag = 1
      FieldName = 'VALOR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsChequeEXTENSO: TStringField
      Tag = 1
      FieldName = 'EXTENSO'
      Size = 100
    end
    object cdsChequeCIDADE: TStringField
      Tag = 1
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsChequeDIA: TStringField
      Tag = 1
      FieldName = 'DIA'
      Size = 2
    end
    object cdsChequeANO: TStringField
      Tag = 1
      FieldName = 'ANO'
      Size = 4
    end
    object cdsChequeNOME: TStringField
      Tag = 1
      FieldName = 'NOME'
      Size = 80
    end
    object cdsChequeMES: TStringField
      Tag = 1
      FieldName = 'MES'
      Size = 8
    end
    object cdsChequeBANCO: TStringField
      FieldName = 'BANCO'
      Size = 60
    end
    object cdsChequeUTILIZADO: TStringField
      FieldName = 'UTILIZADO'
      Size = 80
    end
    object cdsChequeCHEQUENUM: TStringField
      FieldName = 'CHEQUENUM'
      Size = 15
    end
    object cdsChequeVISTO: TStringField
      FieldName = 'VISTO'
      Size = 80
    end
    object cdsChequeDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
  end
  object dspCheque: TDataSetProvider
    DataSet = sqlCheque
    Options = [poIncFieldProps, poAllowCommandText]
    OnGetTableName = dspChequeGetTableName
    Left = 272
    Top = 368
  end
  object dsCheque: TDataSource
    DataSet = cdsCheque
    Left = 272
    Top = 416
  end
  object cdsCliente_Servico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente_Servico'
    Left = 360
    Top = 316
    object cdsCliente_ServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCliente_ServicoIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object cdsCliente_ServicoDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object cdsCliente_ServicoCODIGOS_ATOS_PRATICADOS: TStringField
      Tag = 1
      FieldName = 'CODIGOS_ATOS_PRATICADOS'
      Size = 100
    end
    object cdsCliente_ServicoNUMERO_RECIBO: TIntegerField
      FieldName = 'NUMERO_RECIBO'
    end
    object cdsCliente_ServicoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
  end
  object dspCliente_Servico: TDataSetProvider
    DataSet = sqlCliente_Servico
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 360
    Top = 363
  end
  object dsCliente_Servico: TDataSource
    DataSet = cdsCliente_Servico
    Left = 360
    Top = 408
  end
  object sqlCliente_Servico: TSQLDataSet
    CommandText = 'select * from CLIENTE_SERVICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 360
    Top = 264
    object sqlCliente_ServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlCliente_ServicoIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object sqlCliente_ServicoDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object sqlCliente_ServicoCODIGOS_ATOS_PRATICADOS: TStringField
      FieldName = 'CODIGOS_ATOS_PRATICADOS'
      Size = 100
    end
    object sqlCliente_ServicoNUMERO_RECIBO: TIntegerField
      FieldName = 'NUMERO_RECIBO'
    end
    object sqlCliente_ServicoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
  end
  object sqlItens_Servico: TSQLDataSet
    CommandText = 'select * from ITENS_SERVICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 464
    Top = 256
    object sqlItens_ServicoID: TIntegerField
      FieldName = 'ID'
    end
    object sqlItens_ServicoIDCLIENTE_SERVICO: TIntegerField
      FieldName = 'IDCLIENTE_SERVICO'
    end
    object sqlItens_ServicoCODIGO_EMOLUMENTO: TStringField
      FieldName = 'CODIGO_EMOLUMENTO'
      Size = 10
    end
    object sqlItens_ServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqlItens_ServicoRECOMPE: TFMTBCDField
      FieldName = 'RECOMPE'
      Precision = 15
      Size = 2
    end
    object sqlItens_ServicoEMOLUMENTO_LIQUIDO: TFMTBCDField
      FieldName = 'EMOLUMENTO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object sqlItens_ServicoTAXA_FISCALIZACAO: TFMTBCDField
      FieldName = 'TAXA_FISCALIZACAO'
      Precision = 15
      Size = 2
    end
    object sqlItens_ServicoQTDE: TIntegerField
      FieldName = 'QTDE'
    end
  end
  object cdsItens_Servico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItens_Servico'
    Left = 464
    Top = 312
    object cdsItens_ServicoID: TIntegerField
      FieldName = 'ID'
    end
    object cdsItens_ServicoIDCLIENTE_SERVICO: TIntegerField
      FieldName = 'IDCLIENTE_SERVICO'
    end
    object cdsItens_ServicoCODIGO_EMOLUMENTO: TStringField
      FieldName = 'CODIGO_EMOLUMENTO'
      Size = 10
    end
    object cdsItens_ServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsItens_ServicoRECOMPE: TFMTBCDField
      FieldName = 'RECOMPE'
      Precision = 15
      Size = 2
    end
    object cdsItens_ServicoEMOLUMENTO_LIQUIDO: TFMTBCDField
      FieldName = 'EMOLUMENTO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object cdsItens_ServicoTAXA_FISCALIZACAO: TFMTBCDField
      FieldName = 'TAXA_FISCALIZACAO'
      Precision = 15
      Size = 2
    end
    object cdsItens_ServicoQTDE: TIntegerField
      FieldName = 'QTDE'
    end
  end
  object dspItens_Servico: TDataSetProvider
    DataSet = sqlItens_Servico
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 464
    Top = 360
  end
  object dsItens_Servico: TDataSource
    DataSet = cdsItens_Servico
    Left = 464
    Top = 408
  end
end
