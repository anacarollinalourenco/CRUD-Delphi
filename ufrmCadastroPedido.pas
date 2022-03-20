unit ufrmCadastroPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Menus, cxButtons,
  Datasnap.DBClient, strUtils, Types, cxContainer, cxTextEdit, cxCurrencyEdit,
  Data.FMTBcd, Data.SqlExpr;

type
  TfrmCadastroPedido = class(TForm)
    grpPedido: TGroupBox;
    edtID: TEdit;
    edtReferencia: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtNumPedido: TEdit;
    Label7: TLabel;
    edtData: TDateTimePicker;
    Label3: TLabel;
    cbbCliente: TComboBox;
    Label4: TLabel;
    cbbOperacao: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    grpItens: TGroupBox;
    cbbProduto: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    edtQuantidade: TEdit;
    Label10: TLabel;
    grdItemDBTableView1: TcxGridDBTableView;
    grdItemLevel1: TcxGridLevel;
    grdItem: TcxGrid;
    btnIncluir: TcxButton;
    btnExcluir: TcxButton;
    cdsItem: TClientDataSet;
    cdsItemCODPROD: TIntegerField;
    cdsItemDESCRICAO: TStringField;
    cdsItemVALORUNIT: TFloatField;
    cdsItemQUANTIDADE: TIntegerField;
    btnSalvar: TcxButton;
    edtValorTotal: TcxCurrencyEdit;
    dsItem: TDataSource;
    grdItemDBTableView1CODPROD: TcxGridDBColumn;
    grdItemDBTableView1DESCRICAO: TcxGridDBColumn;
    grdItemDBTableView1VALORUNIT: TcxGridDBColumn;
    grdItemDBTableView1QUANTIDADE: TcxGridDBColumn;
    edtValorUnit: TcxCurrencyEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    function validacaoItem: boolean;
    procedure limparItem;
    procedure preencherCliente;
    procedure preencherProduto;
    procedure atualizarValorTotal;
    procedure buscarIndice;
  public
    { Public declarations }
    procedure preencherCampos;
  end;

var
  frmCadastroPedido: TfrmCadastroPedido;

implementation

{$R *.dfm}
uses
  udmConexao, uPedido, uItens;

procedure TfrmCadastroPedido.atualizarValorTotal;
var
valor: double;
begin
  cdsItem.First;
  cdsItem.DisableControls;

  while not cdsItem.Eof do
  begin
    valor := valor + (cdsItemVALORUNIT.AsFloat * cdsItemQUANTIDADE.AsInteger);
    cdsItem.Next;
  end;

  cdsItem.EnableControls;

  edtValorTotal.Value := valor;
end;

procedure TfrmCadastroPedido.btnExcluirClick(Sender: TObject);
begin
  if cdsItem.Active then
    cdsItem.Delete;

  atualizarValorTotal;
end;

procedure TfrmCadastroPedido.btnIncluirClick(Sender: TObject);
var
  campos: TStringDynArray;
begin
  if validacaoItem then
  begin
    if not cdsItem.Active then
      cdsItem.Active := true;

    campos := SplitString(cbbProduto.Text, '-');

    cdsItem.Append;
    cdsItemCODPROD.AsInteger    := StrToInt(Trim(campos[0]));
    cdsItemDESCRICAO.AsString   := campos[1];
    cdsItemVALORUNIT.AsFloat    := edtValorUnit.Value;
    cdsItemQUANTIDADE.AsInteger := StrToInt(edtQuantidade.Text);
    cdsItem.Post;

    limparItem;
    atualizarValorTotal;
  end;
end;

procedure TfrmCadastroPedido.btnSalvarClick(Sender: TObject);
var
  pedido: TPedido;
  item: TItens;
  campos: TStringDynArray;
begin
  campos := SplitString(cbbCliente.Text, '-');

  pedido := TPedido.Create;

  if edtID.Text = EmptyStr then
    pedido.id        := 0
  else
    pedido.id        := StrToInt(edtID.Text);

  pedido.referencia := edtReferencia.Text;
  pedido.numPedido  := pedido.id;
  pedido.dtEmissao  := edtData.Date;
  pedido.codCliente := StrToInt(Trim(campos[0]));

  if cbbOperacao.ItemIndex = 0 then
    pedido.tipoOper := 'E'
  else
    pedido.tipoOper := 'S';

  pedido.valorTotal := edtValorTotal.Value;

  cdsItem.First;

  while not cdsItem.Eof do
  begin
    pedido.novoItem(pedido.id, cdsItemCODPROD.AsInteger, cdsItemQUANTIDADE.AsInteger, cdsItemVALORUNIT.AsFloat);
    cdsItem.Next;
  end;

  dmConexao.operacaopedido(pedido, item);

  ShowMessage('Pedido salvo com sucesso.');

  pedido.Free;
  Close;
end;

procedure TfrmCadastroPedido.buscarIndice;
begin

end;

procedure TfrmCadastroPedido.FormShow(Sender: TObject);
begin
  preencherCliente;
  preencherProduto;
end;

procedure TfrmCadastroPedido.limparItem;
begin
  cbbProduto.Text    := '';
  edtValorUnit.Text  := '';
  edtQuantidade.Text := '';
end;

procedure TfrmCadastroPedido.preencherCampos;
begin
  edtID.Text           := dmConexao.cdsPedidoID.AsString;
  edtReferencia.Text   := dmConexao.cdsPedidoREFERENCIA.AsString;
  edtNumPedido.Text    := dmConexao.cdsPedidoNUMPEDIDO.AsString;
  edtData.Date         := dmConexao.cdsPedidoDTEMISSAO.AsDateTime;
  edtValorTotal.Value  := dmConexao.cdsPedidoVLTOTAL.AsFloat;
end;

procedure TfrmCadastroPedido.preencherCliente;
var
  qry: TSQLQuery;
begin
  qry := TSQLQuery.Create(self);
  qry.SQLConnection := dmConexao.SQLConnection;

  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('SELECT ID, NOME FROM TBLCLIENTE');
  qry.Open;

  qry.First;

  while not qry.Eof do
  begin
    cbbCliente.Items.Add(qry.FieldByName('ID').AsString + ' - ' + qry.FieldByName('NOME').AsString);
    qry.Next;
  end;
end;

procedure TfrmCadastroPedido.preencherProduto;
var
  qry: TSQLQuery;
begin
  qry := TSQLQuery.Create(self);
  qry.SQLConnection := dmConexao.SQLConnection;

  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('SELECT ID, DESCRICAO FROM TBLPRODUTO');
  qry.Open;

  qry.First;

  while not qry.Eof do
  begin
    cbbProduto.Items.Add(qry.FieldByName('ID').AsString + ' - ' + qry.FieldByName('DESCRICAO').AsString);
    qry.Next;
  end;
end;

function TfrmCadastroPedido.validacaoItem: boolean;
begin
  Result := true;

  if cbbProduto.Text = EmptyStr then
  begin
    Result := false;
    ShowMessage('"Produto" é um campo de preenchimento obrigatório.');
    cbbProduto.SetFocus;
    exit;
  end;

  if edtValorUnit.Text = EmptyStr then
  begin
    Result := false;
    ShowMessage('"Valor unitário" é um campo de preenchimento obrigatório.');
    edtValorUnit.SetFocus;
    exit;
  end;

  if edtQuantidade.Text = EmptyStr then
  begin
    Result := false;
    ShowMessage('"Quantidade" é um campo de preenchimento obrigatório.');
    edtValorUnit.SetFocus;
    exit;
  end;
end;

end.
