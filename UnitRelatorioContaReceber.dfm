object fmRelatorioContasReceber: TfmRelatorioContasReceber
  Left = 454
  Top = 198
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio Contas a Receber'
  ClientHeight = 204
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 32
    Top = 71
    Width = 51
    Height = 14
    Caption = 'Data Inicial'
  end
  object Bevel1: TBevel
    Left = 160
    Top = 104
    Width = 113
    Height = 4
    Shape = bsTopLine
  end
  object Label2: TLabel
    Left = 284
    Top = 71
    Width = 47
    Height = 14
    Caption = 'Data Final'
  end
  object Label4: TLabel
    Left = 35
    Top = 117
    Width = 366
    Height = 16
    Caption = 'ATEN'#199#195'O! '#201' obrigat'#243'rio especificar um intervalo de datas.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 34
    Top = 24
    Width = 54
    Height = 14
    Caption = 'EMPRESA:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btimprimir: TSpeedButton
    Left = 144
    Top = 170
    Width = 75
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
  object RLReport1: TRLReport
    Left = 56
    Top = 306
    Width = 794
    Height = 1123
    DataSource = dsReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.BottomMargin = 15.000000000000000000
    object RLGroup1: TRLGroup
      Left = 38
      Top = 77
      Width = 718
      Height = 146
      DataFields = 'IDCLIENTE'
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 92
        BandType = btHeader
        object RLDBText1: TRLDBText
          Left = 155
          Top = 13
          Width = 327
          Height = 16
          AutoSize = False
          DataField = 'NOME'
          DataSource = dsReceber
        end
        object RLLabel3: TRLLabel
          Left = 96
          Top = 13
          Width = 62
          Height = 16
          Caption = 'Empresa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 484
          Top = 13
          Width = 70
          Height = 16
          Caption = 'CNPJ/CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 554
          Top = 13
          Width = 63
          Height = 16
          DataField = 'CNPJCPF'
          DataSource = dsReceber
        end
        object RLLabel5: TRLLabel
          Left = 401
          Top = 44
          Width = 31
          Height = 16
          Caption = 'Tel.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 430
          Top = 44
          Width = 72
          Height = 16
          DataField = 'TELEFONE'
          DataSource = dsReceber
        end
        object RLLabel6: TRLLabel
          Left = 4
          Top = 72
          Width = 80
          Height = 16
          Caption = 'DESCRI'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 348
          Top = 71
          Width = 98
          Height = 16
          Caption = 'DAT. EMISS'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 467
          Top = 71
          Width = 123
          Height = 16
          Caption = 'DAT. VENCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 638
          Top = 72
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
        object RLDraw4: TRLDraw
          Left = 2
          Top = 0
          Width = 716
          Height = 3
          DrawKind = dkLine
        end
        object RLDBText8: TRLDBText
          Left = 71
          Top = 29
          Width = 385
          Height = 16
          AutoSize = False
          DataField = 'ENDERECO'
          DataSource = dsReceber
        end
        object RLLabel11: TRLLabel
          Left = 3
          Top = 29
          Width = 67
          Height = 16
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 467
          Top = 29
          Width = 46
          Height = 16
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 513
          Top = 29
          Width = 53
          Height = 16
          DataField = 'BAIRRO'
          DataSource = dsReceber
        end
        object RLLabel13: TRLLabel
          Left = 3
          Top = 44
          Width = 51
          Height = 16
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 56
          Top = 44
          Width = 257
          Height = 16
          AutoSize = False
          DataField = 'CIDADE'
          DataSource = dsReceber
        end
        object RLDBText11: TRLDBText
          Left = 599
          Top = 44
          Width = 28
          Height = 16
          DataField = 'FAX'
          DataSource = dsReceber
        end
        object RLLabel14: TRLLabel
          Left = 569
          Top = 44
          Width = 30
          Height = 16
          Caption = 'Fax:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 2
          Top = 65
          Width = 716
          Height = 4
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLLabel15: TRLLabel
          Left = 3
          Top = 13
          Width = 37
          Height = 16
          Caption = 'Cod.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 39
          Top = 13
          Width = 52
          Height = 16
          AutoSize = False
          DataField = 'IDCLIENTE'
          DataSource = dsReceber
        end
        object RLDBText13: TRLDBText
          Left = 364
          Top = 44
          Width = 26
          Height = 16
          AutoSize = False
          DataField = 'ESTADO'
          DataSource = dsReceber
        end
        object RLLabel16: TRLLabel
          Left = 314
          Top = 44
          Width = 50
          Height = 16
          Caption = 'Estado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 92
        Width = 718
        Height = 23
        object RLDBText2: TRLDBText
          Left = 5
          Top = 4
          Width = 348
          Height = 16
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = dsReceber
        end
        object RLDBText3: TRLDBText
          Left = 362
          Top = 4
          Width = 105
          Height = 16
          DataField = 'DATA_EMISSAO'
          DataSource = dsReceber
        end
        object RLDBText4: TRLDBText
          Left = 479
          Top = 4
          Width = 130
          Height = 16
          DataField = 'DATA_VENCIMENTO'
          DataSource = dsReceber
        end
        object RLDBText5: TRLDBText
          Left = 646
          Top = 4
          Width = 48
          Height = 16
          Alignment = taRightJustify
          DataField = 'SALDO'
          DataSource = dsReceber
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 115
        Width = 718
        Height = 27
        BandType = btSummary
        object RLDraw3: TRLDraw
          Left = 2
          Top = 3
          Width = 716
          Height = 4
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBResult1: TRLDBResult
          Left = 610
          Top = 8
          Width = 87
          Height = 16
          Alignment = taRightJustify
          DataField = 'SALDO'
          DataSource = dsReceber
          DisplayMask = '#0.00'
          Info = riSum
        end
        object RLLabel10: TRLLabel
          Left = 497
          Top = 8
          Width = 105
          Height = 16
          Caption = 'Total em aberto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 39
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 6
        Top = 4
        Width = 427
        Height = 29
        Caption = 'LISTAGEM DE CONTAS A RECEBER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 496
        Top = 3
        Width = 60
        Height = 16
        Info = itFullDate
      end
    end
    object RLLabel2: TRLLabel
      Left = 626
      Top = 1071
      Width = 48
      Height = 16
      Caption = 'P'#225'gina:'
    end
    object RLSystemInfo2: TRLSystemInfo
      Left = 677
      Top = 1071
      Width = 87
      Height = 16
      Info = itPageNumber
    end
    object RLTotalGeral: TRLLabel
      Left = 40
      Top = 1066
      Width = 76
      Height = 16
      Caption = 'Total Geral:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object RLTotal: TRLLabel
      Left = 118
      Top = 1067
      Width = 36
      Height = 16
      Caption = '00,00'
    end
  end
  object DateEdit1: TDateEdit
    Left = 32
    Top = 87
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object DateEdit2: TDateEdit
    Left = 283
    Top = 87
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object RxDBLookupomboEmpresa: TRxDBLookupCombo
    Left = 32
    Top = 40
    Width = 377
    Height = 21
    DropDownCount = 8
    DisplayEmpty = '[TODOS]'
    FieldsDelimiter = '|'
    LookupField = 'IDCLIENTE'
    LookupDisplay = 'IDCLIENTE;NOME'
    LookupDisplayIndex = 1
    LookupSource = dscliente
    TabOrder = 3
  end
  object Button1: TButton
    Left = 245
    Top = 170
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object RLReport2: TRLReport
    Left = 567
    Top = 395
    Width = 794
    Height = 1123
    DataSource = dsReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.BottomMargin = 15.000000000000000000
    object RLBand8: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 39
      BandType = btTitle
      object RLLabel31: TRLLabel
        Left = 6
        Top = 4
        Width = 427
        Height = 29
        Caption = 'LISTAGEM DE CONTAS A RECEBER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 496
        Top = 3
        Width = 60
        Height = 16
        Info = itFullDate
      end
    end
    object RLLabel32: TRLLabel
      Left = 626
      Top = 1071
      Width = 48
      Height = 16
      Caption = 'P'#225'gina:'
    end
    object RLSystemInfo4: TRLSystemInfo
      Left = 677
      Top = 1071
      Width = 11
      Height = 16
      Info = itPageNumber
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 77
      Width = 718
      Height = 67
      object RLDBText14: TRLDBText
        Left = 67
        Top = 13
        Width = 414
        Height = 16
        AutoSize = False
        DataField = 'NOME'
        DataSource = dsReceber
      end
      object RLLabel17: TRLLabel
        Left = 0
        Top = 13
        Width = 62
        Height = 16
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 484
        Top = 13
        Width = 70
        Height = 16
        Caption = 'CNPJ/CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 554
        Top = 13
        Width = 63
        Height = 16
        DataField = 'CNPJCPF'
        DataSource = dsReceber
      end
      object RLLabel19: TRLLabel
        Left = 401
        Top = 44
        Width = 31
        Height = 16
        Caption = 'Tel.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLDBText16: TRLDBText
        Left = 430
        Top = 44
        Width = 72
        Height = 16
        DataField = 'TELEFONE'
        DataSource = dsReceber
      end
      object RLDBText17: TRLDBText
        Left = 71
        Top = 29
        Width = 385
        Height = 16
        AutoSize = False
        DataField = 'ENDERECO'
        DataSource = dsReceber
      end
      object RLLabel24: TRLLabel
        Left = 3
        Top = 29
        Width = 67
        Height = 16
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 467
        Top = 29
        Width = 46
        Height = 16
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLDBText18: TRLDBText
        Left = 513
        Top = 29
        Width = 53
        Height = 16
        DataField = 'BAIRRO'
        DataSource = dsReceber
      end
      object RLLabel26: TRLLabel
        Left = 3
        Top = 44
        Width = 51
        Height = 16
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLDBText19: TRLDBText
        Left = 56
        Top = 44
        Width = 257
        Height = 16
        AutoSize = False
        DataField = 'CIDADE'
        DataSource = dsReceber
      end
      object RLDBText20: TRLDBText
        Left = 599
        Top = 44
        Width = 28
        Height = 16
        DataField = 'FAX'
        DataSource = dsReceber
      end
      object RLLabel27: TRLLabel
        Left = 569
        Top = 44
        Width = 30
        Height = 16
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLDBText22: TRLDBText
        Left = 364
        Top = 44
        Width = 26
        Height = 16
        AutoSize = False
        DataField = 'ESTADO'
        DataSource = dsReceber
      end
      object RLLabel29: TRLLabel
        Left = 314
        Top = 44
        Width = 50
        Height = 16
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLDraw5: TRLDraw
        Left = 2
        Top = 63
        Width = 716
        Height = 3
        DrawKind = dkLine
        Pen.Style = psDot
      end
    end
  end
  object RadioButton1: TRadioButton
    Left = 104
    Top = 144
    Width = 113
    Height = 17
    Caption = 'An'#225'litico '
    TabOrder = 6
  end
  object RadioButton2: TRadioButton
    Left = 232
    Top = 144
    Width = 113
    Height = 17
    Caption = 'Sint'#233'tico'
    Checked = True
    TabOrder = 7
    TabStop = True
  end
  object cdsReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReceber'
    OnCalcFields = cdsReceberCalcFields
    Left = 44
    Top = 152
    object cdsReceberID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsReceberCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
      Required = True
    end
    object cdsReceberDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cdsReceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object cdsReceberDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object cdsReceberDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cdsReceberDEBITO: TFMTBCDField
      FieldName = 'DEBITO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsReceberCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsReceberATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsReceberIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object cdsReceberNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsReceberRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 60
    end
    object cdsReceberRAMOATIVIDADE: TStringField
      FieldName = 'RAMOATIVIDADE'
    end
    object cdsReceberCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object cdsReceberCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object cdsReceberRGIE: TStringField
      FieldName = 'RGIE'
      Size = 15
    end
    object cdsReceberDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object cdsReceberENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsReceberBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsReceberCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object cdsReceberCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsReceberESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsReceberTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cdsReceberFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object cdsReceberCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object cdsReceberEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cdsReceberSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object cdsReceberOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object cdsReceberATIVO_1: TStringField
      FieldName = 'ATIVO_1'
      FixedChar = True
      Size = 1
    end
    object cdsRecebersaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldo'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Calculated = True
    end
  end
  object dspReceber: TDataSetProvider
    DataSet = sqlReceber
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 76
    Top = 152
  end
  object dsReceber: TDataSource
    DataSet = cdsReceber
    Left = 112
    Top = 152
  end
  object sqlReceber: TSQLDataSet
    CommandText = 
      'select contasreceber.id, contasreceber.cliente_idcliente, contas' +
      'receber.data_emissao, contasreceber.data_vencimento, contasreceb' +
      'er.data_baixa, contasreceber.descricao, contasreceber.debito, co' +
      'ntasreceber.credito, contasreceber.ativo, cliente.idcliente, cli' +
      'ente.nome, cliente.razaosocial, cliente.ramoatividade, cliente.c' +
      'ontato, cliente.cnpjcpf, cliente.rgie, cliente.datacadastro, cli' +
      'ente.endereco, cliente.bairro, cliente.cidade, cliente.cep, clie' +
      'nte.estado, cliente.telefone, cliente.fax, cliente.celular, clie' +
      'nte.email, cliente.site, cliente.obs, cliente.ativo'#13#10'from client' +
      'e'#13#10'   inner join contasreceber on (cliente.idcliente = contasrec' +
      'eber.cliente_idcliente)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 4
    Top = 152
    object sqlReceberID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlReceberCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
      Required = True
    end
    object sqlReceberDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object sqlReceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object sqlReceberDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object sqlReceberDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object sqlReceberDEBITO: TFMTBCDField
      FieldName = 'DEBITO'
      Precision = 15
      Size = 2
    end
    object sqlReceberCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      Precision = 15
      Size = 2
    end
    object sqlReceberATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object sqlReceberIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object sqlReceberNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlReceberRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 60
    end
    object sqlReceberRAMOATIVIDADE: TStringField
      FieldName = 'RAMOATIVIDADE'
    end
    object sqlReceberCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object sqlReceberCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object sqlReceberRGIE: TStringField
      FieldName = 'RGIE'
      Size = 15
    end
    object sqlReceberDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object sqlReceberENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sqlReceberBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sqlReceberCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object sqlReceberCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlReceberESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqlReceberTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object sqlReceberFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object sqlReceberCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object sqlReceberEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object sqlReceberSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object sqlReceberOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object sqlReceberATIVO_1: TStringField
      FieldName = 'ATIVO_1'
      FixedChar = True
      Size = 1
    end
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 168
    Top = 16
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 212
    Top = 16
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.20 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 252
    Top = 16
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 288
    Top = 16
  end
  object dscliente: TDataSource
    DataSet = cdscliente
    Left = 408
    Top = 168
  end
  object cdscliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcliente'
    Left = 408
    Top = 64
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
      EditMask = '00\.000\-000;1;_'
      Size = 10
    end
    object cdsclienteESTADO: TStringField
      Tag = 1
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsclienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 13
    end
    object cdsclienteFAX: TStringField
      FieldName = 'FAX'
      EditMask = '!\(99\)0000-0000;1;_'
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
    Left = 408
    Top = 16
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
    Left = 408
    Top = 112
  end
end
