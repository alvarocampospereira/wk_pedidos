unit UPedido;

interface

type
  TPedido = class
  private
    Fid_Pedido: Integer;
    Fid_Cliente: Integer;
    FValorTotal: Double;
    FDataEmissao: TDate;
    procedure SetDataEmissao(const Value: TDate);
    procedure Setid_Cliente(const Value: Integer);
    procedure Setid_Pedido(const Value: Integer);
    procedure SetValorTotal(const Value: Double);
  public
    property id_Pedido: Integer read Fid_Pedido write Setid_Pedido;
    property DataEmissao: TDate read FDataEmissao write SetDataEmissao;
    property id_Cliente: Integer read Fid_Cliente write Setid_Cliente;
    property ValorTotal: Double read FValorTotal write SetValorTotal;
  end;

implementation

{ TPedido }

procedure TPedido.SetDataEmissao(const Value: TDate);
begin
  FDataEmissao := Value;
end;

procedure TPedido.Setid_Cliente(const Value: Integer);
begin
  Fid_Cliente := Value;
end;

procedure TPedido.Setid_Pedido(const Value: Integer);
begin
  Fid_Pedido := Value;
end;

procedure TPedido.SetValorTotal(const Value: Double);
begin
  FValorTotal := Value;
end;

end.
