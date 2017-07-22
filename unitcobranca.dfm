object fmGeraCobranca: TfmGeraCobranca
  Left = 329
  Top = 239
  BorderStyle = bsDialog
  Caption = 'Gerar Conta a Receber'
  ClientHeight = 233
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 39
    Top = 24
    Width = 116
    Height = 13
    Caption = 'Data de Vencimento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 47
    Top = 80
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Bevel1: TBevel
    Left = 40
    Top = 126
    Width = 433
    Height = 56
  end
  object DateEdit1: TDateEdit
    Left = 47
    Top = 40
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 175
    Top = 13
    Width = 298
    Height = 57
    Caption = '| INFORMA'#199#195'O |'
    TabOrder = 1
    object Label3: TLabel
      Left = 10
      Top = 16
      Width = 280
      Height = 36
      Caption = 'Gera somente as despesas lan'#231'adas no'#13#10'financeiro da empresa.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Edit1: TEdit
    Left = 47
    Top = 96
    Width = 418
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object Button2: TButton
    Left = 148
    Top = 197
    Width = 75
    Height = 25
    Caption = '&Gerar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 237
    Top = 197
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 48
    Top = 157
    Width = 417
    Height = 17
    TabOrder = 5
  end
  object ProgressBar2: TProgressBar
    Left = 48
    Top = 133
    Width = 417
    Height = 17
    TabOrder = 6
  end
  object sqlEmpresa: TSQLDataSet
    CommandText = 'select * from CLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 16
    Top = 40
    object sqlEmpresaIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object sqlEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlEmpresaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 60
    end
    object sqlEmpresaRAMOATIVIDADE: TStringField
      FieldName = 'RAMOATIVIDADE'
    end
    object sqlEmpresaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object sqlEmpresaCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object sqlEmpresaRGIE: TStringField
      FieldName = 'RGIE'
      Size = 15
    end
    object sqlEmpresaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object sqlEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sqlEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sqlEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object sqlEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlEmpresaESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqlEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object sqlEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object sqlEmpresaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object sqlEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object sqlEmpresaSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object sqlEmpresaOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object sqlEmpresaATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    OnCalcFields = cdsEmpresaCalcFields
    Left = 8
    Top = 88
    object cdsEmpresaIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object cdsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsEmpresaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 60
    end
    object cdsEmpresaRAMOATIVIDADE: TStringField
      FieldName = 'RAMOATIVIDADE'
    end
    object cdsEmpresaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object cdsEmpresaCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object cdsEmpresaRGIE: TStringField
      FieldName = 'RGIE'
      Size = 15
    end
    object cdsEmpresaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object cdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object cdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsEmpresaESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cdsEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object cdsEmpresaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object cdsEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cdsEmpresaSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object cdsEmpresaOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object cdsEmpresaATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sqlEmpresa
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 8
    Top = 132
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 8
    Top = 168
  end
  object sqlServico: TSQLDataSet
    CommandText = 'select * from MODALIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 96
    Top = 136
    object sqlServicoIDMODALIDADE: TIntegerField
      FieldName = 'IDMODALIDADE'
      Required = True
    end
    object sqlServicoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object sqlServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sqlServicoDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
    end
    object sqlServicoDATAMATRICULA: TDateField
      FieldName = 'DATAMATRICULA'
    end
    object sqlServicoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sqlServicoDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object sqlServicoCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
      Required = True
    end
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServico'
    Left = 128
    Top = 136
    object cdsServicoIDMODALIDADE: TIntegerField
      FieldName = 'IDMODALIDADE'
      Required = True
    end
    object cdsServicoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object cdsServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsServicoDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
    end
    object cdsServicoDATAMATRICULA: TDateField
      FieldName = 'DATAMATRICULA'
    end
    object cdsServicoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object cdsServicoDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object cdsServicoCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
      Required = True
    end
  end
  object dspServico: TDataSetProvider
    DataSet = sqlServico
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 160
    Top = 136
  end
  object dsServico: TDataSource
    DataSet = cdsServico
    Left = 192
    Top = 139
  end
end
