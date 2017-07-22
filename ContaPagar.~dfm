object fmContaPagar: TfmContaPagar
  Left = 201
  Top = 172
  Width = 828
  Height = 511
  Caption = 'Contas a Pagar'
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 812
    Height = 295
    Align = alClient
    DataSource = dspagar
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'DESCRI'#199#195'O'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 354
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_EMISSAO'
        Title.Caption = 'DATA DE EMISS'#195'O'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Title.Caption = 'DATA DE VENCIMENTO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEBITO'
        Title.Caption = 'D'#201'BITO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREDITO'
        Title.Caption = 'CR'#201'DITO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 67
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 428
    Width = 812
    Height = 45
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 247
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 413
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Pagar'
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 330
      Top = 10
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 496
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = Button5Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 344
    Width = 812
    Height = 84
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label4: TLabel
      Left = 634
      Top = 16
      Width = 51
      Height = 13
      Caption = 'CR'#201'DITO:'
    end
    object Label5: TLabel
      Left = 642
      Top = 40
      Width = 43
      Height = 13
      Caption = 'D'#201'BITO:'
    end
    object Label6: TLabel
      Left = 646
      Top = 64
      Width = 39
      Height = 13
      Caption = 'SALDO:'
    end
    object ceSaldo: TCurrencyEdit
      Left = 688
      Top = 56
      Width = 129
      Height = 21
      AutoSize = False
      Color = 16776176
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object ceReceber: TCurrencyEdit
      Left = 688
      Top = 32
      Width = 129
      Height = 21
      AutoSize = False
      Color = clYellow
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object ceDebito: TCurrencyEdit
      Left = 688
      Top = 8
      Width = 129
      Height = 21
      AutoSize = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 812
    Height = 49
    Align = alTop
    TabOrder = 3
    object Label3: TLabel
      Left = 20
      Top = 16
      Width = 42
      Height = 13
      Caption = 'C'#211'DIGO'
    end
    object SpeedButton1: TSpeedButton
      Left = 192
      Top = 7
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
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 253
      Top = 16
      Width = 32
      Height = 13
      Caption = 'NOME'
    end
    object SpeedButton3: TSpeedButton
      Left = 773
      Top = 7
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
      OnClick = SpeedButton3Click
    end
    object edtCodigo: TEdit
      Left = 64
      Top = 8
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = edtCodigoKeyPress
    end
    object edtNome: TEdit
      Left = 287
      Top = 8
      Width = 481
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = edtNomeKeyPress
    end
  end
  object sqlfornecedor: TSQLDataSet
    CommandText = 'select *  from FORNECEDORES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 72
    Top = 160
    object sqlfornecedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlfornecedorNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 80
    end
    object sqlfornecedorCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sqlfornecedorIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object sqlfornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sqlfornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sqlfornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlfornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object sqlfornecedorESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqlfornecedorTELEFFONE: TStringField
      FieldName = 'TELEFFONE'
      Size = 13
    end
    object sqlfornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object sqlfornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object sqlfornecedorSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object sqlfornecedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object sqlfornecedorOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 100
    end
  end
  object cdsfornecedor: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dspfornecedor'
    Left = 72
    Top = 192
    object cdsfornecedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsfornecedorNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 80
    end
    object cdsfornecedorCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsfornecedorIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object cdsfornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsfornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsfornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsfornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object cdsfornecedorESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsfornecedorTELEFFONE: TStringField
      FieldName = 'TELEFFONE'
      Size = 13
    end
    object cdsfornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object cdsfornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsfornecedorSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object cdsfornecedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object cdsfornecedorOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 100
    end
  end
  object dspfornecedor: TDataSetProvider
    DataSet = sqlfornecedor
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 72
    Top = 224
  end
  object dsfornecedor: TDataSource
    DataSet = cdsfornecedor
    Left = 72
    Top = 264
  end
  object dspagar: TDataSource
    DataSet = cdspagar
    Left = 16
    Top = 256
  end
  object cdspagar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'fornecedor'
        ParamType = ptInput
      end>
    ProviderName = 'dsppagar'
    OnCalcFields = cdspagarCalcFields
    Left = 16
    Top = 184
    object cdspagarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdspagarFORNECEDOR_IDFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR_IDFORNECEDOR'
      Required = True
    end
    object cdspagarDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cdspagarDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object cdspagarDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object cdspagarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 80
    end
    object cdspagarDEBITO: TFMTBCDField
      FieldName = 'DEBITO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdspagarCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdspagarSALDO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SALDO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Calculated = True
    end
    object cdspagarATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsppagar: TDataSetProvider
    DataSet = sqlpagar
    Left = 16
    Top = 224
  end
  object sqlpagar: TSQLDataSet
    CommandText = 
      'select * from  CONTASPAGAR where (CONTASPAGAR.ATIVO='#39'1'#39') and (CO' +
      'NTASPAGAR.FORNECEDOR_IDFORNECEDOR=:fornecedor)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'fornecedor'
        ParamType = ptInput
      end>
    SQLConnection = dmconect.SQLConnection1
    Left = 16
    Top = 152
    object sqlpagarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlpagarFORNECEDOR_IDFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR_IDFORNECEDOR'
      Required = True
    end
    object sqlpagarDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object sqlpagarDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object sqlpagarDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object sqlpagarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 80
    end
    object sqlpagarDEBITO: TFMTBCDField
      FieldName = 'DEBITO'
      Precision = 15
      Size = 2
    end
    object sqlpagarCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      Precision = 15
      Size = 2
    end
    object sqlpagarATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
end
