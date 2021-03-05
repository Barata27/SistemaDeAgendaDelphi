object DM: TDM
  OldCreateOrder = False
  Height = 285
  Width = 508
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=agenda delphi'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 8
  end
  object TbContatos: TFDTable
    Active = True
    AfterInsert = TbContatosAfterInsert
    IndexFieldNames = 'id'
    Connection = Conexao
    UpdateOptions.UpdateTableName = '`agenda delphi`.contatos'
    TableName = '`agenda delphi`.contatos'
    Left = 128
    object TbContatosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object TbContatosnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TbContatoscelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      Size = 16
    end
    object TbContatosbloqueado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'bloqueado'
      Origin = 'bloqueado'
    end
    object TbContatosdata: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
    end
    object TbContatosobservacoes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observacoes'
      Origin = 'observacoes'
      BlobType = ftMemo
    end
  end
  object DsContatos: TDataSource
    DataSet = TbContatos
    Left = 216
    Top = 8
  end
end
