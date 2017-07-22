object formCadastroPlanoContas: TformCadastroPlanoContas
  Left = 381
  Top = 217
  BorderStyle = bsSingle
  Caption = 'Cadastro Plano de Contas'
  ClientHeight = 162
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
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
    Left = 16
    Top = 48
    Width = 37
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 88
    Width = 30
    Height = 13
    Caption = 'TIPO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 64
    Width = 305
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dmsesi.dsPlanoConta
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 639
    Height = 35
    Align = alTop
    TabOrder = 2
    object btGravar: TButton
      Left = 108
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 1
      OnClick = btGravarClick
    end
    object btCancelar: TButton
      Left = 289
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = btCancelarClick
    end
    object btEditar: TButton
      Left = 198
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Editar'
      TabOrder = 2
      OnClick = btEditarClick
    end
    object Button1: TButton
      Left = 18
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object DBComboBox1: TDBComboBox
    Left = 16
    Top = 104
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TIPO'
    DataSource = dmsesi.dsPlanoConta
    ItemHeight = 13
    Items.Strings = (
      'ENTRADA'
      'SAIDA')
    TabOrder = 1
  end
end
