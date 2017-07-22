object fmGerarPesquisa: TfmGerarPesquisa
  Left = 356
  Top = 194
  BorderStyle = bsDialog
  Caption = 'Gerar Cobran'#231'a Mensal'
  ClientHeight = 170
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
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
    Left = 11
    Top = 15
    Width = 76
    Height = 14
    Caption = 'Data Emiss'#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 274
    Top = 15
    Width = 99
    Height = 14
    Caption = 'Data Vencimento::'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 64
    Width = 409
    Height = 41
    TabOrder = 0
    Visible = False
  end
  object dtEmissao: TDateEdit
    Left = 9
    Top = 28
    Width = 144
    Height = 21
    Color = clYellow
    NumGlyphs = 2
    PopupColor = clYellow
    TabOrder = 1
  end
  object dtVencimento: TDateEdit
    Left = 273
    Top = 28
    Width = 144
    Height = 21
    Color = clYellow
    NumGlyphs = 2
    PopupColor = clYellow
    TabOrder = 2
  end
  object Button1: TButton
    Left = 128
    Top = 127
    Width = 75
    Height = 25
    Caption = '&Gerar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 127
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Left = 32
    Top = 136
  end
  object sqlModalidade: TSQLDataSet
    CommandText = 
      'select modalidade.idmodalidade, modalidade.descricao, modalidade' +
      '.valor, modalidade.cliente_idcliente, cliente.nome, cliente.raza' +
      'osocial, cliente.cnpjcpf, cliente.ativo'#13#10'from cliente'#13#10'   inner ' +
      'join modalidade on (cliente.idcliente = modalidade.cliente_idcli' +
      'ente)'#13#10'where '#13#10'   ('#13#10'      (cliente.ativo = '#39'1'#39')'#13#10'   )'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 365
    Top = 11
    object sqlModalidadeIDMODALIDADE: TIntegerField
      FieldName = 'IDMODALIDADE'
      Required = True
    end
    object sqlModalidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sqlModalidadeVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sqlModalidadeCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
      Required = True
    end
    object sqlModalidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlModalidadeRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 60
    end
    object sqlModalidadeCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object sqlModalidadeATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsModalidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModalidade'
    Left = 367
    Top = 60
    object cdsModalidadeIDMODALIDADE: TIntegerField
      FieldName = 'IDMODALIDADE'
      Required = True
    end
    object cdsModalidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsModalidadeVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object cdsModalidadeCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
      Required = True
    end
    object cdsModalidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsModalidadeRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 60
    end
    object cdsModalidadeCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object cdsModalidadeATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspModalidade: TDataSetProvider
    DataSet = sqlModalidade
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 368
    Top = 109
  end
  object dsModalidade: TDataSource
    DataSet = cdsModalidade
    Left = 368
    Top = 165
  end
end
