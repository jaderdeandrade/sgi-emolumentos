object fmEstorno: TfmEstorno
  Left = 406
  Top = 206
  Width = 603
  Height = 319
  Caption = 'Lan'#231'amento no Caixa'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 126
    Width = 62
    Height = 13
    Caption = 'DESCRI'#199#195'O'
  end
  object Label2: TLabel
    Left = 24
    Top = 170
    Width = 54
    Height = 13
    Caption = 'VALOR DE'
  end
  object Label4: TLabel
    Left = 24
    Top = 79
    Width = 139
    Height = 13
    Caption = 'ESCOLHA UM SERVI'#199'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 587
    Height = 41
    Align = alTop
    TabOrder = 0
    object btGravar: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = btGravarClick
    end
    object btCancela: TButton
      Left = 106
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btCancelaClick
    end
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 24
    Top = 95
    Width = 420
    Height = 21
    DropDownCount = 8
    LookupField = 'DESCRICAO'
    LookupDisplay = 'EMOLUMENTO;DESCRICAO'
    LookupDisplayIndex = 1
    LookupSource = dsPlanoConta
    TabOrder = 1
    OnChange = RxDBLookupCombo1Change
  end
  object edtDescricao: TEdit
    Left = 24
    Top = 142
    Width = 417
    Height = 21
    CharCase = ecUpperCase
    Color = clSilver
    Enabled = False
    TabOrder = 2
  end
  object ceReceber: TCurrencyEdit
    Left = 24
    Top = 186
    Width = 161
    Height = 21
    AutoSize = False
    Color = clYellow
    Enabled = False
    TabOrder = 3
  end
  object sqlMovCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from MOVIMENTO_CAIXA where MOVIMENTO_CAIXA.ATIVO='#39'1'#39)
    SQLConnection = dmconect.SQLConnection1
    Left = 496
    Top = 88
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
    object sqlMovCaixaATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovCaixa'
    Left = 496
    Top = 120
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
  object dspMovCaixa: TDataSetProvider
    DataSet = sqlMovCaixa
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 496
    Top = 152
  end
  object dsMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    Left = 496
    Top = 184
  end
  object sqlPlanoConta: TSQLDataSet
    CommandText = 
      'select '#13#10'    servico.idservico,'#13#10'    servico.emolumento,'#13#10'    se' +
      'rvico.descricao,'#13#10'    servico.valor'#13#10'from servico'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 536
    Top = 88
    object sqlPlanoContaIDSERVICO: TIntegerField
      FieldName = 'IDSERVICO'
      Required = True
    end
    object sqlPlanoContaEMOLUMENTO: TStringField
      FieldName = 'EMOLUMENTO'
      Size = 10
    end
    object sqlPlanoContaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sqlPlanoContaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
  end
  object cdsPlanoConta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlanoConta'
    Left = 536
    Top = 120
    object cdsPlanoContaIDSERVICO: TIntegerField
      FieldName = 'IDSERVICO'
      Required = True
    end
    object cdsPlanoContaEMOLUMENTO: TStringField
      FieldName = 'EMOLUMENTO'
      Size = 10
    end
    object cdsPlanoContaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsPlanoContaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
  end
  object dspPlanoConta: TDataSetProvider
    DataSet = sqlPlanoConta
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 536
    Top = 152
  end
  object dsPlanoConta: TDataSource
    DataSet = cdsPlanoConta
    Left = 536
    Top = 184
  end
end
