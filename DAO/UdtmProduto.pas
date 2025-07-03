unit UdtmProduto;

interface

uses
  System.SysUtils, System.Classes, UdtmBaseDAO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uProduto;

type
  TdtmProduto = class(TdtmBaseDAO)
  private
    { Private declarations }
  public
    { Public declarations }
    function ConsultarProduto(objProduto: TProduto): TProduto;
  end;

var
  dtmProduto: TdtmProduto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdtmProduto }

function TdtmProduto.ConsultarProduto(objProduto: TProduto): TProduto;
begin
  qryBase.Close;
  qryBase.SQL.Clear;
  qryBase.SQL.Add('SELECT ID_PRODUTO, DESCRICAO, PRECOVENDA FROM PRODUTO WHERE ID_PRODUTO = ' + IntToStr(objProduto.id_Produto));
  qryBase.Open;
  Result := objProduto;
  Result.Descricao := qryBase.FieldByName('DESCRICAO').AsString;
  Result.PrecoVenda := qryBase.FieldByName('PRECOVENDA').AsFloat;
  Result.id_Produto := qryBase.FieldByName('ID_PRODUTO').AsInteger;
  qryBase.Close;
end;

end.
