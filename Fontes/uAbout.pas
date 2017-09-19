unit uAbout;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Menus, cxLookAndFeelPainters, cxButtons;

type
  TfrmAbout = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    btnOK: TcxButton;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TfrmAbout.btnOKClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmAbout.FormShow(Sender: TObject);
begin
    Version.Caption := 'Versão ' + frmPrincipal.sVersao;
    Comments.Caption := frmPrincipal.dxStatusBar1.Panels[2].Text;
end;

end.

