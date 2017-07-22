object fmCadastroPagar: TfmCadastroPagar
  Left = 298
  Top = 157
  Width = 783
  Height = 328
  Caption = 'Conta a Pagar'
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
    Left = 24
    Top = 72
    Width = 98
    Height = 13
    Caption = 'DATA DE EMISS'#195'O'
  end
  object Label2: TLabel
    Left = 24
    Top = 120
    Width = 62
    Height = 13
    Caption = 'DESCRI'#199#195'O'
  end
  object Label3: TLabel
    Left = 24
    Top = 168
    Width = 121
    Height = 13
    Caption = 'DATA DE VENCIMENTO'
  end
  object Label4: TLabel
    Left = 24
    Top = 216
    Width = 40
    Height = 13
    Caption = 'D'#201'BITO'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 767
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
      Left = 105
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = btCancelaClick
    end
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 136
    Width = 418
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = dmsesi.dsContaPagar
    TabOrder = 1
  end
  object DBDateEdit2: TDBDateEdit
    Left = 24
    Top = 184
    Width = 121
    Height = 21
    DataField = 'DATA_VENCIMENTO'
    DataSource = dmsesi.dsContaPagar
    NumGlyphs = 2
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 232
    Width = 212
    Height = 21
    DataField = 'DEBITO'
    DataSource = dmsesi.dsContaPagar
    TabOrder = 3
  end
  object DBDateEdit1: TDBDateEdit
    Left = 24
    Top = 88
    Width = 121
    Height = 21
    DataField = 'DATA_EMISSAO'
    DataSource = dmsesi.dsContaPagar
    NumGlyphs = 2
    TabOrder = 4
  end
end
