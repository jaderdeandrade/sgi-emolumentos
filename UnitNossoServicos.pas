unit UnitNossoServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, FMTBcd, DB, Provider,
  DBClient, SqlExpr;

type
  TfmNossosServicos = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    sqlContaPlano: TSQLDataSet;
    sqlContaPlanoNOME: TStringField;
    sqlContaPlanoCONTA: TStringField;
    cdsContaPlano: TClientDataSet;
    cdsContaPlanoNOME: TStringField;
    cdsContaPlanoCONTA: TStringField;
    dspContaPlano: TDataSetProvider;
    dsContaPLano: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmNossosServicos: TfmNossosServicos;

implementation
     uses UnitdmConect, UnitDmSesi;
{$R *.dfm}

procedure TfmNossosServicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmNossosServicos.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfmNossosServicos.FormActivate(Sender: TObject);
begin
  cdsContaPlano.Open;
end;

procedure TfmNossosServicos.Button1Click(Sender: TObject);
begin
  dmsesi.cdsServico.Active:=true;
  if RadioButton1.Checked= true then
    begin
      if messagedlg('ATENÇÃO! Essa opção irá importar todas as contas' + #13 +
            ' de entrada do Plano de Contas',mtinformation, [mbyes,mbno],0)= mryes then
         begin
            cdsContaPlano.First;
            while not cdsContaPlano.Eof do
              begin
                dmsesi.cdsServico.Insert;
                dmsesi.cdsServicoDESCRICAO.AsString:=cdsContaPlanoNOME.AsString;
                dmsesi.cdsServico.ApplyUpdates(0);
                cdsContaPlano.Next;
              end;
         end;
    end;
  if RadioButton2.Checked = true then
    begin
      if messagedlg('ATENÇÃO! Essa opção irá importar a conta' + #13 +
            ' de entrada do Plano de Contas',mtinformation, [mbyes,mbno],0)= mryes then
         begin
          dmsesi.cdsServico.Insert;
          dmsesi.cdsServicoDESCRICAO.AsString:=cdsContaPlanoNOME.AsString;
          dmsesi.cdsServico.ApplyUpdates(0);
         end;
    end;
end;

end.
