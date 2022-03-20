unit uProduto;

interface

type
  TProduto = class

  private
    Fdescricao: string;
    Fid: integer;
    procedure Setdescricao(const Value: string);
    procedure Setid(const Value: integer);

  public
    property id: integer read Fid write Setid;
    property descricao: string read Fdescricao write Setdescricao;
  published

  end;
implementation

{ TProduto }

procedure TProduto.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
end;

procedure TProduto.Setid(const Value: integer);
begin
  Fid := Value;
end;

end.
