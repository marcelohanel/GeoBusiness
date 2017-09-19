unit uInformacoes;

interface

uses
  adodb, dbclient, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxLookAndFeelPainters, cxMemo,
  cxDBEdit, DB, cxCheckBox, cxGroupBox, cxRadioGroup, cxCurrencyEdit,
  cxTextEdit, cxPC, cxControls, cxContainer, cxEdit, cxLabel, Menus, StdCtrls,
  cxButtons, cxCheckListBox, cxGraphics, cxMaskEdit, cxDropDownEdit,
  cxLookAndFeels, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver;

type
  TfrmInformacoes = class(TForm)
    Label2: TcxLabel;
    pgcPrincipal: TcxPageControl;
    tabDescricao: TcxTabSheet;
    tabDadosBasicos: TcxTabSheet;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    tabDimensao: TcxTabSheet;
    tabSumarios: TcxTabSheet;
    edtNome: TcxDBTextEdit;
    DataSource1: TDataSource;
    mnoDescricao: TcxDBMemo;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    edtTabela: TcxDBTextEdit;
    edtCampoRef: TcxDBTextEdit;
    edtAltura: TcxDBCurrencyEdit;
    edtLargura: TcxDBCurrencyEdit;
    edtMaximoItens: TcxDBCurrencyEdit;
    edtTamanho: TcxDBCurrencyEdit;
    edtItensMark: TcxDBCurrencyEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    chkCoord: TcxDBCheckBox;
    edtA: TcxDBTextEdit;
    edtB: TcxDBTextEdit;
    edtC: TcxDBTextEdit;
    chkDimensoes: TcxCheckListBox;
    ADOQuery1: TADOQuery;
    chkSumarios: TcxCheckListBox;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxTabSheet1: TcxTabSheet;
    cxLabel12: TcxLabel;
    cxLabel11: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxLabel13: TcxLabel;
    cxDBMemo2: TcxDBMemo;
    btnConectar: TcxButton;
    cbxSGBD: TcxComboBox;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure pgcPrincipalChange(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
  private
    procedure GeraSumDim;
    { Private declarations }
  public
    { Public declarations }
    lOK : boolean;
  end;

var
  frmInformacoes: TfrmInformacoes;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TfrmInformacoes.btnConectarClick(Sender: TObject);
var
    ConnectionString: String;
begin
    ConnectionString := PromptDataSource(0, frmPrincipal.cdsGeoBusinessconnection_string.Value);

    if ConnectionString > '' then
       frmPrincipal.cdsGeoBusinessconnection_string.Value := ConnectionString;
end;

procedure TfrmInformacoes.cxButton1Click(Sender: TObject);
var
    i,a : integer;
    lErro : boolean;
begin
    if edtTabela.Text = '' then
    begin
        MessageDlg('Informe o nome da tabela', mtInformation, [mbOK], 0);
        Exit;
    end;

    if edtCampoRef.Text = '' then
    begin
        MessageDlg('Informe o nome do campo de referência', mtInformation, [mbOK], 0);
        Exit;
    end;

    if (chkDimensoes.Items.Count = 0) or
       (chkSumarios.Items.Count  = 0) then
        GeraSumDim;

    lErro := True;
    for i := 0 to chkDimensoes.Items.Count - 1 do
    begin
        if chkDimensoes.Items.Items[i].Checked then
        begin
           lErro := False;
           break;
        end;
    end;
    if lErro then
    begin
        MessageDlg('Informe pelo menos um campo de dimensão.', mtInformation, [mbOK], 0);
        Exit;
    end;

    lErro := True;
    for i := 0 to chkSumarios.Items.Count - 1 do
    begin
        if chkSumarios.Items.Items[i].Checked then
        begin
           lErro := False;
           break;
        end;
    end;
    if lErro then
    begin
        MessageDlg('Informe pelo menos um campo de sumário.', mtInformation, [mbOK], 0);
        Exit;
    end;

    lErro := False;
    for i := 0 to chkDimensoes.Items.Count - 1 do
    begin
        if chkDimensoes.Items.Items[i].Checked then
        begin
            if UpperCase(chkDimensoes.Items.Items[i].Text) = 'PAIS' then
               lErro := True;

            if UpperCase(chkDimensoes.Items.Items[i].Text) = 'REGIAO' then
               lErro := True;

            if UpperCase(chkDimensoes.Items.Items[i].Text) = 'ESTADO' then
               lErro := True;

            if UpperCase(chkDimensoes.Items.Items[i].Text) = 'MESOREGIAO' then
               lErro := True;

            if UpperCase(chkDimensoes.Items.Items[i].Text) = 'MICROREGIAO' then
               lErro := True;

            if UpperCase(chkDimensoes.Items.Items[i].Text) = 'CIDADE' then
               lErro := True;
        end;
    end;
    if lErro then
    begin
        MessageDlg('Não utilize campos de dimensão com nomes: PAIS, REGIAO, ESTADO, MESOREGIAO, MICROREGIAO ou CIDADE', mtInformation, [mbOK], 0);
        Exit;
    end;

    lErro := False;
    for i := 0 to chkSumarios.Items.Count - 1 do
    begin
        if chkSumarios.Items.Items[i].Checked then
        begin
            if UpperCase(chkSumarios.Items.Items[i].Text) = 'PAIS' then
               lErro := True;

            if UpperCase(chkSumarios.Items.Items[i].Text) = 'REGIAO' then
               lErro := True;

            if UpperCase(chkSumarios.Items.Items[i].Text) = 'ESTADO' then
               lErro := True;

            if UpperCase(chkSumarios.Items.Items[i].Text) = 'MESOREGIAO' then
               lErro := True;

            if UpperCase(chkSumarios.Items.Items[i].Text) = 'MICROREGIAO' then
               lErro := True;

            if UpperCase(chkSumarios.Items.Items[i].Text) = 'CIDADE' then
               lErro := True;
        end;
    end;
    if lErro then
    begin
        MessageDlg('Não utilize campos de sumário com nomes: PAIS, REGIAO, ESTADO, MESOREGIAO, MICROREGIAO ou CIDADE', mtInformation, [mbOK], 0);
        Exit;
    end;

    if cbxSGBD.Text = '' then
    begin
        MessageDlg('Escolha um SGBD', mtInformation, [mbOK], 0);
        Exit;
    end;

    if frmPrincipal.cdsGeoBusinessconnection_string.Value = '' then
    begin
        MessageDlg('Informe a string de conexão', mtInformation, [mbOK], 0);
        Exit;
    end;

    for i := 1 to 50 do
    begin
        frmPrincipal.cdsGeoBusiness.FieldByName('campo_dimensao_' + IntToStr(i)).Clear;
        frmPrincipal.cdsGeoBusiness.FieldByName('campo_sumario_' + IntToStr(i)).Clear;
    end;

    a := 1;
    for i := 0 to chkDimensoes.Items.Count - 1 do
    begin
        if chkDimensoes.Items.Items[i].Checked then
        begin
            frmPrincipal.cdsGeoBusiness.FieldByName('campo_dimensao_' + IntToStr(a)).AsString := chkDimensoes.Items.Items[i].Text;
            a := a + 1;
        end;

        if a > 50 then
           Break;
    end;

    a := 1;
    for i := 0 to chkSumarios.Items.Count - 1 do
    begin
        if chkSumarios.Items.Items[i].Checked then
        begin
            frmPrincipal.cdsGeoBusiness.FieldByName('campo_sumario_' + IntToStr(a)).AsString := chkSumarios.Items.Items[i].Text;
            a := a + 1;
        end;

        if a > 50 then
           Break;
    end;

    frmPrincipal.cdsGeoBusinesscampo_aux_1.Value := cbxSGBD.Text;

    frmPrincipal.cdsGeoBusiness.Post;
    frmPrincipal.cdsGeoBusiness.MergeChangeLog;
    frmPrincipal.cdsGeoBusiness.SaveToFile(frmPrincipal.sArquivo);

    lOK := True;

    close;
end;

procedure TfrmInformacoes.cxButton2Click(Sender: TObject);
begin
    if frmPrincipal.lPrimeiroAcesso then
       Application.Terminate;

    close;
end;

procedure TfrmInformacoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    frmPrincipal.cdsGeoBusiness.Cancel;
end;

procedure TfrmInformacoes.FormCreate(Sender: TObject);
begin
    lOK := False;
end;

procedure TfrmInformacoes.FormShow(Sender: TObject);
begin
    pgcPrincipal.ActivePageIndex := 0;
    Self.Caption := Self.Caption + ' ' + frmPrincipal.cdsGeoBusinessid_geo.AsString;
    cbxSGBD.Text := frmPrincipal.cdsGeoBusinesscampo_aux_1.Value;

    frmPrincipal.cdsGeoBusiness.Edit;

    cxButton1.SetFocus;
end;

procedure TfrmInformacoes.GeraSumDim;
var
    i : integer;
begin
    if (chkDimensoes.Items.Count = 0) or
       (chkSumarios.Items.Count  = 0) then
    begin

        chkDimensoes.Visible := False;
        chkSumarios.Visible  := False;

        try
           chkDimensoes.Items.Clear;
           chkSumarios.Items.Clear;

           ADOQuery1.Close;
           ADOQuery1.SQL.Clear;

           if (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Microsoft Access')     or
              (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Microsoft SQL Server') then
               ADOQuery1.SQL.Add('SELECT TOP 1 * FROM ' + frmPrincipal.cdsGeoBusinesstabela.AsString);

           if (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'MySQL')    or
              (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Postgres') then
               ADOQuery1.SQL.Add('SELECT * FROM ' + frmPrincipal.cdsGeoBusinesstabela.AsString + ' LIMIT 1');

           if (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Firebird ou Interbase') then
               ADOQuery1.SQL.Add('SELECT FIRST 1 * FROM ' + frmPrincipal.cdsGeoBusinesstabela.AsString);

           if (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Oracle') then
           begin
               ADOQuery1.SQL.Add('SELECT * FROM ' + frmPrincipal.cdsGeoBusinesstabela.AsString);
               ADOQuery1.SQL.Add('WHERE ROWNUM = 1');
           end;

           ADOQuery1.Open;

           for i := 0 to ADOQuery1.Fields.Count - 1 do
           begin
               chkDimensoes.AddItem(ADOQuery1.Fields[i].FieldName);
               chkSumarios.AddItem(ADOQuery1.Fields[i].FieldName);
           end;

           for i := 1 to 50 do
           begin
               if not frmPrincipal.cdsGeoBusiness.FieldByName('campo_dimensao_' + IntToStr(i)).IsNull then
                  chkDimensoes.Items[chkDimensoes.Items.IndexOf(frmPrincipal.cdsGeoBusiness.FieldByName('campo_dimensao_' + IntToStr(i)).AsString)].Checked := True;

               if not frmPrincipal.cdsGeoBusiness.FieldByName('campo_sumario_' + IntToStr(i)).IsNull then
                  chkSumarios.Items[chkSumarios.Items.IndexOf(frmPrincipal.cdsGeoBusiness.FieldByName('campo_sumario_' + IntToStr(i)).AsString)].Checked := True;
           end;

           ADOQuery1.Close;
        except
        end;

        chkDimensoes.Visible := True;
        chkSumarios.Visible := True;
    end;
end;

procedure TfrmInformacoes.pgcPrincipalChange(Sender: TObject);
begin
    if (pgcPrincipal.ActivePageIndex = 2) or
       (pgcPrincipal.ActivePageIndex = 3) then
        GeraSumDim;
end;

end.
