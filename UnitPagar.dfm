object fmPagar: TfmPagar
  Left = 375
  Top = 201
  Width = 504
  Height = 347
  Caption = 'Pagar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 64
    Top = 203
    Width = 36
    Height = 13
    Caption = 'SALDO'
  end
  object Bevel1: TBevel
    Left = 64
    Top = 195
    Width = 161
    Height = 11
    Shape = bsTopLine
  end
  object Label2: TLabel
    Left = 64
    Top = 151
    Width = 121
    Height = 13
    Caption = 'RECEBER O TOTAL DE:'
  end
  object Label1: TLabel
    Left = 64
    Top = 64
    Width = 40
    Height = 13
    Caption = 'D'#201'BITO'
  end
  object Label4: TLabel
    Left = 64
    Top = 108
    Width = 65
    Height = 13
    Caption = 'DESCRI'#199#195'O:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 488
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
  object descricao: TEdit
    Left = 64
    Top = 125
    Width = 353
    Height = 21
    Color = clBtnFace
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object ceReceber: TCurrencyEdit
    Left = 64
    Top = 167
    Width = 161
    Height = 23
    AutoSize = False
    Color = clYellow
    TabOrder = 3
    ZeroEmpty = False
    OnExit = ceReceberExit
  end
  object ceSaldo: TCurrencyEdit
    Left = 64
    Top = 219
    Width = 161
    Height = 23
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
  object sqlPlanoConta: TSQLDataSet
    CommandText = 
      'Select contaplano.nome, contaplano.conta'#13#10'from contaplano'#13#10'   in' +
      'ner join planocontas on (contaplano.idplacoconta = planocontas.i' +
      'dplanocontas)'#13#10'   where planocontas.tipo='#39'SAIDA'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 336
    Top = 40
    object sqlPlanoContaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sqlPlanoContaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
  end
  object cdsPlanoConta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlanoConta'
    Left = 368
    Top = 40
    object cdsPlanoContaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsPlanoContaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
  end
  object dspPlanoConta: TDataSetProvider
    DataSet = sqlPlanoConta
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 400
    Top = 40
  end
  object dsPlanoConta: TDataSource
    DataSet = cdsPlanoConta
    Left = 432
    Top = 40
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
end
