object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 387
  Width = 430
  object SQLConnection: TSQLConnection
    ConnectionName = 'OracleConnection'
    DriverName = 'Oracle'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Oracle'
      'DataBase=local'
      'User_Name=local'
      'Password=local'
      'RowsetSize=20'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'OS Authentication=False'
      'Multiple Transaction=False'
      'Trim Char=False'
      'Decimal Separator=.')
    Connected = True
    Left = 152
    Top = 16
  end
  object qryCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, '
      '       NOME, '
      '       CEP, '
      '       LOGRADOURO, '
      '       COMPLEMENTO, '
      '       BAIRRO, '
      '       CIDADE, '
      '       UF, '
      '       CODIBGE'
      '  FROM TBLCLIENTE')
    SQLConnection = SQLConnection
    Left = 24
    Top = 72
    object qryClienteID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 6
      Size = 0
    end
    object qryClienteNOME: TWideStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qryClienteCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qryClienteLOGRADOURO: TWideStringField
      FieldName = 'LOGRADOURO'
      Size = 100
    end
    object qryClienteCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qryClienteBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object qryClienteCIDADE: TWideStringField
      FieldName = 'CIDADE'
    end
    object qryClienteUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qryClienteCODIBGE: TWideStringField
      FieldName = 'CODIBGE'
      Size = 10
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 104
    Top = 72
  end
  object dspCliente: TDataSetProvider
    DataSet = qryCliente
    Left = 22
    Top = 136
  end
  object cdsCliente: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 104
    Top = 136
    object cdsClienteID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 6
      Size = 0
    end
    object cdsClienteNOME: TWideStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsClienteCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsClienteLOGRADOURO: TWideStringField
      FieldName = 'LOGRADOURO'
      Size = 100
    end
    object cdsClienteCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object cdsClienteBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsClienteCIDADE: TWideStringField
      FieldName = 'CIDADE'
    end
    object cdsClienteUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsClienteCODIBGE: TWideStringField
      FieldName = 'CODIBGE'
      Size = 10
    end
  end
  object qryProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID,'
      '       DESCRICAO '
      'FROM TBLPRODUTO')
    SQLConnection = SQLConnection
    Left = 192
    Top = 73
    object qryProdutoID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 6
      Size = 0
    end
    object qryProdutoDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 272
    Top = 136
    object cdsProdutoID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 6
      Size = 0
    end
    object cdsProdutoDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = qryProduto
    Left = 192
    Top = 136
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 272
    Top = 75
  end
  object qryPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID,'
      '       REFERENCIA,'
      '       NUMPEDIDO,'
      '       DTEMISSAO,'
      '       IDCLIENTE,'
      '       TIPOOPER,'
      '       VLTOTAL'
      '  FROM TBLPEDIDO')
    SQLConnection = SQLConnection
    Left = 24
    Top = 203
    object qryPedidoID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 6
      Size = 0
    end
    object qryPedidoREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 60
    end
    object qryPedidoNUMPEDIDO: TFMTBCDField
      FieldName = 'NUMPEDIDO'
      Precision = 6
      Size = 0
    end
    object qryPedidoDTEMISSAO: TSQLTimeStampField
      FieldName = 'DTEMISSAO'
    end
    object qryPedidoIDCLIENTE: TFMTBCDField
      FieldName = 'IDCLIENTE'
      Precision = 6
      Size = 0
    end
    object qryPedidoTIPOOPER: TWideStringField
      FieldName = 'TIPOOPER'
      Size = 1
    end
    object qryPedidoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      Precision = 16
      Size = 3
    end
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido'
    Left = 104
    Top = 264
    object cdsPedidoID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 6
      Size = 0
    end
    object cdsPedidoREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 60
    end
    object cdsPedidoNUMPEDIDO: TFMTBCDField
      FieldName = 'NUMPEDIDO'
      Precision = 6
      Size = 0
    end
    object cdsPedidoDTEMISSAO: TSQLTimeStampField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedidoIDCLIENTE: TFMTBCDField
      FieldName = 'IDCLIENTE'
      Precision = 6
      Size = 0
    end
    object cdsPedidoTIPOOPER: TWideStringField
      FieldName = 'TIPOOPER'
      Size = 1
    end
    object cdsPedidoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      Precision = 16
      Size = 3
    end
  end
  object dspPedido: TDataSetProvider
    DataSet = qryPedido
    Left = 24
    Top = 264
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 104
    Top = 203
  end
end
