object fmListagemClientes: TfmListagemClientes
  Left = 338
  Top = 173
  BorderStyle = bsDialog
  Caption = 'NOME:'
  ClientHeight = 233
  ClientWidth = 548
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
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 513
    Height = 169
    Caption = '| Filtro de Pesquisa |'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 90
      Height = 13
      Caption = 'Ramo de Atividade'
    end
    object Label3: TLabel
      Left = 24
      Top = 104
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object txtNome: TEdit
      Left = 24
      Top = 40
      Width = 381
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object txtRamoAtividade: TEdit
      Left = 24
      Top = 80
      Width = 381
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object txtCidade: TEdit
      Left = 24
      Top = 120
      Width = 381
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object RadioButton1: TRadioButton
      Left = 104
      Top = 144
      Width = 113
      Height = 17
      Caption = 'An'#225'litico '
      TabOrder = 3
    end
    object RadioButton2: TRadioButton
      Left = 232
      Top = 144
      Width = 113
      Height = 17
      Caption = 'Sint'#233'tico (Excel)'
      TabOrder = 4
    end
  end
  object btImprimir: TButton
    Left = 176
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 1
    OnClick = btImprimirClick
  end
  object Button2: TButton
    Left = 264
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object RLReport1: TRLReport
    Left = 40
    Top = 360
    Width = 794
    Height = 1123
    DataSource = dscliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 216
        Top = 8
        Width = 239
        Height = 22
        Caption = 'LISTAGEM DE CLIENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 496
        Top = 48
        Width = 60
        Height = 16
        Info = itFullDate
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 62
        Width = 716
        Height = 4
        DrawKind = dkLine
        Pen.Style = psDot
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 105
      Width = 718
      Height = 88
      object RLLabel2: TRLLabel
        Left = 72
        Top = 0
        Width = 46
        Height = 16
        Caption = 'NOME:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 24
        Top = 0
        Width = 69
        Height = 16
        DataField = 'IDCLIENTE'
        DataSource = dscliente
      end
      object RLDBText1: TRLDBText
        Left = 120
        Top = 0
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = dscliente
      end
      object RLLabel3: TRLLabel
        Left = 721
        Top = 0
        Width = 58
        Height = 16
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 16
        Width = 81
        Height = 16
        Caption = 'ENDERE'#199'O:'
      end
      object RLDBText3: TRLDBText
        Left = 80
        Top = 16
        Width = 77
        Height = 16
        DataField = 'ENDERECO'
        DataSource = dscliente
      end
      object RLLabel5: TRLLabel
        Left = 456
        Top = 16
        Width = 57
        Height = 16
        Caption = 'BAIRRO:'
      end
      object RLLabel6: TRLLabel
        Left = -1
        Top = 32
        Width = 56
        Height = 16
        Caption = 'CIDADE:'
      end
      object RLLabel7: TRLLabel
        Left = 568
        Top = 32
        Width = 35
        Height = 16
        Caption = 'CEP:'
      end
      object RLLabel8: TRLLabel
        Left = 371
        Top = 32
        Width = 61
        Height = 16
        Caption = 'ESTADO:'
      end
      object RLLabel9: TRLLabel
        Left = 356
        Top = 48
        Width = 76
        Height = 16
        Caption = 'TELEFONE:'
      end
      object RLLabel10: TRLLabel
        Left = 572
        Top = 48
        Width = 32
        Height = 16
        Caption = 'FAX:'
      end
      object RLLabel11: TRLLabel
        Left = 0
        Top = 48
        Width = 47
        Height = 16
        Caption = 'EMAIL:'
      end
      object RLDBText4: TRLDBText
        Left = 512
        Top = 16
        Width = 53
        Height = 16
        DataField = 'BAIRRO'
        DataSource = dscliente
      end
      object RLDBText5: TRLDBText
        Left = 54
        Top = 32
        Width = 52
        Height = 16
        DataField = 'CIDADE'
        DataSource = dscliente
      end
      object RLDBText6: TRLDBText
        Left = 604
        Top = 32
        Width = 31
        Height = 16
        DataField = 'CEP'
        DataSource = dscliente
      end
      object RLDBText7: TRLDBText
        Left = 429
        Top = 32
        Width = 57
        Height = 16
        DataField = 'ESTADO'
        DataSource = dscliente
      end
      object RLDBText8: TRLDBText
        Left = 429
        Top = 48
        Width = 72
        Height = 16
        DataField = 'TELEFONE'
        DataSource = dscliente
      end
      object RLDBText9: TRLDBText
        Left = 602
        Top = 48
        Width = 28
        Height = 16
        DataField = 'FAX'
        DataSource = dscliente
      end
      object RLDBText10: TRLDBText
        Left = 46
        Top = 48
        Width = 43
        Height = 16
        DataField = 'EMAIL'
        DataSource = dscliente
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 83
        Width = 716
        Height = 4
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLLabel12: TRLLabel
        Left = 0
        Top = 0
        Width = 21
        Height = 16
        Caption = 'ID:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = -1
        Top = 66
        Width = 41
        Height = 16
        Caption = 'CNPJ:'
      end
      object RLDBText21: TRLDBText
        Left = 45
        Top = 66
        Width = 63
        Height = 16
        DataField = 'CNPJCPF'
        DataSource = dscliente
      end
      object RLLabel27: TRLLabel
        Left = 387
        Top = 66
        Width = 43
        Height = 16
        Caption = 'RG/IE:'
      end
      object RLDBText24: TRLDBText
        Left = 430
        Top = 66
        Width = 35
        Height = 16
        DataField = 'RGIE'
        DataSource = dscliente
      end
    end
  end
  object RLReport2: TRLReport
    Left = -176
    Top = 564
    Width = 2646
    Height = 794
    DataSource = dscliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.Orientation = poLandscape
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 700.000000000000000000
    object RLBand4: TRLBand
      Left = 38
      Top = 97
      Width = 2570
      Height = 20
      object RLDBText11: TRLDBText
        Left = 0
        Top = 2
        Width = 69
        Height = 16
        DataField = 'IDCLIENTE'
        DataSource = dscliente
      end
      object RLDBText12: TRLDBText
        Left = 91
        Top = 2
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = dscliente
      end
      object RLDBText13: TRLDBText
        Left = 464
        Top = 2
        Width = 77
        Height = 16
        DataField = 'ENDERECO'
        DataSource = dscliente
      end
      object RLDBText14: TRLDBText
        Left = 933
        Top = 2
        Width = 53
        Height = 16
        DataField = 'BAIRRO'
        DataSource = dscliente
      end
      object RLDBText15: TRLDBText
        Left = 1134
        Top = 2
        Width = 52
        Height = 16
        DataField = 'CIDADE'
        DataSource = dscliente
      end
      object RLDBText16: TRLDBText
        Left = 1412
        Top = 2
        Width = 31
        Height = 16
        DataField = 'CEP'
        DataSource = dscliente
      end
      object RLDBText17: TRLDBText
        Left = 1324
        Top = 2
        Width = 57
        Height = 16
        DataField = 'ESTADO'
        DataSource = dscliente
      end
      object RLDBText18: TRLDBText
        Left = 1510
        Top = 2
        Width = 72
        Height = 16
        DataField = 'TELEFONE'
        DataSource = dscliente
      end
      object RLDBText19: TRLDBText
        Left = 1698
        Top = 2
        Width = 28
        Height = 16
        DataField = 'FAX'
        DataSource = dscliente
      end
      object RLDBText20: TRLDBText
        Left = 1854
        Top = 2
        Width = 43
        Height = 16
        DataField = 'EMAIL'
        DataSource = dscliente
      end
      object RLDBText22: TRLDBText
        Left = 2174
        Top = 2
        Width = 63
        Height = 16
        DataField = 'CNPJCPF'
        DataSource = dscliente
      end
      object RLDBText23: TRLDBText
        Left = 2397
        Top = 2
        Width = 35
        Height = 16
        DataField = 'RGIE'
        DataSource = dscliente
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 2570
      Height = 59
      BandType = btTitle
      object RLLabel13: TRLLabel
        Left = 0
        Top = 0
        Width = 239
        Height = 22
        Caption = 'LISTAGEM DE CLIENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 0
        Top = 40
        Width = 21
        Height = 16
        Caption = 'ID:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 91
        Top = 40
        Width = 46
        Height = 16
        Caption = 'NOME:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 464
        Top = 40
        Width = 81
        Height = 16
        Caption = 'ENDERE'#199'O:'
      end
      object RLLabel17: TRLLabel
        Left = 932
        Top = 40
        Width = 57
        Height = 16
        Caption = 'BAIRRO:'
      end
      object RLLabel18: TRLLabel
        Left = 1135
        Top = 40
        Width = 56
        Height = 16
        Caption = 'CIDADE:'
      end
      object RLLabel20: TRLLabel
        Left = 1323
        Top = 40
        Width = 61
        Height = 16
        Caption = 'ESTADO:'
      end
      object RLLabel19: TRLLabel
        Left = 1412
        Top = 40
        Width = 35
        Height = 16
        Caption = 'CEP:'
      end
      object RLLabel23: TRLLabel
        Left = 1853
        Top = 42
        Width = 47
        Height = 16
        Caption = 'EMAIL:'
      end
      object RLLabel21: TRLLabel
        Left = 1510
        Top = 39
        Width = 76
        Height = 16
        Caption = 'TELEFONE:'
      end
      object RLLabel22: TRLLabel
        Left = 1700
        Top = 43
        Width = 32
        Height = 16
        Caption = 'FAX:'
      end
      object RLLabel25: TRLLabel
        Left = 2173
        Top = 43
        Width = 67
        Height = 16
        Caption = 'CPF/CNPJ'
      end
      object RLLabel26: TRLLabel
        Left = 2395
        Top = 43
        Width = 39
        Height = 16
        Caption = 'RG/IE'
      end
    end
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 192
    Width = 97
    Height = 17
    Caption = 'Etiquetas'
    TabOrder = 5
    OnClick = CheckBox1Click
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 488
    Top = 96
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 488
    Top = 64
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.20 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 488
    Top = 128
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 488
    Top = 32
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 488
    Top = 160
  end
  object dscliente: TDataSource
    DataSet = cdscliente
    Left = 544
    Top = 176
  end
  object cdscliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcliente'
    Left = 544
    Top = 72
    object cdsclienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object cdsclienteNOME: TStringField
      Tag = 1
      FieldName = 'NOME'
      Size = 60
    end
    object cdsclienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 60
    end
    object cdsclienteRAMOATIVIDADE: TStringField
      Tag = 1
      FieldName = 'RAMOATIVIDADE'
    end
    object cdsclienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object cdsclienteCNPJCPF: TStringField
      Tag = 1
      FieldName = 'CNPJCPF'
    end
    object cdsclienteRGIE: TStringField
      FieldName = 'RGIE'
      Size = 15
    end
    object cdsclienteDATACADASTRO: TDateField
      Tag = 1
      FieldName = 'DATACADASTRO'
    end
    object cdsclienteENDERECO: TStringField
      Tag = 1
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsclienteBAIRRO: TStringField
      Tag = 1
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsclienteCIDADE: TStringField
      Tag = 1
      FieldName = 'CIDADE'
      Size = 60
    end
    object cdsclienteCEP: TStringField
      Tag = 1
      FieldName = 'CEP'
      Size = 10
    end
    object cdsclienteESTADO: TStringField
      Tag = 1
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsclienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cdsclienteFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object cdsclienteCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 13
    end
    object cdsclienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cdsclienteSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object cdsclienteOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object cdsclienteATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object sqlcliente: TSQLDataSet
    CommandText = 'select * from CLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 544
    Top = 24
    object sqlclienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object sqlclienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlclienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 60
    end
    object sqlclienteRAMOATIVIDADE: TStringField
      FieldName = 'RAMOATIVIDADE'
    end
    object sqlclienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object sqlclienteCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object sqlclienteRGIE: TStringField
      FieldName = 'RGIE'
      Size = 15
    end
    object sqlclienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object sqlclienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sqlclienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sqlclienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object sqlclienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlclienteESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqlclienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object sqlclienteFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object sqlclienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object sqlclienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object sqlclienteSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object sqlclienteOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object sqlclienteATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspcliente: TDataSetProvider
    DataSet = sqlcliente
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 544
    Top = 120
  end
end
