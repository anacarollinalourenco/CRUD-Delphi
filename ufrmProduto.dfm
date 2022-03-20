inherited frmProduto: TfrmProduto
  inherited lblTitulo: TLabel
    Width = 672
    Caption = 'Produto'
    ExplicitWidth = 65
  end
  inherited grdPadrao: TcxGrid
    ExplicitTop = 29
    ExplicitWidth = 680
    ExplicitHeight = 373
    inherited grdPadraoDBTableView1: TcxGridDBTableView
      DataController.DataSource = dmConexao.dsProduto
      object grdPadraoDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object grdPadraoDBTableView1DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRICAO'
      end
    end
  end
  inherited Panel4: TPanel
    inherited btnIncluir: TcxButton
      OnClick = btnIncluirClick
    end
    inherited btnAlterar: TcxButton
      OnClick = btnAlterarClick
    end
    inherited btnExcluir: TcxButton
      OnClick = btnExcluirClick
      ExplicitTop = 7
    end
  end
end
