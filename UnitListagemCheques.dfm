object fmListagemCheques: TfmListagemCheques
  Left = 393
  Top = 271
  BorderStyle = bsDialog
  Caption = 'Listagem de Cheques'
  ClientHeight = 184
  ClientWidth = 428
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
    Left = 56
    Top = 40
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object Label2: TLabel
    Left = 264
    Top = 40
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object Label3: TLabel
    Left = 208
    Top = 64
    Width = 15
    Height = 13
    Caption = 'at'#233
  end
  object RLReport1: TRLReport
    Left = 24
    Top = 288
    Width = 794
    Height = 1123
    DataSource = dsCheque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 83
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 256
        Top = 8
        Width = 237
        Height = 22
        Caption = 'LISTAGEM DE CHEQUES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 40
        Width = 58
        Height = 16
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 64
        Width = 71
        Height = 16
        Caption = 'N'#186' Cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 88
        Top = 64
        Width = 25
        Height = 16
        Caption = 'Dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 132
        Top = 64
        Width = 29
        Height = 16
        Caption = 'M'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 192
        Top = 64
        Width = 29
        Height = 16
        Caption = 'Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 432
        Top = 64
        Width = 41
        Height = 16
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 640
        Top = 64
        Width = 38
        Height = 16
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 248
        Top = 64
        Width = 44
        Height = 16
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 22
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBText1: TRLDBText
        Left = 0
        Top = 4
        Width = 88
        Height = 16
        DataField = 'CHEQUENUM'
        DataSource = dsCheque
      end
      object RLDBText2: TRLDBText
        Left = 90
        Top = 4
        Width = 25
        Height = 16
        DataField = 'DIA'
        DataSource = dsCheque
      end
      object RLDBText3: TRLDBText
        Left = 136
        Top = 4
        Width = 33
        Height = 16
        DataField = 'MES'
        DataSource = dsCheque
      end
      object RLDBText4: TRLDBText
        Left = 192
        Top = 4
        Width = 32
        Height = 16
        DataField = 'ANO'
        DataSource = dsCheque
      end
      object RLDBText5: TRLDBText
        Left = 248
        Top = 4
        Width = 50
        Height = 16
        DataField = 'BANCO'
        DataSource = dsCheque
      end
      object RLDBText6: TRLDBText
        Left = 432
        Top = 4
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = dsCheque
      end
      object RLDBText7: TRLDBText
        Left = 640
        Top = 4
        Width = 48
        Height = 16
        DataField = 'VALOR'
        DataSource = dsCheque
      end
    end
  end
  object DateEdit1: TDateEdit
    Left = 56
    Top = 56
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object DateEdit2: TDateEdit
    Left = 264
    Top = 56
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object Button1: TButton
    Left = 104
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 4
    OnClick = Button2Click
  end
  object sqlCheque: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from CHEQUEPRINT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 192
    Top = 8
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
    Left = 224
    Top = 8
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
    Left = 256
    Top = 8
  end
  object dsCheque: TDataSource
    DataSet = cdsCheque
    Left = 296
    Top = 8
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 16
    Top = 8
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 56
    Top = 8
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 96
    Top = 8
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.20 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 136
    Top = 8
  end
end
