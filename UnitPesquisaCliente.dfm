object fmPesquisaCliente: TfmPesquisaCliente
  Left = 316
  Top = 151
  BorderStyle = bsSingle
  Caption = 'Clientes'
  ClientHeight = 529
  ClientWidth = 811
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
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 811
    Height = 65
    Align = alTop
    TabOrder = 0
    object edtpesquisa: TEdit
      Left = 24
      Top = 24
      Width = 457
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = edtpesquisaKeyPress
    end
    object Button1: TButton
      Left = 512
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 608
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 704
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 811
    Height = 464
    Align = alClient
    DataSource = dscliente
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
        FieldName = 'IDCLIENTE'
        Title.Caption = 'ID. CLIENTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 594
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPENDENTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 420
        Visible = True
      end>
  end
  object dscliente: TDataSource
    DataSet = cdscliente
    Left = 24
    Top = 256
  end
  object cdscliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcliente'
    Left = 24
    Top = 152
  end
  object sqlcliente: TSQLDataSet
    CommandText = 'select * from CLIENTE order by IDCLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 24
    Top = 104
  end
  object dspcliente: TDataSetProvider
    DataSet = sqlcliente
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 24
    Top = 200
  end
end
