object fmMovimentoCaixa: TfmMovimentoCaixa
  Left = 426
  Top = 242
  BorderStyle = bsSingle
  Caption = 'Movimento de Caixa'
  ClientHeight = 275
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 56
    Top = 208
    Width = 42
    Height = 13
    Caption = 'VALOR'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 58
    Top = 160
    Width = 57
    Height = 13
    Caption = 'USU'#193'RIO'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 56
    Top = 112
    Width = 126
    Height = 13
    Caption = 'DATA DE ABERTURA'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 55
    Top = 63
    Width = 141
    Height = 13
    Caption = 'C'#211'DIGO DE ABERTURA'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 208
    Top = 112
    Width = 128
    Height = 13
    Caption = 'HORA DE ABERTURA'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 424
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Button2: TButton
      Left = 112
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBEdit4: TDBEdit
    Left = 56
    Top = 224
    Width = 213
    Height = 21
    DataField = 'VALOR_ABERTURA'
    DataSource = dmsesi.dsMovCaixa
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 56
    Top = 175
    Width = 214
    Height = 21
    DataField = 'USUARIO_ABERTURA'
    DataSource = dmsesi.dsMovCaixa
    Enabled = False
    ParentColor = True
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 127
    Width = 144
    Height = 21
    DataField = 'DATA_ABERTURA'
    DataSource = dmsesi.dsMovCaixa
    Enabled = False
    ParentColor = True
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 55
    Top = 79
    Width = 144
    Height = 21
    DataField = 'IDMOVIMENTO'
    DataSource = dmsesi.dsMovCaixa
    Enabled = False
    ParentColor = True
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 208
    Top = 127
    Width = 144
    Height = 21
    DataField = 'HORA_ABERTURA'
    DataSource = dmsesi.dsMovCaixa
    Enabled = False
    ParentColor = True
    TabOrder = 5
  end
end
