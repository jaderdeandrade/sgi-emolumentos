unit UnitDmAcesso;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DB, SqlExpr, Provider, DBClient, Forms,
  Controls, Menus;

type
  TdmAcesso = class(TDataModule)
    sdsUsuarios: TSQLDataSet;
    dspUsuarios: TDataSetProvider;
    cdsUsuarios: TClientDataSet;
    dsusuarios: TDataSource;
    cdsUsuariosItens: TClientDataSet;
    dspUsuariosItens: TDataSetProvider;
    dsUsuariosItens: TDataSource;
    sdsUsuariosItens: TSQLDataSet;
    sdsUsuariosUSU_ID: TIntegerField;
    sdsUsuariosUSU_LOGIN: TStringField;
    sdsUsuariosUSU_SENHA: TStringField;
    sdsUsuariosUSU_DATA: TDateField;
    cdsUsuariosUSU_ID: TIntegerField;
    cdsUsuariosUSU_LOGIN: TStringField;
    cdsUsuariosUSU_SENHA: TStringField;
    cdsUsuariosUSU_DATA: TDateField;
    sdsUsuariosItensUSU_ID: TIntegerField;
    sdsUsuariosItensUSU_SEQUENCIA: TIntegerField;
    sdsUsuariosItensUSU_MENUINDEX: TIntegerField;
    sdsUsuariosItensUSU_PARENT: TIntegerField;
    sdsUsuariosItensUSU_FORM: TStringField;
    sdsUsuariosItensUSU_OBJETO: TStringField;
    sdsUsuariosItensUSU_DESCRICAO: TStringField;
    sdsUsuariosItensUSU_PERMISSAO: TStringField;
    cdsUsuariosItensUSU_ID: TIntegerField;
    cdsUsuariosItensUSU_SEQUENCIA: TIntegerField;
    cdsUsuariosItensUSU_MENUINDEX: TIntegerField;
    cdsUsuariosItensUSU_PARENT: TIntegerField;
    cdsUsuariosItensUSU_FORM: TStringField;
    cdsUsuariosItensUSU_OBJETO: TStringField;
    cdsUsuariosItensUSU_DESCRICAO: TStringField;
    cdsUsuariosItensUSU_PERMISSAO: TStringField;
    procedure dspUsuariosGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspUsuariosItensGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function Cript(mCad, mOp : string):string;
  procedure ConfiguraMenu(oForm: TForm; Item, Permissao: String);
  function AutoInc(Generator: String; Conexao: TSQLConnection): Integer;

{ classes de objetos a serem tratados }
const
  OutrosObjetos = 'TSPEEDBUTTON,TTOOLBUTTON,TBUTTON,TBITBTN,TTBITEM,TRXSPEEDBUTOON';

{ ------------- utilizando para acessar propriedade protegidas --------------- }
type
  TMostraProp = class(TControl)
  published
    property Caption;
    property Enabled;
  end;
{ ---------------------------------------------------------------------------- }

var
  dmAcesso: TdmAcesso;

implementation
  uses UnitdmConect;
{$R *.dfm}

(*
  Criptografar e descriptografar strings.
  Paramentros:
    mCad = texto
    mOp, se CRIPT, criptografa, se DESCRIPT, descriptografa
*)
function Cript(mCad, mOp : string):string;
var
  i, ate, x1, x2 : integer;
  r1, r2         : string[1];
begin
  if Odd(Length(mCad)) then mCad := mCad + ' ';
  ate := Length(mCad) div 2;
  for i := 1 to ate do
    begin
      x1 := ord(mCad[((i-1) * 2) + 1]);
      x2 := ord(mCad[((i-1) * 2) + 2]);
      if mOp = 'DESCRIPT' then
        begin
          r2 := chr((-x2 + x1 + 90) div 2);
          r1 := chr(x1 - ((-x2 + x1 + 90) div 2));
       end
     else
        begin
           r2 := chr(x1 + 90 - x2);
           r1 := chr( x1 + x2);
        end;
      result := result + r1 + r2;
    end;
end;
(*
 Varre um determinado formulário, pesquisando determinados componentes e
 habilita ou não, de acordo com as permissões de usuário.
*)
procedure ConfiguraMenu(oForm: TForm; Item, Permissao: String);
var
  C: TComponent;
begin
  C := oForm.FindComponent(Item);
  try
    if (C <> nil) then
    begin
      (* configura itens do menu *)
      if C is TMenuItem then
      begin
        if Permissao = 'S' then
          TMenuItem(C).Enabled := True
        else
          TMenuItem(C).Enabled := False;
      end
      else (* configura outros objetos *)
      begin
        if Permissao = 'S' then
          TMostraProp(C).Enabled := True
        else
          TMostraProp(C).Enabled := False;
      end;
    end;
  finally
    C := nil;
  end;
end;
(*
  Retorna o valor de um generator existente no banco de dados.
*)
function AutoInc(Generator: String; Conexao: TSQLConnection): Integer;
var
  SQLGen: TSQLDataSet;
begin
  SQLGen := TSQLDataSet.Create(Application);
  try
    SQLGen.SQLConnection := Conexao;
    SQLGen.CommandText := 'Select Cast(Gen_Id('+Generator+',1) as Integer) as Codigo From Rdb$Database';
    SQLGen.Open;
    Result := SQLGen.FieldByName('Codigo').AsInteger;
    SQLGen.Close;
  finally
    SQLGen.Free;
  end;
end;

procedure TdmAcesso.dspUsuariosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName:='USUARIOS';
end;

procedure TdmAcesso.dspUsuariosItensGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName:='USUARIOITENS';
end;

end.
