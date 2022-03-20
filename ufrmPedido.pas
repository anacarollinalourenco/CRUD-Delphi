unit ufrmPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmPadrao, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls;

type
  TfrmPedido = class(TfrmPadrao)
    grdPadraoDBTableView1ID: TcxGridDBColumn;
    grdPadraoDBTableView1REFERENCIA: TcxGridDBColumn;
    grdPadraoDBTableView1NUMPEDIDO: TcxGridDBColumn;
    grdPadraoDBTableView1DTEMISSAO: TcxGridDBColumn;
    grdPadraoDBTableView1IDCLIENTE: TcxGridDBColumn;
    grdPadraoDBTableView1TIPOOPER: TcxGridDBColumn;
    grdPadraoDBTableView1VLTOTAL: TcxGridDBColumn;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure iniciar;
  end;

var
  frmPedido: TfrmPedido;

implementation

uses
  udmConexao, uPedido, ufrmCadastroPedido;
{$R *.dfm}

procedure TfrmPedido.btnAlterarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadastroPedido, frmCadastroPedido);
  frmCadastroPedido.preencherCampos;
  frmCadastroPedido.ShowModal;

  iniciar;
end;

procedure TfrmPedido.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if dmConexao.apagarRegistro('TBLPEDIDO', 'ID', dmConexao.cdsPedidoID.AsString) and
     dmConexao.apagarRegistro('TBLITEM', 'IDPEDIDO', dmConexao.cdsPedidoID.AsString)then
    ShowMessage('Registro excluído com sucesso.');

  iniciar;
end;

procedure TfrmPedido.btnIncluirClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadastroPedido, frmCadastroPedido);
  frmCadastroPedido.ShowModal;

  iniciar;
end;

procedure TfrmPedido.iniciar;
begin
  dmConexao.qryPedido.Close;
  dmConexao.qryPedido.Open;

  if not dmConexao.cdsPedido.Active then
    dmConexao.cdsPedido.Active := true
  else
    dmConexao.cdsPedido.Refresh;
end;

end.
