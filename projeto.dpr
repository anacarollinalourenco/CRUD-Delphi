program projeto;

uses
  Vcl.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  udmConexao in 'persistencia\udmConexao.pas' {dmConexao: TDataModule},
  uProduto in 'classes\uProduto.pas',
  uPedido in 'classes\uPedido.pas',
  uItens in 'classes\uItens.pas',
  uCliente in 'classes\uCliente.pas',
  ufrmPadrao in 'ufrmPadrao.pas' {frmPadrao: TFrame},
  ufrmCliente in 'ufrmCliente.pas' {frmCliente: TFrame},
  ufrmProduto in 'ufrmProduto.pas' {frmProduto: TFrame},
  ufrmPedido in 'ufrmPedido.pas' {frmPedido: TFrame},
  ufrmCadastroCliente in 'ufrmCadastroCliente.pas' {frmCadastroCliente},
  ufrmCadastroProduto in 'ufrmCadastroProduto.pas' {frmCadastroProduto},
  ufrmCadastroPedido in 'ufrmCadastroPedido.pas' {frmCadastroPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.CreateForm(TfrmCadastroProduto, frmCadastroProduto);
  Application.CreateForm(TfrmCadastroPedido, frmCadastroPedido);
  Application.Run;
end.
