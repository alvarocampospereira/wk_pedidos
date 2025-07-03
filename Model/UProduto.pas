unit UProduto;

interface

type
  TProduto = class
  private
    Fid_Produto: Integer;
    FDescricao: string;
    FPrecoVenda: Currency;
    procedure SetDescricao(const Value: string);
    procedure Setid_Produto(const Value: Integer);
    procedure SetPrecoVenda(const Value: Currency);
  public
    property id_Produto: Integer read Fid_Produto write Setid_Produto;
    property Descricao: string read FDescricao write SetDescricao;
    property PrecoVenda: Currency read FPrecoVenda write SetPrecoVenda;
  end;

implementation

{ TProduto }

procedure TProduto.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TProduto.Setid_Produto(const Value: Integer);
begin
  Fid_Produto := Value;
end;

procedure TProduto.SetPrecoVenda(const Value: Currency);
begin
  FPrecoVenda := Value;
end;

end.
