object fmNossosServicos: TfmNossosServicos
  Left = 518
  Top = 179
  BorderStyle = bsSingle
  Caption = 'Importar Servi'#231'os'
  ClientHeight = 442
  ClientWidth = 382
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 382
    Height = 57
    Align = alTop
    Caption = 'Importar Dados'
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 24
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Todos'
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 168
      Top = 24
      Width = 153
      Height = 17
      Caption = 'Somente o selecionado'
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 401
    Width = 382
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Confirma'
      TabOrder = 0
      OnClick = Button1Click
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 382
    Height = 344
    Align = alClient
    DataSource = dsContaPLano
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 244
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTA'
        Visible = True
      end>
  end
  object sqlContaPlano: TSQLDataSet
    CommandText = 
      'select contaplano.nome, contaplano.conta'#13#10'from contaplano'#13#10'   in' +
      'ner join planocontas on (contaplano.idplacoconta = planocontas.i' +
      'dplanocontas)'#13#10'where '#13#10'   ('#13#10'      (planocontas.tipo = '#39'ENTRADA'#39 +
      ')'#13#10'   )'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 16
    Top = 104
    object sqlContaPlanoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sqlContaPlanoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
  end
  object cdsContaPlano: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContaPlano'
    Left = 16
    Top = 136
    object cdsContaPlanoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsContaPlanoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
  end
  object dspContaPlano: TDataSetProvider
    DataSet = sqlContaPlano
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 16
    Top = 168
  end
  object dsContaPLano: TDataSource
    DataSet = cdsContaPlano
    Left = 16
    Top = 200
  end
end
