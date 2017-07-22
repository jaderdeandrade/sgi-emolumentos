object fmReceber: TfmReceber
  Left = 518
  Top = 246
  Width = 526
  Height = 298
  Caption = 'Receber'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 64
    Top = 64
    Width = 36
    Height = 14
    Caption = 'D'#201'BITO'
  end
  object Label4: TLabel
    Left = 64
    Top = 112
    Width = 76
    Height = 14
    Caption = 'EMOLUMENTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 156
    Width = 116
    Height = 14
    Caption = 'RECEBER O TOTAL DE:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 64
    Top = 200
    Width = 161
    Height = 9
    Shape = bsTopLine
  end
  object Label3: TLabel
    Left = 64
    Top = 208
    Width = 36
    Height = 14
    Caption = 'SALDO'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 510
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
  object ceDebito: TCurrencyEdit
    Left = 64
    Top = 80
    Width = 161
    Height = 21
    AutoSize = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 64
    Top = 128
    Width = 401
    Height = 21
    DropDownCount = 8
    LookupField = 'DESCRICAO'
    LookupDisplay = 'EMOLUMENTO;DESCRICAO'
    LookupDisplayIndex = 1
    LookupSource = dsPlanoConta
    TabOrder = 2
  end
  object ceReceber: TCurrencyEdit
    Left = 64
    Top = 172
    Width = 161
    Height = 21
    AutoSize = False
    Color = clYellow
    TabOrder = 3
    OnExit = ceReceberExit
  end
  object ceSaldo: TCurrencyEdit
    Left = 64
    Top = 224
    Width = 161
    Height = 21
    AutoSize = False
    Color = 16776176
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object sqlMovCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from MOVIMENTO_CAIXA where MOVIMENTO_CAIXA.ATIVO='#39'1'#39)
    SQLConnection = dmconect.SQLConnection1
    Left = 8
    Top = 48
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
    Left = 8
    Top = 80
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
    Left = 8
    Top = 112
  end
  object dsMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    Left = 8
    Top = 144
  end
  object sqlPlanoConta: TSQLDataSet
    CommandText = 
      'select '#13#10'    servico.idservico,'#13#10'    servico.emolumento,'#13#10'    se' +
      'rvico.descricao,'#13#10'    servico.valor'#13#10'from servico'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 232
    Top = 160
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
    Left = 264
    Top = 160
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
    Left = 296
    Top = 160
  end
  object dsPlanoConta: TDataSource
    DataSet = cdsPlanoConta
    Left = 328
    Top = 160
  end
end
