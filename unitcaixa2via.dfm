object fm2Via: Tfm2Via
  Left = 378
  Top = 158
  BorderStyle = bsSingle
  Caption = 'Caixa'
  ClientHeight = 587
  ClientWidth = 857
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 14
    Top = 72
    Width = 69
    Height = 13
    Caption = 'DATA INICIAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 286
    Top = 72
    Width = 62
    Height = 13
    Caption = 'DATA FINAL'
  end
  object SpeedButton1: TSpeedButton
    Left = 488
    Top = 56
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 546
    Width = 857
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btimprimir: TSpeedButton
      Left = 163
      Top = 8
      Width = 86
      Height = 25
      Caption = 'Imprimir'
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
    object btCancela: TButton
      Left = 269
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = btCancelaClick
    end
  end
  object DateEdit1: TDateEdit
    Left = 88
    Top = 64
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object DateEdit2: TDateEdit
    Left = 353
    Top = 64
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 104
    Width = 457
    Height = 177
    DataSource = dsCaixa
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object RLReport1: TRLReport
    Left = 61
    Top = 274
    Width = 416
    Height = 287
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 110.000000000000000000
    PageSetup.PaperHeight = 76.000000000000000000
    object RLBand1: TRLBand
      Left = 19
      Top = 38
      Width = 378
      Height = 108
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel1: TRLLabel
        Left = 0
        Top = 46
        Width = 32
        Height = 16
        Caption = 'N.:'
      end
      object rlnumero: TRLLabel
        Left = 32
        Top = 46
        Width = 72
        Height = 16
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 88
        Width = 70
        Height = 14
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 238
        Top = 88
        Width = 42
        Height = 14
        Caption = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 295
        Top = 88
        Width = 56
        Height = 14
        Caption = 'P.MENS.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 152
        Top = 45
        Width = 56
        Height = 16
      end
      object RLLabel6: TRLLabel
        Left = 0
        Top = 77
        Width = 35
        Height = 14
        Caption = 'CPF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 0
        Top = 61
        Width = 42
        Height = 14
        Caption = 'NOME:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlnome: TRLLabel
        Left = 43
        Top = 61
        Width = 49
        Height = 14
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object rldoc: TRLLabel
        Left = 36
        Top = 77
        Width = 42
        Height = 14
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 101
        Width = 376
        Height = 6
        DrawKind = dkLine
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 146
      Width = 378
      Height = 16
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 70
        Height = 14
        DataField = 'descricao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 240
        Top = 0
        Width = 42
        Height = 14
        DataField = 'total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 296
        Top = 0
        Width = 105
        Height = 14
        DataField = 'promensalidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 162
      Width = 378
      Height = 20
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult1: TRLDBResult
        Left = 256
        Top = 3
        Width = 96
        Height = 16
        DataField = 'total'
        DisplayMask = '#0.00'
        Info = riSum
      end
      object RLLabel4: TRLLabel
        Left = 151
        Top = 3
        Width = 104
        Height = 16
        Caption = 'Valor Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlsegundavia: TRLLabel
        Left = 0
        Top = 3
        Width = 42
        Height = 15
        Caption = '.....'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = -1
        Width = 376
        Height = 6
        DrawKind = dkLine
      end
    end
  end
  object sqlCaixa: TSQLDataSet
    CommandText = 'select * from CAIXA order by IDCAIXA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 8
    Top = 144
  end
  object dspCaixa: TDataSetProvider
    DataSet = sqlCaixa
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 8
    Top = 208
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCaixa'
    Left = 8
    Top = 176
    object cdsCaixaIDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
      Required = True
    end
    object cdsCaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 80
    end
    object cdsCaixaSALDO: TStringField
      FieldName = 'SALDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCaixaDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
      Required = True
    end
    object cdsCaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsCaixaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object cdsCaixaIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
  end
  object dsCaixa: TDataSource
    DataSet = cdsCaixa
    Left = 8
    Top = 240
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 8
    Top = 280
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 8
    Top = 272
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 8
    Top = 304
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 8
    Top = 336
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 16
    Top = 376
  end
end
