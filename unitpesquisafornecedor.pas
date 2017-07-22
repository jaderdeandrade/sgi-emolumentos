unit UnitPesquisaFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, Grids, DBGrids,
  ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TfmPesquisaFornecedor = class(TForm)
    Panel1: TPanel;
    btProcura: TSpeedButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    cdsfornecedor: TClientDataSet;
    dsfornecedor: TDataSource;
    dspfornecedor: TDataSetProvider;
    sqlfornecedor: TSQLDataSet;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btProcuraClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisaFornecedor: TfmPesquisaFornecedor;

implementation

uses UnitCadastroFornecedor, UnitdmConect, UnitDmSesi;

{$R *.dfm}

procedure TfmPesquisaFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmPesquisaFornecedor.Button1Click(Sender: TObject);
begin
  fmCadastroFornecedor:=TfmCadastroFornecedor.create(Application);
  dmsesi.cdsfornecedor.Active:=true;
  dmsesi.cdsfornecedor.Insert;
  fmCadastroFornecedor.habilitacampos(true);
  fmCadastroFornecedor.showmodal;
end;

procedure TfmPesquisaFornecedor.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (not odd(cdsFornecedor.RecNo)) then // Se for impar
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

procedure TfmPesquisaFornecedor.DBGrid1DblClick(Sender: TObject);
begin
// seleciona a empresa para edição
  if not cdsFornecedor.IsEmpty then
    begin
      dmsesi.cdsfornecedor.Close;
      dmsesi.cdsfornecedor.CommandText:='select  * from FORNECEDORES where FORNECEDORES.ID ='+QuotedStr(cdsFornecedor.FieldByName('ID').AsString);
      dmsesi.cdsfornecedor.Open;

      // apresento o form para edição
      fmCadastroFornecedor:=TfmCadastroFornecedor.create(self);
      dmsesi.cdsfornecedor.Active:=true;
      dmsesi.cdsfornecedor.Edit;
      fmCadastroFornecedor.habilitacampos(false);
      fmCadastroFornecedor.showmodal;
    end;
end;

procedure TfmPesquisaFornecedor.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TfmPesquisaFornecedor.Button2Click(Sender: TObject);
begin
  if messagedlg('Confirma baixa do registro?',mtinformation, [mbyes,mbno],0)= mryes then
      begin
        dmsesi.cdsFornecedor.Close;
        dmsesi.cdsfornecedor.CommandText:='select * from FORNECEDORES where ID='+QuotedStr(cdsfornecedor.fieldByName('ID').asString);
        dmsesi.cdsFornecedor.Open;
        dmsesi.cdsFornecedor.Delete;
        dmsesi.cdsFornecedor.ApplyUpdates(0);
        
        cdsfornecedor.Close;
        cdsfornecedor.CommandText:='select * from FORNECEDORES';
        cdsfornecedor.Open;
      end;
end;

procedure TfmPesquisaFornecedor.btProcuraClick(Sender: TObject);
begin
  cdsFornecedor.Close;
  cdsFornecedor.CommandText:='Select * from FORNECEDORES where  (FORNECEDORES.NOME like '+''''+'%'+edit1.text+'%'+''')';
  cdsFornecedor.open;
end;

procedure TfmPesquisaFornecedor.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    begin
       // seleciona a empresa para edição
      if not cdsFornecedor.IsEmpty then
        begin
          dmsesi.cdsfornecedor.Close;
          dmsesi.cdsfornecedor.CommandText:='select  * from FORNECEDORES where (FORNECEDORES.ID)='+QuotedStr(cdsFornecedor.FieldByName('ID').AsString);
          dmsesi.cdsfornecedor.Open;

          // apresento o form para edição
          fmCadastroFornecedor:=TfmCadastroFornecedor.create(self);
          dmsesi.cdsfornecedor.Active:=true;
          dmsesi.cdsfornecedor.Edit;
          fmCadastroFornecedor.habilitacampos(false);
          fmCadastroFornecedor.showmodal;
        end;
    end;
end;

procedure TfmPesquisaFornecedor.FormActivate(Sender: TObject);
begin
//  cdsFornecedor.Active:= true;
end;

procedure TfmPesquisaFornecedor.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    btProcura.Click;
end;

end.
