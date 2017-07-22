object fmAuditoria: TfmAuditoria
  Left = 300
  Top = 159
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Auditoria'
  ClientHeight = 172
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 278
    Top = 69
    Width = 16
    Height = 13
    Caption = 'At'#233
  end
  object Label2: TLabel
    Left = 121
    Top = 45
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label3: TLabel
    Left = 337
    Top = 45
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object SpeedButton1: TSpeedButton
    Left = 137
    Top = 117
    Width = 105
    Height = 33
    Caption = 'Imprimir'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 337
    Top = 117
    Width = 105
    Height = 33
    Caption = 'Fechar'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
    OnClick = SpeedButton2Click
  end
  object DateEdit1: TDateEdit
    Left = 121
    Top = 61
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object DateEdit2: TDateEdit
    Left = 337
    Top = 61
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object RLReport1: TRLReport
    Left = 56
    Top = 304
    Width = 794
    Height = 1123
    DataSource = dsAuditoria
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand4: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 96
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel5: TRLLabel
        Left = 189
        Top = 5
        Width = 318
        Height = 29
        Caption = 'CART'#211'RIO DR. MANINHO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 158
        Top = 35
        Width = 386
        Height = 15
        Caption = 
          'Bel. Fernando Teixeira Chagas - Tabeli'#227'o. CNPJ: 21.074.992/0001-' +
          '71'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 190
        Top = 54
        Width = 330
        Height = 15
        Caption = 'Av. Oleg'#225'rio Maciel, 303 . 9977-2871(Vivo) . 9119-4711(Tim)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 2
        Top = 78
        Width = 50
        Height = 16
        Caption = 'TICKET'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 80
        Top = 78
        Width = 124
        Height = 16
        Caption = 'DATA DE EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 222
        Top = 78
        Width = 58
        Height = 16
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 616
        Top = 78
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
      object RLDraw1: TRLDraw
        Left = 0
        Top = 74
        Width = 716
        Height = 3
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLDraw2: TRLDraw
        Left = 2
        Top = 92
        Width = 716
        Height = 3
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 592
        Top = 0
        Width = 39
        Height = 16
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 134
      Width = 718
      Height = 20
      object RLDBText1: TRLDBText
        Left = 3
        Top = 2
        Width = 44
        Height = 16
        DataField = 'Recibo'
        DataSource = dsAuditoria
      end
      object RLDBText2: TRLDBText
        Left = 83
        Top = 2
        Width = 137
        Height = 16
        DataField = 'DATA_ATENDIMENTO'
        DataSource = dsAuditoria
      end
      object RLDBText3: TRLDBText
        Left = 222
        Top = 2
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = dsAuditoria
      end
      object RLDBText4: TRLDBText
        Left = 679
        Top = 0
        Width = 34
        Height = 16
        Alignment = taRightJustify
        DataField = 'Valor'
        DataSource = dsAuditoria
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 154
      Width = 718
      Height = 84
      BandType = btFooter
      object RLDBResult1: TRLDBResult
        Left = 160
        Top = 62
        Width = 73
        Height = 16
        Alignment = taRightJustify
        DataField = 'Valor'
        DataSource = dsAuditoria
        Info = riSum
      end
      object RLLabel6: TRLLabel
        Left = 5
        Top = 62
        Width = 132
        Height = 16
        Caption = 'TOTAL.....................:'
      end
      object RLLabel7: TRLLabel
        Left = 5
        Top = 2
        Width = 133
        Height = 16
        Caption = 'Emolumentos Liquido:'
      end
      object RLLabel8: TRLLabel
        Left = 5
        Top = 19
        Width = 131
        Height = 16
        Caption = 'Recompe.................:'
      end
      object RLDBResult3: TRLDBResult
        Left = 139
        Top = 19
        Width = 93
        Height = 16
        Alignment = taRightJustify
        DataField = 'recompe'
        DataSource = dsAuditoria
        Info = riSum
      end
      object RLLabel9: TRLLabel
        Left = 5
        Top = 36
        Width = 130
        Height = 16
        Caption = 'Tax. Fiscaliza'#231#227'o.....:'
      end
      object RLDBResult4: TRLDBResult
        Left = 165
        Top = 36
        Width = 68
        Height = 16
        Alignment = taRightJustify
        DataField = 'taxa'
        DataSource = dsAuditoria
        Info = riSum
      end
      object RLDraw3: TRLDraw
        Left = -8
        Top = 56
        Width = 337
        Height = 5
        DrawKind = dkLine
      end
      object RLDBResult2: TRLDBResult
        Left = 162
        Top = 0
        Width = 71
        Height = 16
        Alignment = taRightJustify
        DataField = 'emol'
        DataSource = dsAuditoria
        Info = riSum
      end
    end
  end
  object cdsAuditoria: TClientDataSet
    Aggregates = <>
    Params = <
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
    ProviderName = 'dspAuditoria'
    OnCalcFields = cdsAuditoriaCalcFields
    Left = 488
    Top = 104
    object cdsAuditoriaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsAuditoriaIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object cdsAuditoriaIDCLIENTE_1: TIntegerField
      FieldName = 'IDCLIENTE_1'
    end
    object cdsAuditoriaNUMERO_RECIBO: TIntegerField
      FieldName = 'NUMERO_RECIBO'
    end
    object cdsAuditoriaDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object cdsAuditoriaCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object cdsAuditoriaSUM_OF_TAXA_FISCALIZACAO: TFMTBCDField
      FieldName = 'SUM_OF_TAXA_FISCALIZACAO'
      Precision = 15
      Size = 2
    end
    object cdsAuditoriaSUM_OF_EMOLUMENTO_LIQUIDO: TFMTBCDField
      FieldName = 'SUM_OF_EMOLUMENTO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object cdsAuditoriaSUM_OF_RECOMPE: TFMTBCDField
      FieldName = 'SUM_OF_RECOMPE'
      Precision = 15
      Size = 2
    end
    object cdsAuditoriaValor: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
    object cdsAuditoriaRecibo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Recibo'
      Size = 15
      Calculated = True
    end
    object cdsAuditoriaemol: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'emol'
      Calculated = True
    end
    object cdsAuditoriataxa: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'taxa'
      Calculated = True
    end
    object cdsAuditoriarecompe: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'recompe'
      Calculated = True
    end
  end
  object dsAuditoria: TDataSource
    DataSet = cdsAuditoria
    Left = 488
    Top = 184
  end
  object dspAuditoria: TDataSetProvider
    DataSet = sqlAuditoria
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 488
    Top = 144
  end
  object sqlAuditoria: TSQLDataSet
    CommandText = 
      'select '#13#10'    cliente.nome,'#13#10'    cliente.idcliente,'#13#10'    cliente_' +
      'servico.idcliente,'#13#10'    cliente_servico.numero_recibo,'#13#10'    clie' +
      'nte_servico.data_atendimento,'#13#10'    cliente.cnpjcpf,'#13#10'    sum( it' +
      'ens_servico.taxa_fiscalizacao ) sum_of_taxa_fiscalizacao,'#13#10'    s' +
      'um( itens_servico.emolumento_liquido ) sum_of_emolumento_liquido' +
      ','#13#10'    sum( itens_servico.recompe ) sum_of_recompe'#13#10'from itens_s' +
      'ervico'#13#10'   inner join cliente_servico on (itens_servico.idclient' +
      'e_servico = cliente_servico.id)'#13#10'   inner join cliente on (clien' +
      'te_servico.idcliente = cliente.idcliente)'#13#10'where '#13#10'   ('#13#10'      (' +
      'cliente_servico.data_atendimento between :data1 and :data2)'#13#10'   ' +
      ')'#13#10'group by cliente.nome, cliente.idcliente, cliente_servico.idc' +
      'liente, cliente_servico.numero_recibo, cliente_servico.data_aten' +
      'dimento, cliente.cnpjcpf'#13#10
    MaxBlobSize = -1
    Params = <
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
    Left = 488
    Top = 64
    object sqlAuditoriaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlAuditoriaIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object sqlAuditoriaIDCLIENTE_1: TIntegerField
      FieldName = 'IDCLIENTE_1'
    end
    object sqlAuditoriaNUMERO_RECIBO: TIntegerField
      FieldName = 'NUMERO_RECIBO'
    end
    object sqlAuditoriaDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object sqlAuditoriaCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object sqlAuditoriaSUM_OF_TAXA_FISCALIZACAO: TFMTBCDField
      FieldName = 'SUM_OF_TAXA_FISCALIZACAO'
      Precision = 15
      Size = 2
    end
    object sqlAuditoriaSUM_OF_EMOLUMENTO_LIQUIDO: TFMTBCDField
      FieldName = 'SUM_OF_EMOLUMENTO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object sqlAuditoriaSUM_OF_RECOMPE: TFMTBCDField
      FieldName = 'SUM_OF_RECOMPE'
      Precision = 15
      Size = 2
    end
  end
end
