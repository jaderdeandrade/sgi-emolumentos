object fmTurma: TfmTurma
  Left = 230
  Top = 131
  BorderStyle = bsSingle
  Caption = 'Turma'
  ClientHeight = 519
  ClientWidth = 866
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
  object Label3: TLabel
    Left = 17
    Top = 60
    Width = 62
    Height = 13
    Caption = 'DESCRI'#199#195'O'
  end
  object Label2: TLabel
    Left = 17
    Top = 103
    Width = 69
    Height = 13
    Caption = 'DATA INICIAL'
  end
  object Label4: TLabel
    Left = 156
    Top = 103
    Width = 62
    Height = 13
    Caption = 'DATA FINAL'
  end
  object Label5: TLabel
    Left = 295
    Top = 103
    Width = 50
    Height = 13
    Caption = 'HOR'#193'RIO'
  end
  object Label13: TLabel
    Left = 435
    Top = 103
    Width = 35
    Height = 13
    Caption = 'LIMITE'
  end
  object Label14: TLabel
    Left = 17
    Top = 174
    Width = 66
    Height = 13
    Caption = 'PROFESSOR'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 866
    Height = 41
    Align = alTop
    TabOrder = 0
    object btGravar: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = btGravarClick
    end
    object btEditar: TButton
      Left = 112
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Editar'
      TabOrder = 1
      OnClick = btEditarClick
    end
    object btCancela: TButton
      Left = 200
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = btCancelaClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 272
    Width = 866
    Height = 247
    Align = alBottom
    DataSource = dsalunos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
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
        FieldName = 'DATAMATRICULA'
        Title.Caption = 'MATR'#205'CULA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIXA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 231
    Width = 866
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 295
      Top = 10
      Width = 211
      Height = 20
      Caption = 'LISTAGEM DOS ALUNOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btNovo: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Novo'
      Enabled = False
      TabOrder = 0
      OnClick = btNovoClick
    end
    object btExcluir: TButton
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      Enabled = False
      TabOrder = 1
      OnClick = btExcluirClick
    end
  end
  object DBEdit2: TDBEdit
    Left = 17
    Top = 119
    Width = 112
    Height = 21
    DataField = 'DATAINI'
    DataSource = dmsesi.dsTurma
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 156
    Top = 119
    Width = 112
    Height = 21
    DataField = 'DATAFIN'
    DataSource = dmsesi.dsTurma
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 295
    Top = 119
    Width = 112
    Height = 21
    DataField = 'HORARIO'
    DataSource = dmsesi.dsTurma
    TabOrder = 5
  end
  object DBEdit13: TDBEdit
    Left = 435
    Top = 119
    Width = 112
    Height = 21
    DataField = 'LIMITE'
    DataSource = dmsesi.dsTurma
    TabOrder = 6
  end
  object DBCheckBox1: TDBCheckBox
    Left = 17
    Top = 150
    Width = 81
    Height = 17
    Caption = 'DOMINGO'
    DataField = 'DOM'
    DataSource = dmsesi.dsTurma
    TabOrder = 7
    ValueChecked = 'X'
    ValueUnchecked = '-'
  end
  object DBCheckBox2: TDBCheckBox
    Left = 99
    Top = 150
    Width = 81
    Height = 17
    Caption = 'SEGUNDA'
    DataField = 'SEG'
    DataSource = dmsesi.dsTurma
    TabOrder = 8
    ValueChecked = 'X'
    ValueUnchecked = '-'
  end
  object DBCheckBox3: TDBCheckBox
    Left = 182
    Top = 150
    Width = 81
    Height = 17
    Caption = 'TER'#199'A'
    DataField = 'TER'
    DataSource = dmsesi.dsTurma
    TabOrder = 9
    ValueChecked = 'X'
    ValueUnchecked = '-'
  end
  object DBCheckBox4: TDBCheckBox
    Left = 265
    Top = 150
    Width = 81
    Height = 17
    Caption = 'QUARTA'
    DataField = 'QUA'
    DataSource = dmsesi.dsTurma
    TabOrder = 10
    ValueChecked = 'X'
    ValueUnchecked = '-'
  end
  object DBCheckBox5: TDBCheckBox
    Left = 347
    Top = 150
    Width = 81
    Height = 17
    Caption = 'QUINTA'
    DataField = 'QUI'
    DataSource = dmsesi.dsTurma
    TabOrder = 11
    ValueChecked = 'X'
    ValueUnchecked = '-'
  end
  object DBCheckBox6: TDBCheckBox
    Left = 430
    Top = 150
    Width = 81
    Height = 17
    Caption = 'SEXTA'
    DataField = 'SEX'
    DataSource = dmsesi.dsTurma
    TabOrder = 12
    ValueChecked = 'X'
    ValueUnchecked = '-'
  end
  object DBCheckBox7: TDBCheckBox
    Left = 513
    Top = 150
    Width = 81
    Height = 17
    Caption = 'S'#193'BADO'
    DataField = 'SAB'
    DataSource = dmsesi.dsTurma
    TabOrder = 13
    ValueChecked = 'X'
    ValueUnchecked = '-'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 192
    Width = 553
    Height = 21
    DataField = 'PROFESSOR'
    DataSource = dmsesi.dsTurma
    KeyField = 'NOME'
    ListField = 'NOME'
    ListSource = dsprofessor
    TabOrder = 14
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 16
    Top = 74
    Width = 553
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dmsesi.dsTurma
    KeyField = 'DESCRICAO'
    ListField = 'DESCRICAO'
    ListSource = dsservico
    TabOrder = 15
  end
  object sqlalunos: TSQLDataSet
    CommandText = 'select * from ALUNOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 792
    Top = 304
    object sqlalunosIDALUNO: TIntegerField
      FieldName = 'IDALUNO'
      Required = True
    end
    object sqlalunosIDTURMA: TIntegerField
      FieldName = 'IDTURMA'
    end
    object sqlalunosNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlalunosDATAMATRICULA: TDateField
      FieldName = 'DATAMATRICULA'
    end
    object sqlalunosBAIXA: TDateField
      FieldName = 'BAIXA'
    end
  end
  object dspalunos: TDataSetProvider
    DataSet = sqlalunos
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 792
    Top = 400
  end
  object dsalunos: TDataSource
    DataSet = cdsalunos
    Left = 792
    Top = 456
  end
  object dspprofessor: TDataSetProvider
    DataSet = sqlprofessor
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 800
    Top = 152
  end
  object cdsprofessor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspprofessor'
    Left = 800
    Top = 104
    object cdsprofessorNOME: TStringField
      Tag = 1
      FieldName = 'NOME'
      Size = 70
    end
    object cdsprofessorENDERECO: TStringField
      Tag = 1
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsprofessorBAIRRO: TStringField
      Tag = 1
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsprofessorCEP: TStringField
      Tag = 1
      FieldName = 'CEP'
      EditMask = '00\.000-000;1;_'
      Size = 10
    end
    object cdsprofessorCIDADE: TStringField
      Tag = 1
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsprofessorESTADO: TStringField
      Tag = 1
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsprofessorCPF: TStringField
      Tag = 1
      FieldName = 'CPF'
      EditMask = '000\.000\.000-00;1;_'
    end
    object cdsprofessorIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 15
    end
    object cdsprofessorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 13
    end
    object cdsprofessorCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 13
    end
    object cdsprofessorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 70
    end
    object cdsprofessorESPECIFICACAO: TStringField
      Tag = 1
      FieldName = 'ESPECIFICACAO'
      Size = 80
    end
    object cdsprofessorIDPROFESSOR: TIntegerField
      FieldName = 'IDPROFESSOR'
    end
  end
  object dsprofessor: TDataSource
    DataSet = cdsprofessor
    Left = 800
    Top = 200
  end
  object sqlprofessor: TSQLDataSet
    CommandText = 'select * from PROFESSOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 800
    Top = 56
    object sqlprofessorIDPROFESSOR: TIntegerField
      FieldName = 'IDPROFESSOR'
    end
    object sqlprofessorNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sqlprofessorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sqlprofessorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object sqlprofessorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlprofessorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sqlprofessorESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqlprofessorCPF: TStringField
      FieldName = 'CPF'
    end
    object sqlprofessorIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 15
    end
    object sqlprofessorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object sqlprofessorCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object sqlprofessorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 70
    end
    object sqlprofessorESPECIFICACAO: TStringField
      FieldName = 'ESPECIFICACAO'
      Size = 80
    end
  end
  object dsservico: TDataSource
    DataSet = cdsServico
    Left = 752
    Top = 208
  end
  object dspServico: TDataSetProvider
    DataSet = sqlServico
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 752
    Top = 152
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServico'
    Left = 752
    Top = 104
    object cdsServicoIDSERVICO: TIntegerField
      FieldName = 'IDSERVICO'
    end
    object cdsServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsServicoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsServicoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
  end
  object sqlServico: TSQLDataSet
    CommandText = 'select * from SERVICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 752
    Top = 56
    object sqlServicoIDSERVICO: TIntegerField
      FieldName = 'IDSERVICO'
    end
    object sqlServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sqlServicoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sqlServicoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
  end
  object cdsalunos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspalunos'
    Left = 800
    Top = 352
    object cdsalunosIDALUNO: TIntegerField
      FieldName = 'IDALUNO'
      Required = True
    end
    object cdsalunosIDTURMA: TIntegerField
      FieldName = 'IDTURMA'
    end
    object cdsalunosNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsalunosDATAMATRICULA: TDateField
      FieldName = 'DATAMATRICULA'
    end
    object cdsalunosBAIXA: TDateField
      FieldName = 'BAIXA'
    end
  end
end
