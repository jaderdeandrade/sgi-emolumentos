object fmImprimirDepModalidade: TfmImprimirDepModalidade
  Left = 407
  Top = 217
  BorderStyle = bsDialog
  Caption = 'Impress'#227'o de Dependentes por Categoria'
  ClientHeight = 193
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 34
    Width = 101
    Height = 13
    Caption = 'Selecionar Categoria:'
  end
  object Label2: TLabel
    Left = 48
    Top = 79
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object Label3: TLabel
    Left = 368
    Top = 79
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object RLReport1: TRLReport
    Left = 32
    Top = 248
    Width = 794
    Height = 1123
    DataSource = dsModalidade
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      BandType = btColumnHeader
      object RLLabel1: TRLLabel
        Left = 4
        Top = 5
        Width = 467
        Height = 29
        Caption = 'LISTAGEM CLIENTES POR CATEGORIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 4
        Top = 38
        Width = 60
        Height = 16
        Info = itFullDate
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 632
        Top = 40
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
      end
      object RLDraw4: TRLDraw
        Left = 2
        Top = 55
        Width = 715
        Height = 3
        DrawKind = dkLine
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 25
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDraw2: TRLDraw
        Left = 2
        Top = 21
        Width = 715
        Height = 3
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLLabel3: TRLLabel
        Left = 4
        Top = 4
        Width = 64
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 122
      Width = 718
      Height = 21
      object RLDBText2: TRLDBText
        Left = 5
        Top = 3
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = dsModalidade
      end
      object RLDBText3: TRLDBText
        Left = 624
        Top = 0
        Width = 72
        Height = 16
        DataField = 'TELEFONE'
        DataSource = dsModalidade
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 143
      Width = 718
      Height = 27
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo3: TRLSystemInfo
        Left = 268
        Top = 3
        Width = 79
        Height = 16
        Info = itDetailCount
      end
      object RLDraw1: TRLDraw
        Left = 2
        Top = 21
        Width = 715
        Height = 3
        DrawKind = dkLine
      end
      object RLLabel2: TRLLabel
        Left = 4
        Top = 3
        Width = 257
        Height = 16
        Caption = 'Quantidade de registros por Modalidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLDraw3: TRLDraw
        Left = 3
        Top = 0
        Width = 715
        Height = 3
        DrawKind = dkLine
        Pen.Style = psDot
      end
    end
  end
  object Button1: TButton
    Left = 168
    Top = 143
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 143
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 48
    Top = 50
    Width = 433
    Height = 21
    DropDownCount = 8
    LookupField = 'NOME'
    LookupDisplay = 'NOME'
    LookupSource = dscategoria
    TabOrder = 3
  end
  object DateEdit1: TDateEdit
    Left = 48
    Top = 95
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object DateEdit2: TDateEdit
    Left = 368
    Top = 95
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 5
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 544
    Top = 16
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 576
    Top = 16
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.20 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 608
    Top = 16
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 640
    Top = 16
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 512
    Top = 16
  end
  object dsModalidade: TDataSource
    DataSet = cdsModalidade
    Left = 456
    Top = 34
  end
  object cdsModalidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModalidade'
    Left = 360
    Top = 34
    object cdsModalidadeIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object cdsModalidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsModalidadeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsModalidadeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsModalidadeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object cdsModalidadeCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsModalidadeESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsModalidadeESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
    end
    object cdsModalidadeIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 15
    end
    object cdsModalidadeCPF: TStringField
      FieldName = 'CPF'
    end
    object cdsModalidadeCTPS: TStringField
      FieldName = 'CTPS'
      Size = 10
    end
    object cdsModalidadeDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
    end
    object cdsModalidadeCATEGORIATITULAR: TStringField
      FieldName = 'CATEGORIATITULAR'
    end
    object cdsModalidadeTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cdsModalidadeCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object cdsModalidadeEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cdsModalidadeDEPENDENTE: TStringField
      FieldName = 'DEPENDENTE'
      FixedChar = True
      Size = 1
    end
    object cdsModalidadeCOTATITULAR: TIntegerField
      FieldName = 'COTATITULAR'
    end
    object cdsModalidadeDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object cdsModalidadePARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 15
    end
    object cdsModalidadeDATAATESTADO: TDateField
      FieldName = 'DATAATESTADO'
    end
    object cdsModalidadeFOTO: TStringField
      FieldName = 'FOTO'
      Size = 70
    end
    object cdsModalidadeSEXO: TStringField
      FieldName = 'SEXO'
      Size = 10
    end
    object cdsModalidadeRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 70
    end
    object cdsModalidadePAI: TStringField
      FieldName = 'PAI'
      Size = 70
    end
    object cdsModalidadeRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object cdsModalidadeCPFPAI: TStringField
      FieldName = 'CPFPAI'
    end
    object cdsModalidadeMAE: TStringField
      FieldName = 'MAE'
      Size = 70
    end
    object cdsModalidadeRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object cdsModalidadeCPFMAE: TStringField
      FieldName = 'CPFMAE'
    end
    object cdsModalidadeEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 60
    end
    object cdsModalidadeTELEMPRESA: TStringField
      FieldName = 'TELEMPRESA'
      Size = 13
    end
  end
  object dspModalidade: TDataSetProvider
    DataSet = sqlModalidade
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 408
    Top = 34
  end
  object sqlModalidade: TSQLDataSet
    CommandText = 'select * from CLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 320
    Top = 34
    object sqlModalidadeIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object sqlModalidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlModalidadeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sqlModalidadeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sqlModalidadeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object sqlModalidadeCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlModalidadeESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqlModalidadeESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
    end
    object sqlModalidadeIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 15
    end
    object sqlModalidadeCPF: TStringField
      FieldName = 'CPF'
    end
    object sqlModalidadeCTPS: TStringField
      FieldName = 'CTPS'
      Size = 10
    end
    object sqlModalidadeDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
    end
    object sqlModalidadeCATEGORIATITULAR: TStringField
      FieldName = 'CATEGORIATITULAR'
    end
    object sqlModalidadeTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object sqlModalidadeCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object sqlModalidadeEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object sqlModalidadeDEPENDENTE: TStringField
      FieldName = 'DEPENDENTE'
      FixedChar = True
      Size = 1
    end
    object sqlModalidadeCOTATITULAR: TIntegerField
      FieldName = 'COTATITULAR'
    end
    object sqlModalidadeDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object sqlModalidadePARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 15
    end
    object sqlModalidadeDATAATESTADO: TDateField
      FieldName = 'DATAATESTADO'
    end
    object sqlModalidadeFOTO: TStringField
      FieldName = 'FOTO'
      Size = 70
    end
    object sqlModalidadeSEXO: TStringField
      FieldName = 'SEXO'
      Size = 10
    end
    object sqlModalidadeRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 70
    end
    object sqlModalidadePAI: TStringField
      FieldName = 'PAI'
      Size = 70
    end
    object sqlModalidadeRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object sqlModalidadeCPFPAI: TStringField
      FieldName = 'CPFPAI'
    end
    object sqlModalidadeMAE: TStringField
      FieldName = 'MAE'
      Size = 70
    end
    object sqlModalidadeRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object sqlModalidadeCPFMAE: TStringField
      FieldName = 'CPFMAE'
    end
    object sqlModalidadeEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 60
    end
    object sqlModalidadeTELEMPRESA: TStringField
      FieldName = 'TELEMPRESA'
      Size = 13
    end
  end
  object dscategoria: TDataSource
    DataSet = cdscategoria
    Left = 464
    Top = 2
  end
  object dspcategoria: TDataSetProvider
    DataSet = sqlcategoria
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 352
    Top = 2
  end
  object cdscategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcategoria'
    Left = 416
    Top = 2
    object cdscategoriaIDCATEGORIA: TIntegerField
      FieldName = 'IDCATEGORIA'
      Required = True
    end
    object cdscategoriaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object sqlcategoria: TSQLDataSet
    CommandText = 'select * from CATEGORIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 320
    Top = 2
    object sqlcategoriaIDCATEGORIA: TIntegerField
      FieldName = 'IDCATEGORIA'
      Required = True
    end
    object sqlcategoriaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
end
