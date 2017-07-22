object fmBalcao: TfmBalcao
  Left = 241
  Top = 123
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Balc'#227'o de Atendimento'
  ClientHeight = 571
  ClientWidth = 1017
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
  object dbGridItens: TDBGrid
    Left = 0
    Top = 287
    Width = 1017
    Height = 243
    Align = alClient
    DataSource = dsItens_Servico
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_EMOLUMENTO'
        Title.Caption = 'COD. EMOLUMENTO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'DESCRI'#199#195'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 435
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECOMPE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMOLUMENTO_LIQUIDO'
        Title.Caption = 'EMOLUMENTO LIQUIDO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAXA_FISCALIZACAO'
        Title.Caption = 'TAXA FISCALIZA'#199#195'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object dbGridTemp: TDBGrid
    Left = 0
    Top = 287
    Width = 1017
    Height = 243
    Align = alClient
    DataSource = dsTemp
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_EMOLUMENTO'
        Title.Caption = 'COD. EMOLUMENTO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'DESCRI'#199#195'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 402
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECOMPE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMOLUMENTO_LIQUIDO'
        Title.Caption = 'EMOLUMENTO LIQUIDO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAXA_FISCALIZACAO'
        Title.Caption = 'TAXA FISCALIZA'#199#195'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 64
    Width = 1017
    Height = 223
    Align = alTop
    Caption = 'Dados do Cliente'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 66
      Width = 37
      Height = 13
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 100
      Width = 65
      Height = 13
      Caption = 'CNPJ/CPF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 8
      Top = 83
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'NOME'
      DataSource = dscliente
    end
    object DBText2: TDBText
      Left = 481
      Top = 79
      Width = 65
      Height = 17
      DataField = 'DATA_ATENDIMENTO'
      DataSource = dmsesi.dsCliente_Servico
    end
    object Label6: TLabel
      Left = 481
      Top = 66
      Width = 100
      Height = 13
      Caption = 'Data de Emiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 680
      Top = 80
      Width = 57
      Height = 16
      Caption = '0000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 678
      Top = 66
      Width = 49
      Height = 13
      Caption = 'TICKET:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 179
      Top = 100
      Width = 151
      Height = 13
      Caption = 'COD. ATOS PRATICADOS'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 144
      Width = 73
      Height = 13
      Caption = 'Observa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 560
      Top = 144
      Width = 173
      Height = 13
      Caption = 'SOMENTE AT'#201' 500 CARACTERES'
    end
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 1013
      Height = 49
      Align = alTop
      TabOrder = 0
      object btnCadastroCliente: TSpeedButton
        Left = 614
        Top = 2
        Width = 137
        Height = 45
        Caption = 'Cadastro'
        Enabled = False
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
          0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
          00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
          00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
          F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
          F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
          FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
          0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
          00337777FFFF77FF7733EEEE0000000003337777777777777333}
        NumGlyphs = 2
        OnClick = btnCadastroClienteClick
      end
      object edtPesquisa: TEdit
        Left = 6
        Top = 16
        Width = 601
        Height = 21
        CharCase = ecUpperCase
        Color = clYellow
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edtPesquisaKeyPress
      end
    end
    object DBEdit1: TDBEdit
      Left = 179
      Top = 114
      Width = 562
      Height = 21
      DataField = 'CODIGOS_ATOS_PRATICADOS'
      DataSource = dmsesi.dsCliente_Servico
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 114
      Width = 163
      Height = 21
      DataField = 'CNPJCPF'
      DataSource = dscliente
      TabOrder = 1
    end
    object DBRichEdit1: TDBRichEdit
      Left = 8
      Top = 160
      Width = 737
      Height = 54
      DataField = 'OBSERVACAO'
      DataSource = dmsesi.dsCliente_Servico
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 530
    Width = 1017
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Label2: TLabel
      Left = 834
      Top = 16
      Width = 41
      Height = 16
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 3
      Top = 16
      Width = 98
      Height = 16
      Caption = 'Emolumentos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 270
      Top = 16
      Width = 72
      Height = 16
      Caption = 'Recompe:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 542
      Top = 16
      Width = 63
      Height = 16
      Caption = 'Tx. Fisc.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cedtValor: TCurrencyEdit
      Left = 878
      Top = 5
      Width = 132
      Height = 27
      AutoSize = False
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      ZeroEmpty = False
    end
    object cedtEmolumentos: TCurrencyEdit
      Left = 104
      Top = 5
      Width = 132
      Height = 27
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ZeroEmpty = False
    end
    object cedtRecompe: TCurrencyEdit
      Left = 344
      Top = 5
      Width = 132
      Height = 27
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ZeroEmpty = False
    end
    object cedtTaxaFiscalizacao: TCurrencyEdit
      Left = 608
      Top = 5
      Width = 132
      Height = 27
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      ZeroEmpty = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1017
    Height = 64
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 3
    object btnEmolumento: TSpeedButton
      Left = 125
      Top = 3
      Width = 104
      Height = 58
      Caption = '&Emolumento'
      Enabled = False
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      Layout = blGlyphRight
      NumGlyphs = 2
      OnClick = btnEmolumentoClick
    end
    object btnImprimir: TSpeedButton
      Left = 368
      Top = 3
      Width = 104
      Height = 58
      Caption = 'I&mprimir'
      Enabled = False
      Flat = True
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
      Layout = blGlyphRight
      NumGlyphs = 2
      OnClick = btnImprimirClick
    end
    object SpeedButton3: TSpeedButton
      Left = 733
      Top = 3
      Width = 104
      Height = 58
      Caption = '&Fechar'
      Flat = True
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
      Layout = blGlyphRight
      NumGlyphs = 2
      OnClick = SpeedButton3Click
    end
    object btnExcluir: TSpeedButton
      Left = 490
      Top = 3
      Width = 104
      Height = 58
      Caption = 'E&xcluir'
      Enabled = False
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphRight
      NumGlyphs = 2
      OnClick = btnExcluirClick
    end
    object btnReceber: TSpeedButton
      Left = 247
      Top = 3
      Width = 104
      Height = 58
      Caption = '&Salvar'
      Enabled = False
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337FF3333333333330003333333333333777F333333333333080333
        3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
        33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
        B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
        BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
        B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
        3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
        333333333337F33333333333333B333333333333333733333333}
      Layout = blGlyphRight
      NumGlyphs = 2
      OnClick = btnReceberClick
    end
    object btnNovo: TSpeedButton
      Left = 4
      Top = 3
      Width = 104
      Height = 58
      Caption = '&Novo'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphRight
      NumGlyphs = 2
      OnClick = btnNovoClick
    end
    object SpeedButton1: TSpeedButton
      Left = 611
      Top = 3
      Width = 104
      Height = 58
      Caption = '&Segunda Via'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      Layout = blGlyphRight
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
  end
  object RLReport1: TRLReport
    Left = 173
    Top = 792
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
      Height = 192
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
        Top = 150
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
        Top = 40
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
        Top = 40
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
        Top = 166
        Width = 755
        Height = 6
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLLabel16: TRLLabel
        Left = 3
        Top = 171
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
        Top = 171
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
        Top = 171
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
        Top = 171
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
        Top = 171
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
        Top = 171
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
        Top = 171
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
        Top = 40
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
        Top = 146
        Width = 755
        Height = 6
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object rlCodAtosPraticados: TRLLabel
        Left = 361
        Top = 40
        Width = 127
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 0
        Top = 57
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
      object RLDBMemo1: TRLDBMemo
        Left = 0
        Top = 72
        Width = 753
        Height = 73
        AutoSize = False
        DataField = 'OBSERVACAO'
        DataSource = dmsesi.dsCliente_Servico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 313
      Width = 756
      Height = 22
      object RLDBText1: TRLDBText
        Left = 3
        Top = 4
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
      Top = 335
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
    end
    object RLBand5: TRLBand
      Left = 19
      Top = 358
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
  object sqlMovCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from MOVIMENTO_CAIXA where MOVIMENTO_CAIXA.ATIVO='#39'1'#39)
    SQLConnection = dmconect.SQLConnection1
    Left = 72
    Top = 312
    object sqlMovCaixaIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
    object sqlMovCaixaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object sqlMovCaixaHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
    end
    object sqlMovCaixaDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
    end
    object sqlMovCaixaHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
    end
    object sqlMovCaixaUSUARIO_ABERTURA: TStringField
      FieldName = 'USUARIO_ABERTURA'
      Size = 15
    end
    object sqlMovCaixaUSUARIO_FECHAMENTO: TStringField
      FieldName = 'USUARIO_FECHAMENTO'
      Size = 15
    end
    object sqlMovCaixaVALOR_ABERTURA: TFMTBCDField
      FieldName = 'VALOR_ABERTURA'
      Precision = 15
      Size = 2
    end
    object sqlMovCaixaVALOR_FECHAMENTO: TFMTBCDField
      FieldName = 'VALOR_FECHAMENTO'
      Precision = 15
      Size = 2
    end
    object sqlMovCaixaATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovCaixa'
    Left = 72
    Top = 344
    object cdsMovCaixaIDMOVIMENTO: TIntegerField
      FieldName = 'IDMOVIMENTO'
      Required = True
    end
    object cdsMovCaixaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object cdsMovCaixaHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
    end
    object cdsMovCaixaDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
    end
    object cdsMovCaixaHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
    end
    object cdsMovCaixaUSUARIO_ABERTURA: TStringField
      FieldName = 'USUARIO_ABERTURA'
      Size = 15
    end
    object cdsMovCaixaUSUARIO_FECHAMENTO: TStringField
      FieldName = 'USUARIO_FECHAMENTO'
      Size = 15
    end
    object cdsMovCaixaVALOR_ABERTURA: TFMTBCDField
      FieldName = 'VALOR_ABERTURA'
      Precision = 15
      Size = 2
    end
    object cdsMovCaixaVALOR_FECHAMENTO: TFMTBCDField
      FieldName = 'VALOR_FECHAMENTO'
      Precision = 15
      Size = 2
    end
    object cdsMovCaixaATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspMovCaixa: TDataSetProvider
    DataSet = sqlMovCaixa
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 72
    Top = 384
  end
  object dsMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    Left = 72
    Top = 416
  end
  object spcontador: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = dmconect.SQLConnection1
    StoredProcName = 'CONTADOR'
    Left = 976
    Top = 136
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 760
    Top = 56
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 792
    Top = 56
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 824
    Top = 56
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.20 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 864
    Top = 56
  end
  object dscliente: TDataSource
    DataSet = cdscliente
    Left = 16
    Top = 416
  end
  object cdscliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcliente'
    Left = 16
    Top = 344
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
    Left = 16
    Top = 312
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
    Left = 16
    Top = 384
  end
  object dsItens_Servico: TDataSource
    DataSet = cdsItens_Servico
    Left = 128
    Top = 416
  end
  object dspItens_Servico: TDataSetProvider
    DataSet = sqlItens_Servico
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 128
    Top = 376
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
    Left = 128
    Top = 336
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
      Precision = 15
      Size = 2
    end
    object cdsItens_ServicoEMOLUMENTO_LIQUIDO: TFMTBCDField
      FieldName = 'EMOLUMENTO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object cdsItens_ServicoTAXA_FISCALIZACAO: TFMTBCDField
      FieldName = 'TAXA_FISCALIZACAO'
      Precision = 15
      Size = 2
    end
    object cdsItens_ServicoVALOR: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VALOR'
      Calculated = True
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
    Left = 128
    Top = 304
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
  object spGeradorId: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = dmconect.SQLConnection1
    StoredProcName = 'SP_GEN_CLIENTE_SERVICO_ID'
    Left = 976
    Top = 176
  end
  object dsTemp: TDataSource
    DataSet = cdsTemp
    Left = 176
    Top = 336
  end
  object cdsTemp: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    AfterPost = cdsTempAfterPost
    OnCalcFields = cdsTempCalcFields
    Left = 176
    Top = 296
    Data = {
      090100009619E0BD010000001800000007000000000003000000090114494443
      4C49454E54455F454D4F4C554D454E544F040001000000000011434F4449474F
      5F454D4F4C554D454E544F0100490000000100055749445448020002000F0009
      44455343524943414F0100490000000100055749445448020002006400075245
      434F4D5045080004000000010007535542545950450200490006004D6F6E6579
      0012454D4F4C554D454E544F5F4C49515549444F080004000000010007535542
      545950450200490006004D6F6E65790011544158415F46495343414C495A4143
      414F080004000000010007535542545950450200490006004D6F6E6579000451
      54444504000100000000000000}
    object cdsTempIDCLIENTE_EMOLUMENTO: TIntegerField
      FieldName = 'IDCLIENTE_EMOLUMENTO'
    end
    object cdsTempCODIGO_EMOLUMENTO: TStringField
      FieldName = 'CODIGO_EMOLUMENTO'
      Size = 15
    end
    object cdsTempDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTempRECOMPE: TCurrencyField
      FieldName = 'RECOMPE'
    end
    object cdsTempEMOLUMENTO_LIQUIDO: TCurrencyField
      FieldName = 'EMOLUMENTO_LIQUIDO'
    end
    object cdsTempTAXA_FISCALIZACAO: TCurrencyField
      FieldName = 'TAXA_FISCALIZACAO'
    end
    object cdsTempQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object cdsTempVALOR: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VALOR'
      Calculated = True
    end
  end
end
