object fmConsultaProfessor: TfmConsultaProfessor
  Left = 353
  Top = 202
  BorderStyle = bsSingle
  Caption = 'Pesquisa Professores'
  ClientHeight = 412
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 41
    Align = alTop
    TabOrder = 0
    object btProcura: TSpeedButton
      Left = 383
      Top = 8
      Width = 23
      Height = 22
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000000000000101
        0100020202000303030004040400050505000606060007070700080808000909
        09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
        1100121212001313130014141400151515001616160017171700181818001919
        19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
        2100222222002323230024242400252525002626260027272700282828002929
        29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
        3100323232003333330034343400353535003636360037373700383838003939
        39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
        4100424242004343430044444400454545004646460047474700484848004949
        49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050004D51
        55004B5259004A545C004A555F004A5662004B5865004A586600495867004958
        6800485869004858690048596A0048596A0047596C00455A6F00475A6D00495A
        6B004A5B6C004B5C6C004C5D6D004E5E6E00515F6F0053616F00576370005B66
        71005E67700061687000656A6F00696C6E006E6E6E006F6F6F00707070007471
        7000777271007B7371007E74720083757200887571008D75700091746F009474
        6E0096746D0099736C009A736C009B736C009C726C009D736C009F746C009F74
        6C00A0756D00A1756D00A2776E00A3786F00A47A7100A67C7200A67D7200A87E
        7300AA807400AB807600AD817600AF827700B0827700B2837800B2847800B284
        7800B4867900B5887A00B58A7A00B68D7B00B78E7B00B9907B00BB917A00BE92
        7800C1927600C4937400C9947200D0987000D59C7000DBA17100DFA57200E3A8
        7200E6AC7400E7AE7700E8B07800E7B17A00E7B27B00E6B37D00E6B47E00E7B6
        8100E6B98600E5BC8A00E6BF8D00E6C19000E8C39200EAC59200ECC89300F0CB
        9300F2CE9500F4D09500F5D19600F5D29900F4D49B00F4D69F00F4D9A300F5DB
        A600F4DDA800F6E1AF00F6E5B700F8EDC300FAF4CB00FCF8D000FDFBD400FEFC
        DD00FEFDDF00FCFCE000F9FBDE00F5F9DF00F1F6E000EBF1E000E7EEE000E7EC
        E000E7E9E200E9E6E400ECE2E700EFDCE800F3C1EC00F894F100FE60F600FE2F
        FB00FE0CFE00FE01FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00F508FE00E912FE00DC1DFD00CE28FC00B938FB00A747
        FA009554F8008560F600776BF4006677F3005A80F3005187F200498CF2004490
        EF003E91EE003692EF003191F1002E90F0002A8DEE002C8FEF00DF558BDFDFDF
        DFDFDFDFDFDFDFDFDFDFF7FE5F8FDFDFDFDFDFDFDFDFDFDFDFDFFCFBFE5F8FDF
        DFDFDFDFDFDFDFDFDFDFDFFBFBFE5F8FDFDFDFDFDFDFDFDFDFDFDFDFFBFBFE5F
        87DFDFDFDFDFDFDFDFDFDFDFDFFBFCFE52DF7E93938ADFDFDFDFDFDFDFDFFBCE
        928ABBC1C1BFAB80DFDFDFDFDFDFDFDF98BBC0C0C0C2C2CA7BDFDFDFDFDFDFDF
        91B4BEC0C1C2C2C297DFDFDFDFDFDF91B5A4BDC0C1C2C2C2BC87DFDFDFDFDF94
        B59FB5C0C0C1C1C0BD89DFDFDFDFDF8AB9A4A6B9C0C0C0C0AF83DFDFDFDFDFDF
        ABC1B8A6B1BBBDBF85DFDFDFDFDFDFDF80CAC2B1A4B1B99A84DFDFDFDFDFDFDF
        DF7B98B8B7AD8484DFDFDFDFDFDFDFDFDFDFDF898A85DFDFDFDF}
      OnClick = btProcuraClick
    end
    object Button1: TButton
      Left = 432
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 608
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 8
      Top = 8
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit1KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 754
    Height = 371
    Align = alClient
    DataSource = dsprofessor
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
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
        Title.Caption = 'NOME DO PROFESSOR'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 663
        Visible = True
      end>
  end
  object dspprofessor: TDataSetProvider
    DataSet = sqlprofessor
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 104
    Top = 208
  end
  object cdsprofessor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspprofessor'
    Left = 104
    Top = 160
    object cdsprofessorIDPROFESSOR: TIntegerField
      FieldName = 'IDPROFESSOR'
      Required = True
    end
    object cdsprofessorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsprofessorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsprofessorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsprofessorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsprofessorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsprofessorESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsprofessorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cdsprofessorCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object cdsprofessorESPECIFICACAO: TStringField
      FieldName = 'ESPECIFICACAO'
      Size = 80
    end
  end
  object dsprofessor: TDataSource
    DataSet = cdsprofessor
    Left = 104
    Top = 256
  end
  object sqlprofessor: TSQLDataSet
    CommandText = 'select * from PROFESSOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 104
    Top = 112
    object sqlprofessorIDPROFESSOR: TIntegerField
      FieldName = 'IDPROFESSOR'
      Required = True
    end
    object sqlprofessorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlprofessorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sqlprofessorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object sqlprofessorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlprofessorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sqlprofessorESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object sqlprofessorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object sqlprofessorCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object sqlprofessorESPECIFICACAO: TStringField
      FieldName = 'ESPECIFICACAO'
      Size = 80
    end
  end
end
