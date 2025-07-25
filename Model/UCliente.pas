unit UCliente;

interface

type
  TCliente = class
  private
    FUF: string;
    Fid_Cliente: Integer;
    FNome: string;
    FCidade: string;
    procedure SetCidade(const Value: string);
    procedure Setid_Cliente(const Value: Integer);
    procedure SetNome(const Value: string);
    procedure SetUF(const Value: string);
  public
    property id_Cliente: Integer read Fid_Cliente write Setid_Cliente;
    property Nome: string read FNome write SetNome;
    property Cidade: string read FCidade write SetCidade;
    property UF: string read FUF write SetUF;
  end;

implementation

{ TCliente }

procedure TCliente.SetCidade(const Value: string);
begin
  FCidade := Value;
end;

procedure TCliente.Setid_Cliente(const Value: Integer);
begin
  Fid_Cliente := Value;
end;

procedure TCliente.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TCliente.SetUF(const Value: string);
begin
  FUF := Value;
end;

end.
