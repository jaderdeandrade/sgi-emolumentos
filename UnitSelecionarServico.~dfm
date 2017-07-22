object fmServicoRealizado: TfmServicoRealizado
  Left = 321
  Top = 164
  BorderStyle = bsSingle
  Caption = 'Servi'#231'os Realizados'
  ClientHeight = 396
  ClientWidth = 754
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 86
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 40
      Top = 16
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label3: TLabel
      Left = 310
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object SpeedButton1: TSpeedButton
      Left = 440
      Top = 20
      Width = 137
      Height = 33
      Caption = '&Pesquisar'
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
      OnClick = SpeedButton1Click
    end
    object Label4: TLabel
      Left = 4
      Top = 68
      Width = 413
      Height = 13
      Caption = 'SELECIONE UMA LINHA PARA IMPRIMIR A SEGUNDA VIA DO RECIBO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object DateEdit1: TDateEdit
      Left = 40
      Top = 32
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 307
      Top = 32
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 355
    Width = 754
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 296
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 384
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 86
    Width = 754
    Height = 269
    Align = alClient
    DataSource = dsServicoRealizado
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'RECIBO'
        Title.Caption = 'N'#186' RECIBO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_ATENDIMENTO'
        Title.Caption = 'DAT. ATEDIMENTO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJCPF'
        Title.Caption = 'CPF/CNPJ'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object RLReport1: TRLReport
    Left = 22
    Top = 592
    Width = 794
    Height = 559
    DataSource = dsItens_Servico
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 148.000000000000000000
    object RLBand1: TRLBand
      Left = 19
      Top = 121
      Width = 756
      Height = 137
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel1: TRLLabel
        Left = 0
        Top = 6
        Width = 53
        Height = 16
        Caption = 'TICKET:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object rlnumero: TRLLabel
        Left = 55
        Top = 6
        Width = 55
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 167
        Width = 135
        Height = 16
        Caption = 'REF. AOS SERVI'#199'OS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 0
        Top = 39
        Width = 71
        Height = 16
        Caption = 'CNPJ/CPF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 0
        Top = 23
        Width = 74
        Height = 16
        Caption = 'RECEBI DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object rlnome: TRLLabel
        Left = 76
        Top = 23
        Width = 44
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object rldoc: TRLLabel
        Left = 73
        Top = 39
        Width = 33
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 2
        Width = 755
        Height = 6
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLDraw4: TRLDraw
        Left = 1
        Top = 183
        Width = 755
        Height = 6
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLLabel16: TRLLabel
        Left = 3
        Top = 206
        Width = 41
        Height = 16
        Caption = 'QTDE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 134
        Top = 206
        Width = 81
        Height = 16
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 678
        Top = 206
        Width = 73
        Height = 16
        Caption = 'VALOR(R$)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 47
        Top = 206
        Width = 78
        Height = 16
        Caption = 'COD. EMOL.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 487
        Top = 6
        Width = 128
        Height = 16
        Caption = 'DATA DE EMISS'#194'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object rlData: TRLLabel
        Left = 617
        Top = 6
        Width = 39
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 448
        Top = 206
        Width = 69
        Height = 16
        Caption = 'EMOL. LIQ.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 532
        Top = 206
        Width = 70
        Height = 16
        Caption = 'RECOMPE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 607
        Top = 206
        Width = 58
        Height = 16
        Caption = 'TX. FISC.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 191
        Top = 39
        Width = 168
        Height = 16
        Caption = 'COD. ATOS PRATICADOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw5: TRLDraw
        Left = 1
        Top = 220
        Width = 755
        Height = 5
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object rlCodAtosPraticados: TRLLabel
        Left = 361
        Top = 39
        Width = 127
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLDBMemo1: TRLDBMemo
        Left = 0
        Top = 73
        Width = 753
        Height = 61
        AutoSize = False
        DataField = 'OBSERVACAO'
        DataSource = dsSelecionaRecibo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 0
        Top = 58
        Width = 79
        Height = 13
        Caption = 'OBSERVA'#199#195'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsItalic]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 258
      Width = 756
      Height = 22
      object RLDBText1: TRLDBText
        Left = 7
        Top = 5
        Width = 39
        Height = 16
        DataField = 'QTDE'
        DataSource = dsItens_Servico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 136
        Top = 4
        Width = 297
        Height = 16
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = dsItens_Servico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 701
        Top = 4
        Width = 48
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR'
        DataSource = dsItens_Servico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 48
        Top = 4
        Width = 81
        Height = 16
        AutoSize = False
        DataField = 'CODIGO_EMOLUMENTO'
        DataSource = dsItens_Servico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 447
        Top = 5
        Width = 81
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'EMOLUMENTO_LIQUIDO'
        DataSource = dsItens_Servico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 533
        Top = 5
        Width = 68
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RECOMPE'
        DataSource = dsItens_Servico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 609
        Top = 5
        Width = 68
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TAXA_FISCALIZACAO'
        DataSource = dsItens_Servico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 280
      Width = 756
      Height = 23
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel4: TRLLabel
        Left = 569
        Top = 4
        Width = 70
        Height = 16
        Caption = 'TOTAL R$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = -1
        Width = 754
        Height = 6
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLLabel3: TRLLabel
        Left = 2
        Top = 4
        Width = 63
        Height = 16
        Caption = 'EMOL.R$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 171
        Top = 4
        Width = 93
        Height = 16
        Caption = 'RECOMPE R$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 363
        Top = 4
        Width = 78
        Height = 16
        Caption = 'TX. FISC.R$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object rlEmol: TRLLabel
        Left = 68
        Top = 4
        Width = 41
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object rlRecompe: TRLLabel
        Left = 265
        Top = 4
        Width = 70
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object rlTaxa: TRLLabel
        Left = 448
        Top = 4
        Width = 41
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object rlTotal: TRLLabel
        Left = 641
        Top = 4
        Width = 41
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 83
      BandType = btHeader
      object RLDraw3: TRLDraw
        Left = 527
        Top = 1
        Width = 1
        Height = 79
        Pen.Mode = pmMask
      end
      object RLLabel8: TRLLabel
        Left = 532
        Top = 3
        Width = 169
        Height = 13
        Caption = 'Testamentos . Doa'#231#245'es . Div'#243'rcios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 532
        Top = 21
        Width = 184
        Height = 13
        Caption = 'Separa'#231#245'es . Escrituras . Procura'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 532
        Top = 39
        Width = 209
        Height = 13
        Caption = 'Reconhecimento de Firmas - Autentica'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 531
        Top = 57
        Width = 212
        Height = 13
        Caption = 'Legitima'#231#245'es de Terrenos e Outros Servi'#231'os'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 71
        Top = 5
        Width = 425
        Height = 20
        Caption = '2'#186' TABELIONATO DE NOTAS DE CARATINGA - MG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 78
        Top = 30
        Width = 413
        Height = 16
        Caption = 
          'Bel. Fernando Teixeira Chagas - Tabeli'#227'o. CNPJ: 21.074.992/0001-' +
          '71'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 109
        Top = 47
        Width = 351
        Height = 16
        Caption = 'Av. Oleg'#225'rio Maciel, 303 . 9977-2871(Vivo) . 9119-4711(Tim)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 19
      Top = 303
      Width = 756
      Height = 40
      BandType = btFooter
      object RLLabel21: TRLLabel
        Left = 2
        Top = 3
        Width = 693
        Height = 13
        Caption = 
          'A segunda via dos recibos emitidos dever'#225' ser arquivada, em meio' +
          ' f'#237'sico ou eletr'#244'nico, pelo prazo de 06 (seis) anos contados da ' +
          'data de emiss'#227'o.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 0
        Top = 22
        Width = 476
        Height = 13
        Caption = 
          'ATEN'#199#195'O: '#201' INDISPENS'#193'VEL A APRESENTA'#199#195'O DESTE PARA RETIRADA DO D' +
          'OCUMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object cdsServicoRealizado: TClientDataSet
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
    ProviderName = 'dspServicoRealizado'
    OnCalcFields = cdsServicoRealizadoCalcFields
    Left = 472
    Top = 136
    object cdsServicoRealizadoDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object cdsServicoRealizadoNUMERO_RECIBO: TIntegerField
      FieldName = 'NUMERO_RECIBO'
    end
    object cdsServicoRealizadoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsServicoRealizadoCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object cdsServicoRealizadoRECIBO: TStringField
      FieldKind = fkCalculated
      FieldName = 'RECIBO'
      Calculated = True
    end
  end
  object dspServicoRealizado: TDataSetProvider
    DataSet = sqlServicoRealizado
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 472
    Top = 200
  end
  object dsServicoRealizado: TDataSource
    DataSet = cdsServicoRealizado
    Left = 472
    Top = 256
  end
  object sqlServicoRealizado: TSQLDataSet
    CommandText = 
      'select '#13#10'    cliente_servico.data_atendimento,'#13#10'    cliente_serv' +
      'ico.numero_recibo,'#13#10'    cliente.nome,'#13#10'    cliente.cnpjcpf'#13#10'from' +
      ' cliente'#13#10'   inner join cliente_servico on (cliente.idcliente = ' +
      'cliente_servico.idcliente)'#13#10'where '#13#10'   ('#13#10'      (cliente_servico' +
      '.data_atendimento between :data1 and :data2)'#13#10'   )'
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
    Left = 472
    Top = 88
    object sqlServicoRealizadoDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object sqlServicoRealizadoNUMERO_RECIBO: TIntegerField
      FieldName = 'NUMERO_RECIBO'
    end
    object sqlServicoRealizadoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlServicoRealizadoCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
  end
  object sqlItens_Servico: TSQLDataSet
    CommandText = 
      'select * from itens_servico'#13#10'where '#13#10'   ('#13#10'      (itens_servico.' +
      'idcliente_servico = :idcliente_servico)'#13#10'   )'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idcliente_servico'
        ParamType = ptInput
      end>
    SQLConnection = dmconect.SQLConnection1
    Left = 72
    Top = 136
    object sqlItens_ServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlItens_ServicoIDCLIENTE_SERVICO: TIntegerField
      FieldName = 'IDCLIENTE_SERVICO'
      Required = True
    end
    object sqlItens_ServicoQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object sqlItens_ServicoCODIGO_EMOLUMENTO: TStringField
      FieldName = 'CODIGO_EMOLUMENTO'
      Size = 10
    end
    object sqlItens_ServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqlItens_ServicoRECOMPE: TFMTBCDField
      FieldName = 'RECOMPE'
      Precision = 15
      Size = 2
    end
    object sqlItens_ServicoEMOLUMENTO_LIQUIDO: TFMTBCDField
      FieldName = 'EMOLUMENTO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object sqlItens_ServicoTAXA_FISCALIZACAO: TFMTBCDField
      FieldName = 'TAXA_FISCALIZACAO'
      Precision = 15
      Size = 2
    end
  end
  object cdsItens_Servico: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idcliente_servico'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspItens_Servico'
    OnCalcFields = cdsItens_ServicoCalcFields
    Left = 72
    Top = 168
    object cdsItens_ServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsItens_ServicoIDCLIENTE_SERVICO: TIntegerField
      FieldName = 'IDCLIENTE_SERVICO'
      Required = True
    end
    object cdsItens_ServicoQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object cdsItens_ServicoCODIGO_EMOLUMENTO: TStringField
      FieldName = 'CODIGO_EMOLUMENTO'
      Size = 10
    end
    object cdsItens_ServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsItens_ServicoRECOMPE: TFMTBCDField
      FieldName = 'RECOMPE'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsItens_ServicoEMOLUMENTO_LIQUIDO: TFMTBCDField
      FieldName = 'EMOLUMENTO_LIQUIDO'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsItens_ServicoTAXA_FISCALIZACAO: TFMTBCDField
      FieldName = 'TAXA_FISCALIZACAO'
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsItens_ServicoVALOR: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VALOR'
      DisplayFormat = '#0.00'
      Calculated = True
    end
  end
  object dspItens_Servico: TDataSetProvider
    DataSet = sqlItens_Servico
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 72
    Top = 208
  end
  object dsItens_Servico: TDataSource
    DataSet = cdsItens_Servico
    Left = 72
    Top = 248
  end
  object dspSelecionaRecibo: TDataSetProvider
    DataSet = sqlSelecionaRecibo
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 336
    Top = 184
  end
  object dsSelecionaRecibo: TDataSource
    DataSet = cdsSelecionaRecibo
    Left = 336
    Top = 232
  end
  object sqlSelecionaRecibo: TSQLDataSet
    CommandText = 
      'select '#13#10'    cliente_servico.data_atendimento,'#13#10'    cliente_serv' +
      'ico.numero_recibo,'#13#10'    cliente.nome,'#13#10'    cliente.cnpjcpf,'#13#10'   ' +
      ' cliente_servico.id,'#13#10'    cliente_servico.codigos_atos_praticado' +
      's,'#13#10'    cliente_servico.observacao '#13#10'from cliente_servico'#13#10'   in' +
      'ner join cliente on (cliente_servico.idcliente = cliente.idclien' +
      'te)'#13#10'where '#13#10'   ('#13#10'      (cliente_servico.numero_recibo = :recib' +
      'o)'#13#10'   )'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'recibo'
        ParamType = ptInput
      end>
    SQLConnection = dmconect.SQLConnection1
    Left = 328
    Top = 96
    object sqlSelecionaReciboID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlSelecionaReciboDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object sqlSelecionaReciboNUMERO_RECIBO: TIntegerField
      FieldName = 'NUMERO_RECIBO'
    end
    object sqlSelecionaReciboNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlSelecionaReciboCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object sqlSelecionaReciboCODIGOS_ATOS_PRATICADOS: TStringField
      FieldName = 'CODIGOS_ATOS_PRATICADOS'
      Size = 100
    end
    object sqlSelecionaReciboOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
  end
  object cdsSelecionaRecibo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'recibo'
        ParamType = ptInput
      end>
    ProviderName = 'dspSelecionaRecibo'
    Left = 336
    Top = 144
    object cdsSelecionaReciboID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSelecionaReciboDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object cdsSelecionaReciboNUMERO_RECIBO: TIntegerField
      FieldName = 'NUMERO_RECIBO'
    end
    object cdsSelecionaReciboNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsSelecionaReciboCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
    end
    object cdsSelecionaReciboCODIGOS_ATOS_PRATICADOS: TStringField
      FieldName = 'CODIGOS_ATOS_PRATICADOS'
      Size = 100
    end
    object cdsSelecionaReciboOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
  end
end
