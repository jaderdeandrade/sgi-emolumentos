object fmImprimirNovoModalidade: TfmImprimirNovoModalidade
  Left = 382
  Top = 250
  BorderStyle = bsDialog
  Caption = 'Impress'#227'o de Novos Associados'
  ClientHeight = 187
  ClientWidth = 522
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
  object Label2: TLabel
    Left = 48
    Top = 70
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object Label3: TLabel
    Left = 360
    Top = 67
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object Label13: TLabel
    Left = 48
    Top = 18
    Width = 111
    Height = 13
    Caption = 'CATEGORIA TITULAR'
  end
  object RLReport1: TRLReport
    Left = 16
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
      Height = 59
      BandType = btColumnHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 5
        Width = 339
        Height = 29
        Caption = 'LISTAGEM DE CATEGORIAS'
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
    object RLBand4: TRLBand
      Left = 38
      Top = 161
      Width = 718
      Height = 27
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo3: TRLSystemInfo
        Left = 265
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
    object RLGroup1: TRLGroup
      Left = 38
      Top = 97
      Width = 718
      Height = 64
      DataFields = 'CATEGORIATITULAR'
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
          Width = 56
          Height = 16
          DataField = 'NOME_1'
          DataSource = dscliente
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
          DataSource = dscliente
        end
        object RLDBText3: TRLDBText
          Left = 600
          Top = 0
          Width = 109
          Height = 16
          DataField = 'DATACADASTRO'
          DataSource = dscliente
        end
      end
    end
  end
  object Button1: TButton
    Left = 168
    Top = 150
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 150
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object DateEdit1: TDateEdit
    Left = 48
    Top = 83
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object DateEdit2: TDateEdit
    Left = 360
    Top = 83
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object CheckBox1: TCheckBox
    Left = 48
    Top = 115
    Width = 145
    Height = 17
    Caption = 'Somente os dependentes'
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 48
    Top = 32
    Width = 434
    Height = 21
    KeyField = 'NOME'
    ListField = 'NOME'
    ListSource = dsCategoria
    TabOrder = 6
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
  object dscliente: TDataSource
    DataSet = cdscliente
    Left = 8
    Top = 160
  end
  object cdscliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'dep'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'data1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'data2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cat'
        ParamType = ptInput
      end>
    ProviderName = 'dspcliente'
    Left = 8
    Top = 56
    object cdsclienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object cdsclienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsclienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
    end
    object cdsclienteDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
    end
    object cdsclienteCATEGORIATITULAR: TStringField
      FieldName = 'CATEGORIATITULAR'
    end
    object cdsclienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cdsclienteDATAATESTADO: TDateField
      FieldName = 'DATAATESTADO'
    end
    object cdsclienteNOME_1: TStringField
      FieldName = 'NOME_1'
      Size = 30
    end
    object cdsclienteIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 15
    end
    object cdsclientePARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 15
    end
    object cdsclienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
  end
  object sqlcliente: TSQLDataSet
    CommandText = 
      'select cliente.idcliente, cliente.nome, cliente.estadocivil, cli' +
      'ente.datanascimento, cliente.categoriatitular, cliente.telefone,' +
      ' cliente.dataatestado, categoria.nome, cliente.identidade, clien' +
      'te.parentesco, cliente.datacadastro'#13#10'from cliente'#13#10'   inner join' +
      ' categoria on (cliente.categoriatitular = categoria.nome)'#13#10'where' +
      ' '#13#10'   ('#13#10'      (cliente.dependente = :dep)'#13#10'   and '#13#10'      (clie' +
      'nte.datacadastro between :data1 and :data2)'#13#10'   and '#13#10'      (cli' +
      'ente.categoriatitular = :cat)'#13#10'   )'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'dep'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'data1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'data2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cat'
        ParamType = ptInput
      end>
    SQLConnection = dmconect.SQLConnection1
    Left = 8
    Top = 8
    object sqlclienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object sqlclienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlclienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
    end
    object sqlclienteDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
    end
    object sqlclienteCATEGORIATITULAR: TStringField
      FieldName = 'CATEGORIATITULAR'
    end
    object sqlclienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object sqlclienteDATAATESTADO: TDateField
      FieldName = 'DATAATESTADO'
    end
    object sqlclienteNOME_1: TStringField
      FieldName = 'NOME_1'
      Size = 30
    end
    object sqlclienteIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 15
    end
    object sqlclientePARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 15
    end
    object sqlclienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
  end
  object dspcliente: TDataSetProvider
    DataSet = sqlcliente
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 8
    Top = 104
  end
  object dsCategoria: TDataSource
    DataSet = cdsCategoria
    Left = 376
    Top = 8
  end
  object dspCategoria: TDataSetProvider
    DataSet = sqlCategoria
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 320
    Top = 8
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCategoria'
    Left = 280
    Top = 8
    object cdsCategoriaIDCATEGORIA: TIntegerField
      FieldName = 'IDCATEGORIA'
    end
    object cdsCategoriaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object sqlCategoria: TSQLDataSet
    CommandText = 'select * from CATEGORIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 240
    Top = 8
    object sqlCategoriaIDCATEGORIA: TIntegerField
      FieldName = 'IDCATEGORIA'
    end
    object sqlCategoriaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
end
