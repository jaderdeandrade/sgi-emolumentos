object fmCadastroReceber: TfmCadastroReceber
  Left = 496
  Top = 144
  Width = 500
  Height = 328
  Caption = 'Conta a Receber'
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
    Left = 16
    Top = 64
    Width = 114
    Height = 13
    Caption = 'DATA DE EMISS'#195'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 112
    Width = 72
    Height = 13
    Caption = 'DESCRI'#199#195'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 160
    Width = 140
    Height = 13
    Caption = 'DATA DE VENCIMENTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 208
    Width = 47
    Height = 13
    Caption = 'D'#201'BITO'
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
    Width = 484
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
      Left = 107
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btCancelaClick
    end
  end
  object DBDateEdit1: TDBDateEdit
    Left = 16
    Top = 80
    Width = 121
    Height = 21
    DataField = 'DATA_EMISSAO'
    DataSource = dmsesi.dsContaReceber
    NumGlyphs = 2
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 128
    Width = 418
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = dmsesi.dsContaReceber
    TabOrder = 2
  end
  object DBDateEdit2: TDBDateEdit
    Left = 16
    Top = 176
    Width = 121
    Height = 21
    DataField = 'DATA_VENCIMENTO'
    DataSource = dmsesi.dsContaReceber
    NumGlyphs = 2
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 224
    Width = 212
    Height = 21
    DataField = 'DEBITO'
    DataSource = dmsesi.dsContaReceber
    TabOrder = 4
  end
end
