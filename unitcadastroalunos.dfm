object fmCadastroAlunos: TfmCadastroAlunos
  Left = 314
  Top = 200
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Alunos'
  ClientHeight = 192
  ClientWidth = 657
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
  object Label1: TLabel
    Left = 16
    Top = 56
    Width = 32
    Height = 13
    Caption = 'NOME'
  end
  object Label2: TLabel
    Left = 16
    Top = 96
    Width = 112
    Height = 13
    Caption = 'DATA DA MATRICULA'
  end
  object Label3: TLabel
    Left = 16
    Top = 136
    Width = 81
    Height = 13
    Caption = 'DATA DA BAIXA'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 657
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
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 16
    Top = 72
    Width = 505
    Height = 21
    DropDownCount = 8
    DataField = 'NOME'
    DataSource = dmsesi.dsalunos
    LookupField = 'NOME'
    LookupDisplay = 'NOME'
    LookupSource = dscliente
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 112
    Width = 134
    Height = 21
    DataField = 'DATAMATRICULA'
    DataSource = dmsesi.dsalunos
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 152
    Width = 134
    Height = 21
    DataField = 'BAIXA'
    DataSource = dmsesi.dsalunos
    TabOrder = 3
  end
  object dscliente: TDataSource
    DataSet = cdscliente
    Left = 528
    Top = 168
  end
  object cdscliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcliente'
    Left = 528
    Top = 64
    object cdsclienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object cdsclienteNOME: TStringField
      Tag = 1
      FieldName = 'NOME'
      Size = 60
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
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cdsclienteESTADO: TStringField
      Tag = 1
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
      EditMask = '000\.000\.000\-00;1;_'
    end
    object cdsclienteCTPS: TStringField
      FieldName = 'CTPS'
      Size = 10
    end
    object cdsclienteDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsclienteCATEGORIATITULAR: TStringField
      FieldName = 'CATEGORIATITULAR'
    end
    object cdsclienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
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
    object cdsclienteNOMEEMPRESA: TStringField
      FieldName = 'NOMEEMPRESA'
      Size = 60
    end
    object cdsclienteTELEFONEEMPRESA: TStringField
      FieldName = 'TELEFONEEMPRESA'
      EditMask = '!\(99\)0000-0000;1;_'
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
      EditMask = '00000\-999;1;_'
      Size = 10
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
      EditMask = '!99/99/0000;1;_'
    end
    object cdsclientePARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 15
    end
    object cdsclienteDATAATESTADO: TDateField
      FieldName = 'DATAATESTADO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsclienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 70
    end
    object cdsclienteESTADOEMPRESA: TStringField
      FieldName = 'ESTADOEMPRESA'
      FixedChar = True
      Size = 2
    end
    object cdsclienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 10
    end
    object cdsclienteRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 70
    end
  end
  object sqlcliente: TSQLDataSet
    CommandText = 'select * from CLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 528
    Top = 16
    object sqlclienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
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
    object sqlclienteESTADOEMPRESA: TStringField
      FieldName = 'ESTADOEMPRESA'
      FixedChar = True
      Size = 2
    end
    object sqlclienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 10
    end
    object sqlclienteRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 70
    end
  end
  object dspcliente: TDataSetProvider
    DataSet = sqlcliente
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 528
    Top = 112
  end
end
