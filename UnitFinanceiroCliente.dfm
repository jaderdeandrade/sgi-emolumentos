object fmFinanceiroCliente: TfmFinanceiroCliente
  Left = 372
  Top = 211
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Financeiro do Cliente'
  ClientHeight = 323
  ClientWidth = 555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 555
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 464
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 384
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 304
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 555
    Height = 282
    Align = alClient
    DataSource = dsModalidade
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'IDMODALIDADE'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'DESCRI'#199#195'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 411
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 97
        Visible = True
      end>
  end
  object sqlModalidade: TSQLDataSet
    CommandText = 'select * from MODALIDADE where CLIENTE_IDCLIENTE=:idcliente'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idcliente'
        ParamType = ptInput
      end>
    SQLConnection = dmconect.SQLConnection1
    Left = 21
    Top = 91
    object sqlModalidadeIDMODALIDADE: TIntegerField
      FieldName = 'IDMODALIDADE'
      Required = True
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
      Required = True
    end
  end
  object cdsModalidade: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idcliente'
        ParamType = ptInput
      end>
    ProviderName = 'dspModalidade'
    Left = 23
    Top = 140
    object cdsModalidadeIDMODALIDADE: TIntegerField
      FieldName = 'IDMODALIDADE'
      Required = True
    end
    object cdsModalidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsModalidadeVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsModalidadeCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
      Required = True
    end
  end
  object dspModalidade: TDataSetProvider
    DataSet = sqlModalidade
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 24
    Top = 189
  end
  object dsModalidade: TDataSource
    DataSet = cdsModalidade
    Left = 24
    Top = 245
  end
end
