object dtmBaseDAO: TdtmBaseDAO
  OldCreateOrder = False
  Height = 150
  Width = 215
  object qryBase: TFDQuery
    Connection = dtmConexao.conConexao
    Transaction = dtmConexao.fdtTransacao
    Left = 32
    Top = 32
  end
end
