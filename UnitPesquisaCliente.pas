unit UnitPesquisaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Provider, SqlExpr, DB, DBClient, StdCtrls, Grids,
  DBGrids, ExtCtrls;

type
  TfmPesquisaCliente = class(TForm)
    dscliente: TDataSource;
    cdscliente: TClientDataSet;
    sqlcliente: TSQLDataSet;
    dspcliente: TDataSetProvider;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    edtpesquisa: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edtpesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisaCliente: TfmPesquisaCliente;

implementation
      uses UnitdmConect, UnitCadCliente,UnitDmSesi;
{$R *.dfm}

procedure TfmPesquisaCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmPesquisaCliente.FormActivate(Sender: TObject);
begin
  edtpesquisa.SetFocus;
  //cdscliente.Open;
end;

procedure TfmPesquisaCliente.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TfmPesquisaCliente.Button1Click(Sender: TObject);
begin
  fmCadCliente:=TfmCadCliente.create(self);
  dmsesi.cdscliente.active := true;
  dmsesi.cdscliente.Insert;
  dmsesi.cdsclienteDATACADASTRO.AsDateTime:=Date;
  fmCadCliente.habilitacampos(true);
  fmCadCliente.setaFormBusca:=0;
  fmCadCliente.showmodal;
end;

procedure TfmPesquisaCliente.edtpesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  try
    if key=#13 then
      begin
       cdsCliente.Close;
       cdsCliente.CommandText:='Select * from CLIENTE where  (CLIENTE.NOME like '+''''+'%'+edtpesquisa.text+'%'+''') order by IDCLIENTE';
       cdsCliente.open;
     end;
    Except
    end;
end;

procedure TfmPesquisaCliente.Button2Click(Sender: TObject);
begin
  if messagedlg('Confirma baixa do registro?',mtinformation, [mbyes,mbno],0)= mryes then
      begin
        // seleciona empresa
        dmsesi.cdscliente.Close;
        dmsesi.cdscliente.CommandText:='select  * from CLIENTE where CLIENTE.IDCLIENTE='+ QuotedStr(cdscliente.FieldByName('IDCLIENTE').AsString);
        dmsesi.cdscliente.Open;
        dmsesi.cdscliente.Delete;
        dmsesi.cdscliente.ApplyUpdates(0);
       cdsCliente.Close;
       cdsCliente.CommandText:='Select * from CLIENTE order by IDCLIENTE';
       cdsCliente.open;
      end;
end;

procedure TfmPesquisaCliente.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
    begin
      if not cdscliente.IsEmpty then
          begin
            fmCadCliente:=TfmCadCliente.create(application);
            dmsesi.cdscliente.Active:=true;
            dmsesi.cdscliente.Close;
            dmsesi.cdscliente.CommandText:='select  * from CLIENTE where CLIENTE.IDCLIENTE ='+QuotedStr(cdscliente.FieldByName('IDCLIENTE').AsString);
            dmsesi.cdscliente.Open;
            fmCadCliente.habilitacampos(false);
              fmCadCliente.showmodal;
          end;
    end;
end;


procedure TfmPesquisaCliente.DBGrid1DblClick(Sender: TObject);
begin
  if not cdscliente.IsEmpty then
    begin
      fmCadCliente:=TfmCadCliente.create(application);
      dmsesi.cdscliente.Active:=true;
      dmsesi.cdscliente.Close;
      dmsesi.cdscliente.CommandText:='select  * from CLIENTE where CLIENTE.IDCLIENTE ='+QuotedStr(cdscliente.FieldByName('IDCLIENTE').AsString);
      dmsesi.cdscliente.Open;
      fmCadCliente.habilitacampos(false);
      fmCadCliente.showmodal;
    end;

end;

procedure TfmPesquisaCliente.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (not odd(cdscliente.RecNo)) then // Se for impar
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

end.
