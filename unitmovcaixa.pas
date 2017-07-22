unit UnitMovCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls;

type
  TfmMovimentoCaixa = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    Button1: TButton;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMovimentoCaixa: TfmMovimentoCaixa;

implementation

uses UnitdmConect,UnitDmSesi;

{$R *.dfm}

procedure TfmMovimentoCaixa.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfmMovimentoCaixa.Button1Click(Sender: TObject);
begin
   dmsesi.cdsMovCaixa.ApplyUpdates(0);
  close;
end;

end.
