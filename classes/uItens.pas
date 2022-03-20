unit uItens;

interface

type
  TItens = class

  private
    FvalorUnitario: double;
    FvalorTotal: double;
    Fquantidade: integer;
    FidPedido: integer;
    FcodProduto: integer;
    procedure SetcodProduto(const Value: integer);
    procedure SetidPedido(const Value: integer);
    procedure Setquantidade(const Value: integer);
    procedure SetvalorTotal(const Value: double);
    procedure SetvalorUnitario(const Value: double);

  public
    property idPedido: integer read FidPedido write SetidPedido;
    property codProduto: integer read FcodProduto write SetcodProduto;
    property quantidade: integer read Fquantidade write Setquantidade;
    property valorUnitario: double read FvalorUnitario write SetvalorUnitario;
    property valorTotal: double read FvalorTotal write SetvalorTotal;
  published

end;


implementation

{ TItens }

procedure TItens.SetcodProduto(const Value: integer);
begin
  FcodProduto := Value;
end;

procedure TItens.SetidPedido(const Value: integer);
begin
  FidPedido := Value;
end;

procedure TItens.Setquantidade(const Value: integer);
begin
  Fquantidade := Value;
end;

procedure TItens.SetvalorTotal(const Value: double);
begin
  FvalorTotal := Value;
end;

procedure TItens.SetvalorUnitario(const Value: double);
begin
  FvalorUnitario := Value;
end;

end.
