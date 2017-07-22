object fmImprimeMovimentoCaixa: TfmImprimeMovimentoCaixa
  Left = 302
  Top = 190
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Impress'#227'o do Movimento de Caixa'
  ClientHeight = 167
  ClientWidth = 556
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 58
    Width = 307
    Height = 13
    Caption = 'SELECIONE O N'#218'MERO DO MOVIMENTO DE CAIXA:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RLReport1: TRLReport
    Left = 520
    Top = 442
    Width = 794
    Height = 1123
    DataSource = dsmovcaixa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 64
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 221
        Top = 8
        Width = 277
        Height = 29
        Caption = 'MOVIMENTO DE CAIXA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 455
        Top = 43
        Width = 60
        Height = 16
        Info = itFullDate
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 102
      Width = 718
      Height = 106
      BandType = btTitle
      object RLLabel3: TRLLabel
        Left = 6
        Top = 8
        Width = 129
        Height = 16
        Caption = 'N'#186' DO MOVIMENTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 6
        Top = 31
        Width = 138
        Height = 16
        Caption = 'DATA DE ABERTURA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 478
        Top = 31
        Width = 45
        Height = 16
        Caption = 'HORA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 396
        Top = 55
        Width = 127
        Height = 16
        Caption = 'VALOR ABERTURA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = -3
        Top = 79
        Width = 721
        Height = 4
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLDBText1: TRLDBText
        Left = 140
        Top = 8
        Width = 95
        Height = 16
        DataField = 'IDMOVIMENTO'
        DataSource = dsmovcx
      end
      object RLDBText2: TRLDBText
        Left = 148
        Top = 31
        Width = 115
        Height = 16
        DataField = 'DATA_ABERTURA'
        DataSource = dsmovcx
      end
      object RLDBText3: TRLDBText
        Left = 527
        Top = 31
        Width = 118
        Height = 16
        DataField = 'HORA_ABERTURA'
        DataSource = dsmovcx
      end
      object RLDBText5: TRLDBText
        Left = 527
        Top = 55
        Width = 125
        Height = 16
        DataField = 'VALOR_ABERTURA'
        DataSource = dsmovcx
      end
      object RLLabel7: TRLLabel
        Left = 5
        Top = 85
        Width = 80
        Height = 16
        Caption = 'DESCRI'#199'AO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 429
        Top = 85
        Width = 124
        Height = 16
        Caption = 'DAT.LAN'#199'AMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 650
        Top = 85
        Width = 63
        Height = 16
        Caption = 'USUARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 553
        Top = 85
        Width = 49
        Height = 16
        Caption = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 6
        Top = 55
        Width = 162
        Height = 16
        Caption = 'USU'#193'RIO DE ABERTURA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 168
        Top = 55
        Width = 139
        Height = 16
        DataField = 'USUARIO_ABERTURA'
        DataSource = dsmovcx
      end
      object RLDraw1: TRLDraw
        Left = -3
        Top = 3
        Width = 721
        Height = 2
        DrawKind = dkLine
      end
      object RLLabel13: TRLLabel
        Left = 602
        Top = 85
        Width = 49
        Height = 16
        Caption = 'SALDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 228
      Width = 718
      Height = 54
      BandType = btSummary
      object RLLabel15: TRLLabel
        Left = 6
        Top = 29
        Width = 157
        Height = 16
        Caption = 'DATA DE FECHAMENTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 6
        Top = 9
        Width = 181
        Height = 16
        Caption = 'USU'#193'RIO DE FECHAMENTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 190
        Top = 9
        Width = 159
        Height = 16
        DataField = 'USUARIO_FECHAMENTO'
        DataSource = dsmovcx
      end
      object RLDBText13: TRLDBText
        Left = 174
        Top = 29
        Width = 135
        Height = 16
        DataField = 'DATA_FECHAMENTO'
        DataSource = dsmovcx
      end
      object RLLabel16: TRLLabel
        Left = 478
        Top = 29
        Width = 45
        Height = 16
        Caption = 'HORA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 356
        Top = 9
        Width = 100
        Height = 16
        Caption = 'VALOR TOTAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText16: TRLDBText
        Left = 463
        Top = 9
        Width = 145
        Height = 16
        DataField = 'VALOR_FECHAMENTO'
        DataSource = dsmovcx
      end
      object RLDBText14: TRLDBText
        Left = 527
        Top = 29
        Width = 138
        Height = 16
        DataField = 'HORA_FECHAMENTO'
        DataSource = dsmovcx
      end
      object RLDraw4: TRLDraw
        Left = -3
        Top = 4
        Width = 721
        Height = 4
        DrawKind = dkLine
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 208
      Width = 718
      Height = 20
      object RLDBText6: TRLDBText
        Left = 8
        Top = 2
        Width = 444
        Height = 16
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = dsmovcaixa
      end
      object RLDBText7: TRLDBText
        Left = 414
        Top = 2
        Width = 134
        Height = 16
        Alignment = taRightJustify
        DataField = 'DATA_LANCAMENTO'
        DataSource = dsmovcaixa
      end
      object RLDBText8: TRLDBText
        Left = 556
        Top = 2
        Width = 48
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR'
        DataSource = dsmovcaixa
      end
      object RLDBText9: TRLDBText
        Left = 652
        Top = 2
        Width = 62
        Height = 16
        DataField = 'USUARIO'
        DataSource = dsmovcaixa
      end
      object RLDBText15: TRLDBText
        Left = 610
        Top = 2
        Width = 48
        Height = 16
        Alignment = taCenter
        DataField = 'SALDO'
        DataSource = dsmovcaixa
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 128
    Width = 556
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btimprimir: TSpeedButton
      Left = 177
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
      Left = 275
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object RLReport2: TRLReport
    Left = 19
    Top = 419
    Width = 794
    Height = 1123
    DataSource = dsRelCaixa
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    object RLBand5: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 58
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 8
        Top = 8
        Width = 252
        Height = 27
        Caption = 'LISTAGEM DE CAIXA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 416
        Top = 8
        Width = 88
        Height = 16
        Info = itFullDate
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 96
      Width = 718
      Height = 116
      DataFields = 'CONTA'
      object RLBand6: TRLBand
        Left = 0
        Top = 64
        Width = 718
        Height = 26
        object RLDBText11: TRLDBText
          Left = 8
          Top = 6
          Width = 441
          Height = 16
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = dsRelCaixa
        end
        object RLDBText17: TRLDBText
          Left = 465
          Top = 6
          Width = 128
          Height = 16
          Alignment = taRightJustify
          DataField = 'DATA_LANCAMENTO'
          DataSource = dsRelCaixa
        end
        object RLDBText18: TRLDBText
          Left = 609
          Top = 6
          Width = 48
          Height = 16
          Alignment = taRightJustify
          DataField = 'VALOR'
          DataSource = dsRelCaixa
        end
        object RLDBText19: TRLDBText
          Left = 668
          Top = 5
          Width = 48
          Height = 16
          Alignment = taCenter
          DataField = 'SALDO'
          DataSource = dsRelCaixa
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 64
        BandType = btColumnHeader
        object RLDraw6: TRLDraw
          Left = 0
          Top = 55
          Width = 718
          Height = 9
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDraw7: TRLDraw
          Left = 0
          Top = 37
          Width = 718
          Height = 5
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLLabel27: TRLLabel
          Left = 8
          Top = 41
          Width = 80
          Height = 17
          Caption = 'DESCRI'#199#195'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object RLLabel28: TRLLabel
          Left = 474
          Top = 41
          Width = 120
          Height = 17
          Caption = 'DAT.LAN'#199'AMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object RLLabel29: TRLLabel
          Left = 605
          Top = 41
          Width = 48
          Height = 17
          Caption = 'VALOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 664
          Top = 41
          Width = 48
          Height = 17
          Caption = 'SALDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 0
          Top = 17
          Width = 136
          Height = 16
          Caption = 'Numero da Conta:'
        end
        object RLDBText20: TRLDBText
          Left = 128
          Top = 17
          Width = 48
          Height = 16
          DataField = 'CONTA'
          DataSource = dsRelCaixa
        end
        object RLDBText21: TRLDBText
          Left = 272
          Top = 17
          Width = 40
          Height = 16
          DataField = 'NOME'
          DataSource = dsRelCaixa
        end
        object RLLabel23: TRLLabel
          Left = 216
          Top = 17
          Width = 56
          Height = 16
          Caption = 'Conta:'
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 8
          Align = faTop
          DrawKind = dkLine
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 90
        Width = 718
        Height = 23
        BandType = btColumnFooter
        object RLDraw5: TRLDraw
          Left = 0
          Top = -1
          Width = 718
          Height = 5
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBResult1: TRLDBResult
          Left = 624
          Top = 4
          Width = 80
          Height = 16
          DataField = 'tot'
          DataSource = dsRelCaixa
          Info = riSum
        end
        object RLLabel24: TRLLabel
          Left = 568
          Top = 5
          Width = 56
          Height = 16
          Caption = 'Total:'
        end
      end
    end
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 64
    Top = 75
    Width = 441
    Height = 21
    Hint = 
      'Exibe N'#186' do Movimento de Caixa, Data de Abertura, Valor de Abert' +
      'ura, '#13#10'Data de Fechamento, Valor de Fechamento'
    DropDownCount = 8
    FieldsDelimiter = '|'
    LookupField = 'IDMOVIMENTO'
    LookupDisplay = 
      'IDMOVIMENTO;DATA_ABERTURA;VALOR_ABERTURA;DATA_FECHAMENTO;VALOR_F' +
      'ECHAMENTO'
    LookupSource = DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object cdsmovcaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspmovcaixa'
    Left = 268
    Top = 1
    object cdsmovcaixaIDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
      Required = True
    end
    object cdsmovcaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 80
    end
    object cdsmovcaixaSALDO: TStringField
      FieldName = 'SALDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsmovcaixaDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
      Required = True
    end
    object cdsmovcaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsmovcaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsmovcaixaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object cdsmovcaixaIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
  end
  object dspmovcaixa: TDataSetProvider
    DataSet = sqlmovcaixa
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 308
    Top = 1
  end
  object dsmovcaixa: TDataSource
    DataSet = cdsmovcaixa
    Left = 348
    Top = 1
  end
  object sqlmovcx: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select * from MOVIMENTO_CAIXA order by MOVIMENTO_CAIXA.IDMOVIMEN' +
        'TO')
    SQLConnection = dmconect.SQLConnection1
    Left = 384
    object sqlmovcxIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
    object sqlmovcxDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object sqlmovcxHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
    end
    object sqlmovcxDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
    end
    object sqlmovcxHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
    end
    object sqlmovcxUSUARIO_ABERTURA: TStringField
      FieldName = 'USUARIO_ABERTURA'
      Size = 15
    end
    object sqlmovcxUSUARIO_FECHAMENTO: TStringField
      FieldName = 'USUARIO_FECHAMENTO'
      Size = 15
    end
    object sqlmovcxVALOR_ABERTURA: TFMTBCDField
      FieldName = 'VALOR_ABERTURA'
      Precision = 15
      Size = 2
    end
    object sqlmovcxVALOR_FECHAMENTO: TFMTBCDField
      FieldName = 'VALOR_FECHAMENTO'
      Precision = 15
      Size = 2
    end
    object sqlmovcxATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsmovcx: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspmovcx'
    Left = 416
    object cdsmovcxIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
    object cdsmovcxDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object cdsmovcxHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
    end
    object cdsmovcxDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
    end
    object cdsmovcxHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
    end
    object cdsmovcxUSUARIO_ABERTURA: TStringField
      FieldName = 'USUARIO_ABERTURA'
      Size = 15
    end
    object cdsmovcxUSUARIO_FECHAMENTO: TStringField
      FieldName = 'USUARIO_FECHAMENTO'
      Size = 15
    end
    object cdsmovcxVALOR_ABERTURA: TFMTBCDField
      FieldName = 'VALOR_ABERTURA'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsmovcxVALOR_FECHAMENTO: TFMTBCDField
      FieldName = 'VALOR_FECHAMENTO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsmovcxATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspmovcx: TDataSetProvider
    DataSet = sqlmovcx
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 448
  end
  object dsmovcx: TDataSource
    DataSet = cdsmovcx
    Left = 480
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
  object sqlmovcaixa: TSQLDataSet
    CommandText = 'select * from caixa'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 236
    Top = 1
    object sqlmovcaixaIDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
      Required = True
    end
    object sqlmovcaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 80
    end
    object sqlmovcaixaSALDO: TStringField
      FieldName = 'SALDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sqlmovcaixaDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
      Required = True
    end
    object sqlmovcaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object sqlmovcaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object sqlmovcaixaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object sqlmovcaixaIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 120
    Top = 40
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 80
    Top = 32
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 48
    Top = 32
    object ClientDataSet1IDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
    object ClientDataSet1DATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object ClientDataSet1HORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
    end
    object ClientDataSet1DATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
    end
    object ClientDataSet1HORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
    end
    object ClientDataSet1USUARIO_ABERTURA: TStringField
      FieldName = 'USUARIO_ABERTURA'
      Size = 15
    end
    object ClientDataSet1USUARIO_FECHAMENTO: TStringField
      FieldName = 'USUARIO_FECHAMENTO'
      Size = 15
    end
    object ClientDataSet1VALOR_ABERTURA: TFMTBCDField
      FieldName = 'VALOR_ABERTURA'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object ClientDataSet1VALOR_FECHAMENTO: TFMTBCDField
      FieldName = 'VALOR_FECHAMENTO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object ClientDataSet1ATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from MOVIMENTO_CAIXA order by '
      'MOVIMENTO_CAIXA.IDMOVIMENTO desc')
    SQLConnection = dmconect.SQLConnection1
    Left = 16
    Top = 32
    object SQLQuery1IDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
    object SQLQuery1DATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object SQLQuery1HORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
    end
    object SQLQuery1DATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
    end
    object SQLQuery1HORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
    end
    object SQLQuery1USUARIO_ABERTURA: TStringField
      FieldName = 'USUARIO_ABERTURA'
      Size = 15
    end
    object SQLQuery1USUARIO_FECHAMENTO: TStringField
      FieldName = 'USUARIO_FECHAMENTO'
      Size = 15
    end
    object SQLQuery1VALOR_ABERTURA: TFMTBCDField
      FieldName = 'VALOR_ABERTURA'
      Precision = 15
      Size = 2
    end
    object SQLQuery1VALOR_FECHAMENTO: TFMTBCDField
      FieldName = 'VALOR_FECHAMENTO'
      Precision = 15
      Size = 2
    end
    object SQLQuery1ATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object sqlCredito: TSQLDataSet
    CommandText = 'Select sum(VALOR) from CAIXA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 12
    Top = 105
    object sqlCreditoSUM: TFMTBCDField
      FieldName = 'SUM'
      Precision = 15
      Size = 2
    end
  end
  object cdsCredito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCredito'
    Left = 44
    Top = 105
    object cdsCreditoSUM: TFMTBCDField
      FieldName = 'SUM'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
  end
  object dspCredito: TDataSetProvider
    DataSet = sqlCredito
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 76
    Top = 105
  end
  object dsCredito: TDataSource
    Left = 108
    Top = 113
  end
  object dsRelCaixa: TDataSource
    DataSet = cdsRelCaixa
    Left = 536
    Top = 104
  end
  object dspRelCaixa: TDataSetProvider
    DataSet = sqlRelCaixa
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 536
    Top = 72
  end
  object cdsRelCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelCaixa'
    OnCalcFields = cdsRelCaixaCalcFields
    Left = 536
    Top = 40
    object cdsRelCaixaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsRelCaixaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object cdsRelCaixaIDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
      Required = True
    end
    object cdsRelCaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 80
    end
    object cdsRelCaixaSALDO: TStringField
      FieldName = 'SALDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsRelCaixaDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
      Required = True
    end
    object cdsRelCaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsRelCaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsRelCaixaCONTA_1: TStringField
      FieldName = 'CONTA_1'
      Size = 15
    end
    object cdsRelCaixaIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
    object cdsRelCaixaIDPLANOCONTAS: TIntegerField
      FieldName = 'IDPLANOCONTAS'
      Required = True
    end
    object cdsRelCaixaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object cdsRelCaixatot: TFloatField
      FieldKind = fkCalculated
      FieldName = 'tot'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Calculated = True
    end
  end
  object sqlRelCaixa: TSQLDataSet
    CommandText = 
      'select contaplano.nome, contaplano.conta, caixa.idcaixa, caixa.d' +
      'escricao, caixa.saldo, caixa.data_lancamento, caixa.valor, caixa' +
      '.usuario, caixa.conta, caixa.idmovimento, planocontas.idplanocon' +
      'tas, planocontas.tipo'#13#10'from planocontas'#13#10'   inner join contaplan' +
      'o on (planocontas.idplanocontas = contaplano.idplacoconta)'#13#10'   i' +
      'nner join caixa on (contaplano.conta = caixa.conta)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 536
    Top = 8
    object sqlRelCaixaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sqlRelCaixaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object sqlRelCaixaIDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
      Required = True
    end
    object sqlRelCaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 80
    end
    object sqlRelCaixaSALDO: TStringField
      FieldName = 'SALDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sqlRelCaixaDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
      Required = True
    end
    object sqlRelCaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object sqlRelCaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object sqlRelCaixaCONTA_1: TStringField
      FieldName = 'CONTA_1'
      Size = 15
    end
    object sqlRelCaixaIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
    object sqlRelCaixaIDPLANOCONTAS: TIntegerField
      FieldName = 'IDPLANOCONTAS'
      Required = True
    end
    object sqlRelCaixaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 15
    end
  end
end
