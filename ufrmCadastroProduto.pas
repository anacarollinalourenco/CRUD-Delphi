unit ufrmCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons;

type
  TfrmCadastroProduto = class(TForm)
    edtID: TEdit;
    edtDescricao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnSalvar: TcxButton;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure preencherCampos;
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

uses
  UProduto, udmConexao;
{$R *.dfm}

{ TfrmCadastroProduto }

procedure TfrmCadastroProduto.btnSalvarClick(Sender: TObject);
var
 produto: TProduto;
begin
  Produto := TProduto.Create;

  if edtID.Text = EmptyStr then
    Produto.id      := 0
  else
    Produto.id      := StrToInt(edtID.Text);

  Produto.descricao := edtDescricao.Text;

  dmConexao.operacaoProduto(produto);

  ShowMessage('Produto salvo com sucesso.');

  produto.Free;
  Close;
end;

procedure TfrmCadastroProduto.preencherCampos;
begin
  edtID.Text        := dmConexao.cdsProdutoID.AsString;
  edtDescricao.Text := dmConexao.cdsProdutoDESCRICAO.AsString;
end;

end.
