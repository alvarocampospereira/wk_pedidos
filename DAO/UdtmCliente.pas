unit UdtmCliente;

interface

uses
  System.SysUtils, System.Classes, UdtmBaseDAO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uCliente;

type
  TdtmCliente = class(TdtmBaseDAO)
  private
    { Private declarations }
  public
    { Public declarations }
    function ConsultarCliente(objCliente: TCliente): TCliente;
  end;

var
  dtmCliente: TdtmCliente;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdtmCliente }

function TdtmCliente.ConsultarCliente(objCliente: TCliente): TCliente;
begin
  qryBase.Close;
  qryBase.SQL.Clear;
  qryBase.SQL.Add('SELECT ID_CLIENTE, NOME, CIDADE, UF FROM CLIENTE WHERE ID_CLIENTE = ' + IntToStr(objCliente.id_Cliente));
  qryBase.Open;
  Result := objCliente;
  Result.Nome := qryBase.FieldByName('NOME').AsString;
  Result.Cidade := qryBase.FieldByName('CIDADE').AsString;
  Result.UF := qryBase.FieldByName('UF').AsString;
  Result.id_Cliente := qryBase.FieldByName('ID_CLIENTE').AsInteger;
  qryBase.Close;
end;

end.
