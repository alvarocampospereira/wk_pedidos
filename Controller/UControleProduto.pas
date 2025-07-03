unit UControleProduto;

interface

uses UControleBase, UdtmProduto, System.SysUtils, Vcl.Forms, Windows,
  UProduto;

type
  TControleProduto = class(TControleBase)
  private
  public
    constructor Create;
    destructor Destroy;

    function ConsultarProduto(objProduto: TProduto): TProduto;
  end;

implementation

{ TControleProduto }

function TControleProduto.ConsultarProduto(objProduto: TProduto): TProduto;
begin
  Result := (FObjetoDAO as TdtmProduto).ConsultarProduto(objProduto);
  if Result.id_Produto = 0 then
    Application.MessageBox('Produto não encontrado!', 'Aviso', MB_OK +
      MB_ICONWARNING);
end;

constructor TControleProduto.Create;
begin
  FObjetoDAO := TdtmProduto.Create(nil);
  inherited;
end;

destructor TControleProduto.Destroy;
begin
  inherited;
end;

end.
