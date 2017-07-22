object fmMostraServico: TfmMostraServico
  Left = 337
  Top = 232
  BorderStyle = bsSingle
  Caption = 'TABELA DE EMOLUMENTOS'
  ClientHeight = 327
  ClientWidth = 690
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 690
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 584
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object btEditar: TButton
      Left = 423
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 1
      OnClick = btEditarClick
    end
    object edtpesquisa: TEdit
      Left = 16
      Top = 9
      Width = 401
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = edtpesquisaKeyPress
    end
    object Button2: TButton
      Left = 503
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 690
    Height = 286
    Align = alClient
    DataSource = dsservico
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO_EMOLUMENTO'
        Title.Caption = 'COD. EMOLUMENTO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECOMPE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMOLUMENTO_LIQUIDO'
        Title.Caption = 'EMOLUMENTO LIQUIDO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAXA_EMOLUMENTO'
        Title.Caption = 'TAXA EMOLUMENTO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object dsservico: TDataSource
    DataSet = cdsServico
    Left = 528
    Top = 224
  end
  object dspServico: TDataSetProvider
    DataSet = sqlServico
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 528
    Top = 168
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServico'
    OnCalcFields = cdsServicoCalcFields
    Left = 528
    Top = 120
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
    Left = 528
    Top = 72
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
