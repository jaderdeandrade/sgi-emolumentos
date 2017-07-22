object fmParametros: TfmParametros
  Left = 384
  Top = 225
  Width = 860
  Height = 348
  Caption = 'Par'#226'metros'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 42
    Width = 31
    Height = 14
    Caption = 'NOME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 86
    Width = 60
    Height = 13
    Caption = 'ENDERE'#199'O'
  end
  object Label3: TLabel
    Left = 24
    Top = 131
    Width = 41
    Height = 13
    Caption = 'BAIRRO'
  end
  object Label4: TLabel
    Left = 241
    Top = 131
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object Label5: TLabel
    Left = 337
    Top = 131
    Width = 40
    Height = 13
    Caption = 'CIDADE'
  end
  object Label13: TLabel
    Left = 576
    Top = 131
    Width = 44
    Height = 13
    Caption = 'ESTADO'
  end
  object Label6: TLabel
    Left = 24
    Top = 176
    Width = 56
    Height = 13
    Caption = 'TELEFONE'
  end
  object Label7: TLabel
    Left = 224
    Top = 176
    Width = 20
    Height = 13
    Caption = 'FAX'
  end
  object Label8: TLabel
    Left = 24
    Top = 220
    Width = 32
    Height = 13
    Caption = 'EMAIL'
  end
  object Label9: TLabel
    Left = 360
    Top = 220
    Width = 24
    Height = 13
    Caption = 'SITE'
  end
  object Label12: TLabel
    Left = 24
    Top = 262
    Width = 68
    Height = 13
    Caption = 'LOGOMARCA'
  end
  object btFoto1: TSpeedButton
    Left = 688
    Top = 220
    Width = 137
    Height = 25
    Caption = '&Logomarca'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
      BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
      BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
      BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
      BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
      EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
      EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
      EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
      EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
    NumGlyphs = 2
    OnClick = btFoto1Click
  end
  object Image1: TImage
    Left = 674
    Top = 56
    Width = 169
    Height = 158
    Stretch = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 35
    Align = alTop
    TabOrder = 0
    object btGravar: TButton
      Left = 7
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = btGravarClick
    end
    object btEditar: TButton
      Left = 95
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Editar'
      TabOrder = 1
      OnClick = btEditarClick
    end
    object btCancelar: TButton
      Left = 181
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = btCancelarClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 56
    Width = 618
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dmsesi.dsParametro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 100
    Width = 617
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = dmsesi.dsParametro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 145
    Width = 209
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = dmsesi.dsParametro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 241
    Top = 145
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = dmsesi.dsParametro
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 337
    Top = 145
    Width = 230
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = dmsesi.dsParametro
    TabOrder = 5
  end
  object cbEstado: TDBComboBox
    Left = 574
    Top = 145
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ESTADO'
    DataSource = dmsesi.dsParametro
    ItemHeight = 13
    Items.Strings = (
      'MG'
      'SP'
      'AC'
      'AL'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MT'
      'MS'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'SC'
      'RO'
      'RR'
      'SE'
      'TO'
      'MA'
      'FN')
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 24
    Top = 190
    Width = 186
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = dmsesi.dsParametro
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 224
    Top = 190
    Width = 186
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FAX'
    DataSource = dmsesi.dsParametro
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 24
    Top = 234
    Width = 305
    Height = 21
    CharCase = ecLowerCase
    DataField = 'EMAIL'
    DataSource = dmsesi.dsParametro
    TabOrder = 9
  end
  object DBEdit9: TDBEdit
    Left = 360
    Top = 234
    Width = 285
    Height = 21
    CharCase = ecLowerCase
    DataField = 'SITE'
    DataSource = dmsesi.dsParametro
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 24
    Top = 276
    Width = 633
    Height = 21
    CharCase = ecUpperCase
    DataField = 'LOGOMARCA'
    DataSource = dmsesi.dsParametro
    TabOrder = 11
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 468
    Top = 388
  end
end
