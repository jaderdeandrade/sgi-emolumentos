object fmServico: TfmServico
  Left = 351
  Top = 251
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'SERVI'#199'OS'
  ClientHeight = 300
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 56
    Width = 126
    Height = 13
    Caption = 'COD. EMOLUMENTO:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 96
    Width = 76
    Height = 13
    Caption = 'DESCRI'#199#195'O:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 136
    Width = 65
    Height = 13
    Caption = 'RECOMPE:'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 176
    Width = 155
    Height = 13
    Caption = 'EMOLUMENTO  LIQUIDO: '
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 216
    Width = 128
    Height = 13
    Caption = 'TAXA EMOLUMENTO:'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 272
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object btGravar: TButton
      Left = 101
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 1
      OnClick = btGravarClick
    end
    object btEditar: TButton
      Left = 186
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Editar'
      TabOrder = 2
      OnClick = btEditarClick
    end
    object btInserir: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Inserir'
      Enabled = False
      TabOrder = 3
      OnClick = btInserirClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 72
    Width = 134
    Height = 21
    DataField = 'CODIGO_EMOLUMENTO'
    DataSource = dmsesi.dsservico
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 112
    Width = 713
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = dmsesi.dsservico
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 152
    Width = 212
    Height = 21
    DataField = 'RECOMPE'
    DataSource = dmsesi.dsservico
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 192
    Width = 212
    Height = 21
    DataField = 'EMOLUMENTO_LIQUIDO'
    DataSource = dmsesi.dsservico
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 232
    Width = 212
    Height = 21
    DataField = 'TAXA_EMOLUMENTO'
    DataSource = dmsesi.dsservico
    TabOrder = 5
  end
end
