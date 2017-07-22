object fmChequePrint: TfmChequePrint
  Left = 312
  Top = 256
  BorderStyle = bsDialog
  Caption = 'Utilit'#225'rio de Impress'#227'o de Cheques'
  ClientHeight = 291
  ClientWidth = 781
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
  object Label2: TLabel
    Left = 594
    Top = 10
    Width = 30
    Height = 13
    Caption = 'Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 51
    Width = 101
    Height = 13
    Caption = 'Valor por Extenso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 17
    Top = 123
    Width = 40
    Height = 13
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 145
    Top = 123
    Width = 20
    Height = 13
    Caption = 'Dia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 340
    Top = 123
    Width = 23
    Height = 13
    Caption = 'Ano'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 18
    Top = 86
    Width = 33
    Height = 13
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 202
    Top = 123
    Width = 24
    Height = 13
    Caption = 'M'#234's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 18
    Top = 10
    Width = 14
    Height = 13
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 121
    Top = 11
    Width = 80
    Height = 13
    Caption = 'N'#186' do Cheque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 282
    Top = 10
    Width = 37
    Height = 13
    Caption = 'Banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 17
    Top = 161
    Width = 50
    Height = 13
    Caption = 'Utilizado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 18
    Top = 198
    Width = 35
    Height = 13
    Caption = 'Vistos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 244
    Width = 781
    Height = 47
    Align = alBottom
    TabOrder = 0
    object Button2: TButton
      Left = 268
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 353
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Consulta'
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button5: TButton
      Left = 523
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = Button5Click
    end
    object BitBtn1: TBitBtn
      Left = 438
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object Button1: TButton
      Left = 183
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object textID: TEdit
    Left = 16
    Top = 24
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    Color = clSilver
    Enabled = False
    TabOrder = 1
  end
  object textNumCheque: TEdit
    Left = 120
    Top = 24
    Width = 153
    Height = 21
    Color = clYellow
    TabOrder = 2
  end
  object textBanco: TEdit
    Left = 280
    Top = 24
    Width = 305
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object textValor: TCurrencyEdit
    Left = 592
    Top = 24
    Width = 179
    Height = 21
    AutoSize = False
    Color = clYellow
    TabOrder = 4
    OnExit = textValorExit
  end
  object textExtenso: TEdit
    Left = 17
    Top = 64
    Width = 755
    Height = 21
    CharCase = ecUpperCase
    Color = clYellow
    TabOrder = 5
  end
  object textNome: TEdit
    Left = 16
    Top = 100
    Width = 756
    Height = 21
    CharCase = ecUpperCase
    Color = clYellow
    TabOrder = 6
  end
  object textCidade: TEdit
    Left = 15
    Top = 137
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object textDia: TEdit
    Left = 143
    Top = 137
    Width = 49
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object textMes: TEdit
    Left = 199
    Top = 137
    Width = 133
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object textAno: TEdit
    Left = 338
    Top = 137
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object textUtilizado: TEdit
    Left = 15
    Top = 175
    Width = 756
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object textVisto: TEdit
    Left = 16
    Top = 212
    Width = 756
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
end
