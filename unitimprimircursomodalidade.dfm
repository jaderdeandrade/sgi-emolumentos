object fmImprimirCursoModalidade: TfmImprimirCursoModalidade
  Left = 363
  Top = 235
  BorderStyle = bsDialog
  Caption = 'Impress'#227'o de Modalidades'
  ClientHeight = 207
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
    Top = 40
    Width = 111
    Height = 13
    Caption = 'Selecionar Modalidade;'
  end
  object Label2: TLabel
    Left = 48
    Top = 85
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object Label3: TLabel
    Left = 368
    Top = 85
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object RLReport1: TRLReport
    Left = 8
    Top = 208
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
        Left = 0
        Top = 5
        Width = 486
        Height = 29
        Caption = 'LISTAGEM CLIENTES POR MODALIDADE'
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
    object RLGroup1: TRLGroup
      Left = 38
      Top = 97
      Width = 718
      Height = 76
      DataFields = 'DESCRICAO'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText1: TRLDBText
          Left = 5
          Top = 5
          Width = 80
          Height = 16
          DataField = 'DESCRICAO'
          DataSource = dsModalidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 2
          Top = 21
          Width = 715
          Height = 3
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 25
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
          Left = 602
          Top = 0
          Width = 111
          Height = 16
          DataField = 'DATAMATRICULA'
          DataSource = dsModalidade
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 46
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
  end
  object Button1: TButton
    Left = 168
    Top = 168
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 168
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 48
    Top = 56
    Width = 433
    Height = 21
    DropDownCount = 8
    DisplayEmpty = '[TODOS]'
    EmptyValue = '[TODOS]'
    LookupField = 'DESCRICAO'
    LookupDisplay = 'DESCRICAO'
    LookupSource = dsservico
    TabOrder = 3
  end
  object DateEdit1: TDateEdit
    Left = 48
    Top = 101
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object DateEdit2: TDateEdit
    Left = 368
    Top = 101
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
    Top = 40
  end
  object cdsModalidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModalidade'
    Left = 360
    Top = 40
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
    object cdsModalidadeTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cdsModalidadeEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cdsModalidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsModalidadeCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
      Required = True
    end
    object cdsModalidadeDATAMATRICULA: TDateField
      FieldName = 'DATAMATRICULA'
    end
  end
  object dspModalidade: TDataSetProvider
    DataSet = sqlModalidade
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 408
    Top = 40
  end
  object sqlModalidade: TSQLDataSet
    CommandText = 
      'select cliente.nome, cliente.endereco, cliente.bairro, cliente.c' +
      'idade, cliente.cep, cliente.estado, cliente.telefone, cliente.em' +
      'ail, modalidade.descricao, modalidade.cliente_idcliente,modalida' +
      'de.datamatricula '#13#10'from modalidade'#13#10'   inner join cliente on (mo' +
      'dalidade.cliente_idcliente = cliente.idcliente)'#13#10'   inner join s' +
      'ervico on (modalidade.descricao = servico.descricao)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 320
    Top = 40
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
    object sqlModalidadeTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object sqlModalidadeEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object sqlModalidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sqlModalidadeCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
      Required = True
    end
    object sqlModalidadeDATAMATRICULA: TDateField
      FieldName = 'DATAMATRICULA'
    end
  end
  object dsservico: TDataSource
    DataSet = cdsServico
    Left = 464
    Top = 8
  end
  object dspServico: TDataSetProvider
    DataSet = sqlServico
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 352
    Top = 8
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServico'
    Left = 416
    Top = 8
    object cdsServicoIDSERVICO: TIntegerField
      FieldName = 'IDSERVICO'
    end
    object cdsServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsServicoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsServicoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
  end
  object sqlServico: TSQLDataSet
    CommandText = 'select * from SERVICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 320
    Top = 8
    object sqlServicoIDSERVICO: TIntegerField
      FieldName = 'IDSERVICO'
    end
    object sqlServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sqlServicoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sqlServicoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
  end
end
