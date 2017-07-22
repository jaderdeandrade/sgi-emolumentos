unit Consultaempresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, Provider, DBClient,
  SqlExpr, Grids, DBGrids, ComCtrls;

type
  T_pesquisaEmpresa = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    sqlEmpresa: TSQLDataSet;
    cdsEmpresa: TClientDataSet;
    dspEmpresa: TDataSetProvider;
    dsEmpresa: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    btPesquisa: TBitBtn;
    Button3: TButton;
    Button4: TButton;
    Button2: TButton;
    sqlEmpresaID: TIntegerField;
    sqlEmpresaRAZAOSOCIAL: TStringField;
    sqlEmpresaDENOMINACAO: TStringField;
    sqlEmpresaENDERECO: TStringField;
    sqlEmpresaBAIRRO: TStringField;
    sqlEmpresaCIDADE: TStringField;
    sqlEmpresaCEP: TStringField;
    sqlEmpresaESTADO: TStringField;
    sqlEmpresaFONE: TStringField;
    sqlEmpresaFAX: TStringField;
    sqlEmpresaCNPJ: TStringField;
    sqlEmpresaCODCNAE: TStringField;
    sqlEmpresaCNAE: TStringField;
    sqlEmpresaGRAURISCO: TStringField;
    sqlEmpresaCIPA: TStringField;
    sqlEmpresaINSCRESTADUAL: TStringField;
    sqlEmpresaEMAIL: TStringField;
    sqlEmpresaSITE: TStringField;
    sqlEmpresaCONTATO: TStringField;
    sqlEmpresaDTCONTRATOINI: TDateField;
    sqlEmpresaDTCONTRATOFIM: TDateField;
    sqlEmpresaDATAPPRA: TDateField;
    sqlEmpresaDATALTCAT: TDateField;
    sqlEmpresaDATAPCMSO: TDateField;
    sqlEmpresaDTULTPGTO: TDateField;
    sqlEmpresaOBS: TStringField;
    sqlEmpresaMTE: TStringField;
    sqlEmpresaQTDEEMPREGADOS: TIntegerField;
    sqlEmpresaATIVO: TStringField;
    cdsEmpresaID: TIntegerField;
    cdsEmpresaRAZAOSOCIAL: TStringField;
    cdsEmpresaDENOMINACAO: TStringField;
    cdsEmpresaENDERECO: TStringField;
    cdsEmpresaBAIRRO: TStringField;
    cdsEmpresaCIDADE: TStringField;
    cdsEmpresaCEP: TStringField;
    cdsEmpresaESTADO: TStringField;
    cdsEmpresaFONE: TStringField;
    cdsEmpresaFAX: TStringField;
    cdsEmpresaCNPJ: TStringField;
    cdsEmpresaCODCNAE: TStringField;
    cdsEmpresaCNAE: TStringField;
    cdsEmpresaGRAURISCO: TStringField;
    cdsEmpresaCIPA: TStringField;
    cdsEmpresaINSCRESTADUAL: TStringField;
    cdsEmpresaEMAIL: TStringField;
    cdsEmpresaSITE: TStringField;
    cdsEmpresaCONTATO: TStringField;
    cdsEmpresaDTCONTRATOINI: TDateField;
    cdsEmpresaDTCONTRATOFIM: TDateField;
    cdsEmpresaDATAPPRA: TDateField;
    cdsEmpresaDATALTCAT: TDateField;
    cdsEmpresaDATAPCMSO: TDateField;
    cdsEmpresaDTULTPGTO: TDateField;
    cdsEmpresaOBS: TStringField;
    cdsEmpresaMTE: TStringField;
    cdsEmpresaQTDEEMPREGADOS: TIntegerField;
    cdsEmpresaATIVO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btPesquisaClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _pesquisaEmpresa: T_pesquisaEmpresa;
implementation
  uses data, empresa, dataEmpresa;
{$R *.dfm}

procedure T_pesquisaEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure T_pesquisaEmpresa.Button3Click(Sender: TObject);
begin
   dmEmpresa.cdsEmpresa.Active:=true;
   dmEmpresa.cdsEmpresa.Insert;
   dmEmpresa.spEmpresa.ExecProc;
   dmEmpresa.cdsEmpresa.FieldByName('ID').AsInteger:=dmEmpresa.spEmpresa.Params.ParamByName('ID').AsInteger;
  _empresa:=T_empresa.create(self);
  _empresa.IDEMPRESA:= dmEmpresa.cdsEmpresa.FieldByName('ID').AsInteger;
  _empresa.EMPRESA:= cdsEmpresa.FieldByName('RAZAOSOCIAL').AsString;
  _empresa.habilitacampos(true);
  _empresa.bt:=0;
  _empresa.showmodal;
end;

procedure T_pesquisaEmpresa.Button2Click(Sender: TObject);
begin
  close;
end;

procedure T_pesquisaEmpresa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (not odd(cdsEmpresa.RecNo)) then // Se for impar
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

procedure T_pesquisaEmpresa.FormActivate(Sender: TObject);
begin
  cdsEmpresa.Active:=true;
end;

procedure T_pesquisaEmpresa.Button4Click(Sender: TObject);
begin
  if messagedlg('Confirma baixa do registro?',mtinformation, [mbyes,mbno],0)= mryes then
      begin
        // seleciona empresa
        dmEmpresa.cdsEmpresa.Close;
        dmEmpresa.cdsEmpresa.CommandText:='select  * from Empresas where (Empresas.ID)='+QuotedStr(cdsEmpresa.FieldByName('ID').AsString);
        dmEmpresa.cdsEmpresa.Open;
        // edita e desativa
        dmEmpresa.cdsEmpresa.Edit;
        dmEmpresa.cdsEmpresa.FieldByName('ATIVO').AsString:='0';
        dmEmpresa.cdsEmpresa.ApplyUpdates(0);
        // carrega somente as desativadas
        cdsEmpresa.Close;
        cdsEmpresa.CommandText:='select * from Empresas where (Empresas.Ativo='+QuotedStr('1')+')';
        cdsEmpresa.Open;
      end;
  

end;

procedure T_pesquisaEmpresa.DBGrid1TitleClick(Column: TColumn);
var
campo:string;
begin
  campo:=column.fieldname; // CAMPO RECEBE O NOME DA COLUNA CLICADA,
  application.ProcessMessages; // para considerar algo que aconteça no dbgrid durante a entrada nesta procedure
  if not cdsEmpresa.IsEmpty then
    begin
      cdsEmpresa.Close; // LIMPA A QUERY
      cdsEmpresa.CommandText:='select * from Empresas  where (Empresas.Ativo='+QuotedStr('1')+') order by '+campo; // ESCREVE O SELECT COM O ORDER BY
      cdsEmpresa.Open; // ABRE A QUERY COM A ORDEM ESCOLHIDA.
      //column.Font.color:=clblue; // COLOCAR A COLUNA NA COR DESEJADA
    end;
end;

procedure T_pesquisaEmpresa.btPesquisaClick(Sender: TObject);
begin
  cdsEmpresa.Close;
  cdsEmpresa.CommandText:='Select * from EMPRESAS where (EMPRESAS.ATIVO ='+QuotedStr('1')+') and ' +
                         ' (EMPRESAS.RAZAOSOCIAL like '+''''+'%'+edit1.text+'%'+''')';
  cdsEmpresa.open;
  if cdsEmpresa.IsEmpty then
    begin
       cdsEmpresa.Close;
       cdsEmpresa.CommandText:='Select * from EMPRESAS where (EMPRESAS.ATIVO ='+QuotedStr('1')+') and ' +
                               ' (EMPRESAS.DENOMINACAO like '+''''+'%'+edit1.text+'%'+''')';
       cdsEmpresa.open;
    end;

end;

procedure T_pesquisaEmpresa.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
    begin
      if not cdsEmpresa.IsEmpty then
          begin
            _empresa:=T_empresa.create(self);
            dmEmpresa.cdsEmpresa.Active:=true;
            dmEmpresa.cdsEmpresa.Close;
            dmEmpresa.cdsEmpresa.CommandText:='select  * from Empresas where (Empresas.ID)='+QuotedStr(cdsEmpresa.FieldByName('ID').AsString);
            dmEmpresa.cdsEmpresa.Open;
            _empresa.IDEMPRESA:= cdsEmpresa.FieldByName('ID').AsInteger;
            _empresa.EMPRESA:= cdsEmpresa.FieldByName('RAZAOSOCIAL').AsString;
            _empresa.bt:=1;
            _empresa.habilitacampos(false);
            _empresa.showmodal;
          end;
    end;
end;

procedure T_pesquisaEmpresa.DBGrid1DblClick(Sender: TObject);
begin                                    
  if not cdsEmpresa.IsEmpty then
      begin
        _empresa:=T_empresa.create(self);
        dmEmpresa.cdsEmpresa.Active:=true;
        dmEmpresa.cdsEmpresa.Close;
        dmEmpresa.cdsEmpresa.CommandText:='select  * from Empresas where Empresas.ID ='+QuotedStr(cdsEmpresa.FieldByName('ID').AsString);
        dmEmpresa.cdsEmpresa.Open;
        //_empresa.EMPRESA:= cdsEmpresa.FieldByName('RAZAOSOCIAL').AsString;
        _empresa.IDEMPRESA:= cdsEmpresa.FieldByName('ID').AsInteger;
        _empresa.EMPRESA:= cdsEmpresa.FieldByName('RAZAOSOCIAL').AsString;
        _empresa.bt:=1;
        _empresa.habilitacampos(false);
        _empresa.showmodal;
      end;
end;

procedure T_pesquisaEmpresa.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    btPesquisa.Click;
end;

end.
