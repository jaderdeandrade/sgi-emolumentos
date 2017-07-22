object fmFicha: TfmFicha
  Left = 62
  Top = 113
  Width = 1179
  Height = 644
  VertScrollBar.Position = 72
  Caption = 'Ficha'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 88
    Top = 96
    Width = 794
    Height = 1123
    DataSource = dsdp
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
      Height = 94
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel1: TRLLabel
        Left = 56
        Top = 16
        Width = 563
        Height = 24
        Caption = 'FICHA DE MATR'#205'CULA - ASSOCIADOS CLUBE DO SESI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 144
        Top = 64
        Width = 394
        Height = 24
        Caption = 'CAT "WANTUIL TEIXEIRA DE PAULA" '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 8
        Width = 718
        Height = 5
        DrawKind = dkLine
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 47
        Width = 718
        Height = 5
        DrawKind = dkLine
      end
      object RLLabel27: TRLLabel
        Left = 16
        Top = 51
        Width = 111
        Height = 16
        Caption = 'Nome da Unidade:'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 132
      Width = 718
      Height = 270
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 280
        Top = 8
        Width = 128
        Height = 18
        Caption = 'Dados do Titular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 272
        Top = 177
        Width = 157
        Height = 18
        Caption = 'Dados Profissionais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 6
        Top = 37
        Width = 44
        Height = 16
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 508
        Top = 37
        Width = 73
        Height = 16
        Caption = 'N'#186' da Cota:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 6
        Top = 60
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
      object RLLabel7: TRLLabel
        Left = 6
        Top = 83
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
      object RLLabel8: TRLLabel
        Left = 197
        Top = 83
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
      object RLLabel9: TRLLabel
        Left = 357
        Top = 83
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
      object RLLabel10: TRLLabel
        Left = 557
        Top = 83
        Width = 34
        Height = 16
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 6
        Top = 107
        Width = 62
        Height = 16
        Caption = 'Tel. Fixo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 198
        Top = 107
        Width = 79
        Height = 16
        Caption = 'Tel. Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 358
        Top = 107
        Width = 82
        Height = 16
        Caption = 'Estado Civil:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 527
        Top = 107
        Width = 108
        Height = 16
        Caption = 'Dat. Nascimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 6
        Top = 130
        Width = 72
        Height = 16
        Caption = 'Identidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 198
        Top = 130
        Width = 33
        Height = 16
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 358
        Top = 130
        Width = 132
        Height = 16
        Caption = 'Carteira Profissional:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 6
        Top = 154
        Width = 67
        Height = 16
        Caption = 'Categoria:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 8
        Top = 200
        Width = 124
        Height = 16
        Caption = 'Nome da Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 568
        Top = 200
        Width = 64
        Height = 16
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 8
        Top = 224
        Width = 68
        Height = 16
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 8
        Top = 248
        Width = 47
        Height = 16
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 232
        Top = 248
        Width = 53
        Height = 16
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 432
        Top = 248
        Width = 50
        Height = 16
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 568
        Top = 248
        Width = 34
        Height = 16
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 48
        Top = 37
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = dscliente
      end
      object RLDBText2: TRLDBText
        Left = 580
        Top = 37
        Width = 69
        Height = 16
        DataField = 'IDCLIENTE'
        DataSource = dscliente
      end
      object RLDBText3: TRLDBText
        Left = 73
        Top = 60
        Width = 70
        Height = 16
        DataSource = dscliente
      end
      object RLDBText4: TRLDBText
        Left = 49
        Top = 83
        Width = 53
        Height = 16
        DataField = 'BAIRRO'
        DataSource = dscliente
      end
      object RLDBText5: TRLDBText
        Left = 248
        Top = 83
        Width = 52
        Height = 16
        DataField = 'CIDADE'
        DataSource = dscliente
      end
      object RLDBText6: TRLDBText
        Left = 408
        Top = 83
        Width = 57
        Height = 16
        DataField = 'ESTADO'
        DataSource = dscliente
      end
      object RLDBText7: TRLDBText
        Left = 591
        Top = 83
        Width = 31
        Height = 16
        DataField = 'CEP'
        DataSource = dscliente
      end
      object RLDBText8: TRLDBText
        Left = 67
        Top = 107
        Width = 72
        Height = 16
        DataField = 'TELEFONE'
        DataSource = dscliente
      end
      object RLDBText9: TRLDBText
        Left = 277
        Top = 107
        Width = 63
        Height = 16
        DataField = 'CELULAR'
        DataSource = dscliente
      end
      object RLDBText10: TRLDBText
        Left = 440
        Top = 107
        Width = 88
        Height = 16
        DataField = 'ESTADOCIVIL'
        DataSource = dscliente
      end
      object RLDBText11: TRLDBText
        Left = 635
        Top = 107
        Width = 123
        Height = 16
        DataField = 'DATANASCIMENTO'
        DataSource = dscliente
      end
      object RLDBText12: TRLDBText
        Left = 80
        Top = 130
        Width = 80
        Height = 16
        DataField = 'IDENTIDADE'
        DataSource = dscliente
      end
      object RLDBText13: TRLDBText
        Left = 232
        Top = 130
        Width = 30
        Height = 16
        DataField = 'CPF'
        DataSource = dscliente
      end
      object RLDBText14: TRLDBText
        Left = 492
        Top = 130
        Width = 38
        Height = 16
        DataField = 'CTPS'
        DataSource = dscliente
      end
      object RLDBText15: TRLDBText
        Left = 72
        Top = 154
        Width = 130
        Height = 16
        DataField = 'CATEGORIATITULAR'
        DataSource = dscliente
      end
      object RLDBText16: TRLDBText
        Left = 132
        Top = 200
        Width = 108
        Height = 16
        DataField = 'NOMEEMPRESA'
        DataSource = dscliente
      end
      object RLDBText17: TRLDBText
        Left = 77
        Top = 224
        Width = 142
        Height = 16
        DataField = 'ENDERECOEMPRESA'
        DataSource = dscliente
      end
      object RLDBText18: TRLDBText
        Left = 56
        Top = 248
        Width = 118
        Height = 16
        DataField = 'BAIRROEMPRESA'
        DataSource = dscliente
      end
      object RLDBText19: TRLDBText
        Left = 284
        Top = 248
        Width = 117
        Height = 16
        DataField = 'CIDADEEMPRESA'
        DataSource = dscliente
      end
      object RLDBText20: TRLDBText
        Left = 480
        Top = 248
        Width = 122
        Height = 16
        DataField = 'ESTADOEMPRESA'
        DataSource = dscliente
      end
      object RLDBText21: TRLDBText
        Left = 603
        Top = 248
        Width = 96
        Height = 16
        DataField = 'CEPEMPRESA'
        DataSource = dscliente
      end
      object RLDBText22: TRLDBText
        Left = 633
        Top = 200
        Width = 77
        Height = 16
        DataSource = dscliente
      end
      object RLDraw3: TRLDraw
        Left = 1
        Top = 27
        Width = 715
        Height = 5
        DrawKind = dkLine
      end
      object RLDraw4: TRLDraw
        Left = 1
        Top = 171
        Width = 715
        Height = 5
        DrawKind = dkLine
      end
      object RLDraw5: TRLDraw
        Left = 2
        Top = 195
        Width = 715
        Height = 5
        DrawKind = dkLine
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 402
      Width = 718
      Height = 59
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDraw6: TRLDraw
        Left = 2
        Top = 26
        Width = 715
        Height = 5
        DrawKind = dkLine
      end
      object RLLabel28: TRLLabel
        Left = 160
        Top = 8
        Width = 488
        Height = 18
        Caption = 'Rela'#231#227'o de Dependentes Legais - esposo(a) e filhos at'#233' 18 anos '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLDraw7: TRLDraw
        Left = 1
        Top = 2
        Width = 715
        Height = 5
        DrawKind = dkLine
      end
      object RLDraw8: TRLDraw
        Left = 3
        Top = 52
        Width = 715
        Height = 5
        DrawKind = dkLine
      end
      object RLLabel29: TRLLabel
        Left = 16
        Top = 34
        Width = 87
        Height = 16
        Caption = 'Dependentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel30: TRLLabel
        Left = 408
        Top = 34
        Width = 131
        Height = 16
        Caption = 'Data de Nascimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 576
        Top = 34
        Width = 134
        Height = 16
        Caption = 'Grau de Parentesco '
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
      Top = 461
      Width = 718
      Height = 22
      object RLDBText23: TRLDBText
        Left = 14
        Top = 2
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = dsdp
      end
      object RLDBText24: TRLDBText
        Left = 410
        Top = 2
        Width = 123
        Height = 16
        DataField = 'DATANASCIMENTO'
        DataSource = dsdp
      end
      object RLDBText25: TRLDBText
        Left = 580
        Top = 2
        Width = 93
        Height = 16
        DataField = 'PARENTESCO'
        DataSource = dsdp
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 483
      Width = 718
      Height = 94
      BandType = btSummary
      object RLDraw9: TRLDraw
        Left = 8
        Top = 48
        Width = 256
        Height = 5
        DrawKind = dkLine
      end
      object RLDraw10: TRLDraw
        Left = 461
        Top = 48
        Width = 256
        Height = 5
        DrawKind = dkLine
      end
      object RLLabel32: TRLLabel
        Left = 56
        Top = 51
        Width = 123
        Height = 16
        Caption = 'Assinatura do Titular'
      end
      object RLLabel33: TRLLabel
        Left = 512
        Top = 51
        Width = 170
        Height = 16
        Caption = 'Assinatura/Carimbo do SESI'
      end
      object RLLabel34: TRLLabel
        Left = 24
        Top = 8
        Width = 63
        Height = 16
        Caption = 'Caratinga,'
      end
      object RLDBText26: TRLDBText
        Left = 90
        Top = 8
        Width = 77
        Height = 16
      end
    end
  end
  object dsdp: TDataSource
    DataSet = cdsdep
    Left = 16
    Top = 528
  end
  object dspdep: TDataSetProvider
    DataSet = sqldep
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 16
    Top = 496
  end
  object cdsdep: TClientDataSet
    Aggregates = <>
    PacketRecords = 20
    Params = <>
    ProviderName = 'dspdep'
    Left = 16
    Top = 464
    object cdsdepIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object cdsdepNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsdepENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsdepBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsdepCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object cdsdepCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsdepESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsdepESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
    end
    object cdsdepIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 15
    end
    object cdsdepCPF: TStringField
      FieldName = 'CPF'
    end
    object cdsdepCTPS: TStringField
      FieldName = 'CTPS'
      Size = 10
    end
    object cdsdepDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
    end
    object cdsdepCATEGORIATITULAR: TStringField
      FieldName = 'CATEGORIATITULAR'
    end
    object cdsdepTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cdsdepCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object cdsdepEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cdsdepNOMEEMPRESA: TStringField
      FieldName = 'NOMEEMPRESA'
      Size = 60
    end
    object cdsdepTELEFONEEMPRESA: TStringField
      FieldName = 'TELEFONEEMPRESA'
      Size = 13
    end
    object cdsdepENDERECOEMPRESA: TStringField
      FieldName = 'ENDERECOEMPRESA'
      Size = 80
    end
    object cdsdepBAIRROEMPRESA: TStringField
      FieldName = 'BAIRROEMPRESA'
      Size = 60
    end
    object cdsdepCIDADEEMPRESA: TStringField
      FieldName = 'CIDADEEMPRESA'
      Size = 60
    end
    object cdsdepCEPEMPRESA: TStringField
      FieldName = 'CEPEMPRESA'
      Size = 10
    end
    object cdsdepESTADOEMPRESA: TStringField
      FieldName = 'ESTADOEMPRESA'
      FixedChar = True
      Size = 2
    end
    object cdsdepDEPENDENTE: TStringField
      FieldName = 'DEPENDENTE'
      FixedChar = True
      Size = 1
    end
    object cdsdepCOTATITULAR: TIntegerField
      FieldName = 'COTATITULAR'
    end
    object cdsdepDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object cdsdepPARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 15
    end
    object cdsdepDATAATESTADO: TDateField
      FieldName = 'DATAATESTADO'
    end
    object cdsdepFOTO: TStringField
      FieldName = 'FOTO'
      Size = 70
    end
  end
  object sqldep: TSQLDataSet
    CommandText = 'select * from CLIENTE where DEPENDENTE='#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 16
    Top = 432
    object sqldepIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object sqldepNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqldepENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sqldepBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sqldepCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object sqldepCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqldepESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqldepESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
    end
    object sqldepIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 15
    end
    object sqldepCPF: TStringField
      FieldName = 'CPF'
    end
    object sqldepCTPS: TStringField
      FieldName = 'CTPS'
      Size = 10
    end
    object sqldepDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
    end
    object sqldepCATEGORIATITULAR: TStringField
      FieldName = 'CATEGORIATITULAR'
    end
    object sqldepTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object sqldepCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object sqldepEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object sqldepNOMEEMPRESA: TStringField
      FieldName = 'NOMEEMPRESA'
      Size = 60
    end
    object sqldepTELEFONEEMPRESA: TStringField
      FieldName = 'TELEFONEEMPRESA'
      Size = 13
    end
    object sqldepENDERECOEMPRESA: TStringField
      FieldName = 'ENDERECOEMPRESA'
      Size = 80
    end
    object sqldepBAIRROEMPRESA: TStringField
      FieldName = 'BAIRROEMPRESA'
      Size = 60
    end
    object sqldepCIDADEEMPRESA: TStringField
      FieldName = 'CIDADEEMPRESA'
      Size = 60
    end
    object sqldepCEPEMPRESA: TStringField
      FieldName = 'CEPEMPRESA'
      Size = 10
    end
    object sqldepESTADOEMPRESA: TStringField
      FieldName = 'ESTADOEMPRESA'
      FixedChar = True
      Size = 2
    end
    object sqldepDEPENDENTE: TStringField
      FieldName = 'DEPENDENTE'
      FixedChar = True
      Size = 1
    end
    object sqldepCOTATITULAR: TIntegerField
      FieldName = 'COTATITULAR'
    end
    object sqldepDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object sqldepPARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 15
    end
    object sqldepDATAATESTADO: TDateField
      FieldName = 'DATAATESTADO'
    end
    object sqldepFOTO: TStringField
      FieldName = 'FOTO'
      Size = 70
    end
  end
  object sqlcliente: TSQLDataSet
    CommandText = 'select * from CLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 16
    Top = 240
    object sqlclienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object sqlclienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
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
    object sqlclienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
    end
    object sqlclienteIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 15
    end
    object sqlclienteCPF: TStringField
      FieldName = 'CPF'
    end
    object sqlclienteCTPS: TStringField
      FieldName = 'CTPS'
      Size = 10
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
    object sqlclienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object sqlclienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object sqlclienteNOMEEMPRESA: TStringField
      FieldName = 'NOMEEMPRESA'
      Size = 60
    end
    object sqlclienteTELEFONEEMPRESA: TStringField
      FieldName = 'TELEFONEEMPRESA'
      Size = 13
    end
    object sqlclienteENDERECOEMPRESA: TStringField
      FieldName = 'ENDERECOEMPRESA'
      Size = 80
    end
    object sqlclienteBAIRROEMPRESA: TStringField
      FieldName = 'BAIRROEMPRESA'
      Size = 60
    end
    object sqlclienteCIDADEEMPRESA: TStringField
      FieldName = 'CIDADEEMPRESA'
      Size = 60
    end
    object sqlclienteCEPEMPRESA: TStringField
      FieldName = 'CEPEMPRESA'
      Size = 10
    end
    object sqlclienteESTADOEMPRESA: TStringField
      FieldName = 'ESTADOEMPRESA'
      FixedChar = True
      Size = 2
    end
    object sqlclienteDEPENDENTE: TStringField
      FieldName = 'DEPENDENTE'
      FixedChar = True
      Size = 1
    end
    object sqlclienteCOTATITULAR: TIntegerField
      FieldName = 'COTATITULAR'
    end
    object sqlclienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object sqlclientePARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 15
    end
    object sqlclienteDATAATESTADO: TDateField
      FieldName = 'DATAATESTADO'
    end
    object sqlclienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 70
    end
  end
  object cdscliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcliente'
    Left = 16
    Top = 288
    object cdsclienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object cdsclienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
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
    object cdsclienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
    end
    object cdsclienteIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 15
    end
    object cdsclienteCPF: TStringField
      FieldName = 'CPF'
    end
    object cdsclienteCTPS: TStringField
      FieldName = 'CTPS'
      Size = 10
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
    object cdsclienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object cdsclienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cdsclienteNOMEEMPRESA: TStringField
      FieldName = 'NOMEEMPRESA'
      Size = 60
    end
    object cdsclienteTELEFONEEMPRESA: TStringField
      FieldName = 'TELEFONEEMPRESA'
      Size = 13
    end
    object cdsclienteENDERECOEMPRESA: TStringField
      FieldName = 'ENDERECOEMPRESA'
      Size = 80
    end
    object cdsclienteBAIRROEMPRESA: TStringField
      FieldName = 'BAIRROEMPRESA'
      Size = 60
    end
    object cdsclienteCIDADEEMPRESA: TStringField
      FieldName = 'CIDADEEMPRESA'
      Size = 60
    end
    object cdsclienteCEPEMPRESA: TStringField
      FieldName = 'CEPEMPRESA'
      Size = 10
    end
    object cdsclienteESTADOEMPRESA: TStringField
      FieldName = 'ESTADOEMPRESA'
      FixedChar = True
      Size = 2
    end
    object cdsclienteDEPENDENTE: TStringField
      FieldName = 'DEPENDENTE'
      FixedChar = True
      Size = 1
    end
    object cdsclienteCOTATITULAR: TIntegerField
      FieldName = 'COTATITULAR'
    end
    object cdsclienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object cdsclientePARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 15
    end
    object cdsclienteDATAATESTADO: TDateField
      FieldName = 'DATAATESTADO'
    end
    object cdsclienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 70
    end
  end
  object dspcliente: TDataSetProvider
    DataSet = sqlcliente
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 16
    Top = 336
  end
  object dscliente: TDataSource
    DataSet = cdscliente
    Left = 16
    Top = 392
  end
end
