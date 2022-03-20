inherited frmCliente: TfrmCliente
  inherited lblTitulo: TLabel
    Caption = 'Cliente'
    ExplicitLeft = 4
    ExplicitTop = 0
    ExplicitWidth = 56
  end
  inherited grdPadrao: TcxGrid
    ExplicitTop = 26
    ExplicitWidth = 680
    ExplicitHeight = 373
    inherited grdPadraoDBTableView1: TcxGridDBTableView
      DataController.DataSource = dmConexao.dsCliente
      object grdPadraoDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 50
      end
      object grdPadraoDBTableView1NOME: TcxGridDBColumn
        DataBinding.FieldName = 'NOME'
        Width = 160
      end
      object grdPadraoDBTableView1CEP: TcxGridDBColumn
        DataBinding.FieldName = 'CEP'
        Width = 80
      end
      object grdPadraoDBTableView1LOGRADOURO: TcxGridDBColumn
        DataBinding.FieldName = 'LOGRADOURO'
        Width = 150
      end
      object grdPadraoDBTableView1COMPLEMENTO: TcxGridDBColumn
        DataBinding.FieldName = 'COMPLEMENTO'
        Width = 100
      end
      object grdPadraoDBTableView1BAIRRO: TcxGridDBColumn
        DataBinding.FieldName = 'BAIRRO'
        Width = 100
      end
      object grdPadraoDBTableView1CIDADE: TcxGridDBColumn
        DataBinding.FieldName = 'CIDADE'
        Width = 100
      end
      object grdPadraoDBTableView1UF: TcxGridDBColumn
        DataBinding.FieldName = 'UF'
        Width = 50
      end
      object grdPadraoDBTableView1CODIBGE: TcxGridDBColumn
        DataBinding.FieldName = 'CODIBGE'
        Width = 70
      end
    end
  end
  inherited Panel4: TPanel
    ExplicitTop = 402
    ExplicitWidth = 680
    inherited btnIncluir: TcxButton
      OnClick = btnIncluirClick
      ExplicitTop = 7
    end
    inherited btnAlterar: TcxButton
      OnClick = btnAlterarClick
      ExplicitTop = 7
    end
    inherited btnExcluir: TcxButton
      OnClick = btnExcluirClick
    end
  end
end
