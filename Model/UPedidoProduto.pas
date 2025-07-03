unit UPedidoProduto;

interface

uses UProduto, System.SysUtils;

type
  TPedidoProduto = class
  private
    Fid_Pedido: Integer;
    Fid_PedidoProduto: Integer;
    FValorUnitario: Double;
    FValorTotal: Double;
    FQuantidade: Double;
    FProduto: TProduto;
    procedure Setid_Pedido(const Value: Integer);
    procedure Setid_PedidoProduto(const Value: Integer);
    procedure SetQuantidade(const Value: Double);
    procedure SetValorTotal(const Value: Double);
    procedure SetValorUnitario(const Value: Double);
    procedure SetProduto(const Value: TProduto);
  public
    constructor Create;
    destructor Destroy; override;
    property id_PedidoProduto: Integer read Fid_PedidoProduto write Setid_PedidoProduto;
    property id_Pedido: Integer read Fid_Pedido write Setid_Pedido;
    property Produto: TProduto read FProduto write SetProduto;
    property Quantidade: Double read FQuantidade write SetQuantidade;
    property ValorUnitario: Double read FValorUnitario write SetValorUnitario;
    property ValorTotal: Double read FValorTotal write SetValorTotal;
  end;

implementation

{ TPedidoProduto }

constructor TPedidoProduto.Create;
begin
  FProduto := TProduto.Create;
end;

destructor TPedidoProduto.Destroy;
begin
  FreeAndNil(FProduto);
end;

procedure TPedidoProduto.Setid_Pedido(const Value: Integer);
begin
  Fid_Pedido := Value;
end;

procedure TPedidoProduto.Setid_PedidoProduto(const Value: Integer);
begin
  Fid_PedidoProduto := Value;
end;

procedure TPedidoProduto.SetProduto(const Value: TProduto);
begin
  FProduto := Value;
end;

procedure TPedidoProduto.SetQuantidade(const Value: Double);
begin
  FQuantidade := Value;
end;

procedure TPedidoProduto.SetValorTotal(const Value: Double);
begin
  FValorTotal := Value;
end;

procedure TPedidoProduto.SetValorUnitario(const Value: Double);
begin
  FValorUnitario := Value;
end;

end.
