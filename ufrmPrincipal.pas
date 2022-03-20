unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, Vcl.ExtCtrls,
  uCliente, uProduto, uPedido, uItens, ufrmPadrao, ufrmCliente, ufrmPedido, ufrmProduto, udmConexao;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    pnlMenu: TPanel;
    btInicio: TcxButton;
    btnCliente: TcxButton;
    btnPedido: TcxButton;
    btnProduto: TcxButton;
    pnlModal: TPanel;
    procedure btnClienteClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure btnPedidoClick(Sender: TObject);
    procedure btInicioClick(Sender: TObject);
  private
    { Private declarations }
    frameCliente: TfrmCliente;
    frameProduto: TfrmProduto;
    framePedido: TfrmPedido;
    procedure ocultarFrames;
    procedure exibirFrame(frame: TfrmPadrao);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btInicioClick(Sender: TObject);
begin
  ocultarFrames;
end;

procedure TfrmPrincipal.btnClienteClick(Sender: TObject);
begin
  ocultarFrames;

  if frameCliente = nil then
    frameCliente := TfrmCliente.Create(Self);

  frameCliente.iniciar;
  exibirFrame(frameCliente);
end;

procedure TfrmPrincipal.btnPedidoClick(Sender: TObject);
begin
  ocultarFrames;

  if framePedido = nil then
    framePedido := TfrmPedido.Create(Self);

  framePedido.iniciar;
  exibirFrame(framePedido);
end;

procedure TfrmPrincipal.btnProdutoClick(Sender: TObject);
begin
  ocultarFrames;

  if frameProduto = nil then
    frameProduto := TfrmProduto.Create(Self);

  frameProduto.iniciar;
  exibirFrame(frameProduto);
end;

procedure TfrmPrincipal.exibirFrame(frame: TfrmPadrao);
begin
  frame.Parent := pnlModal;
  frame.Align := alClient;

  frame.Visible := True;
end;

procedure TfrmPrincipal.ocultarFrames;
begin
  if frameCliente <> nil then
    frameCliente.Visible := False;

  if frameProduto <> nil then
    frameProduto.Visible := False;

  if framePedido <> nil then
    framePedido.Visible := False;
end;

end.
