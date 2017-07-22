unit UnitPesquisaParametro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, DBClient, Provider, Grids, DBGrids,
  StdCtrls, ComCtrls, ExtCtrls;

type
  TfmPesquisaParametro = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    dsParametro: TDataSource;
    dspParametro: TDataSetProvider;
    cdsParametro: TClientDataSet;
    sqlParametro: TSQLDataSet;
    spParametro: TSQLStoredProc;
    Button3: TButton;
    Button4: TButton;
    Button2: TButton;
    sqlParametroID: TIntegerField;
    sqlParametroNOME: TStringField;
    sqlParametroCNPJ: TStringField;
    sqlParametroENDERECO: TStringField;
    sqlParametroBAIRRO: TStringField;
    sqlParametroCEP: TStringField;
    sqlParametroCIDADE: TStringField;
    sqlParametroESTADO: TStringField;
    sqlParametroTELEFONE: TStringField;
    sqlParametroFAX: TStringField;
    sqlParametroEMAIL: TStringField;
    sqlParametroSITE: TStringField;
    sqlParametroLOGOMARCA: TStringField;
    cdsParametroID: TIntegerField;
    cdsParametroNOME: TStringField;
    cdsParametroCNPJ: TStringField;
    cdsParametroENDERECO: TStringField;
    cdsParametroBAIRRO: TStringField;
    cdsParametroCEP: TStringField;
    cdsParametroCIDADE: TStringField;
    cdsParametroESTADO: TStringField;
    cdsParametroTELEFONE: TStringField;
    cdsParametroFAX: TStringField;
    cdsParametroEMAIL: TStringField;
    cdsParametroSITE: TStringField;
    cdsParametroLOGOMARCA: TStringField;
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisaParametro: TfmPesquisaParametro;

implementation
  uses UnitdmConect,UnitDmSesi, UnitParametros;
{$R *.dfm}

procedure TfmPesquisaParametro.Button3Click(Sender: TObject);
begin
  if cdsParametro.IsEmpty then
    begin
      dmsesi.cdsParametro.Active:=true;
      dmsesi.cdsParametro.Insert;
      fmParametros:=TfmParametros.create(self);
      fmParametros.habilitacampos(true);
      fmParametros.foto;
      fmParametros.showmodal;
    end
  else
  if not cdsParametro.IsEmpty then
    begin
      if messagedlg('ATENÇÃO! Não é permitido mais de um Parâmetro.'+#13+
          'Gostaria de editar o registro corrente?',mtConfirmation, [mbyes,mbno],0)= mryes then
          begin
            dmsesi.cdsParametro.Active:=true;
            dmsesi.cdsParametro.Close;
            dmsesi.cdsParametro.CommandText:='select * from PARAMETROS where PARAMETROS.ID= '+QuotedStr(IntToStr(cdsParametroID.AsInteger))+'order by PARAMETROS.ID';
            dmsesi.cdsParametro.Open;

            fmParametros:=TfmParametros.create(self);
            fmParametros.habilitacampos(false);
            fmParametros.foto;
            fmParametros.showmodal;
          end;
    end;

end;

procedure TfmPesquisaParametro.DBGrid1DblClick(Sender: TObject);
begin
  if not cdsParametro.IsEmpty then
    begin
      dmsesi.cdsParametro.Active:=true;
      dmsesi.cdsParametro.Close;
      dmsesi.cdsParametro.CommandText:='select * from PARAMETROS where PARAMETROS.ID= '+
                  QuotedStr(IntToStr(cdsParametroID.AsInteger))+
                  'order by PARAMETROS.ID';
      dmsesi.cdsParametro.Open;

      fmParametros:=TfmParametros.create(self);
      fmParametros.habilitacampos(false);
      fmParametros.foto;
      fmParametros.showmodal;
    end;
end;

procedure TfmPesquisaParametro.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    begin
      if not cdsParametro.IsEmpty then
        begin
          dmsesi.cdsParametro.Active:=true;
          dmsesi.cdsParametro.Close;
          dmsesi.cdsParametro.CommandText:='select * from PARAMETROS where PARAMETROS.ID= '+
                    QuotedStr(IntToStr(cdsParametroID.AsInteger))+
                    'order by PARAMETROS.ID';
          dmsesi.cdsParametro.Open;

          fmParametros:=TfmParametros.create(self);
          fmParametros.habilitacampos(false);
          fmParametros.foto;
          fmParametros.showmodal;
        end;
    end;
end;

procedure TfmPesquisaParametro.FormActivate(Sender: TObject);
begin
  cdsParametro.Active:=true;
end;

procedure TfmPesquisaParametro.Button4Click(Sender: TObject);
begin
  if messagedlg('Confirma exclusão do registro?',mtinformation, [mbyes,mbno],0)= mryes then
      begin
        spParametro.ParamByName('IDPARAMETRO').AsInteger:= cdsParametroID.AsInteger;
        spParametro.ExecProc;
        cdsParametro.Close;
        cdsParametro.CommandText:='select * from PARAMETROS order by PARAMETROS.ID';
        cdsParametro.Open;
      end;
end;

procedure TfmPesquisaParametro.Button2Click(Sender: TObject);
begin
  close;
end;

end.
