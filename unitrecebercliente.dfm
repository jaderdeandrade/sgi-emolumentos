object fmReceber: TfmReceber
  Left = 236
  Top = 124
  Width = 783
  Height = 540
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 775
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
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 775
    Height = 465
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'CADASTRO'
      object Label2: TLabel
        Left = 64
        Top = 156
        Width = 117
        Height = 14
        Caption = 'RECEBER O TOTAL DE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 64
        Top = 64
        Width = 36
        Height = 14
        Caption = 'D'#201'BITO'
      end
      object Label3: TLabel
        Left = 64
        Top = 208
        Width = 36
        Height = 14
        Caption = 'SALDO'
      end
      object Bevel1: TBevel
        Left = 64
        Top = 200
        Width = 161
        Height = 9
        Shape = bsTopLine
      end
      object Label4: TLabel
        Left = 64
        Top = 112
        Width = 101
        Height = 14
        Caption = 'PLANO DE CONTAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
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
        TabOrder = 0
      end
      object ceReceber: TCurrencyEdit
        Left = 64
        Top = 172
        Width = 161
        Height = 21
        AutoSize = False
        Color = clYellow
        TabOrder = 1
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
        TabOrder = 2
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 64
        Top = 128
        Width = 401
        Height = 21
        DropDownCount = 8
        LookupField = 'CONTA'
        LookupDisplay = 'CONTA;NOME'
        LookupDisplayIndex = 1
        LookupSource = dsPlanoConta
        TabOrder = 3
      end
    end
  end
  object sqlMovCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from MOVIMENTO_CAIXA where MOVIMENTO_CAIXA.ATIVO='#39'1'#39)
    SQLConnection = dm.Connection1
    Left = 712
    Top = 184
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
    object sqlMovCaixaNUMERO_CAIXA: TIntegerField
      FieldName = 'NUMERO_CAIXA'
    end
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovCaixa'
    Left = 712
    Top = 224
    object cdsMovCaixaIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
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
    object cdsMovCaixaNUMERO_CAIXA: TIntegerField
      FieldName = 'NUMERO_CAIXA'
    end
  end
  object dspMovCaixa: TDataSetProvider
    DataSet = sqlMovCaixa
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 712
    Top = 264
  end
  object dsMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    Left = 712
    Top = 304
  end
  object dsnumerocaixa: TDataSource
    DataSet = cdsnumerocaixa
    Left = 700
    Top = 73
  end
  object cdsnumerocaixa: TClientDataSet
    Active = True
    Aggregates = <>
    FileName = 'C:\WorkerMed\NumeroCaixa.xml'
    Params = <>
    Left = 668
    Top = 73
    Data = {
      720000009619E0BD0100000018000000010003000000030000006000066E756D
      65726F040001001000000001000A4348414E47455F4C4F470400820009000000
      0100000000000000040000000200000001000000080000000300000002000000
      080000000500010000000D00020000000C0001000000}
    object cdsnumerocaixanumero: TIntegerField
      FieldName = 'numero'
    end
  end
  object sqlPlanoConta: TSQLDataSet
    CommandText = 
      'Select contaplano.nome, contaplano.conta'#13#10'from contaplano'#13#10'   in' +
      'ner join planocontas on (contaplano.idplacoconta = planocontas.i' +
      'dplanocontas)'#13#10'   where planocontas.tipo='#39'ENTRADA'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.Connection1
    Left = 608
    Top = 264
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
    Left = 608
    Top = 320
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
    Left = 608
    Top = 376
  end
  object dsPlanoConta: TDataSource
    DataSet = cdsPlanoConta
    Left = 608
    Top = 432
  end
end
