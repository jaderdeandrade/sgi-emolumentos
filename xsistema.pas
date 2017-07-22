unit xsistema;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, jpeg, RxGIF;

type
  T_xsistema = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    OS: TLabel;
    Label1: TLabel;
    TotalVirtual: TLabel;
    Label2: TLabel;
    OKButton: TButton;
    TotalFisico: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Image1: TImage;
    procedure OKButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure GetOSInfo;
    procedure InitializeCaptions;
  public
    { Public declarations }
  end;

var
  _xsistema: T_xsistema;

implementation
uses ShellAPI;
{$R *.DFM}

procedure T_xsistema.OKButtonClick(Sender: TObject);
begin
  Close;
end;

procedure T_xsistema.GetOSInfo;
var
  Platform: string;
  BuildNumber: Integer;
begin
  case Win32Platform of
    VER_PLATFORM_WIN32_WINDOWS:
      begin
        Platform := 'Windows 95';
        BuildNumber := Win32BuildNumber and $0000FFFF;
      end;
    VER_PLATFORM_WIN32_NT:
      begin
        Platform := 'Windows NT';
        BuildNumber := Win32BuildNumber;
      end;
      else
      begin
        Platform := 'Windows';
        BuildNumber := 0;
      end;
  end;
  if (Win32Platform = VER_PLATFORM_WIN32_WINDOWS) or
    (Win32Platform = VER_PLATFORM_WIN32_NT) then
  begin
    if Win32CSDVersion = '' then
      OS.Caption := Format('%s %d.%d (Build %d)', [Platform, Win32MajorVersion,
        Win32MinorVersion, BuildNumber])
    else
      OS.Caption := Format('%s %d.%d (Build %d: %s)', [Platform, Win32MajorVersion,
        Win32MinorVersion, BuildNumber, Win32CSDVersion]);
  end
  else
    OS.Caption := Format('%s %d.%d', [Platform, Win32MajorVersion,
      Win32MinorVersion])
end;

procedure T_xsistema.InitializeCaptions;
var
  MS: TMemoryStatus;
begin
  Screen.Cursor := crDefault;
  GetOSInfo;
  MS.dwLength := SizeOf(TMemoryStatus);
  GlobalMemoryStatus(MS);
  TotalFisico.Caption := FormatFloat('#,###" KB"', MS.dwTotalPhys div 1024);
  TotalVirtual.Caption := FormatFloat('#,###" KB"', MS.dwTotalVirtual div 1024);
end;

procedure T_xsistema.FormCreate(Sender: TObject);
begin
  InitializeCaptions;
end;

procedure T_xsistema.FormShow(Sender: TObject);
begin
  Screen.Cursor := crDefault;
end;

procedure T_xsistema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:= cafree;
end;

end.
