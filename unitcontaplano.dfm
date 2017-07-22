object fmSubContaPlano: TfmSubContaPlano
  Left = 323
  Top = 319
  BorderStyle = bsSingle
  Caption = 'Contas do Plano'
  ClientHeight = 164
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
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
    Left = 24
    Top = 72
    Width = 37
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 112
    Width = 43
    Height = 13
    Caption = 'CONTA'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 52
    Width = 99
    Height = 13
    Caption = 'Plano de Conta->'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbconta: TLabel
    Left = 126
    Top = 52
    Width = 261
    Height = 14
    Caption = 
      '................................................................' +
      '.......................'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 88
    Width = 425
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dmsesi.dsContaPLano
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 128
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CONTA'
    DataSource = dmsesi.dsContaPLano
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 549
    Height = 35
    Align = alTop
    TabOrder = 2
    object btGravar: TButton
      Left = 108
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 1
      OnClick = btGravarClick
    end
    object btCancelar: TButton
      Left = 289
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = btCancelarClick
    end
    object btEditar: TButton
      Left = 198
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Editar'
      TabOrder = 2
      OnClick = btEditarClick
    end
    object Button1: TButton
      Left = 18
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object dsContaPLano: TDataSource
    DataSet = cdsContaPlano
    Left = 512
    Top = 8
  end
  object cdsContaPlano: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContaPlano'
    Left = 416
    Top = 8
    object cdsContaPlanoIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
    end
    object cdsContaPlanoIDPLACOCONTA: TIntegerField
      FieldName = 'IDPLACOCONTA'
    end
    object cdsContaPlanoNOME: TStringField
      Tag = 1
      FieldName = 'NOME'
      Size = 50
    end
    object cdsContaPlanoCONTA: TStringField
      Tag = 1
      FieldName = 'CONTA'
      Size = 10
    end
  end
  object dspContaPlano: TDataSetProvider
    DataSet = sqlContaPlano
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 480
    Top = 8
  end
  object sqlContaPlano: TSQLDataSet
    CommandText = 'select * from CONTAPLANO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 448
    Top = 8
    object sqlContaPlanoIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
    end
    object sqlContaPlanoIDPLACOCONTA: TIntegerField
      FieldName = 'IDPLACOCONTA'
    end
    object sqlContaPlanoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sqlContaPlanoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
  end
  object SP_GEN_CONTAPLANO_ID: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = dmconect.SQLConnection1
    StoredProcName = 'SP_GEN_CONTAPLANO_ID'
    Left = 488
    Top = 48
  end
end
