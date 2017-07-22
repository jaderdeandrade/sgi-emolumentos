unit UnitChequePrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dbcgrids, StdCtrls, Buttons, Mask, DBCtrls,IniFiles,
  Extensos, Math,DB, ToolEdit, CurrEdit;

type
  TfmChequePrint = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    textID: TEdit;
    textNumCheque: TEdit;
    textBanco: TEdit;
    textValor: TCurrencyEdit;
    textExtenso: TEdit;
    textNome: TEdit;
    textCidade: TEdit;
    textDia: TEdit;
    textMes: TEdit;
    textAno: TEdit;
    textUtilizado: TEdit;
    textVisto: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure textValorExit(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    procedure lerParametro;
    procedure gravarParametro;

  end;

var
  fmChequePrint: TfmChequePrint;
  cidade,dia,mes,ano,banco,utilizado,visto: string;
implementation

uses UnitDmSesi, UnitConsultaCheque;

{$R *.dfm}

procedure TfmChequePrint.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caFree;
end;

procedure TfmChequePrint.Button5Click(Sender: TObject);
begin
  close;
end;

procedure TfmChequePrint.Button2Click(Sender: TObject);
begin
  if textID.Text <> '' then
    dmsesi.cdsChequeID.AsInteger:=StrToInt(textID.Text);

  if dmsesi.cdsCheque.FieldByName('DATAEMISSAO').AsString = '' then
       dmsesi.cdsCheque.FieldByName('DATAEMISSAO').AsDateTime:= date;

  if (textValor.Text <> '') and (textExtenso.Text <> '') and (textNome.Text <> '') and
      (textCidade.Text <> '') and (textDia.Text <> '') and (textMes.Text <> '') and
      (textAno.Text <> '') and (textNumCheque.Text <> '') and (textBanco.Text <> '') and
      (textUtilizado.Text <> '') and (textVisto.Text <> '') then
      begin
        dmsesi.cdsChequeVALOR.AsFloat:= StrToFloat(textValor.Text);
        dmsesi.cdsChequeEXTENSO.AsString:= textExtenso.Text;
        dmsesi.cdsChequeNOME.AsString:=textNome.Text;
        dmsesi.cdsChequeCIDADE.AsString:= textCidade.Text;
        dmsesi.cdsChequeDIA.AsString:=textDia.Text;
        dmsesi.cdsChequeMES.AsString:=textMes.Text;
        dmsesi.cdsChequeANO.AsString:=textAno.Text;
        dmsesi.cdsChequeCHEQUENUM.AsString:=textNumCheque.Text;
        dmsesi.cdsChequeBANCO.AsString:=textBanco.Text;
        dmsesi.cdsChequeUTILIZADO.AsString:=textUtilizado.Text;
        dmsesi.cdsChequeVISTO.AsString:=textVisto.Text;
        dmsesi.cdsCheque.ApplyUpdates(0);
        gravarParametro;
        Button2.Enabled:= false;
      end
        else
            ShowMessage('Atenção! Todos os campos são obrigatórios.');

end;

procedure TfmChequePrint.FormActivate(Sender: TObject);
 begin
    lerParametro;
end;



procedure TfmChequePrint.BitBtn1Click(Sender: TObject);
var
  f:TextFile;
  v: Real;
  s: String;
begin
  AssignFile(f,'LPT1:');
  ReWrite(f);
  v:=dmsesi.cdsChequeVALOR.AsFloat;
  str(v:5:2,s);
  Writeln(f,format('%105s',[s]));
  Writeln(f,format('%40s',[dmsesi.cdsChequeEXTENSO.AsString]));
  Writeln(f);
  Writeln(f);
  Writeln(f,format('%10s',[dmsesi.cdsChequeNOME.AsString]));
  Writeln(f);
  Writeln(f,format('%110s',[dmsesi.cdsChequeCIDADE.AsString+ '     '
  + dmsesi.cdsChequeDIA.AsString + '        '+ dmsesi.cdsChequeMES.AsString +'         '+dmsesi.cdsChequeANO.AsString ]));
  Writeln(f);
  Writeln(f);
  Writeln(f);
  Writeln(f);
  Writeln(f);
  Writeln(f);
  Writeln(f);
  Writeln(f);
  Writeln(f);
  Writeln(f);
  Writeln(f);
  closefile(f);
end;

procedure TfmChequePrint.DBEdit2Exit(Sender: TObject);
  begin
 dmsesi.cdsChequeEXTENSO.AsString:=Extenso(dmsesi.cdsChequeVALOR.AsFloat);
end;

procedure TfmChequePrint.Button3Click(Sender: TObject);
begin
  fmConsultaCheque:=TfmConsultaCheque.create(self);
  fmConsultaCheque.showmodal;
end;

procedure TfmChequePrint.Button1Click(Sender: TObject);
begin
  textID.Text:= '';
  textCidade.Text:= '';
  textMes.Text:= '';
  textDia.Text:= '';
  textAno.Text:= '';
  textValor.Text:='';
  textExtenso.Text:='';
  textNome.Text:='';
  textNumCheque.Text:='';
  dmsesi.cdsCheque.Open;
  dmsesi.cdsCheque.Insert;
  lerParametro;
  Button2.Enabled:= true;
end;

procedure TfmChequePrint.gravarParametro;
var
 data:TIniFile;
begin
 try
  data:= TiniFile.Create('C:\sissesi\data.ini');
  Data.WriteString('cidade','Cidade',textCidade.Text);
  Data.WriteString('dia','Dia',textDia.Text);
  Data.WriteString('mes','Mes',textMes.Text);
  Data.WriteString('ano','Ano',textAno.Text);
  Data.WriteString('banco','Banco',textBanco.Text);
  Data.WriteString('utilizado','Utilizado',textUtilizado.Text);
  Data.WriteString('visto','Visto',textVisto.Text);
  except
    on E: EConvertError do
      begin
        Data.Free;
       end;
 end;
end;

procedure TfmChequePrint.textValorExit(Sender: TObject);
var
  valorCheque: Real;
begin
   valorCheque:=textValor.Value;
   textExtenso.Text:= Extenso(valorCheque);
end;

procedure TfmChequePrint.lerParametro;
var
 data:TIniFile;

begin
  try
    dmsesi.cdsCheque.Open;
    dmsesi.cdsCheque.Insert;
    data:= TiniFile.Create('C:\sissesi\data.ini');
    cidade:= Data.ReadString('cidade','Cidade','');
    dia:= Data.ReadString('dia','Dia','');
    mes:= Data.ReadString('mes','Mes','');
    ano:= Data.ReadString('ano','Ano','');
    banco:= Data.ReadString('banco','Banco','');
    utilizado:= Data.ReadString('utilizado','Utilizado','');
    visto:= Data.ReadString('visto','Visto','');
    if (cidade <> '') and (dia <> '') and (mes <> '') and (ano <> '')
      and (banco <> '') and (utilizado <> '') and (visto <> '') then
      begin
        textCidade.Text:= cidade;
        textMes.Text:= mes;
        textDia.Text:= dia;
        textAno.Text:= ano;
        textBanco.Text:=banco;
        textUtilizado.Text:=utilizado;
        textVisto.Text:= visto;
      end;
  finally
    Data.Free;
  end;

end;

end.
