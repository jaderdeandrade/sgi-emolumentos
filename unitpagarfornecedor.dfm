object fmPagar: TfmPagar
  Left = 236
  Top = 124
  Width = 783
  Height = 540
  Caption = 'Pagar'
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
    Top = 0
    Width = 775
    Height = 41
    Align = alTop
    TabOrder = 0
    object btGravar: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = btGravarClick
    end
    object btCancela: TButton
      Left = 106
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btCancelaClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 775
    Height = 465
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'CADASTRO'
      object Label2: TLabel
        Left = 64
        Top = 108
        Width = 121
        Height = 13
        Caption = 'RECEBER O TOTAL DE:'
      end
      object Label1: TLabel
        Left = 64
        Top = 64
        Width = 40
        Height = 13
        Caption = 'D'#201'BITO'
      end
      object Label3: TLabel
        Left = 64
        Top = 160
        Width = 36
        Height = 13
        Caption = 'SALDO'
      end
      object Bevel1: TBevel
        Left = 64
        Top = 152
        Width = 161
        Height = 9
        Shape = bsTopLine
      end
      object ceDebito: TCurrencyEdit
        Left = 64
        Top = 80
        Width = 161
        Height = 21
        AutoSize = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object ceReceber: TCurrencyEdit
        Left = 64
        Top = 124
        Width = 161
        Height = 21
        AutoSize = False
        Color = clYellow
        TabOrder = 1
        OnExit = ceReceberExit
      end
      object ceSaldo: TCurrencyEdit
        Left = 64
        Top = 176
        Width = 161
        Height = 21
        AutoSize = False
        Color = 16776176
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
  end
end
