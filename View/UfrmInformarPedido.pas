unit UfrmInformarPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmInformarPedido = class(TForm)
    pnlEdit: TPanel;
    pnlBotao: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    lblNumeroPedido: TLabel;
    edtNumeroPedido: TEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure edtNumeroPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure btnConfirmarClick(Sender: TObject);
  private
    FNumeroPedido: Integer;
    procedure SetNumeroPedido(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property NumeroPedido: Integer read FNumeroPedido write SetNumeroPedido;
  end;

var
  frmInformarPedido: TfrmInformarPedido;

implementation

{$R *.dfm}

procedure TfrmInformarPedido.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmInformarPedido.btnConfirmarClick(Sender: TObject);
begin
  if edtNumeroPedido.Text = EmptyStr then
    raise Exception.Create('Número do pedido não informado!');

  NumeroPedido := StrToInt(edtNumeroPedido.Text);
end;

procedure TfrmInformarPedido.edtNumeroPedidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key, ['0'..'9']) then
    Key := #0;
end;

procedure TfrmInformarPedido.SetNumeroPedido(const Value: Integer);
begin
  FNumeroPedido := Value;
end;

end.
