unit uAguarde;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxControls, cxContainer, cxEdit, cxLabel,
  cxProgressBar, cxPC, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, dxSkinDarkSide,
  dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008, cxGraphics,
  cxLookAndFeelPainters, dxSkinDarkRoom, dxSkinFoggy, dxSkinSeven, dxSkinSharp,
  cxLookAndFeels, dxGDIPlusClasses, cxImage;

type
  TfrmAguarde = class(TForm)
    Panel1: TPanel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    cxProgressBar1: TcxProgressBar;
    cxImage1: TcxImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cMensagem : string;
  end;

var
  frmAguarde: TfrmAguarde;

implementation

{$R *.dfm}

procedure TfrmAguarde.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TfrmAguarde.FormShow(Sender: TObject);
begin
    Label2.Caption := cMensagem;
end;

procedure TfrmAguarde.FormCreate(Sender: TObject);
begin
    Screen.Cursor := crHourGlass;
end;

procedure TfrmAguarde.FormDestroy(Sender: TObject);
begin
    Screen.Cursor := crDefault;
end;

end.
