unit UnitPlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls, FMTBcd, SqlExpr,
  Provider, DB, DBClient, RLReport, RLXLSFilter, RLPDFFilter, RLHTMLFilter,
  RLFilters, RLRichFilter, RLDraftFilter, Buttons, Menus;

type
  TfmPlanoContas = class(TForm)
    Panel1: TPanel;
    btGravar: TButton;
    btCancelar: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    dsPlanoConta: TDataSource;
    cdsPlanoConta: TClientDataSet;
    cdsPlanoContaIDPLANOCONTAS: TIntegerField;
    cdsPlanoContaNOME: TStringField;
    cdsPlanoContaTIPO: TStringField;
    dspPlanoConta: TDataSetProvider;
    sqlPlanoConta: TSQLDataSet;
    sqlPlanoContaIDPLANOCONTAS: TIntegerField;
    sqlPlanoContaNOME: TStringField;
    sqlPlanoContaTIPO: TStringField;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid2: TDBGrid;
    dsContaPLano: TDataSource;
    cdsContaPlano: TClientDataSet;
    cdsContaPlanoIDCONTA: TIntegerField;
    cdsContaPlanoIDPLACOCONTA: TIntegerField;
    cdsContaPlanoNOME: TStringField;
    cdsContaPlanoCONTA: TStringField;
    dspContaPlano: TDataSetProvider;
    sqlContaPlano: TSQLDataSet;
    sqlContaPlanoIDCONTA: TIntegerField;
    sqlContaPlanoIDPLACOCONTA: TIntegerField;
    sqlContaPlanoNOME: TStringField;
    sqlContaPlanoCONTA: TStringField;
    btimprimir: TSpeedButton;
    RLReport1: TRLReport;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    Imprimireste1: TMenuItem;
    RLBand4: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    spdeleteconta: TSQLStoredProc;
    procedure btGravarClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btCancelarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Imprimireste1Click(Sender: TObject);
    procedure btimprimirClick(Sender: TObject);
    procedure RLReport1AfterPrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure campo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPlanoContas: TfmPlanoContas;

implementation
    uses UnitdmConect, UnitCadastroPlanoContas,UnitDMSesi,UnitContaPlano;
{$R *.dfm}

procedure TfmPlanoContas.btGravarClick(Sender: TObject);
begin
  formCadastroPlanoContas:=TformCadastroPlanoContas.create(self);
  dmsesi.cdsPlanoConta.Open;
  dmsesi.cdsPlanoConta.Insert;
  dmsesi.spPlanoConta.ExecProc;
  dmsesi.cdsPlanoConta.FieldByName('IDPLANOCONTAS').AsInteger:=dmsesi.spPlanoConta.Params.ParamByName('ID').AsInteger;
  formCadastroPlanoContas.showmodal;
end;

procedure TfmPlanoContas.Button4Click(Sender: TObject);
begin
  close;
end;

procedure TfmPlanoContas.FormActivate(Sender: TObject);
begin
  cdsPlanoConta.Open;
  cdsContaPlano.Open;
end;

procedure TfmPlanoContas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (not odd(cdsPlanoConta.RecNo)) then // Se for impar
    begin
      // Se a celula não está selecionada
      if (not (gdSelected in State)) then
        begin
          // Define uma cor de fundo
          DBGrid1.Canvas.Brush.Color := $00E6E6E6;
          DBGrid1.Canvas.FillRect(Rect); // pinta a célula
          // pinta o texto padrão
          DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
        end;
    end;
end;

procedure TfmPlanoContas.DBGrid1DblClick(Sender: TObject);
begin
  if not cdsPlanoConta.IsEmpty then
      begin
        formCadastroPlanoContas:=TformCadastroPlanoContas.create(self);
        dmsesi.cdsPlanoConta.Open;
        dmsesi.cdsPlanoConta.Close;
        dmsesi.cdsPlanoConta.CommandText:='select * from PLANOCONTAS where IDPLANOCONTAS ='+QuotedStr(cdsPlanoConta.FieldByName('IDPLANOCONTAS').AsString);
        dmsesi.cdsPlanoConta.Open;
        formCadastroPlanoContas.showmodal;
      end;
end;

procedure TfmPlanoContas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      if not cdsPlanoConta.IsEmpty then
          begin
            formCadastroPlanoContas:=TformCadastroPlanoContas.create(self);
            dmsesi.cdsPlanoConta.Open;
            dmsesi.cdsPlanoConta.Close;
            dmsesi.cdsPlanoConta.CommandText:='select * from PLANOCONTAS where IDPLANOCONTAS ='+QuotedStr(cdsPlanoConta.FieldByName('IDPLANOCONTAS').AsString);
            dmsesi.cdsPlanoConta.Open;
            formCadastroPlanoContas.showmodal;
          end;
    end;
end;
procedure TfmPlanoContas.btCancelarClick(Sender: TObject);
begin
  if messagedlg('Confirma baixa do registro?',mtinformation, [mbyes,mbno],0)= mryes then
      begin
        dmsesi.cdsPlanoConta.Close;
        dmsesi.cdsPlanoConta.CommandText:='select * from PLANOCONTAS where IDPLANOCONTAS ='+QuotedStr(cdsPlanoConta.FieldByName('IDPLANOCONTAS').AsString);
        dmsesi.cdsPlanoConta.Open;

        dmsesi.cdsPlanoConta.Delete;
        dmsesi.cdsPlanoConta.ApplyUpdates(0);

        cdsPlanoConta.Close;
        cdsPlanoConta.Open;
      end;
end;

procedure TfmPlanoContas.Button1Click(Sender: TObject);
begin
  fmSubContaPlano:=TfmSubContaPlano.create(self);
  fmSubContaPlano.lbconta.Caption:=cdsPlanoContaNOME.AsString;
  fmSubContaPlano.pconta:=cdsPlanoContaIDPLANOCONTAS.AsInteger;
  fmSubContaPlano.showmodal;
end;

procedure TfmPlanoContas.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if (not odd(cdsContaPlano.RecNo)) then // Se for impar
    begin
      // Se a celula não está selecionada
      if (not (gdSelected in State)) then
        begin
          // Define uma cor de fundo
          DBGrid2.Canvas.Brush.Color := $00E6E6E6;
          DBGrid2.Canvas.FillRect(Rect); // pinta a célula
          // pinta o texto padrão
          DBGrid2.DefaultDrawDataCell(Rect,Column.Field,State);
        end;
    end;
end;

procedure TfmPlanoContas.Button3Click(Sender: TObject);
begin
  if messagedlg('Confirma baixa do registro?',mtinformation, [mbyes,mbno],0)= mryes then
      begin
        spdeleteconta.Params.ParamByName('IDCONTA').AsInteger:=cdsContaPlano.FieldByName('IDCONTA').AsInteger;
        spdeleteconta.ExecProc;
        cdsContaPlano.Close;
        cdsContaPlano.Open;
      end;
end;

procedure TfmPlanoContas.Label1Click(Sender: TObject);
begin
  showmessage('Para imprimir somente uma conta.'+#13+
            'Clique com o botão direito do mouse e '+#13+
            'selecione Imprimir somente este Plano de Contas.');
end;

procedure TfmPlanoContas.Imprimireste1Click(Sender: TObject);
begin
  campo;
  RLReport1.PreviewModal;

end;

procedure TfmPlanoContas.btimprimirClick(Sender: TObject);
 begin
   RLReport1.PreviewModal;
 end;

procedure TfmPlanoContas.campo;
var
 campo:string;
begin
  campo:=DBGrid1.Fields[0].AsString;
  application.ProcessMessages;
  cdsPlanoConta.Close;
  cdsPlanoConta.CommandText:='select * from PLANOCONTAS where NOME='+QuotedStr(campo);
  cdsPlanoConta.Open;

end;

procedure TfmPlanoContas.RLReport1AfterPrint(Sender: TObject);
begin
  cdsPlanoConta.Close;
  cdsPlanoConta.CommandText:='select * from PLANOCONTAS';
  cdsPlanoConta.Open;
end;

procedure TfmPlanoContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
