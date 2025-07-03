unit UControleCliente;

interface

uses UControleBase, UdtmCliente, System.SysUtils, Vcl.Forms, Windows,
  UCliente;

type
  TControleCliente = class(TControleBase)
  private
  public
    constructor Create;
    destructor Destroy;

    function ConsultarCliente(objCliente: TCliente): TCliente;
  end;


implementation

{ TControleCliente }

function TControleCliente.ConsultarCliente(objCliente: TCliente): TCliente;
begin
  Result := (FObjetoDAO as TdtmCliente).ConsultarCliente(objCliente);
  if Result.id_Cliente = 0 then
    Application.MessageBox('Cliente não encontrado!', 'Aviso', MB_OK +
      MB_ICONWARNING);
end;

constructor TControleCliente.Create;
begin
  FObjetoDAO := TdtmCliente.Create(nil);
  inherited;
end;

destructor TControleCliente.Destroy;
begin
  inherited;
end;

end.
