unit UControlePedidoProduto;

interface

uses UControleBase, UdtmPedidoProduto, System.SysUtils, Vcl.Forms, Windows,
  UPedidoProduto, System.Generics.Collections;

type
  TControlePedidoProduto = class(TControleBase)
  private
  public
    constructor Create;
    destructor Destroy;

    function ConsultarPedidoProduto(objPedidoProduto: TPedidoProduto): TObjectList<TPedidoProduto>;
    function SalvarPedidoProduto(objPedidoProduto: TPedidoProduto): TPedidoProduto;
    function ExcluirPedidoProduto(id: Integer): Boolean;
    function ExcluirTodosProdutosPedido(id: Integer): Boolean;
  end;

implementation

{ TControlePedidoProduto }

function TControlePedidoProduto.ConsultarPedidoProduto(
  objPedidoProduto: TPedidoProduto): TObjectList<TPedidoProduto>;
begin
  Result := (FObjetoDAO as TdtmPedidoProduto).ConsultarPedidoProduto(objPedidoProduto);
end;

constructor TControlePedidoProduto.Create;
begin
  FObjetoDAO := TdtmPedidoProduto.Create(nil);
  inherited;
end;

destructor TControlePedidoProduto.Destroy;
begin
  inherited;
end;

function TControlePedidoProduto.ExcluirPedidoProduto(id: Integer): Boolean;
begin
  try
    Result := (FObjetoDAO as TdtmPedidoProduto).ExcluirPedidoProduto(id);
  except on E: Exception do
    raise Exception.Create(e.Message);
  end;
end;

function TControlePedidoProduto.ExcluirTodosProdutosPedido(
  id: Integer): Boolean;
begin
  try
    Result := (FObjetoDAO as TdtmPedidoProduto).ExcluirTodosProdutosPedido(id);
  except on E: Exception do
    raise Exception.Create(e.Message);
  end;
end;

function TControlePedidoProduto.SalvarPedidoProduto(
  objPedidoProduto: TPedidoProduto): TPedidoProduto;
begin
  try
    Result := (FObjetoDAO as TdtmPedidoProduto).SalvarPedidoProduto(objPedidoProduto);
  except on E: Exception do
    raise Exception.Create(e.Message);
  end;
end;

end.
