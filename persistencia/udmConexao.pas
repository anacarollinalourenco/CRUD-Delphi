unit udmConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXOracle, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider,
  uCliente, uProduto, uPedido, uItens;

type
  TdmConexao = class(TDataModule)
    SQLConnection: TSQLConnection;
    qryCliente: TSQLQuery;
    dsCliente: TDataSource;
    qryClienteID: TFMTBCDField;
    qryClienteNOME: TWideStringField;
    qryClienteCEP: TWideStringField;
    qryClienteLOGRADOURO: TWideStringField;
    qryClienteCOMPLEMENTO: TWideStringField;
    qryClienteBAIRRO: TWideStringField;
    qryClienteCIDADE: TWideStringField;
    qryClienteUF: TWideStringField;
    qryClienteCODIBGE: TWideStringField;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsClienteID: TFMTBCDField;
    cdsClienteNOME: TWideStringField;
    cdsClienteCEP: TWideStringField;
    cdsClienteLOGRADOURO: TWideStringField;
    cdsClienteCOMPLEMENTO: TWideStringField;
    cdsClienteBAIRRO: TWideStringField;
    cdsClienteCIDADE: TWideStringField;
    cdsClienteUF: TWideStringField;
    cdsClienteCODIBGE: TWideStringField;
    qryProduto: TSQLQuery;
    cdsProduto: TClientDataSet;
    dspProduto: TDataSetProvider;
    dsProduto: TDataSource;
    qryProdutoID: TFMTBCDField;
    qryProdutoDESCRICAO: TWideStringField;
    cdsProdutoID: TFMTBCDField;
    cdsProdutoDESCRICAO: TWideStringField;
    qryPedido: TSQLQuery;
    cdsPedido: TClientDataSet;
    dspPedido: TDataSetProvider;
    dsPedido: TDataSource;
    qryPedidoID: TFMTBCDField;
    qryPedidoREFERENCIA: TWideStringField;
    qryPedidoNUMPEDIDO: TFMTBCDField;
    qryPedidoDTEMISSAO: TSQLTimeStampField;
    qryPedidoIDCLIENTE: TFMTBCDField;
    qryPedidoTIPOOPER: TWideStringField;
    qryPedidoVLTOTAL: TFMTBCDField;
    cdsPedidoID: TFMTBCDField;
    cdsPedidoREFERENCIA: TWideStringField;
    cdsPedidoNUMPEDIDO: TFMTBCDField;
    cdsPedidoDTEMISSAO: TSQLTimeStampField;
    cdsPedidoIDCLIENTE: TFMTBCDField;
    cdsPedidoTIPOOPER: TWideStringField;
    cdsPedidoVLTOTAL: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
    function proxID(tabela,
                    chave: string): integer;
    function apagarRegistro(tabela,
                            chave,
                            parametro: string): boolean;
    function existeRegistro(tabela,
                            chave,
                            parametro: string): boolean;
    procedure operacaoCliente(cliente: TCliente);
    procedure operacaoProduto(produto: TProduto);
    procedure operacaoPedido(pedido: TPedido;
                             item: TItens);

  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
{ TdmConexao }

function TdmConexao.apagarRegistro(tabela, chave, parametro: string): boolean;
var
  qry: TSQLQuery;
begin
  qry := TSQLQuery.Create(self);
  qry.SQLConnection := SQLConnection;

  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('DELETE FROM ' + tabela + ' WHERE ' +  chave + ' = ' + parametro);
  qry.ExecSQL;

  Result := true;
end;

function TdmConexao.existeRegistro(tabela, chave, parametro: string): boolean;
var
  qry: TSQLQuery;
begin
  qry := TSQLQuery.Create(self);
  qry.SQLConnection := SQLConnection;

  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('SELECT * FROM ' + tabela + ' WHERE ' +  chave + ' = ' + parametro);
  qry.ExecSQL;

  Result := qry.RecordCount > 0;
end;

procedure TdmConexao.operacaoCliente(cliente: TCliente);
var
  qry: TSQLQuery;
begin
  qry := TSQLQuery.Create(self);
  qry.SQLConnection := SQLConnection;

  if not existeRegistro('TBLCLIENTE', 'ID', IntToStr(cliente.id)) then
  begin
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('INSERT INTO TBLCLIENTE                                                         ');
    qry.SQL.Add('(ID, NOME, CEP, LOGRADOURO, COMPLEMENTO, BAIRRO, CIDADE, UF, CODIBGE)          ');
    qry.SQL.Add('VALUES                                                                         ');
    qry.SQL.Add('(:ID, :NOME, :CEP, :LOGRADOURO, :COMPLEMENTO, :BAIRRO, :CIDADE, :UF, :CODIBGE) ');

    qry.ParamByName('ID').AsInteger := proxID('TBLCLIENTE', 'ID');
  end
  else
  begin
    qry.SQL.Add('UPDATE TBLCLIENTE SET        ');
    qry.SQL.Add('NOME        = :NOME,         ');
    qry.SQL.Add('CEP         = :CEP,          ');
    qry.SQL.Add('LOGRADOURO  = :LOGRADOURO,   ');
    qry.SQL.Add('COMPLEMENTO = :COMPLEMENTO,  ');
    qry.SQL.Add('BAIRRO      = :BAIRRO,       ');
    qry.SQL.Add('CIDADE      = :CIDADE,       ');
    qry.SQL.Add('UF          = :UF,           ');
    qry.SQL.Add('CODIBGE     = :CODIBGE       ');
    qry.SQL.Add('WHERE ID = :ID               ');

    qry.ParamByName('ID').AsInteger := cliente.id
  end;

  qry.ParamByName('NOME').AsString        := cliente.nome;
  qry.ParamByName('CEP').AsString         := cliente.cep;
  qry.ParamByName('LOGRADOURO').AsString  := cliente.logradouro;
  qry.ParamByName('COMPLEMENTO').AsString := cliente.complemento;
  qry.ParamByName('BAIRRO').AsString      := cliente.bairro;
  qry.ParamByName('CIDADE').AsString      := cliente.cidade;
  qry.ParamByName('UF').AsString          := cliente.uf;
  qry.ParamByName('CODIBGE').AsString     := cliente.codIBGE;
  qry.ExecSQL;
end;

procedure TdmConexao.operacaoPedido(pedido: TPedido; item: TItens);
var
  qryPedido, qryItem: TSQLQuery;
  idpedido: integer;
begin
  qryPedido := TSQLQuery.Create(self);
  qryPedido.SQLConnection := SQLConnection;

  qryItem := TSQLQuery.Create(self);
  qryItem.SQLConnection := SQLConnection;

  if not existeRegistro('TBLPEDIDO', 'ID', IntToStr(pedido.id)) then
  begin
    qryPedido.Close;
    qryPedido.SQL.Clear;
    qryPedido.SQL.Add('INSERT INTO TBLPEDIDO                                                       ');
    qryPedido.SQL.Add('(ID, REFERENCIA, NUMPEDIDO, DTEMISSAO, IDCLIENTE, TIPOOPER, VLTOTAL)        ');
    qryPedido.SQL.Add('VALUES                                                                      ');
    qryPedido.SQL.Add('(:ID, :REFERENCIA, :NUMPEDIDO, :DTEMISSAO, :IDCLIENTE, :TIPOOPER, :VLTOTAL) ');

    idpedido := proxID('TBLPEDIDO', 'ID');
    qryPedido.ParamByName('ID').AsInteger := idpedido;
  end
  else
  begin
    qryPedido.SQL.Add('UPDATE TBLPEDIDO SET      ');
    qryPedido.SQL.Add('REFERENCIA = :REFERENCIA, ');
    qryPedido.SQL.Add('DTEMISSAO  = :DTEMISSAO,  ');
    qryPedido.SQL.Add('IDCLIENTE  = :IDCLIENTE,  ');
    qryPedido.SQL.Add('TIPOOPER   = :TIPOOPER,   ');
    qryPedido.SQL.Add('VLTOTAL    = :VLTOTAL     ');
    qryPedido.SQL.Add('WHERE ID = :ID            ');

    idpedido := pedido.id;
    qryPedido.ParamByName('ID').AsInteger := pedido.id;

    apagarRegistro('TBLITEM', 'IDPEDIDO', IntToStr(pedido.id));
  end;

  qryPedido.ParamByName('REFERENCIA').AsString  := pedido.referencia;
  qryPedido.ParamByName('NUMPEDIDO').AsInteger  := idpedido;
  qryPedido.ParamByName('DTEMISSAO').AsDateTime := pedido.dtEmissao;
  qryPedido.ParamByName('IDCLIENTE').AsInteger  := pedido.codCliente;
  qryPedido.ParamByName('TIPOOPER').AsString    := pedido.tipoOper;
  qryPedido.ParamByName('VLTOTAL').AsFloat      := pedido.valorTotal;

  qryPedido.ExecSQL;

  for item in pedido.listaItens do
  begin
    qryItem.Close;
    qryItem.SQL.Clear;
    qryItem.SQL.Add('INSERT INTO TBLITEM                                         ');
    qryItem.SQL.Add('(IDPEDIDO, IDPRODUTO, QUANTIDADE, VLUNITARIO, VLTOTAL)      ');
    qryItem.SQL.Add('VALUES                                                      ');
    qryItem.SQL.Add('(:IDPEDIDO, :IDPRODUTO, :QUANTIDADE, :VLUNITARIO, :VLTOTAL) ');

    qryItem.ParamByName('IDPEDIDO').AsInteger   := idpedido;
    qryItem.ParamByName('IDPRODUTO').AsInteger  := item.codProduto;
    qryItem.ParamByName('QUANTIDADE').AsInteger := item.quantidade;
    qryItem.ParamByName('VLUNITARIO').AsFloat   := item.valorUnitario;
    qryItem.ParamByName('VLTOTAL').AsFloat      := item.valorUnitario * item.quantidade;

    qryItem.ExecSQL;
  end;
end;

procedure TdmConexao.operacaoProduto(produto: TProduto);
var
  qry: TSQLQuery;
begin
  qry := TSQLQuery.Create(self);
  qry.SQLConnection := SQLConnection;

  if not existeRegistro('TBLPRODUTO', 'ID', IntToStr(produto.id)) then
  begin
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('INSERT INTO TBLPRODUTO ');
    qry.SQL.Add('(ID, DESCRICAO)        ');
    qry.SQL.Add('VALUES                 ');
    qry.SQL.Add('(:ID, :DESCRICAO)      ');

    qry.ParamByName('ID').AsInteger := proxID('TBLPRODUTO', 'ID');
  end
  else
  begin
    qry.SQL.Add('UPDATE TBLPRODUTO SET  ');
    qry.SQL.Add('DESCRICAO = :DESCRICAO ');
    qry.SQL.Add('WHERE ID = :ID         ');

    qry.ParamByName('ID').AsInteger := produto.id
  end;

  qry.ParamByName('DESCRICAO').AsString := produto.descricao;
  qry.ExecSQL;
end;

function TdmConexao.proxID(tabela, chave: string): integer;
var
  qry: TSQLQuery;
begin
  qry := TSQLQuery.Create(self);
  qry.SQLConnection := SQLConnection;

  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('SELECT MAX( ' + chave + ') + 1 AS ID FROM ' + tabela);
  qry.Open;

  if qry.RecordCount = 0 then
    Result := 1
  else
    Result := qry.FieldByName('ID').AsInteger;
end;

end.
