object fmCadastroProfessor: TfmCadastroProfessor
  Left = 193
  Top = 113
  Width = 743
  Height = 462
  Caption = 'Professor'
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
    Left = 32
    Top = 64
    Width = 32
    Height = 13
    Caption = 'NOME'
  end
  object Label13: TLabel
    Left = 32
    Top = 104
    Width = 20
    Height = 13
    Caption = 'CPF'
  end
  object Label14: TLabel
    Left = 306
    Top = 104
    Width = 16
    Height = 13
    Caption = 'RG'
  end
  object Label2: TLabel
    Left = 32
    Top = 145
    Width = 60
    Height = 13
    Caption = 'ENDERE'#199'O'
  end
  object Label3: TLabel
    Left = 32
    Top = 185
    Width = 41
    Height = 13
    Caption = 'BAIRRO'
  end
  object Label4: TLabel
    Left = 499
    Top = 185
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object Label5: TLabel
    Left = 32
    Top = 226
    Width = 40
    Height = 13
    Caption = 'CIDADE'
  end
  object Label6: TLabel
    Left = 565
    Top = 228
    Width = 44
    Height = 13
    Caption = 'ESTADO'
  end
  object Label7: TLabel
    Left = 32
    Top = 267
    Width = 32
    Height = 13
    Caption = 'EMAIL'
  end
  object Label8: TLabel
    Left = 32
    Top = 307
    Width = 86
    Height = 13
    Caption = 'ESPECIFICA'#199#195'O:'
  end
  object Label9: TLabel
    Left = 32
    Top = 347
    Width = 56
    Height = 13
    Caption = 'TELEFONE'
  end
  object Label10: TLabel
    Left = 216
    Top = 346
    Width = 49
    Height = 13
    Caption = 'CELULAR'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 735
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
    object btEditar: TButton
      Left = 112
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Editar'
      TabOrder = 1
      OnClick = btEditarClick
    end
    object btCancela: TButton
      Left = 200
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = btCancelaClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 80
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dmsesi.dsprofessor
    TabOrder = 1
  end
  object DBEdit12: TDBEdit
    Left = 32
    Top = 120
    Width = 264
    Height = 21
    DataField = 'CPF'
    DataSource = dmsesi.dsprofessor
    TabOrder = 2
  end
  object DBEdit13: TDBEdit
    Left = 306
    Top = 120
    Width = 199
    Height = 21
    DataField = 'IDENTIDADE'
    DataSource = dmsesi.dsprofessor
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 161
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = dmsesi.dsprofessor
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 201
    Width = 457
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = dmsesi.dsprofessor
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 499
    Top = 201
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = dmsesi.dsprofessor
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 32
    Top = 242
    Width = 521
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = dmsesi.dsprofessor
    TabOrder = 7
  end
  object DBComboBox1: TDBComboBox
    Left = 563
    Top = 242
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ESTADO'
    DataSource = dmsesi.dsprofessor
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
    TabOrder = 8
  end
  object DBEdit7: TDBEdit
    Left = 32
    Top = 283
    Width = 600
    Height = 21
    CharCase = ecLowerCase
    DataField = 'EMAIL'
    DataSource = dmsesi.dsprofessor
    TabOrder = 9
  end
  object DBEdit8: TDBEdit
    Left = 32
    Top = 323
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ESPECIFICACAO'
    DataSource = dmsesi.dsprofessor
    TabOrder = 10
  end
  object DBEdit6: TDBEdit
    Left = 32
    Top = 363
    Width = 173
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = dmsesi.dsprofessor
    TabOrder = 11
  end
  object DBEdit9: TDBEdit
    Left = 216
    Top = 362
    Width = 173
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CELULAR'
    DataSource = dmsesi.dsprofessor
    TabOrder = 12
  end
end
