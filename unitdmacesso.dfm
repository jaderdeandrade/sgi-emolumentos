object dmAcesso: TdmAcesso
  OldCreateOrder = False
  Left = 445
  Top = 188
  Height = 332
  Width = 341
  object sdsUsuarios: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from USUARIOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 31
    Top = 10
    object sdsUsuariosUSU_ID: TIntegerField
      FieldName = 'USU_ID'
    end
    object sdsUsuariosUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Size = 30
    end
    object sdsUsuariosUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Size = 30
    end
    object sdsUsuariosUSU_DATA: TDateField
      FieldName = 'USU_DATA'
    end
  end
  object dspUsuarios: TDataSetProvider
    DataSet = sdsUsuarios
    Options = [poIncFieldProps, poAllowCommandText]
    OnGetTableName = dspUsuariosGetTableName
    Left = 31
    Top = 122
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuarios'
    Left = 34
    Top = 66
    object cdsUsuariosUSU_ID: TIntegerField
      FieldName = 'USU_ID'
    end
    object cdsUsuariosUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Size = 30
    end
    object cdsUsuariosUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Size = 30
    end
    object cdsUsuariosUSU_DATA: TDateField
      FieldName = 'USU_DATA'
    end
  end
  object dsusuarios: TDataSource
    DataSet = cdsUsuarios
    Left = 32
    Top = 176
  end
  object cdsUsuariosItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuariosItens'
    Left = 113
    Top = 64
    object cdsUsuariosItensUSU_ID: TIntegerField
      FieldName = 'USU_ID'
    end
    object cdsUsuariosItensUSU_SEQUENCIA: TIntegerField
      FieldName = 'USU_SEQUENCIA'
    end
    object cdsUsuariosItensUSU_MENUINDEX: TIntegerField
      FieldName = 'USU_MENUINDEX'
    end
    object cdsUsuariosItensUSU_PARENT: TIntegerField
      FieldName = 'USU_PARENT'
    end
    object cdsUsuariosItensUSU_FORM: TStringField
      FieldName = 'USU_FORM'
      Size = 255
    end
    object cdsUsuariosItensUSU_OBJETO: TStringField
      FieldName = 'USU_OBJETO'
      Size = 255
    end
    object cdsUsuariosItensUSU_DESCRICAO: TStringField
      FieldName = 'USU_DESCRICAO'
      Size = 255
    end
    object cdsUsuariosItensUSU_PERMISSAO: TStringField
      FieldName = 'USU_PERMISSAO'
      FixedChar = True
      Size = 1
    end
  end
  object dspUsuariosItens: TDataSetProvider
    DataSet = sdsUsuariosItens
    Options = [poIncFieldProps, poAllowCommandText]
    OnGetTableName = dspUsuariosItensGetTableName
    Left = 113
    Top = 120
  end
  object dsUsuariosItens: TDataSource
    DataSet = cdsUsuariosItens
    Left = 113
    Top = 176
  end
  object sdsUsuariosItens: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from USUARIOITENS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmconect.SQLConnection1
    Left = 113
    Top = 8
    object sdsUsuariosItensUSU_ID: TIntegerField
      FieldName = 'USU_ID'
    end
    object sdsUsuariosItensUSU_SEQUENCIA: TIntegerField
      FieldName = 'USU_SEQUENCIA'
    end
    object sdsUsuariosItensUSU_MENUINDEX: TIntegerField
      FieldName = 'USU_MENUINDEX'
    end
    object sdsUsuariosItensUSU_PARENT: TIntegerField
      FieldName = 'USU_PARENT'
    end
    object sdsUsuariosItensUSU_FORM: TStringField
      FieldName = 'USU_FORM'
      Size = 255
    end
    object sdsUsuariosItensUSU_OBJETO: TStringField
      FieldName = 'USU_OBJETO'
      Size = 255
    end
    object sdsUsuariosItensUSU_DESCRICAO: TStringField
      FieldName = 'USU_DESCRICAO'
      Size = 255
    end
    object sdsUsuariosItensUSU_PERMISSAO: TStringField
      FieldName = 'USU_PERMISSAO'
      FixedChar = True
      Size = 1
    end
  end
end
