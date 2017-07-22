object fmImprimeMovimentoDiario: TfmImprimeMovimentoDiario
  Left = 323
  Top = 195
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimento Di'#225'rio do Caixa'
  ClientHeight = 149
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 391
    Height = 149
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'MOVIMENTO DE CAIXA'
      object Label2: TLabel
        Left = 24
        Top = 32
        Width = 51
        Height = 14
        Caption = 'Data Inicial'
      end
      object Label3: TLabel
        Left = 232
        Top = 32
        Width = 47
        Height = 14
        Caption = 'Data Final'
      end
      object PanelMovCaixa: TPanel
        Left = 40
        Top = 98
        Width = 546
        Height = 77
        BevelOuter = bvNone
        TabOrder = 1
      end
      object Panel1: TPanel
        Left = 0
        Top = 81
        Width = 383
        Height = 39
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object btimprimir: TSpeedButton
          Left = 103
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Imprimir'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000010000030303000404
            0400050505000505050006060600060606000707070007070700070707000707
            07000808080008080800080808000909090009090900090909000A0A0A000B0B
            0B000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F0010101000111111001313
            13001414140016161600181818001A1A1A001C1C1C001F1F1F00202020002121
            2100222222002323230024242400252525002626260027272700282828002929
            29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
            3100323232003333330034343400353535003636360037373700383838003F3E
            3E0047474700504F4F00575555005B5A5A00615F5F0065636300676565006967
            67006A6868006B6869006B6969006B6969006B6969006C6969006C6A6A006C6A
            69006C6A69006D6A6A006F6B6A00716B6A00736C6A00746C6A00786D6B007C6F
            6A0081726B0087746C008B766D0095796E00A47E7400AE807700B5827B00B783
            7D00B8837E00B8837E00B7847E00B4847E00B1857E00AC877E00A68881009D8B
            8500998B8700968C8900948C8A00948D8C0096908F00999392009B9695009F9A
            9A00A59F9F00A8A2A200AAA5A500ADA8A800AFA9A900B3ADAB00B7B0AC00BDB3
            AE00C4B8B000C8BBB100CEBDAE00D3BEAC00D7C0AB00DFC4AA00E5C7A900EAC9
            A900EFCBA500F4CEA500F7D0A500F8D1A600F8D3AA00F8D5AF00F9D8B300FBDB
            B700FCDCBA00FCDEBD00FBE1C300FCE4CA00FCE7CF00FCE9D300FBEBD700FAED
            DB00F9EFE100F9F2E800F8F3EC00F6F2EB00F4F1EB00F1EEE900EFECE700ECE9
            E500E9E6E300E6E3E100E0DEDD00DBD9D800D8D6D500D5D3D200D1CFCF00CECB
            CB00CAC8C700C7C5C400C4C1C100C1BFBE00BFBDBC00BCBABA00BBB9B800B9B8
            B700B8B6B600B5B4B400B4B3B300B2B1B100AFAFAF00ACACAC00AAAAAA00A9A9
            A900AAAAAA00ABABAB00ACABAB00ADACAC00B2A4B100C18FC000D46AD400E643
            E600F717F700FC07FC00FE02FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE01FE00FE01FE00FE03
            FE00FE05FE00FE0AFE00FD11FD00FC1CFC00FA2EFA00F842F800F756F700F56D
            F400EE7EEE00E785E600DF7BDE00CF6DCE00C15DC000B758B600AD55AC00A454
            A3009C549B008D518B007F4E7D00734B7100684867005F455E00574256005040
            4F004A3D4900443A430040383F003C363B003833370035313400322F3200302D
            2F002E2C2E002D2B2C002C2A2B002C2A2B002B2A2B002B2A2B00C6C6C6C64848
            C6C64848C6C6C6C6C6C6C6C6C6486C6A48484893484848C6C6C6C6C648956A6A
            6A3635489D93A2484848C648979A656565F510071207519F48C6489A9A659699
            9EA66A643D070E0B4850489A658F8C8C939494989EAC643C515048658C8C8C97
            67696F9C96959BA26647C64848906D516467666867699F989C48C6C6C6485C56
            54514050656B999C48C6C6C6C6C65B817D795C5C5B524848C6C6C6C6C6C65B82
            7E7C7C7C5BC6C6C6C6C6C6C6C65C8684807D7C5BC6C6C6C6C6C6C6C6C65B8885
            83807D5BC6C6C6C6C6C6C6C65B8C8C8885837A5BC6C6C6C6C6C6C6C65B5B5B8A
            86845BC6C6C6C6C6C6C6C6C6C6C6C65B5B5BC6C6C6C6C6C6C6C6}
          OnClick = btimprimirClick
        end
        object Button2: TButton
          Left = 225
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          TabOrder = 0
          OnClick = Button2Click
        end
      end
      object DateEdit1: TDateEdit
        Left = 24
        Top = 48
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 2
      end
      object DateEdit2: TDateEdit
        Left = 232
        Top = 48
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 3
      end
    end
  end
  object RLReport2: TRLReport
    Left = 536
    Top = 290
    Width = 1123
    Height = 794
    DataSource = dsSintetico
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    object RLBand6: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 67
      BandType = btTitle
      object RLLabel19: TRLLabel
        Left = 385
        Top = 8
        Width = 369
        Height = 29
        Caption = 'MOVIMENTO DI'#193'RIO DO CAIXA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 823
        Top = 43
        Width = 60
        Height = 16
        Info = itFullDate
      end
      object RLDraw5: TRLDraw
        Left = 0
        Top = 62
        Width = 1046
        Height = 4
        DrawKind = dkLine
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 105
      Width = 1047
      Height = 31
      BandType = btColumnHeader
      object RLLabel21: TRLLabel
        Left = 264
        Top = 8
        Width = 94
        Height = 16
        Caption = 'DATA  ABERT.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 408
        Top = 8
        Width = 41
        Height = 16
        Caption = 'HORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 728
        Top = 8
        Width = 81
        Height = 16
        Caption = 'DATA FECH.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 848
        Top = 8
        Width = 41
        Height = 16
        Caption = 'HORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 480
        Top = 8
        Width = 86
        Height = 16
        Caption = 'USU. ABERT.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 904
        Top = 8
        Width = 77
        Height = 16
        Caption = 'USU. FECH.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 160
        Top = 8
        Width = 66
        Height = 16
        Caption = 'VALOR A.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel29: TRLLabel
        Left = 1000
        Top = 8
        Width = 44
        Height = 16
        Caption = 'TERM.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel30: TRLLabel
        Left = 632
        Top = 8
        Width = 65
        Height = 16
        Caption = 'VALOR F.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 0
        Top = 8
        Width = 125
        Height = 16
        Caption = 'N'#186' DO MOVIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw6: TRLDraw
        Left = 0
        Top = 27
        Width = 1046
        Height = 2
        DrawKind = dkLine
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 136
      Width = 1047
      Height = 23
      object RLDBText17: TRLDBText
        Left = 40
        Top = 0
        Width = 95
        Height = 16
        DataField = 'IDMOVIMENTO'
        DataSource = dsSintetico
      end
      object RLDBText18: TRLDBText
        Left = 96
        Top = 0
        Width = 125
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_ABERTURA'
        DataSource = dsSintetico
      end
      object RLDBText19: TRLDBText
        Left = 238
        Top = 0
        Width = 115
        Height = 16
        Alignment = taRightJustify
        DataField = 'DATA_ABERTURA'
        DataSource = dsSintetico
      end
      object RLDBText20: TRLDBText
        Left = 328
        Top = 0
        Width = 118
        Height = 16
        Alignment = taRightJustify
        DataField = 'HORA_ABERTURA'
        DataSource = dsSintetico
      end
      object RLDBText21: TRLDBText
        Left = 480
        Top = 0
        Width = 139
        Height = 16
        DataField = 'USUARIO_ABERTURA'
        DataSource = dsSintetico
      end
      object RLDBText22: TRLDBText
        Left = 552
        Top = 0
        Width = 145
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_FECHAMENTO'
        DataSource = dsSintetico
      end
      object RLDBText23: TRLDBText
        Left = 672
        Top = 0
        Width = 135
        Height = 16
        Alignment = taRightJustify
        DataField = 'DATA_FECHAMENTO'
        DataSource = dsSintetico
      end
      object RLDBText24: TRLDBText
        Left = 751
        Top = 0
        Width = 138
        Height = 16
        Alignment = taRightJustify
        DataField = 'HORA_FECHAMENTO'
        DataSource = dsSintetico
      end
      object RLDBText25: TRLDBText
        Left = 904
        Top = 0
        Width = 159
        Height = 16
        DataField = 'USUARIO_FECHAMENTO'
        DataSource = dsSintetico
      end
      object RLDBText26: TRLDBText
        Left = 1008
        Top = 0
        Width = 105
        Height = 16
        DataField = 'NUMERO_CAIXA'
        DataSource = dsSintetico
      end
    end
    object RLBand9: TRLBand
      Left = 38
      Top = 159
      Width = 1047
      Height = 28
      BandType = btColumnFooter
      object RLDraw7: TRLDraw
        Left = 0
        Top = 3
        Width = 1046
        Height = 2
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLLabel31: TRLLabel
        Left = 8
        Top = 8
        Width = 96
        Height = 16
        Caption = 'VALOR TOTAL:'
      end
      object RLDBResult1: TRLDBResult
        Left = 104
        Top = 8
        Width = 68
        Height = 16
        DataField = 'total'
        DataSource = dsSintetico
        DisplayMask = '#0.00'
        Info = riSum
      end
    end
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 88
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 124
    Top = 1
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.20 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 156
    Top = 1
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 192
  end
  object sqlSintetico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from MOVIMENTO_CAIXA ')
    SQLConnection = dm.Connection1
    Left = 232
    object sqlSinteticoIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
    object sqlSinteticoNUMERO_CAIXA: TIntegerField
      FieldName = 'NUMERO_CAIXA'
    end
    object sqlSinteticoDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object sqlSinteticoHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
    end
    object sqlSinteticoDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
    end
    object sqlSinteticoHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
    end
    object sqlSinteticoUSUARIO_ABERTURA: TStringField
      FieldName = 'USUARIO_ABERTURA'
      Size = 15
    end
    object sqlSinteticoUSUARIO_FECHAMENTO: TStringField
      FieldName = 'USUARIO_FECHAMENTO'
      Size = 15
    end
    object sqlSinteticoVALOR_ABERTURA: TFMTBCDField
      FieldName = 'VALOR_ABERTURA'
      Precision = 15
      Size = 2
    end
    object sqlSinteticoVALOR_FECHAMENTO: TFMTBCDField
      FieldName = 'VALOR_FECHAMENTO'
      Precision = 15
      Size = 2
    end
    object sqlSinteticoATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsSintetico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSintetico'
    OnCalcFields = cdsSinteticoCalcFields
    Left = 264
    object cdsSinteticoIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
    object cdsSinteticoNUMERO_CAIXA: TIntegerField
      FieldName = 'NUMERO_CAIXA'
    end
    object cdsSinteticoDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object cdsSinteticoHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
    end
    object cdsSinteticoDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
    end
    object cdsSinteticoHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
    end
    object cdsSinteticoUSUARIO_ABERTURA: TStringField
      FieldName = 'USUARIO_ABERTURA'
      Size = 15
    end
    object cdsSinteticoUSUARIO_FECHAMENTO: TStringField
      FieldName = 'USUARIO_FECHAMENTO'
      Size = 15
    end
    object cdsSinteticoVALOR_ABERTURA: TFMTBCDField
      FieldName = 'VALOR_ABERTURA'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsSinteticoVALOR_FECHAMENTO: TFMTBCDField
      FieldName = 'VALOR_FECHAMENTO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsSinteticoATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsSinteticototal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
  end
  object dspSintetico: TDataSetProvider
    DataSet = sqlSintetico
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 296
  end
  object dsSintetico: TDataSource
    DataSet = cdsSintetico
    Left = 328
  end
  object dsSomaMovCaixa: TDataSource
    DataSet = cdsSomaMovCaixa
    Left = 336
    Top = 32
  end
  object dspSomaMovCaixa: TDataSetProvider
    DataSet = sqlSomaMovCaixa
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 296
    Top = 32
  end
  object cdsSomaMovCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSomaMovCaixa'
    Left = 264
    Top = 32
    object cdsSomaMovCaixaSUM: TFMTBCDField
      FieldName = 'SUM'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
  end
  object sqlSomaMovCaixa: TSQLDataSet
    CommandText = 'select sum(VALOR_FECHAMENTO)  from MOVIMENTO_CAIXA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.Connection1
    Left = 232
    Top = 32
    object sqlSomaMovCaixaSUM: TFMTBCDField
      FieldName = 'SUM'
      Precision = 15
      Size = 2
    end
  end
end
