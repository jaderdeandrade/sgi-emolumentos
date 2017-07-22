unit UnitSesi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, XPMan, ImgList, StdCtrls, Buttons, ToolWin, ComCtrls,
  mTimeStop, RxGIF, ExtCtrls;

type
  TfmSGI = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Login1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Financeiro1: TMenuItem;
    MovimentodeCaixa1: TMenuItem;
    Caixa1: TMenuItem;
    N3: TMenuItem;
    Servios1: TMenuItem;
    N4: TMenuItem;
    Clientes1: TMenuItem;
    Relatrio1: TMenuItem;
    Caixa2: TMenuItem;
    N6: TMenuItem;
    XPManifest1: TXPManifest;
    ToolBar1: TToolBar;
    SpeedButton9: TSpeedButton;
    BitBtn1: TBitBtn;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    N9: TMenuItem;
    Categoria1: TMenuItem;
    N10: TMenuItem;
    ContasaReceber1: TMenuItem;
    ContasaPagar1: TMenuItem;
    ContasaReceber2: TMenuItem;
    ContasaPAgar2: TMenuItem;
    Fornecedores1: TMenuItem;
    Sistema1: TMenuItem;
    Usurio1: TMenuItem;
    N12: TMenuItem;
    ConfiguraodoSistema1: TMenuItem;
    N13: TMenuItem;
    Sobreosistema1: TMenuItem;
    N14: TMenuItem;
    Ajuda1: TMenuItem;
    ParmetrosdoSistema1: TMenuItem;
    MovimentodeCaixa2: TMenuItem;
    ImportarTabeladeServios1: TMenuItem;
    Extrato1: TMenuItem;
    N15: TMenuItem;
    ListagemdeClientes1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    N5: TMenuItem;
    ManutenoContasaReceber1: TMenuItem;
    N2: TMenuItem;
    EstornodeCaixa1: TMenuItem;
    Image1: TImage;
    SpeedButton5: TSpeedButton;
    N7: TMenuItem;
    Atendimento1: TMenuItem;
    ImageList1: TImageList;
    N8: TMenuItem;
    Auditoria1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Login1Click(Sender: TObject);
    procedure ParmetrosdoSistema1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure ContasaPAgar2Click(Sender: TObject);
    procedure Sobreosistema1Click(Sender: TObject);
    procedure MovimentodeCaixa2Click(Sender: TObject);
    procedure Caixa2Click(Sender: TObject);
    procedure ImportarTabeladeServios1Click(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
    procedure ConfiguraodoSistema1Click(Sender: TObject);
    procedure Extrato1Click(Sender: TObject);
    procedure ContasaReceber2Click(Sender: TObject);
    procedure ListagemdeClientes1Click(Sender: TObject);
    procedure ManutenoContasaReceber1Click(Sender: TObject);
    procedure EstornodeCaixa1Click(Sender: TObject);
    procedure MovimentodeCaixa1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Caixa1Click(Sender: TObject);
    procedure Atendimento1Click(Sender: TObject);
    procedure Auditoria1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    USUARIO: String;
  end;

var
  fmSGI: TfmSGI;

implementation
    uses UnitPesquisaCliente, UnitCategorias, UnitPlanoContas,
  UnitMostraServico, UnitMovCaixa, UnitCaixa, UnitMovimentoCaixa,
  unModulos, UnitPesquisaFornecedor, unLogin,
  UnitPesquisaParametro, ContaReceber, ContaPagar, UnitRelatorioContaPagar,
  xsistema, UnitImprimeMovCaixa, UnitImprimeCaixa, UnitNossoServicos,
  UnitImprimirModalidade, UnitImprimirNovoModalidade, ajuda,
  configuracao,  UnitExtrato,UnitImprimirDepModalidade, UnitCobranca, UnitCobranaBoleta,
  UnitRelatorioContaReceber, UnitGeraCobranca, unitListagemClientes,
  UnitManutencaoContasReceber, UnitChequePrint, UnitListagemCheques,
  fmEstornoIndividualCaixa, UnitBalcao, UnitAuditoria;
{$R *.dfm}

procedure TfmSGI.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TfmSGI.Clientes1Click(Sender: TObject);
begin
   fmPesquisaCliente:=TfmPesquisaCliente.create(application);
   fmPesquisaCliente.Show;
end;

procedure TfmSGI.Categoria1Click(Sender: TObject);
begin
  fmCategorias:=TfmCategorias.create(application);
  fmCategorias.showModal;
end;

procedure TfmSGI.Servios1Click(Sender: TObject);
begin
  fmMostraServico:=TfmMostraServico.create(application);
  fmMostraServico.show;
end;

procedure TfmSGI.Usurio1Click(Sender: TObject);
begin
  fmModulos:=TfmModulos.create(application);
  fmModulos.showmodal;
end;

procedure TfmSGI.Fornecedores1Click(Sender: TObject);
begin
  fmPesquisaFornecedor:=TfmPesquisaFornecedor.create(Application);
  fmPesquisaFornecedor.show;
end;

procedure TfmSGI.FormShow(Sender: TObject);
begin
  fmLogin := tfmLogin.Create(Self);
  fmLogin.ShowModal;
  fmLogin.Free;
end;

procedure TfmSGI.Login1Click(Sender: TObject);
begin
  fmLogin := tfmLogin.Create(Self);
  fmLogin.ShowModal;
  fmLogin.Free;
end;

procedure TfmSGI.ParmetrosdoSistema1Click(Sender: TObject);
begin
  fmPesquisaParametro:=TfmPesquisaParametro.create(self);
  fmPesquisaParametro.showmodal;
end;

procedure TfmSGI.ContasaReceber1Click(Sender: TObject);
begin
  fmContaReceber:=TfmContaReceber.create(Application);
  fmContaReceber.show;
end;

procedure TfmSGI.ContasaPagar1Click(Sender: TObject);
begin
  fmContaPagar:=TfmContaPagar.create(Application);
  fmContaPagar.show;
end;

procedure TfmSGI.ContasaPAgar2Click(Sender: TObject);
begin
  fmRelatorioContasPagar:=tfmRelatorioContasPagar.create(Application);
  fmRelatorioContasPagar.showmodal;
end;

procedure TfmSGI.Sobreosistema1Click(Sender: TObject);
begin
  _xsistema:=T_xsistema.create(Application);
  _xsistema.showmodal;
end;

procedure TfmSGI.MovimentodeCaixa2Click(Sender: TObject);
begin
  fmImprimeMovimentoCaixa:=TfmImprimeMovimentoCaixa.create(Application);
  fmImprimeMovimentoCaixa.showmodal;
end;

procedure TfmSGI.Caixa2Click(Sender: TObject);
begin
  fmCaixa:=TfmCaixa.create(application);
  fmCaixa.showmodal;
end;

procedure TfmSGI.ImportarTabeladeServios1Click(Sender: TObject);
begin
  fmNossosServicos:=TfmNossosServicos.create(application);
  fmNossosServicos.showmodal;
end;

procedure TfmSGI.Ajuda1Click(Sender: TObject);
begin
  fmajuda:=Tfmajuda.create(application);
  fmajuda.showmodal;
end;

procedure TfmSGI.ConfiguraodoSistema1Click(Sender: TObject);
begin
  fmconfiguracao:=Tfmconfiguracao.create(application);
  fmconfiguracao.showmodal;
end;

procedure TfmSGI.Extrato1Click(Sender: TObject);
begin
  fmExtrato:=TfmExtrato.create(self);
  fmExtrato.showmodal;
end;

procedure TfmSGI.ContasaReceber2Click(Sender: TObject);
begin
  fmRelatorioContasReceber:=TfmRelatorioContasReceber.create(self);
  fmRelatorioContasReceber.showmodal;
end;

procedure TfmSGI.ListagemdeClientes1Click(Sender: TObject);
begin
  fmListagemClientes:=TfmListagemClientes.create(self);
  fmListagemClientes.showmodal;
end;

procedure TfmSGI.ManutenoContasaReceber1Click(Sender: TObject);
begin
  fmManutencaoContasReceber:=TfmManutencaoContasReceber.create(self);
  fmManutencaoContasReceber.showmodal;
end;

procedure TfmSGI.EstornodeCaixa1Click(Sender: TObject);
begin
  fmEstornoIndCaixa:=TfmEstornoIndCaixa.create(self);
  fmEstornoIndCaixa.showmodal;
end;

procedure TfmSGI.MovimentodeCaixa1Click(Sender: TObject);
begin
  fmFechaMovimentoCaixa:=TfmFechaMovimentoCaixa.create(self);
  fmFechaMovimentoCaixa.showmodal;
end;

procedure TfmSGI.SpeedButton5Click(Sender: TObject);
begin
  fmBalcao:=TfmBalcao.create(self);
  fmBalcao.ShowModal;
end;

procedure TfmSGI.Caixa1Click(Sender: TObject);
begin
  fmImprimeCaixa:=TfmImprimeCaixa.create(self);
  fmImprimeCaixa.ShowModal;
end;

procedure TfmSGI.Atendimento1Click(Sender: TObject);
begin
  fmBalcao:=TfmBalcao.create(self);
  fmBalcao.ShowModal;
end;

procedure TfmSGI.Auditoria1Click(Sender: TObject);
begin
  fmAuditoria:=TfmAuditoria.create(self);
  fmAuditoria.ShowModal;
end;

end.
