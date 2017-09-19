{
campo_aux_1 -> utilizado para informar o SGBD
campo_aux_2 -> Formato da data para os filtros
campo_aux_3 -> Suporta between no filtro
campo_aux_4 -> Suporta like no filtro
campo_aux_5 -> Suporta in no filtro
}

unit uPrincipal;

interface

uses
  ShellApi, xhExport, xhArrays, xhConsts, TeeBrazil, cxLocalization, Registry, midas, IniFiles, Math, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ActnList, ActnMan, TeeGally,
  XPStyleActnCtrls, ComCtrls, ActnMenus, jpeg, ExtCtrls, StdCtrls, Buttons,
  WideStrings, OleCtrls, SHDocVw, xhInternalGrid,
  msxmldom, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  cxControls, cxSplitter, cxGraphics,
  cxLookAndFeelPainters, dxSkinDarkRoom, dxSkinFoggy, dxSkinSeven, dxSkinSharp,
  cxLookAndFeels, dxSkinsForm, cxButtons, cxContainer,
  cxEdit, cxGroupBox, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCheckComboBox, Menus, dxSkinscxPCPainter, cxPC, Grids,
  DBGrids, DBClient, DBCtrls, Mask, dxSkinsdxStatusBarPainter, dxStatusBar,
  ImgList, xhHierCube, xhGrid, TeEngine, TeeProcs, Chart, xhChart, TeeEdit,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  cxCheckBox;

function RemoveAcento(Str: string): string;
function Entry(Entrada: Integer; Texto, Separador: String): String;
function NumEntries(Texto, Separador: String): integer;
function AssinalaString(valor: variant): string;

type
  TfrmPrincipal = class(TForm)
    bdDados: TADOConnection;
    OpenDialog1: TOpenDialog;
    dxSkinController1: TdxSkinController;
    cdsMapaTotalRef: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField1: TFloatField;
    cdsMapaTotalDim: TClientDataSet;
    cdsMapaTotalDimdimensao: TStringField;
    cdsMapaTotalDimvalor: TFloatField;
    cdsMapa: TClientDataSet;
    cdsMapapais: TStringField;
    cdsMaparegiao: TStringField;
    cdsMapaestado: TStringField;
    cdsMapamesoregiao: TStringField;
    cdsMapamicroregiao: TStringField;
    cdsMapacidade: TStringField;
    cdsMapadimensao: TStringField;
    cdsMapavalor: TFloatField;
    cdsMapaperc_ref: TFloatField;
    cdsMapaacum_perc_ref: TFloatField;
    cdsMapaabc_ref: TStringField;
    cdsMapaperc_dim: TFloatField;
    cdsMapaacum_perc_dim: TFloatField;
    cdsMapaabc_dim: TStringField;
    cdsMapaTotalRefperc: TFloatField;
    cdsMapaTotalRefacum_perc: TFloatField;
    cdsMapaTotalRefabc_perc: TStringField;
    cdsMapaperc: TFloatField;
    cdsMapaacum_perc: TFloatField;
    cdsMapaabc_perc: TStringField;
    cdsMapa1: TClientDataSet;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField14: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField15: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    StringField16: TStringField;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    EncerrarAplicao1: TMenuItem;
    N1: TMenuItem;
    mnuCriar: TMenuItem;
    cdsGeoBusiness: TClientDataSet;
    cdsGeoBusinessid_geo: TStringField;
    cdsGeoBusinessdescricao: TMemoField;
    mnuAbrir: TMenuItem;
    cdsGeoBusinessdt_criacao: TDateTimeField;
    cdsGeoBusinessconnection_string: TMemoField;
    cdsGeoBusinesstabela: TStringField;
    cdsGeoBusinesscampo_ref: TStringField;
    cdsGeoBusinesscampo_demensao_1: TStringField;
    cdsGeoBusinesscampo_demensao_2: TStringField;
    cdsGeoBusinesscampo_demensao_3: TStringField;
    cdsGeoBusinesscampo_demensao_4: TStringField;
    cdsGeoBusinesscampo_demensao_5: TStringField;
    cdsGeoBusinesscampo_demensao_6: TStringField;
    cdsGeoBusinesscampo_demensao_7: TStringField;
    cdsGeoBusinesscampo_demensao_8: TStringField;
    cdsGeoBusinesscampo_demensao_9: TStringField;
    cdsGeoBusinesscampo_demensao_10: TStringField;
    cdsGeoBusinesscampo_demensao_11: TStringField;
    cdsGeoBusinesscampo_demensao_12: TStringField;
    cdsGeoBusinesscampo_demensao_13: TStringField;
    cdsGeoBusinesscampo_demensao_14: TStringField;
    cdsGeoBusinesscampo_demensao_15: TStringField;
    cdsGeoBusinesscampo_demensao_16: TStringField;
    cdsGeoBusinesscampo_demensao_17: TStringField;
    cdsGeoBusinesscampo_demensao_18: TStringField;
    cdsGeoBusinesscampo_demensao_19: TStringField;
    cdsGeoBusinesscampo_demensao_20: TStringField;
    cdsGeoBusinesscampo_sumario_1: TStringField;
    cdsGeoBusinesscampo_sumario_2: TStringField;
    cdsGeoBusinesscampo_sumario_3: TStringField;
    cdsGeoBusinesscampo_sumario_4: TStringField;
    cdsGeoBusinesscampo_sumario_5: TStringField;
    cdsGeoBusinessmaximo_itens: TIntegerField;
    cdsGeoBusinesslargura: TIntegerField;
    cdsGeoBusinessaltura: TIntegerField;
    cdsGeoBusinesstamanho: TIntegerField;
    cdsGeoBusinessitens_mark: TIntegerField;
    cdsGeoBusinessvisao: TStringField;
    cdsGeoBusinessvisualiza_coord: TStringField;
    cdsGeoBusinessendereco_a: TStringField;
    cdsGeoBusinessendereco_b: TStringField;
    cdsGeoBusinessendereco_c: TStringField;
    Ferramentas1: TMenuItem;
    mnuSkin: TMenuItem;
    Blue1: TMenuItem;
    Black1: TMenuItem;
    Silver1: TMenuItem;
    UserSkin1: TMenuItem;
    Stardust1: TMenuItem;
    Valentine1: TMenuItem;
    Xmas2008Blue1: TMenuItem;
    Caramel1: TMenuItem;
    Coffee1: TMenuItem;
    Pumpkin1: TMenuItem;
    DarkSide1: TMenuItem;
    GlassOceans1: TMenuItem;
    iMaginary1: TMenuItem;
    Lilian1: TMenuItem;
    McSkin1: TMenuItem;
    LiquidSky1: TMenuItem;
    LondonLiquidSky1: TMenuItem;
    MoneyTwins1: TMenuItem;
    Office2007Black1: TMenuItem;
    Office2007Blue1: TMenuItem;
    Office2007Green1: TMenuItem;
    Office2007Pink1: TMenuItem;
    Office2007Silver1: TMenuItem;
    Summer20081: TMenuItem;
    Springtime1: TMenuItem;
    Nativo1: TMenuItem;
    Flat1: TMenuItem;
    Office111: TMenuItem;
    Padro1: TMenuItem;
    UltraFlat1: TMenuItem;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxSplitter1: TcxSplitter;
    Panel1: TPanel;
    GroupBox3: TcxGroupBox;
    BitBtn3: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cbxVisao: TcxComboBox;
    cbxVisaoMapa: TcxComboBox;
    GroupBox2: TcxGroupBox;
    btnFiltro: TcxButton;
    Label3: TcxLabel;
    Label2: TcxLabel;
    cbxSumario: TcxComboBox;
    cbxFuncao: TcxComboBox;
    cbxDimensao: TcxComboBox;
    cbbValorDimensao: TcxCheckComboBox;
    GroupBox1: TcxGroupBox;
    Label4: TcxLabel;
    Label7: TcxLabel;
    Label5: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label6: TcxLabel;
    cbbPais: TcxCheckComboBox;
    cbbRegiao: TcxCheckComboBox;
    cbbEstado: TcxCheckComboBox;
    cbbMesoRegiao: TcxCheckComboBox;
    cbbMicroRegiao: TcxCheckComboBox;
    cbbCidade: TcxCheckComboBox;
    Panel2: TPanel;
    Memo1: TMemo;
    WebBrowser1: TWebBrowser;
    dxStatusBar1: TdxStatusBar;
    ImageList1: TImageList;
    mnuLocalizacao: TMenuItem;
    mnuFecharArquivo: TMenuItem;
    Ajuda1: TMenuItem;
    Informaessobreoregistro1: TMenuItem;
    cdsGeoBusinesscampo_aux_1: TStringField;
    cdsGeoBusinesscampo_aux_2: TStringField;
    cdsGeoBusinesscampo_aux_3: TStringField;
    cdsGeoBusinesscampo_aux_4: TStringField;
    cdsGeoBusinesscampo_aux_5: TStringField;
    cdsGeoBusinesscampo_aux_6: TStringField;
    cdsGeoBusinesscampo_aux_7: TStringField;
    cdsGeoBusinesscampo_aux_8: TStringField;
    cdsGeoBusinesscampo_aux_9: TStringField;
    cdsGeoBusinesscampo_aux_10: TStringField;
    cdsGeoBusinesscampo_aux_11: TStringField;
    cdsGeoBusinesscampo_aux_12: TStringField;
    cdsGeoBusinesscampo_aux_13: TStringField;
    cdsGeoBusinesscampo_aux_14: TStringField;
    cdsGeoBusinesscampo_aux_16: TStringField;
    cdsGeoBusinesscampo_aux_17: TStringField;
    cdsGeoBusinesscampo_aux_18: TStringField;
    cdsGeoBusinesscampo_aux_19: TStringField;
    cdsGeoBusinesscampo_aux_20: TStringField;
    mnuEditarLocalizacao: TMenuItem;
    cxLocalizer1: TcxLocalizer;
    N2: TMenuItem;
    N3: TMenuItem;
    mnuFatos: TMenuItem;
    Informaessobreaaplicao1: TMenuItem;
    cdsGeoBusinesscampo_dimensao_21: TStringField;
    cdsGeoBusinesscampo_dimensao_22: TStringField;
    cdsGeoBusinesscampo_dimensao_23: TStringField;
    cdsGeoBusinesscampo_dimensao_24: TStringField;
    cdsGeoBusinesscampo_dimensao_25: TStringField;
    cdsGeoBusinesscampo_dimensao_26: TStringField;
    cdsGeoBusinesscampo_dimensao_27: TStringField;
    cdsGeoBusinesscampo_dimensao_29: TStringField;
    cdsGeoBusinesscampo_dimensao_292: TStringField;
    cdsGeoBusinesscampo_dimensao_30: TStringField;
    cdsGeoBusinesscampo_dimensao_31: TStringField;
    cdsGeoBusinesscampo_dimensao_32: TStringField;
    cdsGeoBusinesscampo_dimensao_33: TStringField;
    cdsGeoBusinesscampo_dimensao_34: TStringField;
    cdsGeoBusinesscampo_dimensao_35: TStringField;
    cdsGeoBusinesscampo_dimensao_36: TStringField;
    cdsGeoBusinesscampo_dimensao_37: TStringField;
    cdsGeoBusinesscampo_dimensao_38: TStringField;
    cdsGeoBusinesscampo_dimensao_39: TStringField;
    cdsGeoBusinesscampo_dimensao_40: TStringField;
    cdsGeoBusinesscampo_dimensao_41: TStringField;
    cdsGeoBusinesscampo_dimensao_42: TStringField;
    cdsGeoBusinesscampo_dimensao_43: TStringField;
    cdsGeoBusinesscampo_dimensao_44: TStringField;
    cdsGeoBusinesscampo_dimensao_45: TStringField;
    cdsGeoBusinesscampo_dimensao_46: TStringField;
    cdsGeoBusinesscampo_dimensao_47: TStringField;
    cdsGeoBusinesscampo_dimensao_48: TStringField;
    cdsGeoBusinesscampo_dimensao_49: TStringField;
    cdsGeoBusinesscampo_dimensao_50: TStringField;
    cdsGeoBusinesscampo_sumario_6: TStringField;
    cdsGeoBusinesscampo_sumario_7: TStringField;
    cdsGeoBusinesscampo_sumario_8: TStringField;
    cdsGeoBusinesscampo_sumario_9: TStringField;
    cdsGeoBusinesscampo_sumario_10: TStringField;
    cdsGeoBusinesscampo_sumario_11: TStringField;
    cdsGeoBusinesscampo_sumario_12: TStringField;
    cdsGeoBusinesscampo_sumario_13: TStringField;
    cdsGeoBusinesscampo_sumario_14: TStringField;
    cdsGeoBusinesscampo_sumario_15: TStringField;
    cdsGeoBusinesscampo_sumario_16: TStringField;
    cdsGeoBusinesscampo_sumario_17: TStringField;
    cdsGeoBusinesscampo_sumario_18: TStringField;
    cdsGeoBusinesscampo_sumario_19: TStringField;
    cdsGeoBusinesscampo_sumario_20: TStringField;
    cdsGeoBusinesscampo_sumario_21: TStringField;
    cdsGeoBusinesscampo_sumario_22: TStringField;
    cdsGeoBusinesscampo_sumario_23: TStringField;
    cdsGeoBusinesscampo_sumario_24: TStringField;
    cdsGeoBusinesscampo_sumario_25: TStringField;
    cdsGeoBusinesscampo_sumario_26: TStringField;
    cdsGeoBusinesscampo_sumario_27: TStringField;
    cdsGeoBusinesscampo_sumario_28: TStringField;
    cdsGeoBusinesscampo_sumario_29: TStringField;
    cdsGeoBusinesscampo_sumario_30: TStringField;
    cdsGeoBusinesscampo_sumario_31: TStringField;
    cdsGeoBusinesscampo_sumario_32: TStringField;
    cdsGeoBusinesscampo_sumario_33: TStringField;
    cdsGeoBusinesscampo_sumario_34: TStringField;
    cdsGeoBusinesscampo_sumario_35: TStringField;
    cdsGeoBusinesscampo_sumario_36: TStringField;
    cdsGeoBusinesscampo_sumario_37: TStringField;
    cdsGeoBusinesscampo_sumario_39: TStringField;
    cdsGeoBusinesscampo_sumario_38: TStringField;
    cdsGeoBusinesscampo_sumario_40: TStringField;
    cdsGeoBusinesscampo_sumario_41: TStringField;
    cdsGeoBusinesscampo_sumario_42: TStringField;
    cdsGeoBusinesscampo_sumario_43: TStringField;
    cdsGeoBusinesscampo_sumario_44: TStringField;
    cdsGeoBusinesscampo_sumario_45: TStringField;
    cdsGeoBusinesscampo_sumario_46: TStringField;
    cdsGeoBusinesscampo_sumario_47: TStringField;
    cdsGeoBusinesscampo_sumario_48: TStringField;
    cdsGeoBusinesscampo_sumario_49: TStringField;
    cdsGeoBusinesscampo_sumario_50: TStringField;
    cdsGeoBusinesscampo_aux_21: TStringField;
    cdsGeoBusinesscampo_aux_22: TStringField;
    cdsGeoBusinesscampo_aux_23: TStringField;
    cdsGeoBusinesscampo_aux_24: TStringField;
    cdsGeoBusinesscampo_aux_25: TStringField;
    cdsGeoBusinesscampo_aux_26: TStringField;
    cdsGeoBusinesscampo_aux_27: TStringField;
    cdsGeoBusinesscampo_aux_28: TStringField;
    cdsGeoBusinesscampo_aux_29: TStringField;
    cdsGeoBusinesscampo_aux_30: TStringField;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxTabSheet1: TcxTabSheet;
    Panel3: TPanel;
    cxButton1: TcxButton;
    Grid: THierCubeGrid;
    HC: THierCube;
    qryMapa: TADOQuery;
    cxButton2: TcxButton;
    ImageList2: TImageList;
    HierCubeGridExportToPDF1: THierCubeGridExportToPDF;
    cxButton3: TcxButton;
    cxTabSheet3: TcxTabSheet;
    Panel4: TPanel;
    cxButton6: TcxButton;
    xChart1: THierCubeChart;
    ChartPreviewer1: TChartPreviewer;
    cxButton4: TcxButton;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cdsGeoBusinesscampo_aux_b_1: TBlobField;
    cdsGeoBusinesscampo_aux_b_2: TBlobField;
    cdsGeoBusinesscampo_aux_b_3: TBlobField;
    cdsGeoBusinesscampo_aux_b_4: TBlobField;
    cdsGeoBusinesscampo_aux_b_5: TBlobField;
    cdsGeoBusinesscampo_aux_b_6: TBlobField;
    cdsGeoBusinesscampo_aux_b_7: TBlobField;
    cdsGeoBusinesscampo_aux_b_8: TBlobField;
    cdsGeoBusinesscampo_aux_b_9: TBlobField;
    cdsGeoBusinesscampo_aux_b_10: TBlobField;
    Of1: TMenuItem;
    Office2010Blue1: TMenuItem;
    Office2010Silver1: TMenuItem;
    chkNavegador: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure PlotarMapa;
    procedure MontaDimensao;
    procedure MapaSimple;
    procedure MontaLocais(Local: string);
    procedure Dispcampos(Valor: Boolean);
    procedure btnFiltroClick(Sender: TObject);
    procedure MontaAnalise;
    procedure cbbPaisPropertiesChange(Sender: TObject);
    procedure cbbRegiaoPropertiesChange(Sender: TObject);
    procedure cbbEstadoPropertiesChange(Sender: TObject);
    procedure cbbMesoRegiaoPropertiesChange(Sender: TObject);
    procedure cbbMicroRegiaoPropertiesChange(Sender: TObject);
    procedure aguarde(Tipo: Integer; Mensagem: string);
    procedure cbxDimensaoPropertiesChange(Sender: TObject);
    procedure EncerrarAplicao1Click(Sender: TObject);
    procedure mnuCriarClick(Sender: TObject);
    procedure mnuAbrirClick(Sender: TObject);
    procedure cdsGeoBusinessAfterInsert(DataSet: TDataSet);
    procedure AssinalaSkin(Anterior: string);
    procedure Springtime1Click(Sender: TObject);
    procedure Padro1Click(Sender: TObject);
    procedure Flat1Click(Sender: TObject);
    procedure UltraFlat1Click(Sender: TObject);
    procedure Office111Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuLocalizacaoClick(Sender: TObject);
    procedure mnuFecharArquivoClick(Sender: TObject);
    procedure REGExt;
    procedure mnuEditarLocalizacaoClick(Sender: TObject);
    procedure mnuFatosClick(Sender: TObject);
    procedure Informaessobreoregistro1Click(Sender: TObject);
    procedure Informaessobreaaplicao1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure GridDrawCell(Sender: TObject; Args: TDrawCellEventArgs);
    procedure GridDrawLabelCell(Sender: TObject; var Value: AnsiString;
      var aFont: TFont; var aColor: TColor; LabelNode: TLabelNode);
    procedure GridGetSubFunctionCalculator(Sender: TObject;
      SubFun: TSubFunction; var Calculator: TSubFunctionCalculator);
    procedure GridCustomDrawCell(Sender: TObject;
      Args: TCustomDrawCellEventArgs);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    procedure MontaMarks(Texto, Latitude, Longitude, Titulo: string; ABC: string);
    procedure MontaInfoMapa;
    procedure CriaDataSetMapa;
    procedure CarregaCubo;
    function MyColPercentCalculator(Args: TSubFunctionCalculatorArgs;
      out Res: Double): boolean;
    function CurvaABC1(Args: TSubFunctionCalculatorArgs;
      out Res: Double): boolean;
    { Private declarations }
  public
    { Public declarations }
    sCaption        : string;
    sVersao         : string;
    sArquivo        : string;
    sGeo            : string;
    sFiltro         : string;
    iItens          : integer;
    sSkin           : string;
    sKind           : string;
    sMapa           : string;
    sTabela         : string;
    sRef            : string;
    sTitulo         : string;
    sTamanho        : string;
    sLargura        : string;
    sAltura         : string;
    sRegistros      : string;
    sVisualizaCoord : string;
    sDimensao       : array [1..50] of string;
    sSumario        : array [1..50] of string;
    sIconeA         : string;
    sIconeB         : string;
    sIconeC         : string;
    vTotalGeral     : double;
    sSerial         : string;
    sRelease        : string;
    lDemo           : boolean;
    lPrimeiroAcesso : boolean;
  end;

var
  frmPrincipal: TfrmPrincipal;
  dCurvaA, dCurvaB : double;

implementation

uses uAguarde, uFiltro, uArqGeoBusiness, uInformacoes, uInfoLocalizacao,
  uEditarInfoLocalizacao, uEditarInfoFatos, uRegistro, uni_RegCommon, uAbout;

{$R *.dfm}

procedure SetLanguage(Tipo: integer; Localizer: TcxLocalizer);
var
  FileResource : TIniFile;
  ListResource : TStringList;
  iResource : integer;
begin
    if Tipo = 1 then
    begin
        try
            ListResource := TStringList.Create;
            FileResource := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Language.ini');
            FileResource.ReadSection('Custom Resource Strings',ListResource);

            for iResource := 0 to ListResource.Count - 1 do
                AddResStr(ListResource.Strings[iResource],FileResource.ReadString('Custom Resource Strings',ListResource.Strings[iResource],''));

            FileResource.Free;
            ListResource.Free;
        except
        end;
    end;

    if Tipo = 2 then
    begin
        try
            Localizer.FileName := ExtractFilePath(Application.ExeName) + 'Language.ini';
            Localizer.Active   := True;
            Localizer.Language := 'Português (Brasil)';
        except
        end;
    end;
end;

function RemoveAcento(Str: string): string;
const
  ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
   x: Integer;
begin;
  for x := 1 to Length(Str) do
  if Pos(Str[x],ComAcento) <> 0 then
    Str[x] := SemAcento[Pos(Str[x], ComAcento)];

  Result := Str;
end;

function NumEntries(Texto, Separador: String): integer;
var
    i : integer;
    cont : integer;
begin
    cont := 1;
    for i := 1 to Length(Texto) do
    begin
        if Copy(Texto,i,1) = Separador then
           cont := cont + 1;
    end;

    result := cont;
end;

function Entry(Entrada: Integer; Texto, Separador: String): String;
var
    c, i : integer;
    aux :  string;
begin
    c   := 1;
    aux := '';

    for i := 1 to Length(Texto) do
    begin
        if Texto[i] <> Separador then
        begin
            aux := aux + Texto[i];
        end
        else
        begin
            if c = Entrada then
               break;

            c   := c + 1;
            aux := '';
        end;
    end;

    result := aux;
end;

procedure TfrmPrincipal.REGExt;
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
     Reg.RootKey := HKEY_CLASSES_ROOT;
     Reg.LazyWrite := false;
     Reg.OpenKey('Arquivo', true);
     Reg.WriteString('', 'Arquivo');
     Reg.CloseKey;
     Reg.OpenKey('Arquivo\shell\open\command', true);
     Reg.WriteString('', ParamStr(0) + ' %1');
     Reg.CloseKey;
     Reg.OpenKey('Arquivo\DefaultIcon', true);
     Reg.WriteString('', ParamStr(0) + ',0');
     Reg.CloseKey;
     Reg.OpenKey('.gbs', true);
     Reg.WriteString('', 'Arquivo');
     Reg.CloseKey;
  finally
     Reg.Free;
  end;
end;

procedure TfrmPrincipal.mnuAbrirClick(Sender: TObject);
begin
    if frmInformacoes <> nil then
    begin
        MessageDlg('O formulário visualização das informações do GeoBusiness já está em uso', mtInformation, [mbOK], 0);
        Exit;
    end;

    if sArquivo = '' then
    begin
       if OpenDialog1.Execute then
          if FileExists(OpenDialog1.FileName) then
             sArquivo := OpenDialog1.FileName;
    end;

    if sArquivo <> '' then
    begin
        try
           cdsGeoBusiness.CreateDataSet;
        except
        end;

        cdsGeoBusiness.EmptyDataSet;

        try
           cdsGeoBusiness.LoadFromFile(sArquivo);
        except
           on E: Exception do
           begin
               MessageDlg('Não foi possível carregar o arquivo de GeoBusiness em função da situação descrita abaixo.'+#13+#10+''+#13+#10+'Situação: ' + e.Message, mtWarning, [mbOK], 0);
               exit;
           end;
        end;

        try
           bdDados.Close;
           bdDados.ConnectionString := cdsGeoBusinessconnection_string.AsString;
           bdDados.Open();
        except
          on E: Exception do
          begin
              MessageDlg('Não foi possível estabelecer a conexão com a base de dados do Analyzer, verifique os parâmetros de conexão e tente novamente.' +#13+#10+
                         'Descrição do Problema: ' + E.Message, mtInformation, [mbOK], 0);
              Exit;
          end;
        end;

        frmInformacoes := TfrmInformacoes.Create(Self);
        frmInformacoes.ShowModal;

        if frmInformacoes.lOK then
        begin
            if sArquivo <> '' then
            begin
                aguarde(0,'Abrindo o arquivo de GeoBusiness');

                Self.Caption := sCaption + ' - ' + sArquivo;
                dxStatusBar1.Panels[4].Text := 'Arquivo: ' + sArquivo;

                mnuLocalizacao.Enabled       := True;
                mnuEditarLocalizacao.Enabled := True;
                mnuFecharArquivo.Enabled     := True;
                mnuFatos.Enabled             := True;

                if FileExists(sMapa) then
                   DeleteFile(sMapa);

                Dispcampos(True);
                MontaAnalise;

                aguarde(1,'');
            end;
        end;

        FreeAndNil(frmInformacoes);

        if sArquivo <> '' then
           mnuFecharArquivo.Enabled := True;
    end;
end;

procedure TfrmPrincipal.aguarde(Tipo: Integer; Mensagem: string);
begin
    if Tipo = 0 then
    begin
        if frmAguarde <> nil then
           exit;

        frmAguarde := TfrmAguarde.Create(Self);
        frmAguarde.cMensagem := Mensagem;
        frmAguarde.Show;
        frmAguarde.Update;
    end;

    if Tipo = 1 then
    begin
        if frmAguarde <> nil then
           FreeAndNil(frmAguarde);
    end;

    if Tipo = 2 then
    begin
        if frmAguarde <> nil then
           exit;

        frmAguarde := TfrmAguarde.Create(Self);

        frmAguarde.Label2.Visible         := False;
        frmAguarde.cxProgressBar1.Visible := True;

        frmAguarde.Show;
        frmAguarde.Update;
    end;
end;

procedure TfrmPrincipal.BitBtn3Click(Sender: TObject);
begin
    if cbbPais.Properties.Items.Count <= 0 then
    begin
        MessageDlg('Não existe nenhuma informação sobre localização informada', mtInformation, [mbOK], 0);
        Exit;
    end;

    if cbxSumario.Text = '' then
    begin
        MessageDlg('Selecione um Sumário', mtInformation, [mbOK], 0);
        Exit;
    end;

    if cbxFuncao.Text = '' then
    begin
        MessageDlg('Selecione uma Função para o Sumário', mtInformation, [mbOK], 0);
        Exit;
    end;

    if cbxDimensao.Text = '' then
    begin
        MessageDlg('Selecione uma Dimensão', mtInformation, [mbOK], 0);
        Exit;
    end;

    if cbxVisao.Text = '' then
    begin
        MessageDlg('Selecione a Visão do Mapa', mtInformation, [mbOK], 0);
        Exit;
    end;

    aguarde(2,'');

    frmAguarde.cxProgressBar1.Properties.Max := 14;
    frmAguarde.cxProgressBar1.Position       := 0;
    frmAguarde.Update;

    try
       CriaDataSetMapa;
       PlotarMapa;

       if chkNavegador.Checked = False then
          WebBrowser1.Navigate(sMapa)
       else
          ShellExecute(handle,'open', pchar(sMapa),nil, nil, sw_shownormal);

    finally
       frmAguarde.cxProgressBar1.Position := 14;
       frmAguarde.Update;
       aguarde(1,'');
    end;
end;

procedure TfrmPrincipal.btnFiltroClick(Sender: TObject);
begin
    frmFiltro.ShowModal;
end;

procedure TfrmPrincipal.CarregaCubo;
var
    i : integer;
    sCampos : string;
begin
    try
        HC.Active := False;

        sCampos := '';
        for i := 1 to 50 do
        begin
            if not cdsGeoBusiness.FieldByName('campo_dimensao_' + IntToStr(i)).IsNull then
            begin
                if cdsGeoBusiness.FieldByName('campo_dimensao_' + IntToStr(i)).AsString <> '' then
                begin
                    if sCampos = '' then
                    begin
                        sCampos := sTabela + '.' + cdsGeoBusiness.FieldByName('campo_dimensao_' + IntToStr(i)).AsString;
                    end
                    else
                    begin
                        sCampos := sCampos + ', ' + sTabela + '.' + cdsGeoBusiness.FieldByName('campo_dimensao_' + IntToStr(i)).AsString;
                    end;
                end;
            end;

            if not cdsGeoBusiness.FieldByName('campo_sumario_' + IntToStr(i)).IsNull then
            begin
                if cdsGeoBusiness.FieldByName('campo_sumario_' + IntToStr(i)).AsString <> '' then
                begin
                    if sCampos = '' then
                    begin
                        sCampos := sTabela + '.' + cdsGeoBusiness.FieldByName('campo_sumario_' + IntToStr(i)).AsString;
                    end
                    else
                    begin
                        sCampos := sCampos + ', ' + sTabela + '.' + cdsGeoBusiness.FieldByName('campo_sumario_' + IntToStr(i)).AsString;
                    end;
                end;
            end;
        end;

        qryMapa.Close;
        qryMapa.SQL.Clear;

        if lDemo then
        begin
            if (cdsGeoBusinesscampo_aux_1.AsString = 'Microsoft Access')     or
               (cdsGeoBusinesscampo_aux_1.AsString = 'Microsoft SQL Server') then
                qryMapa.SQL.Add('SELECT TOP 1 GEO_REFERENCIA.PAIS, GEO_REFERENCIA.REGIAO, GEO_REFERENCIA.ESTADO, GEO_REFERENCIA.MESOREGIAO, GEO_REFERENCIA.MICROREGIAO, GEO_REFERENCIA.CIDADE, ' + sCampos);

            if (cdsGeoBusinesscampo_aux_1.AsString = 'Firebird ou Interbase') then
                qryMapa.SQL.Add('SELECT FIRST 1 GEO_REFERENCIA.PAIS, GEO_REFERENCIA.REGIAO, GEO_REFERENCIA.ESTADO, GEO_REFERENCIA.MESOREGIAO, GEO_REFERENCIA.MICROREGIAO, GEO_REFERENCIA.CIDADE, ' + sCampos);

            if (cdsGeoBusinesscampo_aux_1.AsString = 'MySQL')    or
               (cdsGeoBusinesscampo_aux_1.AsString = 'Postgres') or
               (cdsGeoBusinesscampo_aux_1.AsString = 'Oracle')   then
                qryMapa.SQL.Add('SELECT GEO_REFERENCIA.PAIS, GEO_REFERENCIA.REGIAO, GEO_REFERENCIA.ESTADO, GEO_REFERENCIA.MESOREGIAO, GEO_REFERENCIA.MICROREGIAO, GEO_REFERENCIA.CIDADE, ' + sCampos);
        end
        else
        begin
            qryMapa.SQL.Add('SELECT GEO_REFERENCIA.PAIS, GEO_REFERENCIA.REGIAO, GEO_REFERENCIA.ESTADO, GEO_REFERENCIA.MESOREGIAO, GEO_REFERENCIA.MICROREGIAO, GEO_REFERENCIA.CIDADE, ' + sCampos);
        end;

        qryMapa.SQL.Add('FROM GEO_REFERENCIA, ' + sTabela);
        qryMapa.SQL.Add('WHERE ' + sTabela + '.' + sRef + ' = GEO_REFERENCIA.ID_REFERENCIA');

        if frmPrincipal.sFiltro <> '' then
           qryMapa.SQL.Add('AND ' + frmPrincipal.sFiltro);

        if lDemo then
        begin
            if (cdsGeoBusinesscampo_aux_1.AsString = 'MySQL')    or
               (cdsGeoBusinesscampo_aux_1.AsString = 'Postgres') then
                qryMapa.SQL.Add('LIMIT 1');

            if (cdsGeoBusinesscampo_aux_1.AsString = 'Oracle') then
                qryMapa.SQL.Add('AND ROWNUM = 1');
        end;

        qryMapa.Open;

        HC.BuildDimensionMap;

        HC.DefineFieldAsDimension('PAIS', dgPage);
        HC.DefineFieldAsDimension('REGIAO', dgPage);
        HC.DefineFieldAsDimension('ESTADO', dgPage);
        HC.DefineFieldAsDimension('MESOREGIAO', dgPage);
        HC.DefineFieldAsDimension('MICROREGIAO', dgPage);
        HC.DefineFieldAsDimension('CIDADE', dgPage);

        for i := 1 to 50 do
        begin
            if not cdsGeoBusiness.FieldByName('campo_dimensao_' + IntToStr(i)).IsNull then
               if cdsGeoBusiness.FieldByName('campo_dimensao_' + IntToStr(i)).AsString <> '' then
                  HC.DefineFieldAsDimension(cdsGeoBusiness.FieldByName('campo_dimensao_' + IntToStr(i)).AsString, dgPage);

            if not cdsGeoBusiness.FieldByName('campo_sumario_' + IntToStr(i)).IsNull then
               if cdsGeoBusiness.FieldByName('campo_sumario_' + IntToStr(i)).AsString <> '' then
                  HC.DefineFieldAsSummary(cdsGeoBusiness.FieldByName('campo_sumario_' + IntToStr(i)).AsString).DefaultFormat := '#,##0.00';
        end;

        HC.Active := True;
        qryMapa.Close;
    except
      on E: Exception do
      begin
          MessageDlg('Não foi possível gerar as informações para o cubo de decisão em função da situação descrita abaixo.'+#13+#10+''+#13+#10+'Situação: ' + E.Message, mtWarning, [mbOK], 0);
      end;
    end;
end;

procedure TfrmPrincipal.Padro1Click(Sender: TObject);
var
    aux : string;
begin
    aux   := sSkin;
    sSkin := 'Nativo';
    sKind := 'lfStandard';

    AssinalaSkin(aux);
end;

procedure TfrmPrincipal.PlotarMapa;
begin
    MapaSimple;
end;

procedure TfrmPrincipal.Springtime1Click(Sender: TObject);
var
    aux : string;
begin
    aux   := sSkin;
    sSkin := StringReplace(TMenuItem(Sender).Caption,'&','',[rfReplaceAll]);

    AssinalaSkin(aux);
end;

procedure TfrmPrincipal.UltraFlat1Click(Sender: TObject);
var
    aux : string;
begin
    aux   := sSkin;
    sSkin := 'Nativo';
    sKind := 'lfUltraFlat';

    AssinalaSkin(aux);
end;

procedure TfrmPrincipal.cbbEstadoPropertiesChange(Sender: TObject);
begin
    aguarde(0,'Processando Informações');

    MontaLocais('MESOREGIAO');
    MontaLocais('MICROREGIAO');
    MontaLocais('CIDADE');

    aguarde(1,'');
end;

procedure TfrmPrincipal.cbbMesoRegiaoPropertiesChange(Sender: TObject);
begin
    aguarde(0,'Processando Informações');

    MontaLocais('MICROREGIAO');
    MontaLocais('CIDADE');

    aguarde(1,'');
end;

procedure TfrmPrincipal.cbbMicroRegiaoPropertiesChange(Sender: TObject);
begin
    aguarde(0,'Processando Informações');
    MontaLocais('CIDADE');
    aguarde(1,'');
end;

procedure TfrmPrincipal.cbbPaisPropertiesChange(Sender: TObject);
begin
    aguarde(0,'Processando Informações');

    MontaLocais('REGIAO');
    MontaLocais('ESTADO');
    MontaLocais('MESOREGIAO');
    MontaLocais('MICROREGIAO');
    MontaLocais('CIDADE');

    aguarde(1,'');
end;

procedure TfrmPrincipal.cbbRegiaoPropertiesChange(Sender: TObject);
begin
    aguarde(0,'Processando Informações');

    MontaLocais('ESTADO');
    MontaLocais('MESOREGIAO');
    MontaLocais('MICROREGIAO');
    MontaLocais('CIDADE');

    aguarde(1,'');
end;

procedure TfrmPrincipal.cbxDimensaoPropertiesChange(Sender: TObject);
begin
    MontaDimensao;
end;

procedure TfrmPrincipal.cdsGeoBusinessAfterInsert(DataSet: TDataSet);
begin
    cdsGeoBusinessdt_criacao.Value      := Now;
    cdsGeoBusinessmaximo_itens.Value    := 1000;
    cdsGeoBusinesslargura.Value         := 1000;
    cdsGeoBusinessaltura.Value          := 1000;
    cdsGeoBusinesstamanho.Value         := 3;
    cdsGeoBusinessitens_mark.Value      := 10;
    cdsGeoBusinessvisao.Value           := 'Mapa';
    cdsGeoBusinessvisualiza_coord.Value := 'N';
    cdsGeoBusinesscampo_aux_2.Value     := 'MM/DD/YYYY';
    cdsGeoBusinesscampo_aux_3.Value     := 'S';
    cdsGeoBusinesscampo_aux_4.Value     := 'S';
    cdsGeoBusinesscampo_aux_5.Value     := 'S';
    cdsGeoBusinessendereco_a.Value      := 'http://thydzik.com/thydzikGoogleMap/markerlink.php?text=A&color=5680FC';
    cdsGeoBusinessendereco_b.Value      := 'http://thydzik.com/thydzikGoogleMap/markerlink.php?text=B&color=FCF356';
    cdsGeoBusinessendereco_c.Value      := 'http://thydzik.com/thydzikGoogleMap/markerlink.php?text=C&color=FC6355';
end;

procedure TfrmPrincipal.Flat1Click(Sender: TObject);
var
    aux : string;
begin
    aux   := sSkin;
    sSkin := 'Nativo';
    sKind := 'lfFlat';

    AssinalaSkin(aux);
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
var
    iniFile : TIniFile;
begin
    iniFile := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
    iniFile.WriteString('Geral','Skin',sSkin);
    iniFile.WriteString('Geral','Kind',sKind);
    iniFile.Free;

    if FileExists(sMapa) then
       DeleteFile(sMapa);

    FreeAndNil(cdsMapa);
    FreeAndNil(cdsMapa1);
    FreeAndNil(cdsMapaTotalRef);
    FreeAndNil(cdsMapaTotalDim);
    FreeAndNil(cdsGeoBusiness);

    bdDados.Close;
end;

procedure TfrmPrincipal.AssinalaSkin(Anterior: string);
begin
    try
        mnuSkin.Find(Anterior).Checked := False;
        mnuSkin.Find(sSkin).Checked    := True;

        Padro1.Checked     := False;
        Flat1.Checked      := False;
        UltraFlat1.Checked := False;
        Office111.Checked  := False;

        if sKind = 'lfFlat' then
        begin
            dxSkinController1.Kind := lfFlat;
            Flat1.Checked          := True;
        end
        else
        if sKind = 'lfUltraFlat' then
        begin
            dxSkinController1.Kind := lfUltraFlat;
            UltraFlat1.Checked     := True;
        end
        else
        if sKind = 'lfOffice11' then
        begin
            dxSkinController1.Kind := lfOffice11;
            Office111.Checked      := True;
        end
        else
        begin
           dxSkinController1.Kind := lfStandard;
           Padro1.Checked         := True;
        end;

        if sSkin <> 'Nativo' then
        begin
            if sSkin <> '' then
            begin
               dxSkinController1.SkinName := sSkin;
               dxSkinController1.UseSkins := True;
            end;
        end
        else
           dxSkinController1.UseSkins := False;
    except
    end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
    iniFile : TIniFile;
    ReleaseCodeString: string;
    SerialNumber : longint;
begin
    lPrimeiroAcesso := True;
    sVersao         := '2011.R2.13072011';
    sCaption        := 'GeoBusiness';
    Self.Caption    := sCaption;
    lDemo           := True;
    sSerial         := '';
    sRelease        := '';

    GetRegistrationInformation (ReleaseCodeString, SerialNumber);
    SerialNumber := StrToInt(Entry(1,sVersao,'.'));
    if IsReleaseCodeValid (ReleaseCodeString, SerialNumber) then
    begin
        lDemo    := False;
        sSerial  := IntToStr(SerialNumber);
        sRelease := ReleaseCodeString;
    end;

    REGExt;
    SetLanguage(2, cxLocalizer1);
    TeeSetBrazil;

    if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Temp') then
       ForceDirectories(ExtractFilePath(Application.ExeName) + 'Temp');

    sSkin   := 'Nativo';
    sKind   := 'lfStandard';
    iniFile := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
    try
       sSkin := iniFile.ReadString('Geral','Skin','Nativo');
       sKind := iniFile.ReadString('Geral','Kind','lfStandard');
    except
    end;
    iniFile.Free;

    AssinalaSkin('Nativo');

    cdsGeoBusiness.Close;
    cdsGeoBusiness.CreateDataSet;

    sMapa := ExtractFilePath(Application.ExeName) + 'Temp\Mapa.html';

    if FileExists(sMapa) then
       DeleteFile(sMapa);

    Dispcampos(False);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
    dxStatusBar1.Panels[0].Text := 'Data: '     + DateToStr(Date);
    dxStatusBar1.Panels[1].Text := 'Versão: '   + sVersao;

    if lDemo then
    begin
       dxStatusBar1.Panels[2].Text := 'Cópia de Avaliação';
       cxLabel3.Visible            := True;
       cxLabel4.Visible            := True;
       cxLabel5.Visible            := True;
       cxLabel6.Visible            := True;
    end
    else
    begin
       dxStatusBar1.Panels[2].Text := 'Cópia Registrada';
       cxLabel3.Visible            := False;
       cxLabel4.Visible            := False;
       cxLabel5.Visible            := False;
       cxLabel6.Visible            := False;
    end;

    if FileExists(ParamStr(1)) then
    begin
        sArquivo := ParamStr(1);
        mnuAbrir.Click;
        lPrimeiroAcesso := False;
    end;

    cxPageControl2.ActivePageIndex := 0;
end;

procedure TfrmPrincipal.GridCustomDrawCell(Sender: TObject;
  Args: TCustomDrawCellEventArgs);
var
  Value      : double;
  Index, X, Y: integer;
  R          : TRect;
begin
  if (Args.CellType = enData) and not Args.IsNull then
  begin
      if (Args.SubLevelNode.Fun = stSum) and (Args.SubLevelNode.SubFun = sstValue) then
      begin
          if (Sender as THierCubeGrid).GetDataAsDouble(Args.RowLabelNode, Args.ColLabelNode,
             Args.SubLevelNode.SumInfoID, stSum, sstCompareWithPrevByRow, Value) then
          begin
            R := Args.Rect;
            Args.Canvas.FillRect(R);

            if Value < 0 then
               Index := 1
            else
               Index := 0;

            X := R.Right - ImageList2.Width;
            Y := R.Top + (R.Bottom - R.Top - ImageList2.Height) div 2;

            ImageList2.Draw(Args.Canvas, X, Y, Index);
            R.Right := X;

            xhInternalGrid.DrawText(Args.Canvas, Args.ValueString, R, taRightJustify, taCenter);
          end;
      end;

      if (Args.SubLevelNode.SubFun = sstCustom2) then
      begin
          if Args.RowLabelNode.IsSubTotal then
             exit;

          if (Sender as THierCubeGrid).GetDataAsDouble(Args.RowLabelNode, Args.Col, Value) then
          begin
            R := Args.Rect;
            Args.Canvas.FillRect(R);

            if Value = 1 then
               Index := 2;

            if Value = 2 then
               Index := 3;

            if Value = 3 then
               Index := 4;

            X := R.Right - (ImageList2.Width * 4);
            Y := R.Top + (R.Bottom - R.Top - ImageList2.Height) div 2;

            ImageList2.Draw(Args.Canvas, X, Y, Index);
            R.Right := X;

            //xhInternalGrid.DrawText(Args.Canvas, Args.ValueString, R, taRightJustify, taCenter);
            xhInternalGrid.DrawText(Args.Canvas, '', R, taLeftJustify, taCenter);
          end;
      end;
  end;
end;

procedure TfrmPrincipal.GridDrawCell(Sender: TObject; Args: TDrawCellEventArgs);
var
  SumIndex: TIntegerArray;
  Agg: boolean;
begin
  with Args do
  begin
      if CellType = enData then
      begin
          if ColLabelNode <> nil then
             if ColLabelNode.IsSubTotal then
                Color := $00D6F4F8;

          if RowLabelNode <> nil then
             if RowLabelNode.IsSubTotal then
                Color := $00D6F4F8;

          if IsNull then
             ValueString := '';
      end
      else
      if CellType = enDimLabel then
      begin
          if RowLabelNode.Expandable then
             Font.Color := clBlue;

          if RowLabelNode.IsSubTotal then
             Font.Color := clPurple;
      end;
  end;
end;

procedure TfrmPrincipal.GridDrawLabelCell(Sender: TObject;
  var Value: AnsiString; var aFont: TFont; var aColor: TColor;
  LabelNode: TLabelNode);
begin
  if LabelNode.Expandable then aFont.Color := clBlue;
  if LabelNode.IsSubTotal then aFont.Color := clPurple;
end;

procedure TfrmPrincipal.GridGetSubFunctionCalculator(Sender: TObject;
  SubFun: TSubFunction; var Calculator: TSubFunctionCalculator);
begin
  if SubFun = sstCustom1 then Calculator := MyColPercentCalculator;
  if SubFun = sstCustom2 then Calculator := CurvaABC1;
end;

function TfrmPrincipal.CurvaABC1(Args: TSubFunctionCalculatorArgs; out Res: Double): boolean;
var
  Node: TLabelNode;
  Data, Sum: double;
  Valor : double;
begin
  { by default the cell is empty }
  Result := False;
  with Args do
  begin
    { if the function has no value then our sub-function must be empty too }
    if FunctionData[ColTreeIndex, RowTreeIndex].NotEmpty = False then
       exit;

    { othewise look for parent node in row area }
    if RowLabelNode = nil then
       exit; { no dimensions in row area - exit }

    Node := RowLabelNode;
    if Node.IsSubTotal then
    begin
      dCurvaA := 0;
      dCurvaB := 0;

      exit;
  {    Node := Node.Parent;
      if Node = nil then
         exit;}
    end;

    { value to calculate the percent for }
    Data := Data + FunctionData[ColTreeIndex, RowTreeIndex].Data;

    if Node.Parent <> nil then
      { there is a parent node - no need to calculate the sum }
      Sum := FunctionData[ColTreeIndex, Node.Parent.TreeIndex].Data
    else
    begin
        { the list of all nodes from the area of adequate comparisons including the given one }
        SumIndex.FillWith(SubTotal);
        GridInfo.ScanFromLabelNode(ColLabelNode, Args.SumIndex);
        SumInfo.GetAggregate(SumIndex, Fun, Sum);
    end;

    if Sum <> 0 then
    begin
      Valor := Data / Sum * 100;
    end
    else
    begin
      Valor := 0;
    end;

    if dCurvaA > 70 then
    begin
        if dCurvaB > 90 then
        begin
            Res := 3;
        end
        else
        begin
            Res := 2;
            dCurvaB := Valor;
        end;
    end
    else
    begin
        Res := 1;
        dCurvaA := Valor;
    end;

    if Node.Parent <> nil then
       Res := 0;

    Result := True;
  end;
end;

procedure TfrmPrincipal.Informaessobreaaplicao1Click(Sender: TObject);
begin
    if frmAbout <> nil then
    begin
        MessageDlg('O formulário de informações sobre a aplicação já está em uso', mtInformation, [mbOK], 0);
        Exit;
    end;

    frmAbout := TfrmAbout.Create(Self);
    frmAbout.ShowModal;
    FreeAndNil(frmAbout);
end;

function TfrmPrincipal.MyColPercentCalculator(Args: TSubFunctionCalculatorArgs; out Res: Double): boolean;
var
  Node: TLabelNode;
  Data, Sum: double;
begin
  { by default the cell is empty }
  Result := False;
  with Args do
  begin
    { if the function has no value then our sub-function must be empty too }
    if FunctionData[ColTreeIndex, RowTreeIndex].NotEmpty = False then
       exit;

    { othewise look for parent node in row area }
    if RowLabelNode = nil then
       exit; { no dimensions in row area - exit }

    Node := RowLabelNode;
    if Node.IsSubTotal then
    begin
      exit;
  {    Node := Node.Parent;
      if Node = nil then
         exit;}
    end;

    { value to calculate the percent for }
    Data := Data + FunctionData[ColTreeIndex, RowTreeIndex].Data;

    if Node.Parent <> nil then
      { there is a parent node - no need to calculate the sum }
      Sum := FunctionData[ColTreeIndex, Node.Parent.TreeIndex].Data
    else
    begin
        { the list of all nodes from the area of adequate comparisons including the given one }
        SumIndex.FillWith(SubTotal);
        GridInfo.ScanFromLabelNode(ColLabelNode, Args.SumIndex);
        SumInfo.GetAggregate(SumIndex, Fun, Sum);
    end;

    if Sum <> 0 then
      Res := Data / Sum * 100
    else
      Res := 0;

    Result := True;
  end;
end;

procedure TfrmPrincipal.Informaessobreoregistro1Click(Sender: TObject);
begin
    if frmRegistro <> nil then
    begin
        MessageDlg('O formulário de registro já está em uso', mtInformation, [mbOK], 0);
        Exit;
    end;

    frmRegistro := TfrmRegistro.Create(Self);
    frmRegistro.ShowModal;
    FreeAndNil(frmRegistro);
end;

procedure TfrmPrincipal.mnuLocalizacaoClick(Sender: TObject);
begin
    if sArquivo = '' then
    begin
        MessageDlg('Para acessar esta funcionalidade é necessário selecionar um arquivo de GeoBusiness', mtInformation, [mbOK], 0);
        Exit;
    end;

    if frmInfoLocalizacao <> nil then
    begin
        MessageDlg('O formulário de informações sobre as localizações já está em uso', mtInformation, [mbOK], 0);
        Exit;
    end;

    frmInfoLocalizacao := TfrmInfoLocalizacao.Create(Self);
    frmInfoLocalizacao.ShowModal;

    if frmInfoLocalizacao.lOK then
    begin
        MontaLocais('PAIS');
        MontaLocais('REGIAO');
        MontaLocais('ESTADO');
        MontaLocais('MESOREGIAO');
        MontaLocais('MICROREGIAO');
        MontaLocais('CIDADE');
    end;

    FreeAndNil(frmInfoLocalizacao);
end;

procedure TfrmPrincipal.Dispcampos(Valor: Boolean);
begin
    GroupBox1.Enabled    := Valor;
    GroupBox2.Enabled    := Valor;
    GroupBox3.Enabled    := Valor;
    WebBrowser1.Enabled  := Valor;
    cxSplitter1.Enabled  := Valor;

    Panel3.Enabled       := Valor;
    Grid.Enabled         := Valor;
    Panel4.Enabled       := Valor;
    xChart1.Enabled      := Valor;

    if not Valor then
    begin
       HC.Active := Valor;
       xChart1.ClearChart;
    end;

    Memo1.Clear;
    Memo1.Lines.Add('<HTML></HTML>');

    try
       Memo1.Lines.SaveToFile(sMapa);
    except
    end;

    //WebBrowser1.Navigate(sMapa);

    if Valor = False then
    begin
        cbxSumario.ItemIndex       := -1;
        cbxDimensao.ItemIndex      := -1;
        cbxFuncao.ItemIndex        := -1;
        cbbValorDimensao.ItemIndex := -1;
        cbbPais.ItemIndex          := -1;
        cbbRegiao.ItemIndex        := -1;
        cbbEstado.ItemIndex        := -1;
        cbbMesoRegiao.ItemIndex    := -1;
        cbbMicroRegiao.ItemIndex   := -1;
        cbbCidade.ItemIndex        := -1;
        cbxVisao.ItemIndex         := -1;
        cbxVisaoMapa.ItemIndex     := -1;
    end;
end;

procedure TfrmPrincipal.EncerrarAplicao1Click(Sender: TObject);
begin
    Close;
end;

procedure TfrmPrincipal.MontaAnalise;
var
    i : integer;
    sAux: string;
begin
    try
       bdDados.Close;
       bdDados.ConnectionString := cdsGeoBusinessconnection_string.AsString;
       bdDados.Open();
    except
      on E: Exception do
      begin
          MessageDlg('Não foi possível estabelecer a conexão com a base de dados do Analyzer, verifique os parâmetros de conexão e tente novamente.' +#13+#10+
                     'Descrição do Problema: ' + E.Message, mtInformation, [mbOK], 0);
          Application.Terminate;
      end;
    end;

    iItens           := cdsGeoBusinessMAXIMO_ITENS.Value;
    sTabela          := cdsGeoBusinessTABELA.AsString;
    sRef             := cdsGeoBusinessCAMPO_REF.AsString;
    sTitulo          := cdsGeoBusinessID_GEO.AsString;
    sLargura         := cdsGeoBusinessLARGURA.AsString;
    sAltura          := cdsGeoBusinessALTURA.AsString;
    sTamanho         := cdsGeoBusinessTAMANHO.AsString;
    sRegistros       := cdsGeoBusinessITENS_MARK.AsString;
    sVisualizaCoord  := cdsGeoBusinessVISUALIZA_COORD.AsString;
    sIconeA          := cdsGeoBusinessENDERECO_A.AsString;
    sIconeB          := cdsGeoBusinessENDERECO_B.AsString;
    sIconeC          := cdsGeoBusinessENDERECO_C.AsString;

    if cdsGeoBusinessVISAO.AsString = 'Mapa' then
       cbxVisaoMapa.ItemIndex := 0
    else
    if cdsGeoBusinessVISAO.AsString = 'Satélite' then
       cbxVisaoMapa.ItemIndex := 1
    else
    if cdsGeoBusinessVISAO.AsString = 'Híbrido' then
       cbxVisaoMapa.ItemIndex := 2
    else
       cbxVisaoMapa.ItemIndex := 3;

    cbxFuncao.ItemIndex    := 0;
    cbxVisao.ItemIndex     := 0;

    cbxDimensao.Properties.OnChange(Self);

    cbbValorDimensao.Properties.Items.Clear;
    cbxDimensao.Properties.Items.Clear;
    cbxSumario.Properties.Items.Clear;
    for i := 1 to 50 do
    begin
        sAux := cdsGeoBusiness.FieldByName('campo_dimensao_' + IntToStr(i)).AsString;

        if sAux <> '' then
        begin
           cbxDimensao.Properties.Items.Add(sAux);
           sDimensao[i] := sAux;
        end;

        sAux := cdsGeoBusiness.FieldByName('campo_sumario_' + IntToStr(i)).AsString;

        if sAux <> '' then
        begin
           cbxSumario.Properties.Items.Add(sAux);
           sSumario[i] := sAux;
        end;
    end;

    try
        MontaLocais('PAIS');
        MontaLocais('REGIAO');
        MontaLocais('ESTADO');
        MontaLocais('MESOREGIAO');
        MontaLocais('MICROREGIAO');
        MontaLocais('CIDADE');
    except
    end;

    Dispcampos(True);

    try
       FreeAndNil(frmFiltro);
    except
    end;

    frmFiltro := TfrmFiltro.Create(Self);

    if (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Microsoft Access')     or
       (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Microsoft SQL Server') then
        frmFiltro.qryFiltro.SQL.Add('SELECT TOP 1 * FROM ' + sTabela);

    if (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'MySQL')    or
       (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Postgres') then
        frmFiltro.qryFiltro.SQL.Add('SELECT * FROM ' + sTabela + ' LIMIT 1');

    if (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Firebird ou Interbase') then
        frmFiltro.qryFiltro.SQL.Add('SELECT FIRST 1 * FROM ' + sTabela);

    if (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Oracle') then
    begin
        frmFiltro.qryFiltro.SQL.Add('SELECT * FROM ' + sTabela);
        frmFiltro.qryFiltro.SQL.Add('WHERE ROWNUM = 1');
    end;

    frmFiltro.qryFiltro.Open;
end;

function retornaFiltro(): string;
var
    sAux : string;
    i : integer;
begin
    if frmPrincipal.cbbPais.Text <> '' then
    begin
        sAux := '';
        for i := 1 to NumEntries(frmPrincipal.cbbPais.Text,';') do
        begin
            if sAux <> '' then
               sAux := sAux + ',' + #39 + Entry(i,frmPrincipal.cbbPais.Text,';') + #39
            else
               sAux := #39 + Entry(i,frmPrincipal.cbbPais.Text,';') + #39;
        end;

        if result = '' then
           result := 'AND GEO_REFERENCIA.PAIS IN (' + sAux + ')'
        else
           result := result + ' AND GEO_REFERENCIA.PAIS IN (' + sAux + ')';
    end;

    if frmPrincipal.cbbRegiao.Text <> '' then
    begin
        sAux := '';
        for i := 1 to NumEntries(frmPrincipal.cbbRegiao.Text,';') do
        begin
            if sAux <> '' then
               sAux := sAux + ',' + #39 + Entry(i,frmPrincipal.cbbRegiao.Text,';') + #39
            else
               sAux := #39 + Entry(i,frmPrincipal.cbbRegiao.Text,';') + #39;
        end;

        if result = '' then
           result := 'AND GEO_REFERENCIA.REGIAO IN (' + sAux + ')'
        else
           result := result + ' AND GEO_REFERENCIA.REGIAO IN (' + sAux + ')';
    end;

    if frmPrincipal.cbbEstado.Text <> '' then
    begin
        sAux := '';
        for i := 1 to NumEntries(frmPrincipal.cbbEstado.Text,';') do
        begin
            if sAux <> '' then
               sAux := sAux + ',' + #39 + Entry(i,frmPrincipal.cbbEstado.Text,';') + #39
            else
               sAux := #39 + Entry(i,frmPrincipal.cbbEstado.Text,';') + #39;
        end;

        if result = '' then
           result := 'AND GEO_REFERENCIA.ESTADO IN (' + sAux + ')'
        else
           result := result + ' AND GEO_REFERENCIA.ESTADO IN (' + sAux + ')';
    end;

    if frmPrincipal.cbbMesoRegiao.Text <> '' then
    begin
        sAux := '';
        for i := 1 to NumEntries(frmPrincipal.cbbMesoRegiao.Text,';') do
        begin
            if sAux <> '' then
               sAux := sAux + ',' + #39 + Entry(i,frmPrincipal.cbbMesoRegiao.Text,';') + #39
            else
               sAux := #39 + Entry(i,frmPrincipal.cbbMesoRegiao.Text,';') + #39;
        end;

        if result = '' then
           result := 'AND GEO_REFERENCIA.MESOREGIAO IN (' + sAux + ')'
        else
           result := result + ' AND GEO_REFERENCIA.MESOREGIAO IN (' + sAux + ')';
    end;

    if frmPrincipal.cbbMicroRegiao.Text <> '' then
    begin
        sAux := '';
        for i := 1 to NumEntries(frmPrincipal.cbbMicroRegiao.Text,';') do
        begin
            if sAux <> '' then
               sAux := sAux + ',' + #39 + Entry(i,frmPrincipal.cbbMicroRegiao.Text,';') + #39
            else
               sAux := #39 + Entry(i,frmPrincipal.cbbMicroRegiao.Text,';') + #39;
        end;

        if result = '' then
           result := 'AND GEO_REFERENCIA.MICROREGIAO IN (' + sAux + ')'
        else
           result := result + ' AND GEO_REFERENCIA.MICROREGIAO IN (' + sAux + ')';
    end;

    if frmPrincipal.cbbCidade.Text <> '' then
    begin
        sAux := '';
        for i := 1 to NumEntries(frmPrincipal.cbbCidade.Text,';') do
        begin
            if sAux <> '' then
               sAux := sAux + ',' + #39 + Entry(i,frmPrincipal.cbbCidade.Text,';') + #39
            else
               sAux := #39 + Entry(i,frmPrincipal.cbbCidade.Text,';') + #39;
        end;

        if result = '' then
           result := 'AND GEO_REFERENCIA.CIDADE IN (' + sAux + ')'
        else
           result := result + ' AND GEO_REFERENCIA.CIDADE IN (' + sAux + ')';
    end;

    if frmPrincipal.cbbValorDimensao.Text <> '' then
    begin
        sAux := '';
        for i := 1 to NumEntries(frmPrincipal.cbbValorDimensao.Text,';') do
        begin
            if sAux <> '' then
               sAux := sAux + ',' + #39 + Entry(i,frmPrincipal.cbbValorDimensao.Text,';') + #39
            else
               sAux := #39 + Entry(i,frmPrincipal.cbbValorDimensao.Text,';') + #39;
        end;

        if result = '' then
           result := 'AND ' + frmPrincipal.sTabela + '.' + frmPrincipal.cbxDimensao.Text + ' IN (' + sAux + ')'
        else
           result := result + ' AND ' + frmPrincipal.sTabela + '.' + frmPrincipal.cbxDimensao.Text + ' IN (' + sAux + ')';
    end;

    if frmPrincipal.sFiltro <> '' then
    begin
        if result = '' then
           result := 'AND ' + frmPrincipal.sFiltro
        else
           result := result + ' AND ' + frmPrincipal.sFiltro;
    end;
end;

function retornaEndereco(pais, regiao, estado, meso, micro, cidade: string): string;
var
    Query : TADOQuery;
    sSQLBasico : string;
begin
    result  := 'BRASIL';

    Query                := TADOQuery.Create(Application);
    Query.Connection     := frmPrincipal.bdDados;

    Query.Close;

    if (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Microsoft Access')     or
       (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Microsoft SQL Server') then
        Query.SQL.Add('SELECT TOP 1 PAIS, REGIAO, MESOREGIAO, MICROREGIAO, ESTADO, CIDADE, LATITUDE, LONGITUDE');

    if (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Firebird ou Interbase') then
        Query.SQL.Add('SELECT FIRST 1 PAIS, REGIAO, MESOREGIAO, MICROREGIAO, ESTADO, CIDADE, LATITUDE, LONGITUDE');

    if (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'MySQL')    or
       (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Postgres') or
       (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Oracle')   then
        Query.SQL.Add('SELECT PAIS, REGIAO, MESOREGIAO, MICROREGIAO, ESTADO, CIDADE, LATITUDE, LONGITUDE');

    Query.SQL.Add('FROM GEO_REFERENCIA');

    if pais <> '' then
       Query.SQL.Add('WHERE PAIS = ' + #39 + StringReplace(pais,#39,'',[rfReplaceAll]) + #39);

    if regiao <> '' then
       Query.SQL.Add('AND REGIAO = ' + #39 + StringReplace(regiao,#39,'',[rfReplaceAll]) + #39);

    if estado <> '' then
       Query.SQL.Add('AND ESTADO = ' + #39 + StringReplace(estado,#39,'',[rfReplaceAll]) + #39);

    if meso <> '' then
       Query.SQL.Add('AND MESOREGIAO = ' + #39 + StringReplace(meso,#39,'',[rfReplaceAll]) + #39);

    if micro <> '' then
       Query.SQL.Add('AND MICROREGIAO = ' + #39 + StringReplace(micro,#39,'',[rfReplaceAll]) + #39);

    if cidade <> '' then
       Query.SQL.Add('AND CIDADE = ' + #39 + StringReplace(cidade,#39,'',[rfReplaceAll]) + #39);

     sSQLBasico := Query.SQL.Text;

    if frmPrincipal.cbxVisao.Text = 'País' then
       Query.SQL.Add('AND REF_PAIS = ' + #39 + 'S' + #39);

    if frmPrincipal.cbxVisao.Text = 'Região' then
       Query.SQL.Add('AND REF_REGIAO = ' + #39 + 'S' + #39);

    if frmPrincipal.cbxVisao.Text = 'Estado' then
       Query.SQL.Add('AND REF_ESTADO = ' + #39 + 'S' + #39);

    if frmPrincipal.cbxVisao.Text = 'Meso Região' then
       Query.SQL.Add('AND REF_MESO = ' + #39 + 'S' + #39);

    if frmPrincipal.cbxVisao.Text = 'Micro Região' then
       Query.SQL.Add('AND REF_MICRO = ' + #39 + 'S' + #39);

    if (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'MySQL')    or
       (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Postgres') then
        Query.SQL.Add('LIMIT 1');

    if (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Oracle') then
        Query.SQL.Add('AND ROWNUM = 1');

    Query.Open;

    if Query.IsEmpty then
    begin
       Query.Close;
       Query.SQL.Clear;
       Query.SQL.Add(sSQLBasico);
       Query.Open;
    end;

    Query.First;
    if not Query.IsEmpty then
    begin
       if regiao = '' then
          result := Query.FieldByName('PAIS').AsString
       else
       begin
          result := Query.FieldByName('PAIS').AsString;

          if Query.FieldByName('ESTADO').AsString <> '' then
             result := result + ', ' + Query.FieldByName('ESTADO').AsString;

          if Query.FieldByName('CIDADE').AsString <> '' then
             result := result + ', ' + Query.FieldByName('CIDADE').AsString;
       end;
    end;

    result := result + '|' +
           StringReplace(Query.FieldByName('LONGITUDE').AsString,',','.',[rfReplaceAll]) + '|' +
           StringReplace(Query.FieldByName('LATITUDE').AsString,',','.',[rfReplaceAll]);

    Query.Close;
    Query.Free;
end;

procedure TfrmPrincipal.MontaMarks(Texto, Latitude, Longitude, Titulo: string; ABC: string);
begin
    if (Latitude = '') or (Latitude = '0') then
       exit;

    if (Longitude = '') or (Longitude = '0') then
       exit;

    Texto := StringReplace(Texto,'"','',[rfReplaceAll]);

    if (sIconeA <> '') and (ABC = 'A') then
        Memo1.Lines.Add('   addMarkA(map, ' + Latitude + ', ' + Longitude + ', "' + Texto + '", "' + Titulo + '"); ')
    else
    if (sIconeB <> '') and (ABC = 'B') then
        Memo1.Lines.Add('   addMarkB(map, ' + Latitude + ', ' + Longitude + ', "' + Texto + '", "' + Titulo + '"); ')
    else
    if (sIconeC <> '') and (ABC = 'C') then
        Memo1.Lines.Add('   addMarkC(map, ' + Latitude + ', ' + Longitude + ', "' + Texto + '", "' + Titulo + '"); ')
    else
        Memo1.Lines.Add('   addMark(map, ' + Latitude + ', ' + Longitude + ', "' + Texto + '", "' + Titulo + '"); ');

end;

procedure TfrmPrincipal.MapaSimple;
var
    sEndereco : string;
    sTipoMapa : string;
begin
    sEndereco := '';

    if cbxVisaoMapa.Text = 'Mapa' then
       sTipoMapa := 'mapTypeId: google.maps.MapTypeId.ROADMAP'
    else
    if cbxVisaoMapa.Text = 'Satélite' then
       sTipoMapa := 'mapTypeId: google.maps.MapTypeId.SATELLITE'
    else
    if cbxVisaoMapa.Text = 'Híbrido' then
       sTipoMapa := 'mapTypeId: google.maps.MapTypeId.HYBRID'
    else
    if cbxVisaoMapa.Text = 'Terreno' then
       sTipoMapa := 'mapTypeId: google.maps.MapTypeId.TERRAIN';

    // API 3.0

    Memo1.Lines.Clear;
    Memo1.Lines.Add('<html>');
    Memo1.Lines.Add('<head>');

    Memo1.Lines.Add('<style>');
    Memo1.Lines.Add('.h1');
    Memo1.Lines.Add('{');
    Memo1.Lines.Add('font-family: verdana;');
    Memo1.Lines.Add('font-size: 11px;');
    Memo1.Lines.Add('border:0px solid #000000;');
    Memo1.Lines.Add('}');
    Memo1.Lines.Add('</style>');

    Memo1.Lines.Add('<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />');
    Memo1.Lines.Add('<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>');
    Memo1.Lines.Add('<title>GeoBusiness</title>');
    Memo1.Lines.Add('<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>');
    Memo1.Lines.Add('<script type="text/javascript">');

    Memo1.Lines.Add('function LatLngControl(mapa)');
    Memo1.Lines.Add('{');
    Memo1.Lines.Add('   this.ANCHOR_OFFSET_ = new google.maps.Point(8, 8);');
    Memo1.Lines.Add('   this.node_ = this.createHtmlNode_();');
    Memo1.Lines.Add('   mapa.controls[google.maps.ControlPosition.TOP].push(this.node_);');
    Memo1.Lines.Add('   this.setMap(mapa);');
    Memo1.Lines.Add('   this.set("visible", false);');
    Memo1.Lines.Add('}');

    Memo1.Lines.Add('LatLngControl.prototype = new google.maps.OverlayView();');
    Memo1.Lines.Add('LatLngControl.prototype.draw = function() {};');

    Memo1.Lines.Add('LatLngControl.prototype.createHtmlNode_ = function()');
    Memo1.Lines.Add('{');
    Memo1.Lines.Add('  var divNode = document.createElement("div");');
    Memo1.Lines.Add('  divNode.id = "latlng-control";');
    Memo1.Lines.Add('  divNode.index = 100;');
    Memo1.Lines.Add('  return divNode;');
    Memo1.Lines.Add('};');

    Memo1.Lines.Add('LatLngControl.prototype.visible_changed = function()');
    Memo1.Lines.Add('{');
    Memo1.Lines.Add('  this.node_.style.display = this.get("visible") ? "" : "none";');
    Memo1.Lines.Add('};');

    Memo1.Lines.Add('LatLngControl.prototype.updatePosition = function(latLng)');
    Memo1.Lines.Add('{');
    Memo1.Lines.Add('  var projection = this.getProjection();');
    Memo1.Lines.Add('  var point = projection.fromLatLngToContainerPixel(latLng);');
    Memo1.Lines.Add('  this.node_.style.left = point.x + this.ANCHOR_OFFSET_.x + "px";');
    Memo1.Lines.Add('  this.node_.style.top = point.y + this.ANCHOR_OFFSET_.y + "px";');
    Memo1.Lines.Add('  this.node_.innerHTML =');
    Memo1.Lines.Add('  [');
    Memo1.Lines.Add('    latLng.toUrlValue(4),');
    Memo1.Lines.Add('  ].join("");');
    Memo1.Lines.Add('};');

    Memo1.Lines.Add('function initialize()');
    Memo1.Lines.Add('{');
    Memo1.Lines.Add('   var myCenter = new google.maps.LatLng(0,0);');
    Memo1.Lines.Add('   var myOptions = {zoom: 4,center: myCenter,' + sTipoMapa + '}');
    Memo1.Lines.Add('   var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);');

    Memo1.Lines.Add('var latLngControl = new LatLngControl(map);');

    if sVisualizaCoord = 'S' then
    begin
        Memo1.Lines.Add('google.maps.event.addListener(map, "mouseover", function(mEvent) {latLngControl.set("visible", true);});');
        Memo1.Lines.Add('google.maps.event.addListener(map, "mouseout", function(mEvent) {latLngControl.set("visible", false);});');
        Memo1.Lines.Add('google.maps.event.addListener(map, "mousemove", function(mEvent) {latLngControl.updatePosition(mEvent.latLng);});');
    end;

    MontaInfoMapa;

    Memo1.Lines.Add('}');

    if sIconeA <> '' then
    begin
        Memo1.Lines.Add('function addMarkA(mapa, latitude, longitude, contentString, title)');
        Memo1.Lines.Add('{');
        Memo1.Lines.Add('   var myLatlng = new google.maps.LatLng(latitude,longitude);');
        Memo1.Lines.Add('   var infowindow = new google.maps.InfoWindow({content: contentString});');
        Memo1.Lines.Add('   var marker = new google.maps.Marker({position: myLatlng, map: mapa, title: title, clickable: true, icon: ' + #39 + sIconeA + #39 + '})');
        Memo1.Lines.Add('   google.maps.event.addListener(marker, "click", function() {infowindow.open(mapa,marker);});');
        Memo1.Lines.Add('   mapa.setCenter(myLatlng);');
        Memo1.Lines.Add('}');
    end;

    if sIconeB <> '' then
    begin
        Memo1.Lines.Add('function addMarkB(mapa, latitude, longitude, contentString, title)');
        Memo1.Lines.Add('{');
        Memo1.Lines.Add('   var myLatlng = new google.maps.LatLng(latitude,longitude);');
        Memo1.Lines.Add('   var infowindow = new google.maps.InfoWindow({content: contentString});');
        Memo1.Lines.Add('   var marker = new google.maps.Marker({position: myLatlng, map: mapa, title: title, clickable: true, icon: ' + #39 + sIconeB + #39 + '})');
        Memo1.Lines.Add('   google.maps.event.addListener(marker, "click", function() {infowindow.open(mapa,marker);});');
        Memo1.Lines.Add('   mapa.setCenter(myLatlng);');
        Memo1.Lines.Add('}');
    end;

    if sIconeB <> '' then
    begin
        Memo1.Lines.Add('function addMarkC(mapa, latitude, longitude, contentString, title)');
        Memo1.Lines.Add('{');
        Memo1.Lines.Add('   var myLatlng = new google.maps.LatLng(latitude,longitude);');
        Memo1.Lines.Add('   var infowindow = new google.maps.InfoWindow({content: contentString});');
        Memo1.Lines.Add('   var marker = new google.maps.Marker({position: myLatlng, map: mapa, title: title, clickable: true, icon: ' + #39 + sIconeC + #39 + '})');
        Memo1.Lines.Add('   google.maps.event.addListener(marker, "click", function() {infowindow.open(mapa,marker);});');
        Memo1.Lines.Add('   mapa.setCenter(myLatlng);');
        Memo1.Lines.Add('}');
    end;

    Memo1.Lines.Add('function addMark(mapa, latitude, longitude, contentString, title)');
    Memo1.Lines.Add('{');
    Memo1.Lines.Add('   var myLatlng = new google.maps.LatLng(latitude,longitude);');
    Memo1.Lines.Add('   var infowindow = new google.maps.InfoWindow({content: contentString});');
    Memo1.Lines.Add('   var marker = new google.maps.Marker({position: myLatlng, map: mapa, title: title, clickable: true})');
    Memo1.Lines.Add('   google.maps.event.addListener(marker, "click", function() {infowindow.open(mapa,marker);});');
    Memo1.Lines.Add('   mapa.setCenter(myLatlng);');
    Memo1.Lines.Add('}');

    Memo1.Lines.Add('</script>');
    Memo1.Lines.Add('</head>');
    Memo1.Lines.Add('<body style="margin:0px; padding:0px;" onload="initialize()">');
    Memo1.Lines.Add('<div id="map_canvas" style="width: ' + sLargura + 'px; height: ' + sAltura + 'px"></div>');
    Memo1.Lines.Add('</body>');
    Memo1.Lines.Add('</html>');

    if FileExists(sMapa) then
       DeleteFile(sMapa);

    Memo1.Lines.SaveToFile(sMapa);
end;

procedure TfrmPrincipal.MontaInfoMapa;
var
    sPais   : string;
    sRegiao : string;
    sEstado : string;
    sMeso   : string;
    sMicro  : string;
    sCidade : string;
    sTexto  : string;
    sLat    : string;
    sLon    : string;
    vOutros: double;
    sReferencia : string;
    sDimensao   : string;
    sAux        : string;
    a           : integer;
    vTotalLocal : double;
    vPerc       : double;
    iRegistros  : integer;
begin
    // Montar as Marcas
    sReferencia      := '';
    iRegistros       := 0;

    cdsMapa.First;
    while not cdsMapa.Eof do
    begin
        sPais   := '';
        sRegiao := '';
        sEstado := '';
        sMeso   := '';
        sMicro  := '';
        sCidade := '';

        if cbxVisao.Text = 'País' then
        begin
            sPais := cdsMapa.FieldByName('PAIS').AsString;
        end;

        if cbxVisao.Text = 'Região' then
        begin
            sPais   := cdsMapa.FieldByName('PAIS').AsString;
            sRegiao := cdsMapa.FieldByName('REGIAO').AsString;
        end;

        if cbxVisao.Text = 'Estado' then
        begin
            sPais   := cdsMapa.FieldByName('PAIS').AsString;
            sRegiao := cdsMapa.FieldByName('REGIAO').AsString;
            sEstado := cdsMapa.FieldByName('ESTADO').AsString;
        end;

        if cbxVisao.Text = 'Meso Região' then
        begin
            sPais   := cdsMapa.FieldByName('PAIS').AsString;
            sRegiao := cdsMapa.FieldByName('REGIAO').AsString;
            sEstado := cdsMapa.FieldByName('ESTADO').AsString;
            sMeso   := cdsMapa.FieldByName('MESOREGIAO').AsString;
        end;

        if cbxVisao.Text = 'Micro Região' then
        begin
            sPais   := cdsMapa.FieldByName('PAIS').AsString;
            sRegiao := cdsMapa.FieldByName('REGIAO').AsString;
            sEstado := cdsMapa.FieldByName('ESTADO').AsString;
            sMeso   := cdsMapa.FieldByName('MESOREGIAO').AsString;
            sMicro  := cdsMapa.FieldByName('MICROREGIAO').AsString;
        end;

        if cbxVisao.Text = 'Cidade' then
        begin
            sPais   := cdsMapa.FieldByName('PAIS').AsString;
            sRegiao := cdsMapa.FieldByName('REGIAO').AsString;
            sEstado := cdsMapa.FieldByName('ESTADO').AsString;
            sMeso   := cdsMapa.FieldByName('MESOREGIAO').AsString;
            sMicro  := cdsMapa.FieldByName('MICROREGIAO').AsString;
            sCidade := cdsMapa.FieldByName('CIDADE').AsString;
        end;

        sPais   := RemoveAcento(sPais);
        sRegiao := RemoveAcento(sRegiao);
        sEstado := RemoveAcento(sEstado);
        sMeso   := RemoveAcento(sMeso);
        sMicro  := RemoveAcento(sMicro);
        sCidade := RemoveAcento(sCidade);

        sAux := sPais + sRegiao + sEstado + sMeso + sMicro + sCidade;

        if sAux <> sReferencia then
        begin
            iRegistros := iRegistros + 1;

            if lDemo then
               if iRegistros > 4 then
                  break;

            vTotalLocal := 0;
            sReferencia := sAux;

            sTexto := '<table border=0 width=400 class=' + #39 + 'h1' + #39 + '>';
            sTexto := sTexto + '<tr><td colspan=2 align=center bgcolor=#BBFFFF>Localizacao</td></tr>';

            if sPais <> '' then
               sTexto := sTexto + '<tr><td width=30% align=right>Pais:</td><td width=70% align=left>' + sPais + '</td></tr>';

            if sRegiao <> '' then
               sTexto := sTexto + '<tr><td width=30% align=right>Regiao:</td><td width=70% align=left>' + sRegiao + '</td></tr>';

            if sEstado <> '' then
               sTexto := sTexto + '<tr><td width=30% align=right>Estado:</td><td width=70% align=left>' + sEstado + '</td></tr>';

            if sMeso <> '' then
               sTexto := sTexto + '<tr><td width=30% align=right>Meso Regiao:</td><td width=70% align=left>' + sMeso + '</td></tr>';

            if sMicro <> '' then
               sTexto := sTexto + '<tr><td width=30% align=right>Micro Regiao:</td><td width=70% align=left>' + sMicro + '</td></tr>';

            if sCidade <> '' then
               sTexto := sTexto + '<tr><td width=30% align=right>Cidade:</td><td width=70% align=left>' + sCidade + '</td></tr>';

            sTexto := sTexto + '</table>';

            sTexto := sTexto + '<table border=0 width=400 class=' + #39 + 'h1' + #39 + '>';
            sTexto := sTexto + '<tr><td colspan=6 align=center bgcolor=#BBFFFF>Informacoes</td></tr>';
            sTexto := sTexto + '<tr>';
            sTexto := sTexto + '<td width=30% align=center>Dimensao</td>';
            sTexto := sTexto + '<td width=20% align=center>Valor</td>';
            sTexto := sTexto + '<td width=15% align=center>% Local</td>';
            sTexto := sTexto + '<td width=10% align=center>ABC</td>';
            sTexto := sTexto + '<td width=15% align=center>% Dim</td>';
            sTexto := sTexto + '<td width=10% align=center>ABC</td>';
            sTexto := sTexto + '</tr>';

            a := 0;
            vOutros := 0;
            cdsMapa1.First;
            cdsMapa1.RecNo := cdsMapa.RecNo;
            while not cdsMapa1.Eof do
            begin
                sDimensao := RemoveAcento(cdsMapa1.FieldByName('PAIS').AsString) +
                             RemoveAcento(cdsMapa1.FieldByName('REGIAO').AsString) +
                             RemoveAcento(cdsMapa1.FieldByName('ESTADO').AsString) +
                             RemoveAcento(cdsMapa1.FieldByName('MESOREGIAO').AsString) +
                             RemoveAcento(cdsMapa1.FieldByName('MICROREGIAO').AsString) +
                             RemoveAcento(cdsMapa1.FieldByName('CIDADE').AsString);

                if sDimensao = sAux then
                begin
                    vTotalLocal := vTotalLocal + cdsMapa1.FieldByName('VALOR').AsCurrency;

                    if a >= StrToInt(sRegistros) then
                    begin
                       vOutros := vOutros + cdsMapa1.FieldByName('VALOR').AsCurrency;
                    end
                    else
                    begin
                        sTexto := sTexto + '<tr>';
                        sTexto := sTexto + '<td>';
                        sTexto := sTexto + RemoveAcento(Copy(cdsMapa1.FieldByName('DIMENSAO').AsString,1,15));
                        sTexto := sTexto + '</td>';

                        sTexto := sTexto + '<td align=right>';
                        sTexto := sTexto + FormatCurr('###,###,##0.00', cdsMapa1.FieldByName('VALOR').AsCurrency);
                        sTexto := sTexto + '</td>';

                        sTexto := sTexto + '<td align=right>';
                        sTexto := sTexto + FormatCurr('##0.00', cdsMapa1.FieldByName('PERC_REF').AsCurrency);
                        sTexto := sTexto + '</td>';

                        sTexto := sTexto + '<td align=CENTER>';
                        sTexto := sTexto + cdsMapa1.FieldByName('ABC_REF').AsString;
                        sTexto := sTexto + '</td>';

                        sTexto := sTexto + '<td align=right>';
                        sTexto := sTexto + FormatCurr('##0.00', cdsMapa1.FieldByName('PERC_DIM').AsCurrency);
                        sTexto := sTexto + '</td>';

                        sTexto := sTexto + '<td align=CENTER>';
                        sTexto := sTexto + cdsMapa1.FieldByName('ABC_DIM').AsString;
                        sTexto := sTexto + '</td>';

                        sTexto := sTexto + '</tr>';
                    end;

                    a := a + 1;
                end
                else
                   cdsMapa1.Last;

                cdsMapa1.Next;
            end;

            if vOutros <> 0 then
            begin
                sTexto := sTexto + '<tr>';
                sTexto := sTexto + '<td>Outros</td>';

                sTexto := sTexto + '<td align=right>';
                sTexto := sTexto + FormatCurr('###,###,##0.00', vOutros);
                sTexto := sTexto + '</td>';

                if vTotalLocal <> 0 then
                   vPerc := vOutros * 100 / vTotalLocal
                else
                   vPerc := 0;

                sTexto := sTexto + '<td align=right>';
                sTexto := sTexto + FormatCurr('##0.00', vPerc);
                sTexto := sTexto + '</td>';

                sTexto := sTexto + '</tr>';
            end;

            sTexto := sTexto + '</table>';

            sTexto := sTexto + '<table border=0 width=400 class=' + #39 + 'h1' + #39 + '>';
            sTexto := sTexto + '<tr><td colspan=3 align=center bgcolor=#BBFFFF>Totais</td></tr>';
            sTexto := sTexto + '<tr><td width=15% align=right>Total Local: </td><td width=20% align=right>' + FormatCurr('###,###,##0.00', vTotalLocal) + '</td><td width=10% align=right>' + FormatCurr('##0.00', cdsMapa.FieldByName('PERC').AsCurrency) + ' % </td></tr>';
            sTexto := sTexto + '<tr><td width=15% align=right>Total Geral: </td><td width=20% align=right>' + FormatCurr('###,###,##0.00', vTotalGeral) + '</td><td width=10% align=center>' + cdsMapa.FieldByName('ABC_PERC').AsString + '</td></tr>';
            sTexto := sTexto + '</table>';

            sTitulo := entry(1,retornaEndereco(sPais,sRegiao,sEstado,sMeso,sMicro,sCidade),'|');
            sTitulo := RemoveAcento(sTitulo);
            sLat    := entry(2,retornaEndereco(sPais,sRegiao,sEstado,sMeso,sMicro,sCidade),'|');
            sLon    := entry(3,retornaEndereco(sPais,sRegiao,sEstado,sMeso,sMicro,sCidade),'|');

            MontaMarks(sTexto,sLat,sLon,sTitulo,cdsMapa.FieldByName('ABC_PERC').AsString);
        end;

        cdsMapa.Next;
    end;
end;

function AssinalaString(valor: variant): string;
var
    sResult : string;
begin
    if valor = Null then
       sResult := ''
    else
       sResult := valor;

    result := sResult;
end;

procedure TfrmPrincipal.CriaDataSetMapa;
var
    sSumario : string;
    sDimensao : string;
    sSelect   : string;
    sGroup    : string;
    sAux      : string;
    sAux_1    : string;
    dAux      : double;
    dCurvaA, dCurvaB : double;
    Res : integer;
    i : integer;
    sAtual, sAnterior: string;
begin
    frmAguarde.cxProgressBar1.Position := 1;
    frmAguarde.Update;

    cdsMapa.Close;
    cdsMapa.CreateDataSet;

    cdsMapa1.Close;
    cdsMapa1.CreateDataSet;

    cdsMapaTotalRef.Close;
    cdsMapaTotalRef.CreateDataSet;

    cdsMapaTotalDim.Close;
    cdsMapaTotalDim.CreateDataSet;

    sSumario  := sTabela + '.' + cbxSumario.Text;
    sDimensao := sTabela + '.' + cbxDimensao.Text;

    qryMapa.Close;
    qryMapa.SQL.Clear;

    if cbxVisao.Text = 'País' then
    begin
        sSelect := 'SELECT GEO_REFERENCIA.PAIS';
        sGroup  := 'GROUP BY GEO_REFERENCIA.PAIS';
    end
    else
    if cbxVisao.Text = 'Região' then
    begin
        sSelect := 'SELECT GEO_REFERENCIA.PAIS, GEO_REFERENCIA.REGIAO';
        sGroup  := 'GROUP BY GEO_REFERENCIA.PAIS, GEO_REFERENCIA.REGIAO';
    end
    else
    if cbxVisao.Text = 'Estado' then
    begin
        sSelect := 'SELECT GEO_REFERENCIA.PAIS, GEO_REFERENCIA.REGIAO, GEO_REFERENCIA.ESTADO';
        sGroup  := 'GROUP BY GEO_REFERENCIA.PAIS, GEO_REFERENCIA.REGIAO, GEO_REFERENCIA.ESTADO';
    end
    else
    if cbxVisao.Text = 'Meso Região' then
    begin
        sSelect := 'SELECT GEO_REFERENCIA.PAIS, GEO_REFERENCIA.REGIAO, GEO_REFERENCIA.ESTADO, GEO_REFERENCIA.MESOREGIAO';
        sGroup  := 'GROUP BY GEO_REFERENCIA.PAIS, GEO_REFERENCIA.REGIAO, GEO_REFERENCIA.ESTADO, GEO_REFERENCIA.MESOREGIAO';
    end
    else
    if cbxVisao.Text = 'Micro Região' then
    begin
        sSelect := 'SELECT GEO_REFERENCIA.PAIS, GEO_REFERENCIA.REGIAO, GEO_REFERENCIA.ESTADO, GEO_REFERENCIA.MESOREGIAO, GEO_REFERENCIA.MICROREGIAO';
        sGroup  := 'GROUP BY GEO_REFERENCIA.PAIS, GEO_REFERENCIA.REGIAO, GEO_REFERENCIA.ESTADO, GEO_REFERENCIA.MESOREGIAO, GEO_REFERENCIA.MICROREGIAO';
    end
    else
    if cbxVisao.Text = 'Cidade' then
    begin
        sSelect := 'SELECT GEO_REFERENCIA.PAIS, GEO_REFERENCIA.REGIAO, GEO_REFERENCIA.ESTADO, GEO_REFERENCIA.MESOREGIAO, GEO_REFERENCIA.MICROREGIAO, GEO_REFERENCIA.CIDADE';
        sGroup  := 'GROUP BY GEO_REFERENCIA.PAIS, GEO_REFERENCIA.REGIAO, GEO_REFERENCIA.ESTADO, GEO_REFERENCIA.MESOREGIAO, GEO_REFERENCIA.MICROREGIAO, GEO_REFERENCIA.CIDADE';
    end;

    qryMapa.SQL.Add(sSelect);
    qryMapa.SQL.Add(', ' + sDimensao);

    if cbxFuncao.Text = 'Somar' then
       qryMapa.SQL.Add(', Sum(' + sSumario + ') AS SumOf' + cbxSumario.Text)
    else
    if cbxFuncao.Text = 'Contar' then
       qryMapa.SQL.Add(', Count(' + sSumario + ') AS CountOf' + cbxSumario.Text)
    else
    if cbxFuncao.Text = 'Média' then
       qryMapa.SQL.Add(', Avg(' + sSumario + ') AS AvgOf' + cbxSumario.Text)
    else
    if cbxFuncao.Text = 'Mínimo' then
       qryMapa.SQL.Add(', Min(' + sSumario + ') AS MinOf' + cbxSumario.Text)
    else
    if cbxFuncao.Text = 'Máximo' then
       qryMapa.SQL.Add(', Max(' + sSumario + ') AS MaxOf' + cbxSumario.Text);

    //qryMapa.SQL.Add('FROM ' + sTabela + ' INNER JOIN GEO_REFERENCIA ON ' + sTabela + '.' + sRef + ' = GEO_REFERENCIA.ID_REFERENCIA');

    qryMapa.SQL.Add('FROM GEO_REFERENCIA, ' + sTabela);
    qryMapa.SQL.Add('WHERE ' + sTabela + '.' + sRef + ' = GEO_REFERENCIA.ID_REFERENCIA');
    qryMapa.SQL.Add(retornaFiltro());

    qryMapa.SQL.Add(sGroup);
    qryMapa.SQL.Add(', ' + sDimensao);

    frmAguarde.cxProgressBar1.Position := 2;
    frmAguarde.Update;

    // Cria dataset com as informações para o mapa
    qryMapa.Open;
    qryMapa.First;
    while not qryMapa.Eof do
    begin
        cdsMapa.Insert;

        if cbxVisao.Text = 'País' then
        begin
            cdsMapa.Fields[0].Value := qryMapa.FieldByName('PAIS').Value;
        end
        else
        if cbxVisao.Text = 'Região' then
        begin
            cdsMapa.Fields[0].Value := qryMapa.FieldByName('PAIS').Value;
            cdsMapa.Fields[1].Value := qryMapa.FieldByName('REGIAO').Value;
        end
        else
        if cbxVisao.Text = 'Estado' then
        begin
            cdsMapa.Fields[0].Value := qryMapa.FieldByName('PAIS').Value;
            cdsMapa.Fields[1].Value := qryMapa.FieldByName('REGIAO').Value;
            cdsMapa.Fields[2].Value := qryMapa.FieldByName('ESTADO').Value;
        end
        else
        if cbxVisao.Text = 'Meso Região' then
        begin
            cdsMapa.Fields[0].Value := qryMapa.FieldByName('PAIS').Value;
            cdsMapa.Fields[1].Value := qryMapa.FieldByName('REGIAO').Value;
            cdsMapa.Fields[2].Value := qryMapa.FieldByName('ESTADO').Value;
            cdsMapa.Fields[3].Value := qryMapa.FieldByName('MESOREGIAO').Value;
        end
        else
        if cbxVisao.Text = 'Micro Região' then
        begin
            cdsMapa.Fields[0].Value := qryMapa.FieldByName('PAIS').Value;
            cdsMapa.Fields[1].Value := qryMapa.FieldByName('REGIAO').Value;
            cdsMapa.Fields[2].Value := qryMapa.FieldByName('ESTADO').Value;
            cdsMapa.Fields[3].Value := qryMapa.FieldByName('MESOREGIAO').Value;
            cdsMapa.Fields[4].Value := qryMapa.FieldByName('MICROREGIAO').Value;
        end
        else
        if cbxVisao.Text = 'Cidade' then
        begin
            cdsMapa.Fields[0].Value := qryMapa.FieldByName('PAIS').Value;
            cdsMapa.Fields[1].Value := qryMapa.FieldByName('REGIAO').Value;
            cdsMapa.Fields[2].Value := qryMapa.FieldByName('ESTADO').Value;
            cdsMapa.Fields[3].Value := qryMapa.FieldByName('MESOREGIAO').Value;
            cdsMapa.Fields[4].Value := qryMapa.FieldByName('MICROREGIAO').Value;
            cdsMapa.Fields[5].Value := qryMapa.FieldByName('CIDADE').Value;
        end;

        cdsMapa.Fields[6].Value := qryMapa.FieldByName(cbxDimensao.Text).Value;

        if cbxFuncao.Text = 'Somar' then
           cdsMapa.Fields[7].Value := RoundTo(qryMapa.FieldByName('SumOf' + cbxSumario.Text).Value, -2)
        else
        if cbxFuncao.Text = 'Contar' then
           cdsMapa.Fields[7].Value := RoundTo(qryMapa.FieldByName('CountOf' + cbxSumario.Text).Value, -2)
        else
        if cbxFuncao.Text = 'Média' then
           cdsMapa.Fields[7].Value := RoundTo(qryMapa.FieldByName('AvgOf' + cbxSumario.Text).Value, -2)
        else
        if cbxFuncao.Text = 'Mínimo' then
           cdsMapa.Fields[7].Value := RoundTo(qryMapa.FieldByName('MinOf' + cbxSumario.Text).Value, -2)
        else
        if cbxFuncao.Text = 'Máximo' then
           cdsMapa.Fields[7].Value := RoundTo(qryMapa.FieldByName('MaxOf' + cbxSumario.Text).Value, -2);

        cdsMapa.Post;

        qryMapa.Next;
    end;

    frmAguarde.cxProgressBar1.Position := 3;
    frmAguarde.Update;

    // Montar Total por Referencia
    cdsMapa.Close;
    cdsMapa.IndexName := 'cdsMapaIndex1';
    cdsMapa.Open;
    sAux := '';
    cdsMapa.First;
    while not cdsMapa.Eof do
    begin
        sAux_1 := cdsMapa.Fields[0].AsString + cdsMapa.Fields[1].AsString + cdsMapa.Fields[2].AsString + cdsMapa.Fields[3].AsString + cdsMapa.Fields[4].AsString + cdsMapa.Fields[5].AsString;

        if sAux <> sAux_1 then
        begin
           if cdsMapaTotalRef.State = dsInsert then
              cdsMapaTotalRef.Post;

           cdsMapaTotalRef.Insert;

           cdsMapaTotalRef.Fields[0].Value := cdsMapa.Fields[0].Value;
           cdsMapaTotalRef.Fields[1].Value := cdsMapa.Fields[1].Value;
           cdsMapaTotalRef.Fields[2].Value := cdsMapa.Fields[2].Value;
           cdsMapaTotalRef.Fields[3].Value := cdsMapa.Fields[3].Value;
           cdsMapaTotalRef.Fields[4].Value := cdsMapa.Fields[4].Value;
           cdsMapaTotalRef.Fields[5].Value := cdsMapa.Fields[5].Value;
           cdsMapaTotalRef.Fields[6].Value := RoundTo(cdsMapa.Fields[7].Value, -2);

           sAux := cdsMapa.Fields[0].AsString + cdsMapa.Fields[1].AsString + cdsMapa.Fields[2].AsString + cdsMapa.Fields[3].AsString + cdsMapa.Fields[4].AsString + cdsMapa.Fields[5].AsString;
        end
        else
        begin
           cdsMapaTotalRef.Fields[6].Value := RoundTo(cdsMapaTotalRef.Fields[6].Value + cdsMapa.Fields[7].Value,-2);
        end;

        cdsMapa.Next;
    end;
    if cdsMapaTotalRef.State = dsInsert then
       cdsMapaTotalRef.Post;

    frmAguarde.cxProgressBar1.Position := 4;
    frmAguarde.Update;

    // Montar Total por Dimensao
    cdsMapa.Close;
    cdsMapa.IndexName := 'cdsMapaIndex2';
    cdsMapa.Open;
    sAux := '';
    cdsMapa.First;
    while not cdsMapa.Eof do
    begin
        if cdsMapa.Fields[6].AsString = '' then
           sAux_1 := '...'
        else
           sAux_1 := cdsMapa.Fields[6].AsString;

        if sAux <> sAux_1 then
        begin
           if cdsMapaTotalDim.State = dsInsert then
              cdsMapaTotalDim.Post;

           cdsMapaTotalDim.Insert;

           cdsMapaTotalDim.Fields[0].Value := cdsMapa.Fields[6].Value;
           cdsMapaTotalDIm.Fields[1].Value := RoundTo(cdsMapa.Fields[7].Value, -2);

           if cdsMapa.Fields[6].AsString = '' then
              sAux := '...'
           else
              sAux := cdsMapa.Fields[6].AsString;
        end
        else
        begin
           cdsMapaTotalDim.Fields[1].Value := RoundTo(cdsMapaTotalDim.Fields[1].Value + cdsMapa.Fields[7].Value,-2);
        end;

        cdsMapa.Next;
    end;
    if cdsMapaTotalDim.State = dsInsert then
       cdsMapaTotalDim.Post;

    frmAguarde.cxProgressBar1.Position := 5;
    frmAguarde.Update;

    // calcula percentual da referencia
    dCurvaA := 0;
    dCurvaB := 0;

    cdsMapa.Close;
    cdsMapa.IndexName := 'cdsMapaIndex1';
    cdsMapa.Open;

    cdsMapaTotalRef.Close;
    cdsMapaTotalRef.IndexName := 'cdsMapaTotalRefIndex2';
    cdsMapaTotalRef.Open;

    frmAguarde.cxProgressBar1.Position := 6;
    frmAguarde.Update;

    dAux      := 0;
    sAnterior := '';
    sAtual    := '';
    cdsMapa.First;
    while not cdsMapa.Eof do
    begin
        if cdsMapaTotalRef.Locate('PAIS;REGIAO;ESTADO;MESOREGIAO;MICROREGIAO;CIDADE',
               VarArrayOf([
               cdsMapa.FieldByName('PAIS').Value,
               cdsMapa.FieldByName('REGIAO').Value,
               cdsMapa.FieldByName('ESTADO').Value,
               cdsMapa.FieldByName('MESOREGIAO').Value,
               cdsMapa.FieldByName('MICROREGIAO').Value,
               cdsMapa.FieldByName('CIDADE').Value
               ]),[loCaseInsensitive]) then
        begin
            if sAnterior = '' then
               sAnterior := AssinalaString(cdsMapaTotalRef.FieldByName('PAIS').Value)        +
                            AssinalaString(cdsMapaTotalRef.FieldByName('REGIAO').Value)      +
                            AssinalaString(cdsMapaTotalRef.FieldByName('ESTADO').Value)      +
                            AssinalaString(cdsMapaTotalRef.FieldByName('MESOREGIAO').Value)  +
                            AssinalaString(cdsMapaTotalRef.FieldByName('MICROREGIAO').Value) +
                            AssinalaString(cdsMapaTotalRef.FieldByName('CIDADE').Value);

            sAtual := AssinalaString(cdsMapaTotalRef.FieldByName('PAIS').Value)        +
                      AssinalaString(cdsMapaTotalRef.FieldByName('REGIAO').Value)      +
                      AssinalaString(cdsMapaTotalRef.FieldByName('ESTADO').Value)      +
                      AssinalaString(cdsMapaTotalRef.FieldByName('MESOREGIAO').Value)  +
                      AssinalaString(cdsMapaTotalRef.FieldByName('MICROREGIAO').Value) +
                      AssinalaString(cdsMapaTotalRef.FieldByName('CIDADE').Value);

            if sAtual <> sAnterior then
            begin
               dAux      := 0;
               dCurvaA   := 0;
               dCurvaB   := 0;
               sAnterior := sAtual;
            end;

            cdsMapa.Edit;

            if cdsMapaTotalRef.FieldByName('VALOR').AsFloat <> 0 then
               cdsMapa.FieldByName('PERC_REF').Value := RoundTo(cdsMapa.FieldByName('VALOR').AsFloat * 100 / cdsMapaTotalRef.FieldByName('VALOR').AsFloat, -2)
            else
               cdsMapa.FieldByName('PERC_REF').Value := 0;

            dAux := dAux + cdsMapa.FieldByName('PERC_REF').Value;
            cdsMapa.FieldByName('ACUM_PERC_REF').Value := RoundTo(dAux, -2);

            if dCurvaA > 70 then
            begin
                if dCurvaB > 90 then
                begin
                    Res := 3;
                end
                else
                begin
                    Res := 2;
                    dCurvaB := dAux;
                end;
            end
            else
            begin
                Res := 1;
                dCurvaA := dAux;
            end;

            if Res = 1 then
               cdsMapa.FieldByName('ABC_REF').Value := 'A'
            else
            if Res = 2 then
               cdsMapa.FieldByName('ABC_REF').Value := 'B'
            else
               cdsMapa.FieldByName('ABC_REF').Value := 'C';

            cdsMapa.Post;
        end;


{        if dAux >= 100 then
        begin
           dAux    := 0;
           dCurvaA := 0;
           dCurvaB := 0;
        end;}

        cdsMapa.Next;
    end;

    frmAguarde.cxProgressBar1.Position := 7;
    frmAguarde.Update;

    // calcula percentual da dimensao
    dCurvaA := 0;
    dCurvaB := 0;

    cdsMapa.Close;
    cdsMapa.IndexName := 'cdsMapaIndex2';
    cdsMapa.Open;

    cdsMapaTotalDim.Close;
    cdsMapaTotalDim.IndexName := 'cdsMapaTotalDimIndex1';
    cdsMapaTotalDim.Open;

    frmAguarde.cxProgressBar1.Position := 8;
    frmAguarde.Update;

    dAux      := 0;
    sAnterior := '';
    sAtual    := '';
    cdsMapa.First;
    while not cdsMapa.Eof do
    begin
        if cdsMapaTotalDim.Locate('DIMENSAO',VarArrayOf([cdsMapa.FieldByName('DIMENSAO').Value]),[loCaseInsensitive]) then
        begin
            if sAnterior = '' then
               sAnterior := AssinalaString(cdsMapaTotalDim.FieldByName('DIMENSAO').Value);

            sAtual := AssinalaString(cdsMapaTotalDim.FieldByName('DIMENSAO').Value);;

            if sAtual <> sAnterior then
            begin
               dAux      := 0;
               dCurvaA   := 0;
               dCurvaB   := 0;
               sAnterior := sAtual;
            end;

            cdsMapa.Edit;

            if cdsMapaTotalDim.FieldByName('VALOR').AsFloat <> 0 then
               cdsMapa.FieldByName('PERC_DIM').Value := RoundTo(cdsMapa.FieldByName('VALOR').AsFloat * 100 / cdsMapaTotalDim.FieldByName('VALOR').AsFloat, -2)
            else
               cdsMapa.FieldByName('PERC_DIM').Value := 0;

            dAux := dAux + cdsMapa.FieldByName('PERC_DIM').Value;
            cdsMapa.FieldByName('ACUM_PERC_DIM').Value := RoundTo(dAux, -2);

            if dCurvaA > 70 then
            begin
                if dCurvaB > 90 then
                begin
                    Res := 3;
                end
                else
                begin
                    Res := 2;
                    dCurvaB := dAux;
                end;
            end
            else
            begin
                Res := 1;
                dCurvaA := dAux;
            end;

            if dAux >= 100 then
               Res := 1;

            if Res = 1 then
               cdsMapa.FieldByName('ABC_DIM').Value := 'A'
            else
            if Res = 2 then
               cdsMapa.FieldByName('ABC_DIM').Value := 'B'
            else
               cdsMapa.FieldByName('ABC_DIM').Value := 'C';

            cdsMapa.Post;
        end;

       { if dAux >= 100 then
        begin
           dAux    := 0;
           dCurvaA := 0;
           dCurvaB := 0;
        end; }

        cdsMapa.Next;
    end;

    frmAguarde.cxProgressBar1.Position := 9;
    frmAguarde.Update;

    // calcula percentual da total
    cdsMapaTotalRef.Close;
    cdsMapaTotalRef.IndexName := 'cdsMapaTotalRefIndex1';
    cdsMapaTotalRef.Open;

    vTotalGeral := 0;
    cdsMapaTotalRef.First;
    while not cdsMapaTotalRef.Eof do
    begin
        vTotalGeral := vTotalGeral + cdsMapaTotalRef.FieldByName('VALOR').Value;
        cdsMapaTotalRef.Next;
    end;

    frmAguarde.cxProgressBar1.Position := 10;
    frmAguarde.Update;

    dCurvaA := 0;
    dCurvaB := 0;
    dAux    := 0;

    cdsMapaTotalRef.First;
    while not cdsMapaTotalRef.Eof do
    begin
        cdsMapaTotalRef.Edit;

        if vTotalGeral <> 0 then
           cdsMapaTotalRef.FieldByName('PERC').Value := RoundTo(cdsMapaTotalRef.FieldByName('VALOR').AsFloat * 100 / vTotalGeral, -2)
        else
           cdsMapaTotalRef.FieldByName('PERC').Value := 0;

        dAux := dAux + cdsMapaTotalRef.FieldByName('PERC').Value;
        cdsMapaTotalRef.FieldByName('ACUM_PERC').Value := RoundTo(dAux, -2);

        if dCurvaA > 70 then
        begin
            if dCurvaB > 90 then
            begin
                Res := 3;
            end
            else
            begin
                Res := 2;
                dCurvaB := dAux;
            end;
        end
        else
        begin
            Res := 1;
            dCurvaA := dAux;
        end;

        if Res = 1 then
           cdsMapaTotalRef.FieldByName('ABC_PERC').Value := 'A'
        else
        if Res = 2 then
           cdsMapaTotalRef.FieldByName('ABC_PERC').Value := 'B'
        else
           cdsMapaTotalRef.FieldByName('ABC_PERC').Value := 'C';

        cdsMapaTotalRef.Post;
        cdsMapaTotalRef.Next;
    end;

    cdsMapaTotalRef.Close;
    cdsMapaTotalRef.IndexName := 'cdsMapaTotalRefIndex2';
    cdsMapaTotalRef.Open;

    frmAguarde.cxProgressBar1.Position := 11;
    frmAguarde.Update;

    cdsMapa.First;
    while not cdsMapa.Eof do
    begin
        if cdsMapaTotalRef.Locate('PAIS;REGIAO;ESTADO;MESOREGIAO;MICROREGIAO;CIDADE',
               VarArrayOf([
               cdsMapa.FieldByName('PAIS').Value,
               cdsMapa.FieldByName('REGIAO').Value,
               cdsMapa.FieldByName('ESTADO').Value,
               cdsMapa.FieldByName('MESOREGIAO').Value,
               cdsMapa.FieldByName('MICROREGIAO').Value,
               cdsMapa.FieldByName('CIDADE').Value
               ]),[loCaseInsensitive]) then
        begin
            cdsMapa.Edit;
            cdsMapa.FieldByName('PERC').Value      := cdsMapaTotalRef.FieldByName('PERC').Value;
            cdsMapa.FieldByName('ACUM_PERC').Value := cdsMapaTotalRef.FieldByName('ACUM_PERC').Value;
            cdsMapa.FieldByName('ABC_PERC').Value  := cdsMapaTotalRef.FieldByName('ABC_PERC').Value;
            cdsMapa.Post;
        end;

        cdsMapa.Next;
    end;

    frmAguarde.cxProgressBar1.Position := 12;
    frmAguarde.Update;

    cdsMapaTotalRef.Close;
    cdsMapaTotalDim.Close;

    cdsMapa.Close;
    cdsMapa.IndexName := 'cdsMapaIndex1';
    cdsMapa.Open;

    cdsMapa1.Close;
    cdsMapa1.IndexName := 'cdsMapaIndex1';
    cdsMapa1.Open;

    // Copia Informacoes do Mapa para o Mapa 1
    cdsMapa.First;
    while not cdsMapa.Eof do
    begin
        cdsMapa1.Insert;

        for i := 0 to cdsMapa.Fields.Count - 1 do
            cdsMapa1.Fields[i].Value := cdsMapa.Fields[i].Value;

        cdsMapa1.Post;

        cdsMapa.Next;
    end;

    frmAguarde.cxProgressBar1.Position := 13;
    frmAguarde.Update;
end;

procedure TfrmPrincipal.cxButton1Click(Sender: TObject);
begin
    CarregaCubo;
end;

procedure TfrmPrincipal.cxButton3Click(Sender: TObject);
begin
    if not HC.Active then
       exit;

    HierCubeGridExportToPDF1.ExportToFile(ExtractFilePath(Application.ExeName) + 'Temp\GeoBusinessCubo.pdf');
    ShellExecute(handle,'open', pchar(ExtractFilePath(Application.ExeName) + 'Temp\GeoBusinessCubo.pdf'),'', nil, sw_shownormal);
end;

procedure TfrmPrincipal.cxButton4Click(Sender: TObject);
begin
    ChangeAllSeriesGallery(Self, TCustomChart(xChart1));
end;

procedure TfrmPrincipal.cxButton6Click(Sender: TObject);
begin
    ChartPreviewer1.Execute;
end;

procedure TfrmPrincipal.mnuCriarClick(Sender: TObject);
begin
    if frmArqGeoBusiness <> nil then
    begin
        MessageDlg('O formulário para criação do arquivos de GeoBusiness já está em uso', mtInformation, [mbOK], 0);
        Exit;
    end;

    frmArqGeoBusiness := TfrmArqGeoBusiness.Create(Self);
    frmArqGeoBusiness.ShowModal;

    if frmArqGeoBusiness.lOK then
       mnuAbrir.Click;

    FreeAndNil(frmArqGeoBusiness);
end;

procedure TfrmPrincipal.mnuEditarLocalizacaoClick(Sender: TObject);
begin
    if frmEditarInfoLocalizacao <> nil then
    begin
        MessageDlg('O formulário para edição das informações sobre as localizações já está em uso', mtInformation, [mbOK], 0);
        Exit;
    end;

    frmEditarInfoLocalizacao := TfrmEditarInfoLocalizacao.Create(Self);
    frmEditarInfoLocalizacao.ShowModal;
    FreeAndNil(frmEditarInfoLocalizacao);
end;

procedure TfrmPrincipal.mnuFatosClick(Sender: TObject);
begin
    if frmEditarInfoFatos <> nil then
    begin
        MessageDlg('O formulário para edição das informações da tabela de fatos já está em uso', mtInformation, [mbOK], 0);
        Exit;
    end;

    frmEditarInfoFatos := TfrmEditarInfoFatos.Create(Self);
    frmEditarInfoFatos.ShowModal;
    FreeAndNil(frmEditarInfoFatos);
end;

procedure TfrmPrincipal.mnuFecharArquivoClick(Sender: TObject);
begin
    if (MessageDlg('Deseja realmente fechar o arquivo atual de GeoBusiness', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
        Exit;

    lPrimeiroAcesso             := True;
    sArquivo                    := '';
    dxStatusBar1.Panels[4].Text := 'Arquivo:';
    Caption                     := sCaption;

    Dispcampos(False);

    mnuFecharArquivo.Enabled     := False;
    mnuLocalizacao.Enabled       := False;
    mnuEditarLocalizacao.Enabled := False;
    mnuFatos.Enabled             := False;
end;

procedure TfrmPrincipal.MontaDimensao;
var
    Query : TADOQuery;
begin
    cbbValorDimensao.Properties.Items.Clear;

    cbbValorDimensao.Enabled := True;

    if cbxDimensao.Text = '' then
    begin
        cbbValorDimensao.Enabled := False;
        Exit;
    end;

    aguarde(0,'Processando Informações');

    Query                := TADOQuery.Create(Application);
    Query.Connection     := bdDados;

    Query.Close;
    Query.SQL.Add('SELECT');
    Query.SQL.Add(cbxDimensao.Text);
    Query.SQL.Add('FROM');
    Query.SQL.Add(sTabela);
    Query.SQL.Add('GROUP BY');
    Query.SQL.Add(cbxDimensao.Text);
    Query.SQL.Add('ORDER BY');
    Query.SQL.Add(cbxDimensao.Text);
    Query.Open;
    Query.First;
    while not Query.Eof do
    begin
        if cbbValorDimensao.Properties.Items.Count <= iItens then
        begin
           if Query.Fields[0].AsString <> '' then
           begin
               with cbbValorDimensao.Properties.Items.Add do
               begin
                   DisplayName := Query.Fields[0].AsString;
                   Description := Query.Fields[0].AsString;
               end;
           end;
        end;

        Query.Next;
    end;

    Query.Close;
    Query.Free;

    aguarde(1,'');
end;

procedure TfrmPrincipal.Office111Click(Sender: TObject);
var
    aux : string;
begin
    aux   := sSkin;
    sSkin := 'Nativo';
    sKind := 'lfOffice11';

    AssinalaSkin(aux);
end;

procedure TfrmPrincipal.MontaLocais(Local: string);
var
    Query  : TADOQuery;
    sWhere : string;
    Nivel  : integer;
    sAux : string;
    i : integer;
begin
    Nivel := 0;

    if Local = 'PAIS' then
    begin
        cbbPais.Properties.Items.Clear;
        Nivel := 0;
    end;

    if Local = 'REGIAO' then
    begin
        cbbRegiao.Properties.Items.Clear;
        Nivel := 1;
    end;

    if Local = 'ESTADO' then
    begin
        cbbEstado.Properties.Items.Clear;
        Nivel := 2;
    end;

    if Local = 'MESOREGIAO' then
    begin
        cbbMesoRegiao.Properties.Items.Clear;
        Nivel := 3;
    end;

    if Local = 'MICROREGIAO' then
    begin
        cbbMicroRegiao.Properties.Items.Clear;
        Nivel := 4;
    end;

    if Local = 'CIDADE' then
    begin
        cbbCidade.Properties.Items.Clear;
        Nivel := 5;
    end;

    Query                := TADOQuery.Create(Application);
    Query.Connection     := bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT ' + Local + ' FROM GEO_REFERENCIA');

    if (Nivel >= 1) and (cbbPais.Text <> '') then
    begin
        sAux := '';
        for i := 1 to NumEntries(frmPrincipal.cbbPais.Text,';') do
        begin
            if sAux <> '' then
               sAux := sAux + ',' + #39 + Entry(i,frmPrincipal.cbbPais.Text,';') + #39
            else
               sAux := #39 + Entry(i,frmPrincipal.cbbPais.Text,';') + #39;
        end;

        if sWhere <> '' then
           sWhere := sWhere + ' AND PAIS IN (' + sAux + ')'
        else
           sWhere := sWhere + 'PAIS IN (' + sAux + ')';
    end;

    if (Nivel >= 2) and (cbbRegiao.Text <> '') then
    begin
        sAux := '';
        for i := 1 to NumEntries(frmPrincipal.cbbRegiao.Text,';') do
        begin
            if sAux <> '' then
               sAux := sAux + ',' + #39 + Entry(i,frmPrincipal.cbbRegiao.Text,';') + #39
            else
               sAux := #39 + Entry(i,frmPrincipal.cbbRegiao.Text,';') + #39;
        end;

        if sWhere <> '' then
           sWhere := sWhere + ' AND REGIAO IN (' + sAux + ')'
        else
           sWhere := sWhere + 'REGIAO IN (' + sAux + ')';
    end;

    if (Nivel >= 3) and (cbbEstado.Text <> '') then
    begin
        sAux := '';
        for i := 1 to NumEntries(frmPrincipal.cbbEstado.Text,';') do
        begin
            if sAux <> '' then
               sAux := sAux + ',' + #39 + Entry(i,frmPrincipal.cbbEstado.Text,';') + #39
            else
               sAux := #39 + Entry(i,frmPrincipal.cbbEstado.Text,';') + #39;
        end;

        if sWhere <> '' then
           sWhere := sWhere + ' AND ESTADO IN (' + sAux + ')'
        else
           sWhere := sWhere + 'ESTADO IN (' + sAux + ')';
    end;

    if (Nivel >= 4) and (cbbMesoRegiao.Text <> '') then
    begin
        sAux := '';
        for i := 1 to NumEntries(frmPrincipal.cbbMesoRegiao.Text,';') do
        begin
            if sAux <> '' then
               sAux := sAux + ',' + #39 + Entry(i,frmPrincipal.cbbMesoRegiao.Text,';') + #39
            else
               sAux := #39 + Entry(i,frmPrincipal.cbbMesoRegiao.Text,';') + #39;
        end;

        if sWhere <> '' then
           sWhere := sWhere + ' AND MESOREGIAO IN (' + sAux + ')'
        else
           sWhere := sWhere + 'MESOREGIAO IN (' + sAux + ')';
    end;

    if (Nivel >= 5) and (cbbMicroRegiao.Text <> '') then
    begin
        sAux := '';
        for i := 1 to NumEntries(frmPrincipal.cbbMicroRegiao.Text,';') do
        begin
            if sAux <> '' then
               sAux := sAux + ',' + #39 + Entry(i,frmPrincipal.cbbMicroRegiao.Text,';') + #39
            else
               sAux := #39 + Entry(i,frmPrincipal.cbbMicroRegiao.Text,';') + #39;
        end;

       if sWhere <> '' then
          sWhere := sWhere + ' AND MICROREGIAO IN (' + sAux + ')'
       else
          sWhere := sWhere + 'MICROREGIAO IN (' + sAux + ')';
    end;

    if sWhere <> '' then
       Query.SQL.Add('WHERE ' + sWhere);

    Query.SQL.Add('GROUP BY ' + Local);
    Query.SQL.Add('ORDER BY ' + Local);
    Query.Open;
    Query.First;
    while not Query.Eof do
    begin
        if Local = 'PAIS' then
        begin
           if cbbPais.Properties.Items.Count <= iItens then
           begin
               with cbbPais.Properties.Items.Add do
               begin
                   DisplayName := Query.FieldByName(Local).AsString;
                   Description := Query.FieldByName(Local).AsString;
               end;
           end;
        end;

        if Local = 'REGIAO' then
        begin
           if cbbRegiao.Properties.Items.Count <= iItens then
           begin
               with cbbRegiao.Properties.Items.Add do
               begin
                   DisplayName := Query.FieldByName(Local).AsString;
                   Description := Query.FieldByName(Local).AsString;
               end;
           end;
        end;

        if Local = 'ESTADO' then
        begin
           if cbbEstado.Properties.Items.Count <= iItens then
           begin
               with cbbEstado.Properties.Items.Add do
               begin
                   DisplayName := Query.FieldByName(Local).AsString;
                   Description := Query.FieldByName(Local).AsString;
               end;
           end;
        end;

        if Local = 'MESOREGIAO' then
        begin
           if cbbMesoRegiao.Properties.Items.Count <= iItens then
           begin
               with cbbMesoRegiao.Properties.Items.Add do
               begin
                   DisplayName := Query.FieldByName(Local).AsString;
                   Description := Query.FieldByName(Local).AsString;
               end;
           end;
        end;

        if Local = 'MICROREGIAO' then
        begin
            if cbbMicroRegiao.Properties.Items.Count <= iItens then
            begin
                with cbbMicroRegiao.Properties.Items.Add do
                begin
                    DisplayName := Query.FieldByName(Local).AsString;
                    Description := Query.FieldByName(Local).AsString;
                end;
            end;
        end;

        if Local = 'CIDADE' then
        begin
            if cbbCidade.Properties.Items.Count <= iItens then
            begin
                with cbbCidade.Properties.Items.Add do
                begin
                    DisplayName := Query.FieldByName(Local).AsString;
                    Description := Query.FieldByName(Local).AsString;
                end;
            end;
        end;

        Query.Next;
    end;

    Query.Close;
    Query.Free;
end;

Initialization
Begin
    SetLanguage(1, nil);
end;


end.
