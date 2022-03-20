unit ufrmProduto;

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
  TfrmProduto = class(TfrmPadrao)
    grdPadraoDBTableView1ID: TcxGridDBColumn;
    grdPadraoDBTableView1DESCRICAO: TcxGridDBColumn;
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure iniciar;
  end;

var
  frmProduto: TfrmProduto;

implementation

uses
  udmConexao, uProduto, ufrmCadastroProduto;
{$R *.dfm}

{ TfrmProduto }

procedure TfrmProduto.btnAlterarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadastroProduto, frmCadastroProduto);
  frmCadastroProduto.preencherCampos;
  frmCadastroProduto.ShowModal;

  iniciar;
end;

procedure TfrmProduto.btnExcluirClick(Sender: TObject);
begin
  inherited;

  if dmConexao.apagarRegistro('TBLPRODUTO', 'ID', dmConexao.cdsProdutoID.AsString) then
    ShowMessage('Registro excluído com sucesso.');

  iniciar;
end;

procedure TfrmProduto.btnIncluirClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadastroProduto, frmCadastroProduto);
  frmCadastroProduto.ShowModal;

  iniciar;
end;

procedure TfrmProduto.iniciar;
begin
  dmConexao.qryProduto.Close;
  dmConexao.qryProduto.Open;

  if not dmConexao.cdsProduto.Active then
    dmConexao.cdsProduto.Active := true
  else
    dmConexao.cdsProduto.Refresh;
end;

end.
