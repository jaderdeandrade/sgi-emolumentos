unit UnitModalidadeCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, DBCtrls, SqlExpr, DB, DBClient, Provider,
  dbcgrids, ExtCtrls, ImgList, Grids, DBGrids, Mask, ToolEdit, RXDBCtrl,
  RxLookup;

type
  TfmModalidade = class(TForm)
    Panel1: TPanel;
    btGravar: TButton;
    Button2: TButton;
    btEditar: TButton;
    Label2: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    dsservico: TDataSource;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
    cdsServicoIDSERVICO: TIntegerField;
    cdsServicoDESCRICAO: TStringField;
    cdsServicoVALOR: TFMTBCDField;
    sqlServico: TSQLDataSet;
    sqlServicoIDSERVICO: TIntegerField;
    sqlServicoDESCRICAO: TStringField;
    sqlServicoVALOR: TFMTBCDField;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
  private
    { Private declarations }
  public
       IDCLIENTE : integer;
    Function VerificaCampos(DataSource : TDataSource) : Boolean;
    procedure habilitacampos(x: boolean);
    { Public declarations }
  end;

var
  fmModalidade: TfmModalidade;

implementation
   uses UnitdmConect, UnitDmSesi,UnitFinanceiroCliente;
{$R *.dfm}

procedure TfmModalidade.Button2Click(Sender: TObject);
begin
  close;
end;


procedure TfmModalidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmModalidade.habilitacampos(x: boolean);
var
  count : integer;
begin
  for count:=0 to Pred(Self.ComponentCount) do
  begin
    if x = false then
      begin
        if Self.Components[count].ClassType = TDBEdit then
        (Self.Components[count] as TDBEdit).Enabled:= false;

        if Self.Components[count].ClassType = TRxDBLookupCombo then
        (Self.Components[count] as TRxDBLookupCombo ).Enabled:= false;


        if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btGravar' then
          (Self.Components[count] as TButton).Enabled:= false;
        end;

      end
    else
    if x = true then
      begin
        if Self.Components[count].ClassType = TDBEdit then
        (Self.Components[count] as TDBEdit).Enabled:= true;

        if Self.Components[count].ClassType = TRxDBLookupCombo  then
        (Self.Components[count] as TRxDBLookupCombo ).Enabled:= true;


        if Self.Components[count].ClassType = TButton then
        begin
         if (Self.Components[count] as TButton).Name = 'btGravar' then
          (Self.Components[count] as TButton).Enabled:= true;
        end;
      end;
  end;

end;

function TfmModalidade.VerificaCampos(DataSource: TDataSource): Boolean;
Var
  C : Byte;
begin                                                             // A rotina ao lado faz um laço em todos os fields da
   Result := True;                                                // tabela  e procura por fields que sejam
   With(DataSource.DataSet)Do                                     // requeridos pelo sistema e estejam em branco.
   Begin                                                          // Se houver algum requerido em branco, então o sistema
      For C := 0 To FieldCount -1 Do                              // emitirá uma mensagem sobre o ocorrido e colocará o
      Begin                                                       // focus "SetFocus" no campo não preenchido;
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

procedure TfmModalidade.btEditarClick(Sender: TObject);
begin
  dmsesi.cdsModalidade.Edit;
  habilitacampos(true);
end;

procedure TfmModalidade.btGravarClick(Sender: TObject);
begin
  dmsesi.cdsModalidade.FieldByName('CLIENTE_IDCLIENTE').AsInteger:=IDCLIENTE;
  if VerificaCampos(dmsesi.dsModalidade) then
    begin
      dmsesi.cdsModalidade.ApplyUpdates(0);
      habilitacampos(false);
       end;
  fmFinanceiroCliente.cdsModalidade.Close;
  fmFinanceiroCliente.cdsModalidade.Params.ParamByName('idcliente').AsInteger:=IDCLIENTE;
  fmFinanceiroCliente.cdsModalidade.Open;
end;

procedure TfmModalidade.FormShow(Sender: TObject);
begin
  cdsServico.Open;
end;

procedure TfmModalidade.RxDBLookupCombo1Exit(Sender: TObject);
begin
  dmsesi.cdsModalidade.FieldByName('VALOR').AsFloat:=cdsServicoVALOR.AsFloat;
end;

end.
