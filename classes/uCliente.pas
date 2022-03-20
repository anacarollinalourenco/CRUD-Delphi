unit uCliente;

interface

type
  TCliente = class

  private
    Flogradouro: string;
    Fbairro: string;
    Fuf: string;
    Fcep: string;
    Fid: integer;
    Fcomplemento: string;
    Fnome: string;
    FcodIBGE: string;
    Fcidade: string;
    procedure Setbairro(const Value: string);
    procedure Setcep(const Value: string);
    procedure Setcidade(const Value: string);
    procedure SetcodIBGE(const Value: string);
    procedure Setcomplemento(const Value: string);
    procedure Setid(const Value: integer);
    procedure Setlogradouro(const Value: string);
    procedure Setnome(const Value: string);
    procedure Setuf(const Value: string);

  public
    property id: integer read Fid write Setid;
    property nome: string read Fnome write Setnome;
    property cep: string read Fcep write Setcep;
    property logradouro: string read Flogradouro write Setlogradouro;
    property complemento: string read Fcomplemento write Setcomplemento;
    property bairro: string read Fbairro write Setbairro;
    property cidade: string read Fcidade write Setcidade;
    property uf: string read Fuf write Setuf;
    property codIBGE: string read FcodIBGE write SetcodIBGE;
  published

  end;
implementation

{ TCliente }

procedure TCliente.Setbairro(const Value: string);
begin
  Fbairro := Value;
end;

procedure TCliente.Setcep(const Value: string);
begin
  Fcep := Value;
end;

procedure TCliente.Setcidade(const Value: string);
begin
  Fcidade := Value;
end;

procedure TCliente.SetcodIBGE(const Value: string);
begin
  FcodIBGE := Value;
end;

procedure TCliente.Setcomplemento(const Value: string);
begin
  Fcomplemento := Value;
end;

procedure TCliente.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure TCliente.Setlogradouro(const Value: string);
begin
  Flogradouro := Value;
end;

procedure TCliente.Setnome(const Value: string);
begin
  Fnome := Value;
end;

procedure TCliente.Setuf(const Value: string);
begin
  Fuf := Value;
end;

end.
