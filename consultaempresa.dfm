object _pesquisaEmpresa: T_pesquisaEmpresa
  Left = 144
  Top = 122
  Width = 882
  Height = 545
  Caption = 'Pesquisar Empresas'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 874
    Height = 97
    Align = alTop
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 872
      Height = 95
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Busca'
        object CheckBox1: TCheckBox
          Left = 8
          Top = 67
          Width = 185
          Height = 17
          Caption = 'Visualizar Empresa &Desativadas'
          TabOrder = 0
        end
        object Edit1: TEdit
          Left = 0
          Top = 40
          Width = 489
          Height = 22
          CharCase = ecUpperCase
          TabOrder = 1
          OnKeyPress = Edit1KeyPress
        end
        object btPesquisa: TBitBtn
          Left = 494
          Top = 38
          Width = 75
          Height = 25
          Caption = '&Pesquisa'
          TabOrder = 2
          OnClick = btPesquisaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333FF3FF3333333333CC30003333333333773777333333333C33
            3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
            33003377333337F33377333333333C333300333F333337F33377339333333C33
            3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
            330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
            330077F377F337F33377993399333C33330077FF773337F33377399993333C33
            33333777733337F333FF333333333C33300033333333373FF7773333333333CC
            3000333333333377377733333333333333333333333333333333}
          NumGlyphs = 2
        end
        object Button3: TButton
          Left = 614
          Top = 37
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 3
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 698
          Top = 37
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 4
          OnClick = Button4Click
        end
        object Button2: TButton
          Left = 782
          Top = 37
          Width = 75
          Height = 25
          Caption = '&Fechar'
          TabOrder = 5
          OnClick = Button2Click
        end
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 874
    Height = 414
    Align = alClient
    DataSource = dsEmpresa
    FixedColor = 15132390
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'C'#211'DIGO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Title.Caption = 'RAZ'#195'O SOCIAL'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DENOMINACAO'
        Title.Caption = 'DENOMINA'#199#195'O'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'ENDERE'#199'O'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTADO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONE'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAX'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object sqlEmpresa: TSQLDataSet
    CommandText = 'select * from EMPRESAS where (EMPRESAS.ATIVO='#39'1'#39')'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.Connection1
    Left = 16
    Top = 128
    object sqlEmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlEmpresaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 70
    end
    object sqlEmpresaDENOMINACAO: TStringField
      FieldName = 'DENOMINACAO'
      Required = True
      Size = 70
    end
    object sqlEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Required = True
      Size = 80
    end
    object sqlEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Required = True
      Size = 60
    end
    object sqlEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 50
    end
    object sqlEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlEmpresaESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object sqlEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 13
    end
    object sqlEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object sqlEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Required = True
    end
    object sqlEmpresaCODCNAE: TStringField
      FieldName = 'CODCNAE'
      Size = 10
    end
    object sqlEmpresaCNAE: TStringField
      FieldName = 'CNAE'
      Size = 80
    end
    object sqlEmpresaGRAURISCO: TStringField
      FieldName = 'GRAURISCO'
      FixedChar = True
      Size = 1
    end
    object sqlEmpresaCIPA: TStringField
      FieldName = 'CIPA'
    end
    object sqlEmpresaINSCRESTADUAL: TStringField
      FieldName = 'INSCRESTADUAL'
      Size = 18
    end
    object sqlEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object sqlEmpresaSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object sqlEmpresaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 80
    end
    object sqlEmpresaDTCONTRATOINI: TDateField
      FieldName = 'DTCONTRATOINI'
    end
    object sqlEmpresaDTCONTRATOFIM: TDateField
      FieldName = 'DTCONTRATOFIM'
    end
    object sqlEmpresaDATAPPRA: TDateField
      FieldName = 'DATAPPRA'
    end
    object sqlEmpresaDATALTCAT: TDateField
      FieldName = 'DATALTCAT'
    end
    object sqlEmpresaDATAPCMSO: TDateField
      FieldName = 'DATAPCMSO'
    end
    object sqlEmpresaDTULTPGTO: TDateField
      FieldName = 'DTULTPGTO'
    end
    object sqlEmpresaOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sqlEmpresaMTE: TStringField
      FieldName = 'MTE'
      Size = 10
    end
    object sqlEmpresaQTDEEMPREGADOS: TIntegerField
      FieldName = 'QTDEEMPREGADOS'
    end
    object sqlEmpresaATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 16
    Top = 168
    object cdsEmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEmpresaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 70
    end
    object cdsEmpresaDENOMINACAO: TStringField
      FieldName = 'DENOMINACAO'
      Required = True
      Size = 70
    end
    object cdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Required = True
      Size = 80
    end
    object cdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Required = True
      Size = 60
    end
    object cdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 50
    end
    object cdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsEmpresaESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 13
    end
    object cdsEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object cdsEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Required = True
    end
    object cdsEmpresaCODCNAE: TStringField
      FieldName = 'CODCNAE'
      Size = 10
    end
    object cdsEmpresaCNAE: TStringField
      FieldName = 'CNAE'
      Size = 80
    end
    object cdsEmpresaGRAURISCO: TStringField
      FieldName = 'GRAURISCO'
      FixedChar = True
      Size = 1
    end
    object cdsEmpresaCIPA: TStringField
      FieldName = 'CIPA'
    end
    object cdsEmpresaINSCRESTADUAL: TStringField
      FieldName = 'INSCRESTADUAL'
      Size = 18
    end
    object cdsEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cdsEmpresaSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object cdsEmpresaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 80
    end
    object cdsEmpresaDTCONTRATOINI: TDateField
      FieldName = 'DTCONTRATOINI'
    end
    object cdsEmpresaDTCONTRATOFIM: TDateField
      FieldName = 'DTCONTRATOFIM'
    end
    object cdsEmpresaDATAPPRA: TDateField
      FieldName = 'DATAPPRA'
    end
    object cdsEmpresaDATALTCAT: TDateField
      FieldName = 'DATALTCAT'
    end
    object cdsEmpresaDATAPCMSO: TDateField
      FieldName = 'DATAPCMSO'
    end
    object cdsEmpresaDTULTPGTO: TDateField
      FieldName = 'DTULTPGTO'
    end
    object cdsEmpresaOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsEmpresaMTE: TStringField
      FieldName = 'MTE'
      Size = 10
    end
    object cdsEmpresaQTDEEMPREGADOS: TIntegerField
      FieldName = 'QTDEEMPREGADOS'
    end
    object cdsEmpresaATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sqlEmpresa
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 16
    Top = 208
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 16
    Top = 248
  end
end
