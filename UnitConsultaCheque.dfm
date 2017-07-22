object fmConsultaCheque: TfmConsultaCheque
  Left = 320
  Top = 178
  BorderStyle = bsDialog
  Caption = 'Consultar Cheque'
  ClientHeight = 381
  ClientWidth = 799
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
  object Panel1: TPanel
    Left = 0
    Top = 337
    Width = 799
    Height = 44
    Align = alBottom
    TabOrder = 0
    object Button2: TButton
      Left = 404
      Top = 11
      Width = 75
      Height = 25
      Caption = '&Confirma'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 319
      Top = 11
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 799
    Height = 280
    Align = alClient
    DataSource = dsCheque
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
        FieldName = 'ID'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 265
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 156
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIA'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MES'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANO'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Width = 125
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 799
    Height = 57
    Align = alTop
    TabOrder = 2
    object btProcura: TSpeedButton
      Left = 574
      Top = 23
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
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 164
      Height = 13
      Caption = 'Pesquisar por nome do favorecido:'
    end
    object edtpesquisa: TEdit
      Left = 8
      Top = 24
      Width = 561
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = edtpesquisaKeyPress
    end
  end
  object sqlCheque: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from CHEQUEPRINT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 600
    Top = 56
    object sqlChequeID: TIntegerField
      FieldName = 'ID'
    end
    object sqlChequeVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sqlChequeEXTENSO: TStringField
      FieldName = 'EXTENSO'
      Size = 100
    end
    object sqlChequeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sqlChequeDIA: TStringField
      FieldName = 'DIA'
      Size = 2
    end
    object sqlChequeANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object sqlChequeNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object sqlChequeMES: TStringField
      FieldName = 'MES'
      Size = 8
    end
    object sqlChequeBANCO: TStringField
      FieldName = 'BANCO'
      Size = 60
    end
    object sqlChequeUTILIZADO: TStringField
      FieldName = 'UTILIZADO'
      Size = 80
    end
    object sqlChequeCHEQUENUM: TStringField
      FieldName = 'CHEQUENUM'
      Size = 15
    end
    object sqlChequeVISTO: TStringField
      FieldName = 'VISTO'
      Size = 80
    end
    object sqlChequeDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
  end
  object cdsCheque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCheque'
    Left = 600
    Top = 104
    object cdsChequeID: TIntegerField
      FieldName = 'ID'
    end
    object cdsChequeVALOR: TFMTBCDField
      Tag = 1
      FieldName = 'VALOR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsChequeEXTENSO: TStringField
      Tag = 1
      FieldName = 'EXTENSO'
      Size = 100
    end
    object cdsChequeCIDADE: TStringField
      Tag = 1
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsChequeDIA: TStringField
      Tag = 1
      FieldName = 'DIA'
      Size = 2
    end
    object cdsChequeANO: TStringField
      Tag = 1
      FieldName = 'ANO'
      Size = 4
    end
    object cdsChequeNOME: TStringField
      Tag = 1
      FieldName = 'NOME'
      Size = 80
    end
    object cdsChequeMES: TStringField
      Tag = 1
      FieldName = 'MES'
      Size = 8
    end
    object cdsChequeBANCO: TStringField
      FieldName = 'BANCO'
      Size = 60
    end
    object cdsChequeUTILIZADO: TStringField
      FieldName = 'UTILIZADO'
      Size = 80
    end
    object cdsChequeCHEQUENUM: TStringField
      FieldName = 'CHEQUENUM'
      Size = 15
    end
    object cdsChequeVISTO: TStringField
      FieldName = 'VISTO'
      Size = 80
    end
    object cdsChequeDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
  end
  object dspCheque: TDataSetProvider
    DataSet = sqlCheque
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 600
    Top = 160
  end
  object dsCheque: TDataSource
    DataSet = cdsCheque
    Left = 600
    Top = 216
  end
end
