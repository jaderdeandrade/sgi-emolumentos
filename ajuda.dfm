object fmajuda: Tfmajuda
  Left = 345
  Top = 210
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ajuda'
  ClientHeight = 327
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 16
    Top = 8
    Width = 433
    Height = 281
    BevelInner = bvLowered
    TabOrder = 0
    object RxLabel3: TRxLabel
      Left = 58
      Top = 179
      Width = 331
      Height = 44
      Caption = 'Email: jaderdeandrade@gmail.com '#13#10'WhatsApp:   (33) 9 9126-4660'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 69
      Top = 144
      Width = 295
      Height = 22
      Caption = 'Para suporte t'#233'cnico contactar:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 59
      Top = 80
      Width = 342
      Height = 52
      AutoSize = False
      Caption = 'JDA SISTEMAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -37
      Font.Name = 'Arial Black'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object BitBtn1: TBitBtn
    Left = 192
    Top = 296
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
end
