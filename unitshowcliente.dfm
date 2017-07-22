object fmShowCliente: TfmShowCliente
  Left = 332
  Top = 178
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Show Cliente'
  ClientHeight = 354
  ClientWidth = 556
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
  object Panel1: TPanel
    Left = 0
    Top = 313
    Width = 556
    Height = 41
    Align = alBottom
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
    object Edit1: TEdit
      Left = 16
      Top = 8
      Width = 441
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = Edit1Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 556
    Height = 313
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
        FieldName = 'NOME'
        Width = 509
        Visible = True
      end>
  end
  object dscliente: TDataSource
    DataSet = cdscliente
    Left = 24
    Top = 256
  end
  object dspcliente: TDataSetProvider
    DataSet = sqlcliente
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 24
    Top = 200
  end
  object cdscliente: TClientDataSet
    Aggregates = <>
    PacketRecords = 20
    Params = <>
    ProviderName = 'dspcliente'
    Left = 24
    Top = 152
  end
  object sqlcliente: TSQLDataSet
    CommandText = 'select * from CLIENTE where DEPENDENTE='#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 24
    Top = 104
  end
end
