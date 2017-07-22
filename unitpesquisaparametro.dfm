object fmPesquisaParametro: TfmPesquisaParametro
  Left = 241
  Top = 137
  Width = 870
  Height = 500
  Caption = 'Par'#226'metro'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 49
    Align = alTop
    TabOrder = 0
    object Button3: TButton
      Left = 591
      Top = 14
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 675
      Top = 14
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button2: TButton
      Left = 759
      Top = 14
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 862
    Height = 417
    Align = alClient
    DataSource = dsParametro
    FixedColor = 15132390
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'PAR'#194'METROS DA EMPRESA'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 607
        Visible = True
      end>
  end
  object dsParametro: TDataSource
    DataSet = cdsParametro
    Left = 8
    Top = 256
  end
  object dspParametro: TDataSetProvider
    DataSet = sqlParametro
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 8
    Top = 224
  end
  object cdsParametro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParametro'
    Left = 8
    Top = 192
    object cdsParametroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsParametroNOME: TStringField
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
    Left = 8
    Top = 160
    object sqlParametroID: TIntegerField
      FieldName = 'ID'
      Required = True
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
  object spParametro: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPARAMETRO'
        ParamType = ptInput
      end>
    StoredProcName = 'DELETA_PARAMETRO'
    Left = 8
    Top = 288
  end
end
