object fmImprimeRecibo: TfmImprimeRecibo
  Left = 427
  Top = 153
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Imprimir'
  ClientHeight = 130
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object recibo: TRLReport
    Left = 22
    Top = 386
    Width = 794
    Height = 529
    DataSource = dsContaReceber
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    InsideMargins.LeftMargin = 1.000000000000000000
    InsideMargins.RightMargin = 1.000000000000000000
    InsideMargins.BottomMargin = 5.000000000000000000
    Margins.LeftMargin = 3.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 3.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 140.000000000000000000
    PreviewOptions.FormStyle = fsMDIChild
    PrintDialog = False
    ShowExplosion = True
    ShowProgress = False
    Title = 'IMPRESSO'
    object RLBand5: TRLBand
      Left = 15
      Top = 19
      Width = 764
      Height = 41
      BandType = btTitle
      PageBreaking = pbBeforePrint
      object toperacao: TRLLabel
        Left = 307
        Top = 13
        Width = 150
        Height = 18
        Caption = '>>> RECIBO <<<'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 30
        Width = 762
        Height = 9
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLDraw3: TRLDraw
        Left = 2
        Top = 6
        Width = 762
        Height = 9
        DrawKind = dkLine
        Pen.Style = psDot
      end
    end
    object RLBand4: TRLBand
      Left = 15
      Top = 197
      Width = 764
      Height = 19
      object RLDBText11: TRLDBText
        Left = 664
        Top = 1
        Width = 48
        Height = 16
        Alignment = taRightJustify
        DataField = 'SALDO'
        DataSource = dsContaReceber
      end
      object RLDBText12: TRLDBText
        Left = 192
        Top = 1
        Width = 80
        Height = 16
        DataField = 'DESCRICAO'
        DataSource = dsContaReceber
      end
      object RLDBText13: TRLDBText
        Left = 24
        Top = 1
        Width = 128
        Height = 16
        DataField = 'DATA_VENCIMENTO'
        DataSource = dsContaReceber
      end
    end
    object RLBand2: TRLBand
      Left = 15
      Top = 60
      Width = 764
      Height = 137
      BandType = btColumnHeader
      PageBreaking = pbBeforePrint
      object RLLabel4: TRLLabel
        Left = 14
        Top = 12
        Width = 136
        Height = 16
        Caption = 'Recebi(emos) de:'
      end
      object RLLabel6: TRLLabel
        Left = 14
        Top = 29
        Width = 80
        Height = 16
        Caption = 'Endere'#231'o:'
      end
      object RLLabel7: TRLLabel
        Left = 14
        Top = 45
        Width = 64
        Height = 16
        Caption = 'Bairro:'
      end
      object RLLabel8: TRLLabel
        Left = 294
        Top = 45
        Width = 40
        Height = 16
        Caption = 'CEP:'
      end
      object RLLabel9: TRLLabel
        Left = 422
        Top = 45
        Width = 64
        Height = 16
        Caption = 'Cidade:'
      end
      object RLLabel10: TRLLabel
        Left = 638
        Top = 45
        Width = 64
        Height = 16
        Caption = 'Estado:'
      end
      object RLLabel11: TRLLabel
        Left = 14
        Top = 69
        Width = 144
        Height = 16
        Caption = 'A importancia de:'
      end
      object RLLabel12: TRLLabel
        Left = 8
        Top = 92
        Width = 96
        Height = 16
        Caption = 'Referencia:'
      end
      object RLDraw5: TRLDraw
        Left = 2
        Top = 108
        Width = 762
        Height = 2
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLDraw6: TRLDraw
        Left = 2
        Top = 130
        Width = 762
        Height = 3
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLLabel16: TRLLabel
        Left = 20
        Top = 111
        Width = 88
        Height = 16
        Caption = 'Vencimento'
      end
      object RLLabel17: TRLLabel
        Left = 188
        Top = 111
        Width = 80
        Height = 16
        Caption = 'Descri'#231#227'o'
      end
      object RLLabel18: TRLLabel
        Left = 660
        Top = 111
        Width = 48
        Height = 16
        Caption = 'Saldo'
      end
      object rlRAZAOSOCIAL: TRLLabel
        Left = 150
        Top = 12
        Width = 112
        Height = 15
      end
      object rlENDERECO: TRLLabel
        Left = 94
        Top = 28
        Width = 88
        Height = 15
      end
      object rlBAIRRO: TRLLabel
        Left = 78
        Top = 44
        Width = 72
        Height = 15
      end
      object rlCEP: TRLLabel
        Left = 334
        Top = 45
        Width = 48
        Height = 15
      end
      object rlCIDADE: TRLLabel
        Left = 486
        Top = 45
        Width = 72
        Height = 16
      end
      object rlESTADO: TRLLabel
        Left = 702
        Top = 45
        Width = 72
        Height = 15
      end
      object rlEXTENSO: TRLLabel
        Left = 158
        Top = 69
        Width = 595
        Height = 15
        AutoSize = False
      end
    end
    object RLBand3: TRLBand
      Left = 15
      Top = 216
      Width = 764
      Height = 155
      BandType = btFooter
      object RLDraw8: TRLDraw
        Left = 0
        Top = 147
        Width = 762
        Height = 4
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLDraw9: TRLDraw
        Left = 2
        Top = 57
        Width = 762
        Height = 6
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLLabel5: TRLLabel
        Left = 6
        Top = 41
        Width = 400
        Height = 16
        Caption = 'Assinatura: _____________________________________'
      end
      object RLLabel19: TRLLabel
        Left = -2
        Top = 10
        Width = 128
        Height = 16
        Caption = 'Caratinga (MG),'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 134
        Top = 10
        Width = 56
        Height = 16
      end
      object RLLabel20: TRLLabel
        Left = 6
        Top = 64
        Width = 63
        Height = 15
        Caption = 'Emitente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 6
        Top = 79
        Width = 70
        Height = 15
        Caption = 'Endere'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 422
        Top = 96
        Width = 56
        Height = 15
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 71
        Top = 63
        Width = 40
        Height = 16
        DataField = 'NOME'
        DataSource = dsParametro
      end
      object RLDBText14: TRLDBText
        Left = 75
        Top = 78
        Width = 550
        Height = 16
        AutoSize = False
        DataField = 'ENDERECO'
        DataSource = dsParametro
      end
      object RLLabel23: TRLLabel
        Left = 5
        Top = 95
        Width = 56
        Height = 15
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 630
        Top = 79
        Width = 35
        Height = 15
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 614
        Top = 96
        Width = 49
        Height = 15
        Caption = 'Estado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 6
        Top = 112
        Width = 77
        Height = 15
        Caption = 'Telefone.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 198
        Top = 112
        Width = 35
        Height = 15
        Caption = 'Fax:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 398
        Top = 128
        Width = 49
        Height = 15
        Caption = 'Email:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel29: TRLLabel
        Left = 6
        Top = 128
        Width = 42
        Height = 15
        Caption = 'Site:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 480
        Top = 95
        Width = 56
        Height = 16
        DataField = 'CIDADE'
        DataSource = dsParametro
      end
      object RLDBText16: TRLDBText
        Left = 664
        Top = 95
        Width = 56
        Height = 16
        DataField = 'ESTADO'
        DataSource = dsParametro
      end
      object RLDBText17: TRLDBText
        Left = 61
        Top = 94
        Width = 56
        Height = 16
        DataField = 'BAIRRO'
        DataSource = dsParametro
      end
      object RLDBText18: TRLDBText
        Left = 666
        Top = 78
        Width = 32
        Height = 16
        DataField = 'CEP'
        DataSource = dsParametro
      end
      object RLDBText19: TRLDBText
        Left = 448
        Top = 128
        Width = 48
        Height = 16
        DataField = 'EMAIL'
        DataSource = dsParametro
      end
      object RLDBText20: TRLDBText
        Left = 48
        Top = 128
        Width = 40
        Height = 16
        DataField = 'SITE'
        DataSource = dsParametro
      end
      object RLDBText21: TRLDBText
        Left = 83
        Top = 111
        Width = 72
        Height = 16
        DataField = 'TELEFONE'
        DataSource = dsParametro
      end
      object RLDBText22: TRLDBText
        Left = 232
        Top = 111
        Width = 32
        Height = 16
        DataField = 'FAX'
        DataSource = dsParametro
      end
      object RLLabel15: TRLLabel
        Left = 576
        Top = 7
        Width = 56
        Height = 16
        Caption = 'TOTAL:'
      end
      object rlTOTAL: TRLLabel
        Left = 632
        Top = 7
        Width = 64
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 2
        Top = 1
        Width = 762
        Height = 5
        DrawKind = dkLine
        Pen.Style = psDot
      end
    end
  end
  object rgRecibo: TRadioGroup
    Left = 16
    Top = 16
    Width = 497
    Height = 57
    Caption = '| RECIBOS |'
    Columns = 2
    ItemIndex = 1
    Items.Strings = (
      'Todos os registros'
      'Somente o registro selecionado')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 168
    Top = 88
    Width = 75
    Height = 25
    Caption = 'C&onfirma'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 88
    Width = 75
    Height = 25
    Caption = '&Cancela'
    TabOrder = 3
    OnClick = Button2Click
  end
  object sqlContaReceber: TSQLDataSet
    CommandText = 
      'select contasreceber.id, contasreceber.cliente_idcliente, contas' +
      'receber.data_emissao, contasreceber.data_vencimento, contasreceb' +
      'er.data_baixa, contasreceber.descricao, contasreceber.debito, co' +
      'ntasreceber.credito, contasreceber.ativo, cliente.idcliente, cli' +
      'ente.nome, cliente.endereco, cliente.bairro, cliente.cidade, cli' +
      'ente.cep, cliente.estado, cliente.rgie, cliente.cnpjcpf'#13#10'from cl' +
      'iente'#13#10'   inner join contasreceber on (cliente.idcliente = conta' +
      'sreceber.cliente_idcliente)'#13#10'where '#13#10'   ('#13#10'      (contasreceber.' +
      'ativo = '#39'1'#39')'#13#10'   )'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 8
    Top = 88
    object sqlContaReceberID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlContaReceberCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
      Required = True
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
    object sqlContaReceberIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object sqlContaReceberNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlContaReceberENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sqlContaReceberBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sqlContaReceberCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object sqlContaReceberCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlContaReceberESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqlContaReceberRGIE: TStringField
      FieldName = 'RGIE'
      Size = 15
    end
    object sqlContaReceberCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
  end
  object cdsContaReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContaReceber'
    OnCalcFields = cdsContaReceberCalcFields
    Left = 8
    Top = 120
    object cdsContaReceberID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContaReceberCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
      Required = True
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
    object cdsContaReceberIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object cdsContaReceberNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsContaReceberENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsContaReceberBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsContaReceberCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object cdsContaReceberCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsContaReceberESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsContaReceberRGIE: TStringField
      FieldName = 'RGIE'
      Size = 15
    end
    object cdsContaReceberCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object cdsContaReceberSALDO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SALDO'
      DisplayFormat = '#0.00'
      Calculated = True
    end
  end
  object dspContaReceber: TDataSetProvider
    DataSet = sqlContaReceber
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 8
    Top = 160
  end
  object dsContaReceber: TDataSource
    DataSet = cdsContaReceber
    Left = 8
    Top = 192
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 532
    Top = 33
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 572
    Top = 33
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 604
    Top = 33
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.20 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 636
    Top = 33
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 668
    Top = 33
  end
  object dsParametro: TDataSource
    DataSet = cdsParametro
    Left = 527
    Top = 224
  end
  object dspParametro: TDataSetProvider
    DataSet = sqlParametro
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 527
    Top = 176
  end
  object cdsParametro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParametro'
    Left = 527
    Top = 128
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
    CommandText = 'select * from PARAMETROS order by PARAMETROS.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 527
    Top = 80
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
end
