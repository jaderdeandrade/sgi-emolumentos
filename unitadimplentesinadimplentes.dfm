object fmAdimplenteInadimplentes: TfmAdimplenteInadimplentes
  Left = 311
  Top = 210
  BorderStyle = bsDialog
  Caption = 'Listagem Adimplentes / Inadimplentes'
  ClientHeight = 197
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
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
  object Label1: TLabel
    Left = 47
    Top = 30
    Width = 146
    Height = 13
    Caption = 'Defina uma data de refer'#234'ncia:'
  end
  object Label2: TLabel
    Left = 47
    Top = 56
    Width = 111
    Height = 13
    Caption = 'Selecionar Modalidade;'
  end
  object Button1: TButton
    Left = 175
    Top = 161
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 279
    Top = 161
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object rbInadimplentes: TRadioButton
    Left = 47
    Top = 110
    Width = 177
    Height = 17
    Caption = 'Listar somente os inadimplentes'
    Checked = True
    TabOrder = 2
    TabStop = True
  end
  object rbAdimplentes: TRadioButton
    Left = 47
    Top = 134
    Width = 201
    Height = 17
    Caption = 'Listar somente os adimplentes'
    TabOrder = 3
  end
  object DateEdit1: TDateEdit
    Left = 199
    Top = 22
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 47
    Top = 72
    Width = 433
    Height = 21
    DropDownCount = 8
    LookupField = 'DESCRICAO'
    LookupDisplay = 'DESCRICAO'
    LookupSource = dsservico
    TabOrder = 5
  end
  object RLReport1: TRLReport
    Left = 8
    Top = 376
    Width = 794
    Height = 1123
    DataSource = dsCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 82
      BandType = btColumnHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 8
        Width = 35
        Height = 29
        Caption = '....'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 656
        Top = 32
        Width = 60
        Height = 16
        Alignment = taRightJustify
        Info = itFullDate
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 120
      Width = 718
      Height = 94
      DataFields = 'DESCRICAO_1'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 44
        BandType = btColumnHeader
        object RLDBText1: TRLDBText
          Left = 2
          Top = 6
          Width = 80
          Height = 16
          DataField = 'DESCRICAO'
          DataSource = dsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 0
          Width = 721
          Height = 5
          DrawKind = dkLine
        end
        object RLDraw2: TRLDraw
          Left = -3
          Top = 38
          Width = 721
          Height = 5
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDraw3: TRLDraw
          Left = -3
          Top = 19
          Width = 721
          Height = 5
          DrawKind = dkLine
        end
        object RLLabel2: TRLLabel
          Left = -2
          Top = 22
          Width = 38
          Height = 16
          Caption = 'Nome'
        end
        object RLLabel3: TRLLabel
          Left = 322
          Top = 22
          Width = 63
          Height = 16
          Caption = 'Identidade'
        end
        object RLLabel4: TRLLabel
          Left = 434
          Top = 22
          Width = 52
          Height = 16
          Caption = 'Telefone'
        end
        object RLLabel5: TRLLabel
          Left = 530
          Top = 22
          Width = 94
          Height = 16
          Caption = 'Dat.Pagamento'
        end
        object RLLabel6: TRLLabel
          Left = 672
          Top = 22
          Width = 34
          Height = 16
          Caption = 'Valor'
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 44
        Width = 718
        Height = 18
        object RLDBText2: TRLDBText
          Left = 4
          Top = 0
          Width = 43
          Height = 16
          DataField = 'NOME'
          DataSource = dsCliente
        end
        object RLDBText3: TRLDBText
          Left = 536
          Top = 0
          Width = 121
          Height = 16
          DataField = 'DATAPAGAMENTO'
          DataSource = dsCliente
        end
        object RLDBText4: TRLDBText
          Left = 440
          Top = 0
          Width = 72
          Height = 16
          DataField = 'TELEFONE'
          DataSource = dsCliente
        end
        object RLDBText5: TRLDBText
          Left = 328
          Top = 0
          Width = 80
          Height = 16
          DataField = 'IDENTIDADE'
          DataSource = dsCliente
        end
        object RLDBText6: TRLDBText
          Left = 672
          Top = 0
          Width = 48
          Height = 16
          DataField = 'VALOR'
          DataSource = dsCliente
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 62
        Width = 718
        Height = 27
        BandType = btColumnFooter
        object RLDBResult1: TRLDBResult
          Left = 195
          Top = 8
          Width = 46
          Height = 16
          DataField = 'IDCLIENTE'
          DataSource = dsCliente
          Info = riCount
        end
        object RLDraw4: TRLDraw
          Left = -3
          Top = 0
          Width = 721
          Height = 5
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLLabel7: TRLLabel
          Left = 8
          Top = 8
          Width = 181
          Height = 16
          Caption = 'Quantidade por modalidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
      end
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sqlCliente
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 8
    Top = 80
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 8
    Top = 48
    object cdsClienteDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
    end
    object cdsClienteVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsClienteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsClienteCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
      Required = True
    end
    object cdsClienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cdsClienteIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 15
    end
    object cdsClienteDESCRICAO_1: TStringField
      FieldName = 'DESCRICAO_1'
      Size = 70
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 8
    Top = 112
  end
  object sqlCliente: TSQLDataSet
    CommandText = 
      'select modalidade.datapagamento, modalidade.valor, modalidade.de' +
      'scricao, modalidade.cliente_idcliente, cliente.idcliente, client' +
      'e.nome, cliente.telefone, cliente.identidade, servico.descricao'#13 +
      #10'from servico'#13#10'   inner join modalidade on (servico.descricao = ' +
      'modalidade.descricao)'#13#10'   inner join cliente on (modalidade.clie' +
      'nte_idcliente = cliente.idcliente)'#13#10'order by servico.descricao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 8
    Top = 8
    object sqlClienteDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
    end
    object sqlClienteVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sqlClienteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sqlClienteCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
      Required = True
    end
    object sqlClienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object sqlClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object sqlClienteIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 15
    end
    object sqlClienteDESCRICAO_1: TStringField
      FieldName = 'DESCRICAO_1'
      Size = 70
    end
  end
  object dsservico: TDataSource
    DataSet = cdsServico
    Left = 568
    Top = 160
  end
  object dspServico: TDataSetProvider
    DataSet = sqlServico
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 568
    Top = 104
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServico'
    Left = 568
    Top = 56
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
    CommandText = 'select * from SERVICO order by SERVICO.DESCRICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 568
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
  object RLDraftFilter1: TRLDraftFilter
    Left = 440
    Top = 16
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 488
    Top = 8
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 536
    Top = 16
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.20 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 616
    Top = 16
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 664
    Top = 16
  end
end
