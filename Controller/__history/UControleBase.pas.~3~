unit UControleBase;

interface

uses UdtmBaseDAO, System.SysUtils;

type
  TControleBase = class(TObject)
  private
  public
    FObjetoDAO: TdtmBaseDAO;
    constructor Create;
    destructor Destroy;

    function ConsultarDescricao(id: Integer): String;
  end;

implementation

{ TControleBase }

function TControleBase.ConsultarDescricao(id: Integer): String;
begin
  Result := FObjetoDAO.ConsultarDescricao(id);
end;

constructor TControleBase.Create;
begin

end;

destructor TControleBase.Destroy;
begin
  FreeAndNil(FObjetoDAO);
end;

end.
