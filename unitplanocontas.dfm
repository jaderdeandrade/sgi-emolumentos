object fmPlanoContas: TfmPlanoContas
  Left = 365
  Top = 256
  BorderStyle = bsSingle
  Caption = 'Plano de Contas'
  ClientHeight = 571
  ClientWidth = 855
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 855
    Height = 35
    Align = alTop
    TabOrder = 0
    object btimprimir: TSpeedButton
      Left = 723
      Top = 5
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
    object Label1: TLabel
      Left = 808
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Dica...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnClick = Label1Click
    end
    object btGravar: TButton
      Left = 17
      Top = 5
      Width = 71
      Height = 25
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = btGravarClick
    end
    object btCancelar: TButton
      Left = 97
      Top = 5
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 1
      OnClick = btCancelarClick
    end
    object Button4: TButton
      Left = 186
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = Button4Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 35
    Width = 855
    Height = 536
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'PLANO DE CONTAS'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 847
        Height = 224
        Align = alClient
        DataSource = dsPlanoConta
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 224
        Width = 847
        Height = 284
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 847
          Height = 41
          Align = alTop
          TabOrder = 0
          object Button1: TButton
            Left = 17
            Top = 8
            Width = 71
            Height = 25
            Caption = 'I&ncluir'
            TabOrder = 0
            OnClick = Button1Click
          end
          object Button3: TButton
            Left = 97
            Top = 8
            Width = 75
            Height = 25
            Caption = '&Ex&cluir'
            TabOrder = 1
            OnClick = Button3Click
          end
        end
        object DBGrid2: TDBGrid
          Left = 0
          Top = 41
          Width = 847
          Height = 243
          Align = alClient
          DataSource = dsContaPLano
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid2DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTA'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
    end
  end
  object RLReport1: TRLReport
    Left = 160
    Top = 5000
    Width = 794
    Height = 1123
    DataSource = dsPlanoConta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    AfterPrint = RLReport1AfterPrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 43
      BandType = btTitle
      object RLDraw1: TRLDraw
        Left = 0
        Top = 35
        Width = 721
        Height = 5
        DrawKind = dkLine
      end
      object RLLabel1: TRLLabel
        Left = 176
        Top = 8
        Width = 412
        Height = 29
        Caption = 'LISTAGEM DO PLANO DE CONTAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 600
        Top = 21
        Width = 39
        Height = 16
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 81
      Width = 718
      Height = 32
      object RLLabel2: TRLLabel
        Left = 8
        Top = 8
        Width = 95
        Height = 16
        Caption = 'NOME CONTA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 528
        Top = 8
        Width = 39
        Height = 16
        Caption = 'TIPO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 106
        Top = 8
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = dsPlanoConta
      end
      object RLDBText2: TRLDBText
        Left = 568
        Top = 8
        Width = 33
        Height = 16
        DataField = 'TIPO'
        DataSource = dsPlanoConta
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 113
      Width = 718
      Height = 43
      DataSource = dsContaPLano
      object RLBand3: TRLBand
        Left = 0
        Top = 17
        Width = 718
        Height = 25
        object RLDBText3: TRLDBText
          Left = 56
          Top = 3
          Width = 49
          Height = 16
          DataField = 'CONTA'
          DataSource = dsContaPLano
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 224
          Top = 3
          Width = 42
          Height = 16
          DataField = 'NOME'
          DataSource = dsContaPLano
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 17
        BandType = btHeader
        object RLLabel4: TRLLabel
          Left = 36
          Top = 1
          Width = 79
          Height = 16
          Caption = 'N'#186' da Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 220
          Top = 1
          Width = 66
          Height = 16
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object dsPlanoConta: TDataSource
    DataSet = cdsPlanoConta
    Left = 720
    Top = 240
  end
  object cdsPlanoConta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlanoConta'
    Left = 720
    Top = 128
    object cdsPlanoContaIDPLANOCONTAS: TIntegerField
      FieldName = 'IDPLANOCONTAS'
    end
    object cdsPlanoContaNOME: TStringField
      Tag = 1
      FieldName = 'NOME'
      Size = 50
    end
    object cdsPlanoContaTIPO: TStringField
      Tag = 1
      FieldName = 'TIPO'
      Size = 15
    end
  end
  object dspPlanoConta: TDataSetProvider
    DataSet = sqlPlanoConta
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 720
    Top = 184
  end
  object sqlPlanoConta: TSQLDataSet
    CommandText = 'select * from PLANOCONTAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 720
    Top = 72
    object sqlPlanoContaIDPLANOCONTAS: TIntegerField
      FieldName = 'IDPLANOCONTAS'
    end
    object sqlPlanoContaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sqlPlanoContaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 15
    end
  end
  object dsContaPLano: TDataSource
    DataSet = cdsContaPlano
    Left = 720
    Top = 416
  end
  object cdsContaPlano: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDPLACOCONTA'
    MasterFields = 'IDPLANOCONTAS'
    MasterSource = dsPlanoConta
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspContaPlano'
    Left = 720
    Top = 336
    object cdsContaPlanoIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
      Required = True
    end
    object cdsContaPlanoIDPLACOCONTA: TIntegerField
      FieldName = 'IDPLACOCONTA'
      Required = True
    end
    object cdsContaPlanoNOME: TStringField
      Tag = 1
      FieldName = 'NOME'
      Size = 50
    end
    object cdsContaPlanoCONTA: TStringField
      Tag = 1
      FieldName = 'CONTA'
      Size = 10
    end
  end
  object dspContaPlano: TDataSetProvider
    DataSet = sqlContaPlano
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 720
    Top = 376
  end
  object sqlContaPlano: TSQLDataSet
    CommandText = 'select * from CONTAPLANO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPLACOCONTA'
        ParamType = ptInput
        Value = 8
      end>
    SQLConnection = dmconect.SQLConnection1
    Left = 720
    Top = 288
    object sqlContaPlanoIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
      Required = True
    end
    object sqlContaPlanoIDPLACOCONTA: TIntegerField
      FieldName = 'IDPLACOCONTA'
      Required = True
    end
    object sqlContaPlanoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sqlContaPlanoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 384
    Top = 8
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 440
    Top = 8
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 464
    Top = 8
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.20 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 512
    Top = 8
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 632
  end
  object PopupMenu1: TPopupMenu
    Left = 412
    Top = 164
    object Imprimireste1: TMenuItem
      Caption = 'Imprimir somente este Plano de Contas'
      OnClick = Imprimireste1Click
    end
  end
  object spdeleteconta: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDCONTA'
        ParamType = ptInput
      end>
    SQLConnection = dmconect.SQLConnection1
    StoredProcName = 'DELETACONTAPLANO'
    Left = 796
    Top = 75
  end
end
