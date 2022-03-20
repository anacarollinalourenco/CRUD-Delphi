unit uPedido;

interface

uses
  System.Generics.Collections, System.SysUtils, uItens;

type
  TPedido = class
  private
    FcodCliente: integer;
    FlistaItens: TObjectList<TItens>;
    FnumPedido: integer;
    Fid: integer;
    FvalorTotal: double;
    Freferencia: string;
    FtipoOper: string;
    FdtEmissao: TDate;
    procedure SetcodCliente(const Value: integer);
    procedure SetdtEmissao(const Value: TDate);
    procedure Setid(const Value: integer);
    procedure SetlistaItens(const Value: TObjectList<TItens>);
    procedure SetnumPedido(const Value: integer);
    procedure Setreferencia(const Value: string);
    procedure SettipoOper(const Value: string);
    procedure SetvalorTotal(const Value: double);

  public
    property id: integer read Fid write Setid;
    property referencia: string read Freferencia write Setreferencia;
    property numPedido: integer read FnumPedido write SetnumPedido;
    property dtEmissao: TDate read FdtEmissao write SetdtEmissao;
    property codCliente: integer read FcodCliente write SetcodCliente;
    property tipoOper: string read FtipoOper write SettipoOper;
    property valorTotal: double read FvalorTotal write SetvalorTotal;
    property listaItens: TObjectList<TItens> read FlistaItens write SetlistaItens;
    constructor create;
    destructor destroy; override;
    procedure novoItem(idPedido,
                       codigoProduto,
                       quantidade: integer;
                       valorUnitario: double);

  published
 end;
implementation

{ TPedido }

constructor TPedido.create;
begin
  Fid := 0;
  FdtEmissao := now;
  FlistaItens := TObjectList<TItens>.Create;
end;

destructor TPedido.destroy;
begin
  FreeAndNil(FlistaItens);
  inherited;
end;

procedure TPedido.novoItem(idPedido, codigoProduto, quantidade: integer;
  valorUnitario: double);
var
  i: integer;
begin
  FlistaItens.Add(TItens.Create);

  i := FlistaItens.Count -1;

  FlistaItens[i].idPedido      := idPedido;
  FlistaItens[i].codProduto    := codigoProduto;
  FlistaItens[i].quantidade    := quantidade;
  FlistaItens[i].valorUnitario := valorUnitario;
  FlistaItens[i].valorTotal    := (valorUnitario * quantidade);
end;

procedure TPedido.SetcodCliente(const Value: integer);
begin
  FcodCliente := Value;
end;

procedure TPedido.SetdtEmissao(const Value: TDate);
begin
  FdtEmissao := Value;
end;

procedure TPedido.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure TPedido.SetlistaItens(const Value: TObjectList<TItens>);
begin
  FlistaItens := Value;
end;

procedure TPedido.SetnumPedido(const Value: integer);
begin
  FnumPedido := Value;
end;

procedure TPedido.Setreferencia(const Value: string);
begin
  Freferencia := Value;
end;

procedure TPedido.SettipoOper(const Value: string);
begin
  FtipoOper := Value;
end;

procedure TPedido.SetvalorTotal(const Value: double);
begin
  FvalorTotal := Value;
end;

end.
