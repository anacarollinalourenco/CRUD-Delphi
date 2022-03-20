unit ufrmCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Json, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  TfrmCadastroCliente = class(TForm)
    edtID: TEdit;
    edtNome: TEdit;
    edtCep: TEdit;
    btnCep: TcxButton;
    edtLogradouro: TEdit;
    edtBairro: TEdit;
    edtUF: TEdit;
    edtCodIbge: TEdit;
    edtCidade: TEdit;
    edtComplemento: TEdit;
    btnSalvar: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    XMLDocument: TXMLDocument;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCepClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure preencherCampos;
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

uses
  UCliente, udmConexao;
{$R *.dfm}

procedure TfrmCadastroCliente.btnCepClick(Sender: TObject);
begin
  XMLDocument.Active := false;
  XMLDocument.LoadFromFile('http://viacep.com.br/ws/' + edtCep.Text + '/xml/');
  XMLDocument.Active := true;

  edtLogradouro.Text  := XMLDocument.ChildNodes['xmlcep'].ChildNodes['logradouro'].Text;
  edtBairro.Text      := XMLDocument.ChildNodes['xmlcep'].ChildNodes['bairro'].Text;
  edtUF.Text          := XMLDocument.ChildNodes['xmlcep'].ChildNodes['uf'].Text;
  edtCodIbge.Text     := XMLDocument.ChildNodes['xmlcep'].ChildNodes['ibge'].Text;
  edtCidade.Text      := XMLDocument.ChildNodes['xmlcep'].ChildNodes['localidade'].Text;
  edtComplemento.Text := XMLDocument.ChildNodes['xmlcep'].ChildNodes['complemento'].Text;

  XMLDocument.Active := false;
end;

procedure TfrmCadastroCliente.btnSalvarClick(Sender: TObject);
var
 cliente: TCliente;
begin
  cliente := TCliente.Create;

  if edtID.Text = EmptyStr then
    cliente.id        := 0
  else
    cliente.id        := StrToInt(edtID.Text);

  cliente.nome        := edtNome.Text;
  cliente.cep         := edtCep.Text;
  cliente.logradouro  := edtLogradouro.Text;
  cliente.complemento := edtComplemento.Text;
  cliente.bairro      := edtBairro.Text;
  cliente.cidade      := edtCidade.Text;
  cliente.uf          := edtuf.Text;
  cliente.codIBGE     := edtCodIbge.Text;

  dmConexao.operacaoCliente(cliente);

  ShowMessage('Cliente salvo com sucesso.');

  cliente.Free;
  Close;
end;

procedure TfrmCadastroCliente.preencherCampos;
begin
  edtID.Text          := dmConexao.cdsClienteID.AsString;
  edtNome.Text        := dmConexao.cdsClienteNOME.AsString;
  edtCep.Text         := dmConexao.cdsClienteCEP.AsString;
  edtLogradouro.Text  := dmConexao.cdsClienteLOGRADOURO.AsString;
  edtComplemento.Text := dmConexao.cdsClienteCOMPLEMENTO.AsString;
  edtBairro.Text      := dmConexao.cdsClienteBAIRRO.AsString;
  edtCidade.Text      := dmConexao.cdsClienteCIDADE.AsString;
  edtuf.Text          := dmConexao.cdsClienteUF.AsString;
  edtCodIbge.Text     := dmConexao.cdsClienteCODIBGE.AsString;
end;

end.
