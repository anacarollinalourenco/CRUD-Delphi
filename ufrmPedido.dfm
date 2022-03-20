inherited frmPedido: TfrmPedido
  inherited lblTitulo: TLabel
    Width = 672
    Caption = 'Pedido'
    ExplicitWidth = 56
  end
  inherited grdPadrao: TcxGrid
    ExplicitTop = 29
    ExplicitWidth = 680
    ExplicitHeight = 373
    inherited grdPadraoDBTableView1: TcxGridDBTableView
      DataController.DataSource = dmConexao.dsPedido
      object grdPadraoDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object grdPadraoDBTableView1REFERENCIA: TcxGridDBColumn
        DataBinding.FieldName = 'REFERENCIA'
        Width = 150
      end
      object grdPadraoDBTableView1NUMPEDIDO: TcxGridDBColumn
        DataBinding.FieldName = 'NUMPEDIDO'
      end
      object grdPadraoDBTableView1DTEMISSAO: TcxGridDBColumn
        DataBinding.FieldName = 'DTEMISSAO'
        Width = 76
      end
      object grdPadraoDBTableView1IDCLIENTE: TcxGridDBColumn
        DataBinding.FieldName = 'IDCLIENTE'
        Width = 70
      end
      object grdPadraoDBTableView1TIPOOPER: TcxGridDBColumn
        DataBinding.FieldName = 'TIPOOPER'
        Width = 57
      end
      object grdPadraoDBTableView1VLTOTAL: TcxGridDBColumn
        DataBinding.FieldName = 'VLTOTAL'
      end
    end
  end
  inherited Panel4: TPanel
    ExplicitTop = 402
    ExplicitWidth = 680
    inherited btnIncluir: TcxButton
      OnClick = btnIncluirClick
    end
    inherited btnAlterar: TcxButton
      OnClick = btnAlterarClick
    end
    inherited btnExcluir: TcxButton
      OnClick = btnExcluirClick
    end
  end
end
