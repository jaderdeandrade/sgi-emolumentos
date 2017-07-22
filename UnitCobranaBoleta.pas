unit UnitCobranaBoleta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, ComCtrls,
  Mask, ToolEdit, QRCtrls, QuickRpt, DB, DBTables, ImgList, ToolWin, Menus,
  DBClient, RLReport, RLPDFFilter, RLHTMLFilter, RLFilters,
  RLRichFilter, RLDraftFilter, Provider, FMTBcd, SqlExpr, CurrEdit;



type
  TfmCobrancaBoleta = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Bevel1: TBevel;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Apagarboletas1: TMenuItem;
    recibo: TRLReport;
    RLBand5: TRLBand;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    toperacao: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw3: TRLDraw;
    sqlempresa: TSQLDataSet;
    cdsempresa: TClientDataSet;
    dspempresa: TDataSetProvider;
    dsempresa: TDataSource;
    GroupBox1: TGroupBox;
    rbBoleto: TRadioButton;
    rbRecibo: TRadioButton;
    Label13: TLabel;
    edtempresa1: TEdit;
    Label6: TLabel;
    edtempresa2: TEdit;
    btGeraDoc: TSpeedButton;
    btImprimeDoc: TSpeedButton;
    cdsParametro: TClientDataSet;
    dsParametro: TDataSource;
    cdsParametromemo: TStringField;
    dsboleta: TDataSource;
    cdsboleta: TClientDataSet;
    cdsboletaid: TIntegerField;
    cdsboletavencimento: TDateField;
    cdsboletavalorDebito: TFloatField;
    cdsboletanome: TStringField;
    cdsboletaendereco: TStringField;
    cdsboletabairro: TStringField;
    cdsboletacep: TStringField;
    cdsboletacidade: TStringField;
    cdsboletaestado: TStringField;
    cdsboletadescricao: TStringField;
    cdsboletaextenso: TStringField;
    RLBand2: TRLBand;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel13: TRLLabel;
    RLDraw7: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel14: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel21: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel19: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel20: TRLLabel;
    RLDBText18: TRLDBText;
    RLDraw4: TRLDraw;
    RLDBText9: TRLDBText;
    RLDraftFilter1: TRLDraftFilter;
    sqlModalidade: TSQLDataSet;
    cdsModalidade: TClientDataSet;
    dspModalidade: TDataSetProvider;
    dsModalidade: TDataSource;
    cdsModalidadeSUM: TFMTBCDField;
    sqlModalidadeSUM: TFMTBCDField;
    DateEdit1: TDateEdit;
    Label1: TLabel;
    sqlempresaIDCLIENTE: TIntegerField;
    sqlempresaNOME: TStringField;
    sqlempresaRAZAOSOCIAL: TStringField;
    sqlempresaRAMOATIVIDADE: TStringField;
    sqlempresaCONTATO: TStringField;
    sqlempresaCNPJCPF: TStringField;
    sqlempresaRGIE: TStringField;
    sqlempresaDATACADASTRO: TDateField;
    sqlempresaENDERECO: TStringField;
    sqlempresaBAIRRO: TStringField;
    sqlempresaCIDADE: TStringField;
    sqlempresaCEP: TStringField;
    sqlempresaESTADO: TStringField;
    sqlempresaTELEFONE: TStringField;
    sqlempresaFAX: TStringField;
    sqlempresaCELULAR: TStringField;
    sqlempresaEMAIL: TStringField;
    sqlempresaSITE: TStringField;
    sqlempresaOBS: TBlobField;
    sqlempresaATIVO: TStringField;
    cdsempresaIDCLIENTE: TIntegerField;
    cdsempresaNOME: TStringField;
    cdsempresaRAZAOSOCIAL: TStringField;
    cdsempresaRAMOATIVIDADE: TStringField;
    cdsempresaCONTATO: TStringField;
    cdsempresaCNPJCPF: TStringField;
    cdsempresaRGIE: TStringField;
    cdsempresaDATACADASTRO: TDateField;
    cdsempresaENDERECO: TStringField;
    cdsempresaBAIRRO: TStringField;
    cdsempresaCIDADE: TStringField;
    cdsempresaCEP: TStringField;
    cdsempresaESTADO: TStringField;
    cdsempresaTELEFONE: TStringField;
    cdsempresaFAX: TStringField;
    cdsempresaCELULAR: TStringField;
    cdsempresaEMAIL: TStringField;
    cdsempresaSITE: TStringField;
    cdsempresaOBS: TBlobField;
    cdsempresaATIVO: TStringField;
    Edit1: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Button3: TButton;
    dsContaReceber: TDataSource;
    dspContaReceber: TDataSetProvider;
    cdsContaReceber: TClientDataSet;
    cdsContaReceberID: TIntegerField;
    cdsContaReceberCLIENTE_IDCLIENTE: TIntegerField;
    cdsContaReceberDATA_EMISSAO: TDateField;
    cdsContaReceberDATA_VENCIMENTO: TDateField;
    cdsContaReceberDATA_BAIXA: TDateField;
    cdsContaReceberDESCRICAO: TStringField;
    cdsContaReceberDEBITO: TFMTBCDField;
    cdsContaReceberCREDITO: TFMTBCDField;
    cdsContaReceberATIVO: TStringField;
    sqlContaReceber: TSQLDataSet;
    sqlContaReceberID: TIntegerField;
    sqlContaReceberCLIENTE_IDCLIENTE: TIntegerField;
    sqlContaReceberDATA_EMISSAO: TDateField;
    sqlContaReceberDATA_VENCIMENTO: TDateField;
    sqlContaReceberDATA_BAIXA: TDateField;
    sqlContaReceberDESCRICAO: TStringField;
    sqlContaReceberDEBITO: TFMTBCDField;
    sqlContaReceberCREDITO: TFMTBCDField;
    sqlContaReceberATIVO: TStringField;
    cdsContaRecebersaldo: TFloatField;
    btSalvarDoc: TSpeedButton;
    cdsrelatorio: TClientDataSet;
    cdsrelatoriodescricao: TStringField;
    cdsrelatoriovencimento: TDateField;
    cdsrelatoriovalorDebito: TFloatField;
    cdsrelatorioid: TIntegerField;
    cdsrelatorionome: TStringField;
    dsrelatorio: TDataSource;
    SpeedButton1: TSpeedButton;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    SpeedButton5: TSpeedButton;
    Panel2: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    SpeedButton7: TSpeedButton;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel5: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand6: TRLBand;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btImprimeDocClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btGeraDocClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cdsContaReceberCalcFields(DataSet: TDataSet);
    procedure btSalvarDocClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TabSheet3Show(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }

  public
     procedure totaliza;
    { Public declarations }
  end;

var
  fmCobrancaBoleta: TfmCobrancaBoleta;

implementation
   uses UnitdmConect,Extensos, Math, UnitDmSesi;
{$R *.dfm}

function PreencheComZeros(numero, digitos : Integer) : String;
var
  i : Integer;
begin
  Result := IntToStr(numero);
  for i := Length(Result) to digitos-1 do
    Result := '0'+Result;
end;

procedure TfmCobrancaBoleta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TfmCobrancaBoleta.SpeedButton2Click(Sender: TObject);
begin
  if cdsParametro.RecordCount = 0 then
    begin
      cdsParametro.Insert;
    end
  else
    showmessage('ATENÇÃO! Já existe parametros gravado.');
end;

procedure TfmCobrancaBoleta.SpeedButton3Click(Sender: TObject);
begin
  cdsParametro.Edit;
end;

procedure TfmCobrancaBoleta.SpeedButton4Click(Sender: TObject);
begin
  cdsParametro.Post;
end;

procedure TfmCobrancaBoleta.SpeedButton6Click(Sender: TObject);
begin
  if messagedlg('Confirma a exclusão do registro?', mtinformation, [mbyes, mbno],0)= mryes then
  begin
    cdsParametro.Delete;
    end;
end;

procedure TfmCobrancaBoleta.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (not odd(cdsboleta.RecNo)) then // Se for impar
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
procedure TfmCobrancaBoleta.btImprimeDocClick(Sender: TObject);
var
f:TextFile;
s: string;
begin
  if btImprimeDoc.Enabled = true  then
    begin
      btSalvarDoc.Enabled:= false;
      btGeraDoc.Enabled:=true;
      btImprimeDoc.Enabled:=false;
    end;
  if Edit1.Text = '' then
    begin
      cdsboleta.IndexFieldNames:='cep';
      if rbRecibo.Checked = true then
        begin
          recibo.PreviewModal;
        end
      else
      if rbBoleto.Checked = true then
        begin
          AssignFile(f,'LPT1:');
          ReWrite(f);
          Write(f);
          cdsboleta.First;
          while not cdsboleta.Eof do
            begin
              Writeln(f);
              Write(f,format('%100s',[datetostr(cdsboletavencimento.AsDateTime)]));
              Writeln(f);
              Writeln(f);
              Writeln(f);

              Write(f,format('%10s',[datetostr(Date)]));
              Write(f,format('%20s',[' ' + IntToStr(cdsboletaid.AsInteger)]));
              Writeln(f);

              str(cdsboletavalorDebito.Value:5:2,s);
              Writeln(f,format('%105s',[s]));
              Writeln(f);
              Writeln(f);
              Writeln(f);
              Writeln(f);

              Writeln(f,format('%20s',[cdsParametromemo.AsString]));

              Writeln(f);

              Writeln(f,format('%-50s',[cdsboletanome.AsString]));
              Writeln(f,format('%-50s',[cdsboletaendereco.AsString + '  '+ cdsboletabairro.AsString]));

              Writeln(f,format('%-50s',[cdsboletacep.AsString+ '    '
              + cdsboletacidade.AsString + '    '+ cdsboletaestado.AsString ]));

              cdsboleta.Next;
              Writeln(f);
              Writeln(f);
              Writeln(f);
              Writeln(f);
              Writeln(f);
              Writeln(f);
              Writeln(f);
            end;
           closefile(f);

         end;
    end
    else
      begin
        cdsboleta.Filter:='cep ='+ QuotedStr(Edit1.Text);
        cdsboleta.Filtered:=true;
        if rbRecibo.Checked = true then
          begin
            recibo.PreviewModal;
          end
        else
        if rbBoleto.Checked = true then
          begin
            AssignFile(f,'LPT1:');
            ReWrite(f);
            Write(f);
            cdsboleta.First;
            while not cdsboleta.Eof do
              begin
                Writeln(f);
                Write(f,format('%100s',[datetostr(cdsboletavencimento.AsDateTime)]));
                Writeln(f);
                Writeln(f);
                Writeln(f);

                Write(f,format('%10s',[datetostr(Date)]));
                Write(f,format('%20s',[' ' + IntToStr(cdsboletaid.AsInteger)]));
                Writeln(f);

                str(cdsboletavalorDebito.Value:5:2,s);
                Writeln(f,format('%105s',[s]));
                Writeln(f);
                Writeln(f);
                Writeln(f);
                Writeln(f);

                Writeln(f,format('%20s',[cdsParametromemo.AsString]));

                Writeln(f);

                Writeln(f,format('%-50s',[cdsboletanome.AsString]));
                Writeln(f,format('%-50s',[cdsboletaendereco.AsString + '  '+ cdsboletabairro.AsString]));

                Writeln(f,format('%-50s',[cdsboletacep.AsString+ '    '
                + cdsboletacidade.AsString + '    '+ cdsboletaestado.AsString ]));

                cdsboleta.Next;
                Writeln(f);
                Writeln(f);
                Writeln(f);
                Writeln(f);
                Writeln(f);
                Writeln(f);
                Writeln(f);
              end;
             closefile(f);
           end;
        cdsboleta.Filtered:=false;
      end;

end;

procedure TfmCobrancaBoleta.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TfmCobrancaBoleta.btGeraDocClick(Sender: TObject);
  var
    total : real;
begin
  cdsempresa.Close;
  cdsempresa.CommandText:='select * from CLIENTE where (ativo = '+QuotedStr('1')+')' +
        ' and (CLIENTE.IDCLIENTE between '+char(39)+edtempresa1.Text+char(39)+
              ' and ' +char(39)+edtempresa2.Text+char(39)+') ';
  cdsempresa.Open;
  cdsempresa.First;
  while not cdsempresa.Eof do
     begin
       cdsContaReceber.Close;
       cdsContaReceber.CommandText:='select * from CONTASRECEBER where CONTASRECEBER.CLIENTE_IDCLIENTE ='+QuotedStr(IntToStr(cdsempresaIDCLIENTE.AsInteger));
       cdsContaReceber.Open;

      if not cdsContaReceber.IsEmpty then
        begin
            total:=0;
            cdsContaReceber.First;
            // totaliza o contas a receber
            while not cdsContaReceber.Eof do
              begin
                total:=total + cdsContaRecebersaldo.AsFloat;
                cdsContaReceber.Next;
              end;
              if total > 0 then
                begin
                  cdsboleta.Insert;
                  cdsboletaid.AsInteger:=cdsempresaIDCLIENTE.AsInteger;
                  cdsboletadescricao.AsString:='>> REF. COBRANCA DE MENS. ATE '+DateEdit1.Text+' <<';
                  cdsboletavencimento.AsDateTime:= DateEdit1.Date;
                  cdsboletavalorDebito.AsFloat:= total;
                  cdsboletanome.AsString:=cdsempresaNOME.AsString;
                  cdsboletaendereco.AsString:=cdsempresaENDERECO.AsString;
                  cdsboletabairro.AsString:=cdsempresaBAIRRO.AsString;
                  cdsboletacep.AsString:=cdsempresaCEP.AsString;
                  cdsboletacidade.AsString:=cdsempresaCIDADE.AsString;
                  cdsboletaestado.AsString:=cdsempresaESTADO.AsString;
                  cdsboletaextenso.AsString:=Extenso(total);
                  cdsboleta.Post;
                end;


         end;
      cdsempresa.Next;
     end;

  Label5.Caption:= IntToStr(cdsboleta.RecordCount);
  if btGeraDoc.Enabled = true  then
    begin
      btGeraDoc.Enabled:= false;
      btSalvarDoc.Enabled:=true;
      btImprimeDoc.Enabled:=false;
    end

end;

procedure TfmCobrancaBoleta.FormActivate(Sender: TObject);
begin
  dmsesi.cdsParametro.Open;
end;

procedure TfmCobrancaBoleta.cdsContaReceberCalcFields(DataSet: TDataSet);
begin
  cdsContaReceber.FieldByName('SALDO').AsFloat:= cdsContaReceber.FieldByName('DEBITO').AsFloat -
  cdsContaReceber.FieldByName('CREDITO').AsFloat;
end;

procedure TfmCobrancaBoleta.btSalvarDocClick(Sender: TObject);
begin
    cdsboleta.First;
    While not cdsboleta.Eof do
      begin
        cdsrelatorio.Insert;
        cdsrelatorioid.AsInteger:=cdsboletaid.AsInteger;
        cdsrelatorionome.AsString:= cdsboletanome.AsString;
        cdsrelatoriodescricao.AsString:=cdsboletadescricao.AsString;
        cdsrelatoriovalorDebito.AsFloat:= cdsboletavalorDebito.AsFloat;
        cdsrelatoriovencimento.AsDateTime:= cdsboletavencimento.AsDateTime;
        cdsrelatorio.Post;
        cdsboleta.Next;
      end;

  if btSalvarDoc.Enabled = true  then
    begin
      btSalvarDoc.Enabled:= false;
      btGeraDoc.Enabled:=false;
      btImprimeDoc.Enabled:=true;
    end;

end;

procedure TfmCobrancaBoleta.SpeedButton1Click(Sender: TObject);
var
  i,n: integer;
begin
    n:= cdsboleta.RecordCount;
    for i := 1 to n do
      begin
         cdsboleta.Delete;
      end;
      btGeraDoc.Enabled:=true;
end;
procedure TfmCobrancaBoleta.SpeedButton5Click(Sender: TObject);
var
  i,n: integer;
begin
    n:= cdsrelatorio.RecordCount;
    for i := 1 to n do
      begin
         cdsrelatorio.Delete;
      end;
end;

procedure TfmCobrancaBoleta.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

begin
  if (not odd(cdsrelatorio.RecNo)) then // Se for impar
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

procedure TfmCobrancaBoleta.totaliza;
var
  d: double;
  t: integer;
begin
  d:=0;
  t:=0;
  cdsrelatorio.First;
  While not cdsrelatorio.EoF do
    begin
      t:= t + 1;
      d:= cdsrelatoriovalorDebito.asfloat + d;
      cdsrelatorio.Next;
    end;
    CurrencyEdit1.text:= floattostr(d);
    cdsrelatorio.IndexFieldNames:='id';
    label4.caption:= 'Quantidade de documentos gerados: ' + inttostr(t);
end;

procedure TfmCobrancaBoleta.TabSheet3Show(Sender: TObject);
begin
  totaliza;
end;

procedure TfmCobrancaBoleta.SpeedButton7Click(Sender: TObject);
begin
  totaliza;
   RLLabel27.Caption:= label4.Caption;
   RLLabel28.Caption:= 'Valor total: '+ CurrencyEdit1.Text;
   RLReport1.PreviewModal;
end;

end.





