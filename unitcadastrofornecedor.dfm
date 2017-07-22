object fmCadastroFornecedor: TfmCadastroFornecedor
  Left = 193
  Top = 113
  Width = 743
  Height = 590
  Caption = 'Fornecedor'
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
    Top = 80
    Width = 32
    Height = 13
    Caption = 'NOME'
  end
  object Label13: TLabel
    Left = 16
    Top = 120
    Width = 52
    Height = 13
    Caption = 'CNPJ/CPF'
  end
  object Label14: TLabel
    Left = 290
    Top = 120
    Width = 31
    Height = 13
    Caption = 'IE/RG'
  end
  object Label2: TLabel
    Left = 16
    Top = 161
    Width = 60
    Height = 13
    Caption = 'ENDERE'#199'O'
  end
  object Label3: TLabel
    Left = 16
    Top = 201
    Width = 41
    Height = 13
    Caption = 'BAIRRO'
  end
  object Label4: TLabel
    Left = 483
    Top = 201
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object Label5: TLabel
    Left = 16
    Top = 242
    Width = 40
    Height = 13
    Caption = 'CIDADE'
  end
  object Label6: TLabel
    Left = 549
    Top = 244
    Width = 44
    Height = 13
    Caption = 'ESTADO'
  end
  object Label7: TLabel
    Left = 16
    Top = 283
    Width = 32
    Height = 13
    Caption = 'EMAIL'
  end
  object Label8: TLabel
    Left = 16
    Top = 323
    Width = 24
    Height = 13
    Caption = 'SITE'
  end
  object Label9: TLabel
    Left = 16
    Top = 363
    Width = 56
    Height = 13
    Caption = 'TELEFONE'
  end
  object Label10: TLabel
    Left = 200
    Top = 362
    Width = 20
    Height = 13
    Caption = 'FAX'
  end
  object Label11: TLabel
    Left = 16
    Top = 404
    Width = 52
    Height = 13
    Caption = 'CONTATO'
  end
  object Label12: TLabel
    Left = 16
    Top = 444
    Width = 73
    Height = 13
    Caption = 'OBSERVA'#199#195'O'
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
    Left = 16
    Top = 96
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dmsesi.dsFornecedor
    TabOrder = 1
  end
  object DBEdit12: TDBEdit
    Left = 16
    Top = 136
    Width = 264
    Height = 21
    DataField = 'CNPJ_CPF'
    DataSource = dmsesi.dsFornecedor
    TabOrder = 2
  end
  object DBEdit13: TDBEdit
    Left = 290
    Top = 136
    Width = 199
    Height = 21
    DataField = 'IE_RG'
    DataSource = dmsesi.dsFornecedor
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 177
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = dmsesi.dsFornecedor
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 217
    Width = 457
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = dmsesi.dsFornecedor
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 483
    Top = 217
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = dmsesi.dsFornecedor
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 258
    Width = 521
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = dmsesi.dsFornecedor
    TabOrder = 7
  end
  object DBComboBox1: TDBComboBox
    Left = 547
    Top = 258
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ESTADO'
    DataSource = dmsesi.dsFornecedor
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
    Left = 16
    Top = 299
    Width = 600
    Height = 21
    CharCase = ecLowerCase
    DataField = 'EMAIL'
    DataSource = dmsesi.dsFornecedor
    TabOrder = 9
  end
  object DBEdit8: TDBEdit
    Left = 16
    Top = 339
    Width = 600
    Height = 21
    CharCase = ecLowerCase
    DataField = 'SITE'
    DataSource = dmsesi.dsFornecedor
    TabOrder = 10
  end
  object DBEdit6: TDBEdit
    Left = 16
    Top = 379
    Width = 173
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFFONE'
    DataSource = dmsesi.dsFornecedor
    TabOrder = 11
  end
  object DBEdit9: TDBEdit
    Left = 200
    Top = 378
    Width = 173
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FAX'
    DataSource = dmsesi.dsFornecedor
    TabOrder = 12
  end
  object DBEdit10: TDBEdit
    Left = 16
    Top = 420
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CONTATO'
    DataSource = dmsesi.dsFornecedor
    TabOrder = 13
  end
  object DBEdit11: TDBEdit
    Left = 16
    Top = 460
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'OBSERVACAO'
    DataSource = dmsesi.dsFornecedor
    TabOrder = 14
  end
end
