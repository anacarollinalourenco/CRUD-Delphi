unit ufrmCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmPadrao, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmCliente = class(TfrmPadrao)
    grdPadraoDBTableView1ID: TcxGridDBColumn;
    grdPadraoDBTableView1NOME: TcxGridDBColumn;
    grdPadraoDBTableView1CEP: TcxGridDBColumn;
    grdPadraoDBTableView1LOGRADOURO: TcxGridDBColumn;
    grdPadraoDBTableView1COMPLEMENTO: TcxGridDBColumn;
    grdPadraoDBTableView1BAIRRO: TcxGridDBColumn;
    grdPadraoDBTableView1CIDADE: TcxGridDBColumn;
    grdPadraoDBTableView1UF: TcxGridDBColumn;
    grdPadraoDBTableView1CODIBGE: TcxGridDBColumn;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure iniciar;
  end;

var
  frmCliente: TfrmCliente;

implementation

uses
  udmConexao, uCliente, ufrmCadastroCliente;
{$R *.dfm}

{ TfrmCliente }

procedure TfrmCliente.btnAlterarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  frmCadastroCliente.preencherCampos;
  frmCadastroCliente.ShowModal;

  iniciar;
end;

procedure TfrmCliente.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if dmConexao.apagarRegistro('TBLCLIENTE', 'ID', dmConexao.cdsClienteID.AsString) then
    ShowMessage('Registro excluído com sucesso.');

  iniciar;
end;

procedure TfrmCliente.btnIncluirClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  frmCadastroCliente.ShowModal;

  iniciar;
end;

procedure TfrmCliente.iniciar;
begin
  dmConexao.qryCliente.Close;
  dmConexao.qryCliente.Open;

  if not dmConexao.cdsCliente.Active then
    dmConexao.cdsCliente.Active := true
  else
    dmConexao.cdsCliente.Refresh;
end;

end.
