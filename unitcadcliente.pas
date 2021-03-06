unit UnitCadCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Mask, DBCtrls, ExtCtrls, Provider, SqlExpr,
  DB, DBClient, Buttons, ExtDlgs, RLReport, ToolEdit, RXDBCtrl;

type
  TfmCadCliente = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    btGravar: TButton;
    btEditar: TButton;
    btFechar: TButton;
    cdsCategoria: TClientDataSet;
    cdsCategoriaIDCATEGORIA: TIntegerField;
    cdsCategoriaNOME: TStringField;
    dsCategoria: TDataSource;
    dspCategoria: TDataSetProvider;
    sqlCategoria: TSQLDataSet;
    sqlCategoriaIDCATEGORIA: TIntegerField;
    sqlCategoriaNOME: TStringField;
    Label31: TLabel;
    RLReport2: TRLReport;
    RLBand8: TRLBand;
    RLDraw13: TRLDraw;
    RLLabel22: TRLLabel;
    RLDraw14: TRLDraw;
    RLLabel25: TRLLabel;
    RLLabel36: TRLLabel;
    RLBand9: TRLBand;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLDBText41: TRLDBText;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLLabel56: TRLLabel;
    RLDBText42: TRLDBText;
    RLBand14: TRLBand;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    RLLabel64: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    RLDBText48: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand12: TRLBand;
    RLLabel61: TRLLabel;
    RLDraw21: TRLDraw;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLBand13: TRLBand;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText9: TRLDBText;
    Label17: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    procedure btFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEditarClick(Sender: TObject);
    private
    { Private declarations }
  public
    setaFormBusca : Integer;
    Function VerificaCampos(DataSource : TDataSource) : Boolean;
    procedure habilitacampos(x: boolean);
    
    { Public declarations }
  end;

var
  fmCadCliente: TfmCadCliente;

implementation
      uses unitdmConect, UnitDmSesi,UnitPesquisaCliente,UnitShowCliente,
 UnitFinanceiroCliente;
{$R *.dfm}

procedure TfmCadCliente.btFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfmCadCliente.FormActivate(Sender: TObject);
begin
  cdsCategoria.Open;
end;

procedure TfmCadCliente.habilitacampos(x: boolean);
var
  count : integer;
begin
  for count:=0 to Pred(Self.ComponentCount) do
  begin
    if x = false then
      begin
        if Self.Components[count].ClassType = TDBEdit then
        (Self.Components[count] as TDBEdit).Enabled:= false;

        if Self.Components[count].ClassType = TDBComboBox then
        (Self.Components[count] as TDBComboBox).Enabled:= false;

        if Self.Components[count].ClassType = TDBLookupComboBox then
        (Self.Components[count] as TDBLookupComboBox).Enabled:= false;

        if Self.Components[count].ClassType = TDBCheckBox then
        (Self.Components[count] as TDBCheckBox).Enabled:= false;

        if Self.Components[count].ClassType = TDBDateEdit then
        (Self.Components[count] as TDBDateEdit).Enabled:= false;

        if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btGravar' then
          (Self.Components[count] as TButton).Enabled:= false;
        end;

        if Self.Components[count].ClassType = TSpeedButton then
        begin
         if (Self.Components[count] as TSpeedButton).Name = 'btModalidade' then
          (Self.Components[count] as TSpeedButton).Enabled:= false;
        end;
      end
    else
    if x = true then
      begin
        if Self.Components[count].ClassType = TDBEdit then
        (Self.Components[count] as TDBEdit).Enabled:= true;

        if Self.Components[count].ClassType = TDBComboBox then
        (Self.Components[count] as TDBComboBox).Enabled:= true;

        if Self.Components[count].ClassType = TDBLookupComboBox then
        (Self.Components[count] as TDBLookupComboBox).Enabled:= true;

        if Self.Components[count].ClassType = TDBCheckBox then
        (Self.Components[count] as TDBCheckBox).Enabled:= true;

        if Self.Components[count].ClassType = TDBDateEdit then
        (Self.Components[count] as TDBDateEdit).Enabled:= true;

        if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btGravar' then
          (Self.Components[count] as TButton).Enabled:= true;
        end;

        if Self.Components[count].ClassType = TSpeedButton then
        begin
         if (Self.Components[count] as TSpeedButton).Name = 'btModalidade' then
          (Self.Components[count] as TSpeedButton).Enabled:= true;
        end;
      end;
  end;
end;

function TfmCadCliente.VerificaCampos(DataSource: TDataSource): Boolean;
Var
  C : Byte;
begin                                                             // A rotina ao lado faz um la�o em todos os fields da
   Result := True;                                                // tabela  e procura por fields que sejam
   With(DataSource.DataSet)Do                                     // requeridos pelo sistema e estejam em branco.
   Begin                                                          // Se houver algum requerido em branco, ent�o o sistema
      For C := 0 To FieldCount -1 Do                              // emitir� uma mensagem sobre o ocorrido e colocar� o
      Begin                                                       // focus "SetFocus" no campo n�o preenchido;
         If((Fields[C].Tag=1))And(Trim(Fields[C].Text)='')Then
         Begin
            Result := False;
            MessageBeep(64);
            MessageDlg('Preencha o campo "'+Fields[C].DisplayLabel+'".',mtInformation,[mbOk],0);
            Fields[C].FocusControl;
            Break;
         End;
      End;
   End;
end;

procedure TfmCadCliente.btGravarClick(Sender: TObject);
begin
  if VerificaCampos(dmsesi.dscliente) then
      begin
        dmsesi.cdscliente.ApplyUpdates(0);
        habilitacampos(false);
      end;
    if setaFormBusca = 0 then
      begin
        fmPesquisaCliente.cdscliente.Close;
        fmPesquisaCliente.cdscliente.CommandText:='select * from CLIENTE';
        fmPesquisaCliente.cdscliente.Open;
      end;
  close;
end;


procedure TfmCadCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmCadCliente.btEditarClick(Sender: TObject);
begin
  dmsesi.cdscliente.Edit;
  habilitacampos(true);
// procuradep;
end;

end.
