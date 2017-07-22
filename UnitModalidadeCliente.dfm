object fmModalidade: TfmModalidade
  Left = 479
  Top = 191
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Modalidade do Cliente'
  ClientHeight = 173
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 65
    Width = 72
    Height = 13
    Caption = 'DESCRI'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 110
    Width = 42
    Height = 13
    Caption = 'VALOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 427
    Height = 41
    Align = alTop
    TabOrder = 0
    object btGravar: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = btGravarClick
    end
    object Button2: TButton
      Left = 184
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = Button2Click
    end
    object btEditar: TButton
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Editar'
      TabOrder = 2
      OnClick = btEditarClick
    end
  end
  object DBEdit5: TDBEdit
    Left = 17
    Top = 124
    Width = 212
    Height = 21
    DataField = 'VALOR'
    DataSource = dmsesi.dsModalidade
    TabOrder = 1
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 16
    Top = 80
    Width = 393
    Height = 21
    DropDownCount = 8
    DataField = 'DESCRICAO'
    DataSource = dmsesi.dsModalidade
    ListStyle = lsDelimited
    LookupField = 'DESCRICAO'
    LookupDisplay = 'DESCRICAO;VALOR'
    LookupSource = dsservico
    TabOrder = 2
    OnExit = RxDBLookupCombo1Exit
  end
  object dsservico: TDataSource
    DataSet = cdsServico
    Left = 416
    Top = 184
  end
  object dspServico: TDataSetProvider
    DataSet = sqlServico
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 416
    Top = 128
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServico'
    Left = 416
    Top = 80
    object cdsServicoIDSERVICO: TIntegerField
      FieldName = 'IDSERVICO'
    end
    object cdsServicoDESCRICAO: TStringField
      Tag = 1
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsServicoVALOR: TFMTBCDField
      Tag = 1
      FieldName = 'VALOR'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
  end
  object sqlServico: TSQLDataSet
    CommandText = 'select * from SERVICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 416
    Top = 32
    object sqlServicoIDSERVICO: TIntegerField
      FieldName = 'IDSERVICO'
    end
    object sqlServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sqlServicoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
  end
end
