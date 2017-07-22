object fmReceberBalcao: TfmReceberBalcao
  Left = 401
  Top = 210
  Width = 677
  Height = 233
  BorderIcons = [biSystemMenu]
  Caption = 'Buscar Emolumento'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 61
    Height = 13
    Caption = 'Emolumento:'
  end
  object Label2: TLabel
    Left = 32
    Top = 93
    Width = 55
    Height = 13
    Caption = 'Quantidade'
  end
  object Panel2: TPanel
    Left = 0
    Top = 154
    Width = 661
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 256
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 344
      Top = 8
      Width = 75
      Height = 25
      Caption = 'F&echar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 32
    Top = 48
    Width = 585
    Height = 21
    DropDownCount = 8
    LookupField = 'CODIGO_EMOLUMENTO'
    LookupDisplay = 'CODIGO_EMOLUMENTO;DESCRICAO'
    LookupSource = dsServico
    TabOrder = 1
  end
  object RxSpinEdit1: TRxSpinEdit
    Left = 32
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object dsServico: TDataSource
    DataSet = cdsServico
    Left = 624
    Top = 104
  end
  object dspServico: TDataSetProvider
    DataSet = sqlServico
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 624
    Top = 72
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServico'
    Left = 624
    Top = 40
    object cdsServicoIDSERVICO: TIntegerField
      FieldName = 'IDSERVICO'
      Required = True
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
    CommandText = 'select * from SERVICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 624
    Top = 8
    object sqlServicoIDSERVICO: TIntegerField
      FieldName = 'IDSERVICO'
      Required = True
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
end
