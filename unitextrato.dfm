object fmExtrato: TfmExtrato
  Left = 411
  Top = 190
  BorderStyle = bsDialog
  Caption = 'Extrato'
  ClientHeight = 191
  ClientWidth = 383
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 14
  object Bevel1: TBevel
    Left = 167
    Top = 112
    Width = 50
    Height = 4
    Shape = bsTopLine
  end
  object Label3: TLabel
    Left = 220
    Top = 80
    Width = 47
    Height = 14
    Caption = 'Data Final'
  end
  object Label1: TLabel
    Left = 44
    Top = 32
    Width = 42
    Height = 14
    Caption = 'Empresa'
  end
  object Label2: TLabel
    Left = 46
    Top = 80
    Width = 51
    Height = 14
    Caption = 'Data Inicial'
  end
  object btimprimir: TSpeedButton
    Left = 106
    Top = 154
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
    Left = 40
    Top = 306
    Width = 1123
    Height = 794
    DataSource = dsReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 112
      BandType = btTitle
      object RLDraw1: TRLDraw
        Left = 2
        Top = 77
        Width = 1041
        Height = 9
        DrawKind = dkLine
      end
      object RLDraw2: TRLDraw
        Left = 2
        Top = 44
        Width = 1041
        Height = 9
        DrawKind = dkLine
      end
      object RLDraw3: TRLDraw
        Left = 2
        Top = 101
        Width = 1041
        Height = 9
        DrawKind = dkLine
      end
      object RLLabel1: TRLLabel
        Left = 8
        Top = 57
        Width = 62
        Height = 16
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlEmpresa: TRLLabel
        Left = 83
        Top = 57
        Width = 63
        Height = 16
      end
      object RLLabel4: TRLLabel
        Left = 742
        Top = 57
        Width = 34
        Height = 16
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlCNPJ: TRLLabel
        Left = 779
        Top = 57
        Width = 44
        Height = 16
      end
      object RLLabel7: TRLLabel
        Left = 8
        Top = 88
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
      object RLLabel9: TRLLabel
        Left = 413
        Top = 88
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
      object RLLabel10: TRLLabel
        Left = 533
        Top = 88
        Width = 119
        Height = 16
        Caption = 'DAT.VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 685
        Top = 88
        Width = 78
        Height = 16
        Caption = 'DAT. BAIXA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 800
        Top = 88
        Width = 52
        Height = 16
        Caption = 'DEBITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 880
        Top = 88
        Width = 61
        Height = 16
        Caption = 'CR'#201'DITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 992
        Top = 88
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
      object RLLabel2: TRLLabel
        Left = 9
        Top = 8
        Width = 252
        Height = 29
        Caption = 'EXTRATO DE CONTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 150
      Width = 1047
      Height = 22
      object RLDBText1: TRLDBText
        Left = 3
        Top = 4
        Width = 414
        Height = 16
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = dsReceber
      end
      object RLDBText2: TRLDBText
        Left = 424
        Top = 4
        Width = 129
        Height = 16
        AutoSize = False
        DataField = 'DATA_EMISSAO'
        DataSource = dsReceber
      end
      object RLDBText3: TRLDBText
        Left = 560
        Top = 4
        Width = 105
        Height = 16
        AutoSize = False
        DataField = 'DATA_VENCIMENTO'
        DataSource = dsReceber
      end
      object RLDBText4: TRLDBText
        Left = 688
        Top = 4
        Width = 82
        Height = 16
        DataField = 'DATA_BAIXA'
        DataSource = dsReceber
      end
      object RLDBText5: TRLDBText
        Left = 807
        Top = 4
        Width = 51
        Height = 16
        Alignment = taRightJustify
        DataField = 'DEBITO'
        DataSource = dsReceber
      end
      object RLDBText6: TRLDBText
        Left = 883
        Top = 4
        Width = 60
        Height = 16
        Alignment = taRightJustify
        DataField = 'CREDITO'
        DataSource = dsReceber
      end
      object RLDBText7: TRLDBText
        Left = 993
        Top = 4
        Width = 48
        Height = 16
        Alignment = taRightJustify
        DataField = 'SALDO'
        DataSource = dsReceber
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 172
      Width = 1047
      Height = 32
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 928
        Top = 8
        Width = 87
        Height = 16
        DataField = 'SALDO'
        DataSource = dsReceber
        Info = riSum
      end
      object RLDraw4: TRLDraw
        Left = 3
        Top = 0
        Width = 1041
        Height = 6
        DrawKind = dkLine
      end
      object RLLabel3: TRLLabel
        Left = 792
        Top = 8
        Width = 131
        Height = 16
        Caption = 'TOTAL EM ABERTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object DateEdit1: TDateEdit
    Left = 44
    Top = 96
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object DateEdit2: TDateEdit
    Left = 220
    Top = 96
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 48
    Top = 48
    Width = 291
    Height = 21
    DropDownCount = 8
    LookupField = 'NOME'
    LookupDisplay = 'NOME'
    LookupDisplayIndex = 1
    LookupSource = dscliente
    TabOrder = 3
  end
  object Button5: TButton
    Left = 217
    Top = 154
    Width = 75
    Height = 25
    Caption = '&Cancela'
    TabOrder = 4
    OnClick = Button5Click
  end
  object dsReceber: TDataSource
    DataSet = cdsReceber
    Left = 16
    Top = 144
  end
  object sqlcliente: TSQLDataSet
    CommandText = 'select * from CLIENTE order by CLIENTE.NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 56
    Top = 16
    object sqlclienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
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
  object cdscliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'spdcliente'
    Left = 56
    Top = 72
    object cdsclienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object cdsclienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsclienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 60
    end
    object cdsclienteRAMOATIVIDADE: TStringField
      FieldName = 'RAMOATIVIDADE'
    end
    object cdsclienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object cdsclienteCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object cdsclienteRGIE: TStringField
      FieldName = 'RGIE'
      Size = 15
    end
    object cdsclienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object cdsclienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsclienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsclienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object cdsclienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsclienteESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsclienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cdsclienteFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object cdsclienteCELULAR: TStringField
      FieldName = 'CELULAR'
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
  object spdcliente: TDataSetProvider
    DataSet = sqlcliente
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 56
    Top = 128
  end
  object dscliente: TDataSource
    DataSet = cdscliente
    Left = 56
    Top = 168
  end
  object cdsReceber: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idcliente'
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
      end>
    ProviderName = 'dspReceber'
    OnCalcFields = cdsReceberCalcFields
    Left = 16
    Top = 64
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
    object cdsReceberSALDO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SALDO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Calculated = True
    end
  end
  object dspReceber: TDataSetProvider
    DataSet = sqlreceber
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 16
    Top = 104
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 440
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 484
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.20 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 524
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 560
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 256
    Top = 8
  end
  object sqlreceber: TSQLDataSet
    CommandText = 
      'select contasreceber.id, contasreceber.cliente_idcliente, contas' +
      'receber.data_emissao, contasreceber.data_vencimento, contasreceb' +
      'er.data_baixa, contasreceber.descricao, contasreceber.debito, co' +
      'ntasreceber.credito, contasreceber.ativo'#13#10'from contasreceber'#13#10'wh' +
      'ere '#13#10'   ('#13#10'      (contasreceber.cliente_idcliente = :idcliente)' +
      #13#10'   and '#13#10'      (contasreceber.data_vencimento between :data1 a' +
      'nd :data2)'#13#10'   )'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idcliente'
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
      end>
    SQLConnection = dmconect.SQLConnection1
    Left = 12
    Top = 25
    object sqlreceberID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlreceberCLIENTE_IDCLIENTE: TIntegerField
      FieldName = 'CLIENTE_IDCLIENTE'
      Required = True
    end
    object sqlreceberDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object sqlreceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object sqlreceberDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object sqlreceberDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object sqlreceberDEBITO: TFMTBCDField
      FieldName = 'DEBITO'
      Precision = 15
      Size = 2
    end
    object sqlreceberCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      Precision = 15
      Size = 2
    end
    object sqlreceberATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
end
