object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'GeoBusiness'
  ClientHeight = 622
  ClientWidth = 980
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl2: TcxPageControl
    Left = 0
    Top = 0
    Width = 980
    Height = 602
    ActivePage = cxTabSheet2
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 600
    ClientRectLeft = 2
    ClientRectRight = 978
    ClientRectTop = 22
    object cxTabSheet2: TcxTabSheet
      Caption = 'Geo Processamento'
      ImageIndex = 0
      object cxSplitter1: TcxSplitter
        Left = 359
        Top = 0
        Width = 8
        Height = 578
        HotZoneClassName = 'TcxSimpleStyle'
        AllowHotZoneDrag = False
        Control = Panel1
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 359
        Height = 578
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object GroupBox3: TcxGroupBox
          Left = 13
          Top = 339
          Caption = 'Vis'#227'o'
          TabOrder = 2
          Height = 136
          Width = 331
          object BitBtn3: TcxButton
            Left = 75
            Top = 71
            Width = 184
            Height = 25
            Caption = 'Mostrar Informa'#231#245'es no Mapa'
            TabOrder = 4
            OnClick = BitBtn3Click
          end
          object cxLabel1: TcxLabel
            Left = 47
            Top = 24
            Caption = 'N'#237'vel:'
            Transparent = True
          end
          object cxLabel2: TcxLabel
            Left = 45
            Top = 45
            Caption = 'Estilo:'
            Transparent = True
          end
          object cbxVisao: TcxComboBox
            Left = 76
            Top = 23
            Properties.DropDownListStyle = lsEditFixedList
            Properties.Items.Strings = (
              'Pa'#237's'
              'Regi'#227'o'
              'Estado'
              'Meso Regi'#227'o'
              'Micro Regi'#227'o'
              'Cidade')
            Properties.MaxLength = 0
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 236
          end
          object cbxVisaoMapa: TcxComboBox
            Left = 76
            Top = 44
            Properties.DropDownListStyle = lsEditFixedList
            Properties.Items.Strings = (
              'Mapa'
              'Sat'#233'lite'
              'H'#237'brido'
              'Terreno')
            Properties.MaxLength = 0
            TabOrder = 1
            Width = 236
          end
          object chkNavegador: TcxCheckBox
            Left = 3
            Top = 112
            Caption = 'Abrir direto no navegador da Internet'
            TabOrder = 5
            Width = 256
          end
        end
        object GroupBox2: TcxGroupBox
          Left = 13
          Top = 8
          Caption = 'Filtro Informa'#231#245'es'
          TabOrder = 0
          Height = 153
          Width = 332
          object btnFiltro: TcxButton
            Left = 77
            Top = 118
            Width = 183
            Height = 25
            Caption = 'Filtro Personalizado'
            TabOrder = 6
            OnClick = btnFiltroClick
          end
          object Label3: TcxLabel
            Left = 33
            Top = 22
            Caption = 'Sum'#225'rio:'
            Transparent = True
          end
          object Label2: TcxLabel
            Left = 25
            Top = 70
            Caption = 'Dimens'#227'o:'
            Transparent = True
          end
          object cbxSumario: TcxComboBox
            Left = 77
            Top = 21
            Properties.DropDownListStyle = lsEditFixedList
            Properties.MaxLength = 0
            TabOrder = 0
            Width = 235
          end
          object cbxFuncao: TcxComboBox
            Left = 77
            Top = 42
            Properties.DropDownListStyle = lsEditFixedList
            Properties.Items.Strings = (
              'Somar'
              'Contar'
              'M'#233'dia'
              'M'#237'nimo'
              'M'#225'ximo')
            Properties.MaxLength = 0
            TabOrder = 1
            Width = 235
          end
          object cbxDimensao: TcxComboBox
            Left = 77
            Top = 69
            Properties.DropDownListStyle = lsEditFixedList
            Properties.DropDownRows = 20
            Properties.DropDownSizeable = True
            Properties.MaxLength = 0
            Properties.OnChange = cbxDimensaoPropertiesChange
            TabOrder = 2
            Width = 235
          end
          object cbbValorDimensao: TcxCheckComboBox
            Left = 77
            Top = 91
            Properties.ShowEmptyText = False
            Properties.DropDownSizeable = True
            Properties.EditValueFormat = cvfCaptions
            Properties.Items = <>
            TabOrder = 3
            Width = 235
          end
        end
        object GroupBox1: TcxGroupBox
          Left = 13
          Top = 167
          Caption = 'Filtro Local'
          TabOrder = 1
          Height = 166
          Width = 331
          object Label4: TcxLabel
            Left = 51
            Top = 22
            Caption = 'Pa'#237's:'
            Transparent = True
          end
          object Label7: TcxLabel
            Left = 37
            Top = 43
            Caption = 'Regi'#227'o:'
            Transparent = True
          end
          object Label5: TcxLabel
            Left = 37
            Top = 64
            Caption = 'Estado:'
            Transparent = True
          end
          object Label8: TcxLabel
            Left = 9
            Top = 85
            Caption = 'Meso Regi'#227'o:'
            Transparent = True
          end
          object Label9: TcxLabel
            Left = 9
            Top = 106
            Caption = 'Micro Regi'#227'o:'
            Transparent = True
          end
          object Label6: TcxLabel
            Left = 37
            Top = 127
            Caption = 'Cidade:'
            Transparent = True
          end
          object cbbPais: TcxCheckComboBox
            Left = 76
            Top = 20
            Properties.ShowEmptyText = False
            Properties.DropDownSizeable = True
            Properties.EditValueFormat = cvfCaptions
            Properties.Items = <>
            Properties.OnChange = cbbPaisPropertiesChange
            TabOrder = 1
            Width = 235
          end
          object cbbRegiao: TcxCheckComboBox
            Left = 76
            Top = 41
            Properties.ShowEmptyText = False
            Properties.DropDownSizeable = True
            Properties.EditValueFormat = cvfCaptions
            Properties.Items = <>
            Properties.OnChange = cbbRegiaoPropertiesChange
            TabOrder = 3
            Width = 235
          end
          object cbbEstado: TcxCheckComboBox
            Left = 76
            Top = 62
            Properties.ShowEmptyText = False
            Properties.DropDownSizeable = True
            Properties.EditValueFormat = cvfCaptions
            Properties.Items = <>
            Properties.OnChange = cbbEstadoPropertiesChange
            TabOrder = 5
            Width = 235
          end
          object cbbMesoRegiao: TcxCheckComboBox
            Left = 76
            Top = 83
            Properties.ShowEmptyText = False
            Properties.DropDownSizeable = True
            Properties.EditValueFormat = cvfCaptions
            Properties.Items = <>
            Properties.OnChange = cbbMesoRegiaoPropertiesChange
            TabOrder = 7
            Width = 235
          end
          object cbbMicroRegiao: TcxCheckComboBox
            Left = 76
            Top = 104
            Properties.ShowEmptyText = False
            Properties.DropDownSizeable = True
            Properties.EditValueFormat = cvfCaptions
            Properties.Items = <>
            Properties.OnChange = cbbMicroRegiaoPropertiesChange
            TabOrder = 9
            Width = 235
          end
          object cbbCidade: TcxCheckComboBox
            Left = 76
            Top = 125
            Properties.ShowEmptyText = False
            Properties.DropDownSizeable = True
            Properties.EditValueFormat = cvfCaptions
            Properties.Items = <>
            TabOrder = 11
            Width = 235
          end
        end
        object cxLabel3: TcxLabel
          Left = 13
          Top = 480
          Caption = 'C'#211'PIA DE AVALIA'#199#195'O'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Visible = False
        end
        object cxLabel4: TcxLabel
          Left = 13
          Top = 496
          Caption = 'Somente ser'#227'o mostrados 4 (quatro) marcadores no mapa'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Visible = False
        end
      end
      object Panel2: TPanel
        Left = 367
        Top = 0
        Width = 609
        Height = 578
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object Memo1: TMemo
          Left = 72
          Top = 258
          Width = 308
          Height = 177
          Lines.Strings = (
            'Memo1')
          ScrollBars = ssBoth
          TabOrder = 0
          Visible = False
        end
        object WebBrowser1: TWebBrowser
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 603
          Height = 572
          Align = alClient
          TabOrder = 1
          ExplicitWidth = 593
          ExplicitHeight = 562
          ControlData = {
            4C000000523E00001E3B00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Cubo de Decis'#227'o'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 976
        Height = 37
        Align = alTop
        TabOrder = 0
        object cxButton1: TcxButton
          Left = 4
          Top = 3
          Width = 80
          Height = 30
          Caption = 'Mostrar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFB78183
            B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
            83B78183FF00FFFF00FFFF00FFB78183FEEED4F7E3C5C7895DBB6221D9A878F3
            D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FFFF00FFB78183
            FDEFD99FCBD03AA9CC677771BA5F1A7B70599DA795EECC99EECC97EECC97F3D1
            99B78183FF00FFFF00FFFF00FFB48176FEF3E337ADD393DCF572D1F066969FBC
            601AA67B52CC9062E3B887EECC97F3D199B78183FF00FFFF00FFFF00FFB48176
            FFF7EB37ADD3C1EFFE98DDF662CFF163A5B5BB6321D6B492C06A2BCD9365F3D1
            98B78183FF00FFFF00FFFF00FFBA8E85FFFCF437ADD3D8F8FFBCEBFD7CDDF863
            D5F54C95ABBF6A2BF6EDE4BE611CBD601AB78183FF00FFFF00FFFF00FFBA8E85
            FFFFFD37ADD3DDF9FFCDF4FF8FE8FE76E2FB37ADD3EAC8A6C27139EDD2BDEABF
            90BD601ABD601AFF00FFFF00FFCB9A82FFFFFF37ADD3DBF9FFCDF3FF94ECFE86
            EBFF3AA9CCE8C6A8C98252BD611CE4AF76DE9852BD601ABD601AFF00FFCB9A82
            FFFFFF37ADD3DCF9FFCFF4FF95EDFE8AEFFF3EA3C2BF6B32D59F77E1A261D789
            39BD601AFF00FFFF00FFFF00FFDCA887FFFFFF37ADD3E1FBFFD1F4FF95EDFF8C
            F0FF37ADD3E3BEA4C3733BBD601BDA8B39CA6504BD601AFF00FFFF00FFDCA887
            FFFFFF37ADD337ADD337ADD337ADD337ADD337ADD3FAEDDCFAEAD4CA9B81BD61
            1BBD601ABD601ABD601AFF00FFE3B18EFFFFFF37ADD398E1F494E4F982E2F871
            DBF337ADD3F1E1D5B8857AB8857AB8857AB78183FF00FFFF00FFFF00FFE3B18E
            FFFFFF99D7EB37ADD337ADD337ADD337ADD39BD7E8E3CFC9B8857AE8B270ECA5
            4AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FFEDBD92
            FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B86FF00
            FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DCA887DC
            A887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 0
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 87
          Top = 3
          Width = 80
          Height = 30
          Caption = 'Filtrar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF117011117011FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF117011B1
            E2BF62BC380A6E00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF257A23B1E2BF62BC38147600FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF227921A7
            D9B35CB634137500FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF1F751D9AD7AA56B736127300FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF239C393C
            CC6B26B9400C8D11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF24A13B43DC792DC85D1CB53A0BA718008200FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2BA84354ED893ED7742B
            C35619B23208A10F009A00008300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF30AE4868FF9F53EE8B3CD77329C55417B22E05A10A009B00009E000084
            00FF00FFFF00FFFF00FFFF00FFFF00FF29A44050E38144D3702FB5521FA43E12
            97230B8C0B018400008300008800008D00007E00FF00FFFF00FFFF00FF006D00
            0B800F278001268204058F1342AF5454D8D700D1D90E999736AB4E37BA512DAB
            450F931D0C7813FF00FF0067000079008DA00CF0B338EDAB2295A51717BC3E70
            DE9950F0FF00E1FF1BAFB75AE08F44E16C91D4B2239933006700FF00FF006700
            E0B87BF6EAB2EDD87CDBA117006E0A026C0661A36852F1FF007A6A005F005E8A
            5FF97AF7562553FF00FFFF00FFFF00FFE0C4A3FFFFF2F4E5A5DCA823FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFFB2FFFF09FFBD00BD920492FF00FFFF00FF
            FF00FFD0B48BD1AA5BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFCDD
            FCFB48FBA202A2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFBADFBFF00FFFF00FF}
          TabOrder = 1
          OnClick = btnFiltroClick
        end
        object cxButton3: TcxButton
          Left = 170
          Top = 3
          Width = 80
          Height = 30
          Caption = 'Imprimir'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB3B1B2FF00FFFF00FFFF00FF9A99999A9999A4A1
            A2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3B1B2B3B1B2DEDCDCAB
            A9A95553546F6D6EAEACACD2D0D1E0DFDF9A9999FF00FFFF00FFFF00FFFF00FF
            B3B1B2B3B1B2FBFBFBFFFFFFE0DEDFB2B0B05F5E603131333131344F4D4F8180
            819A9999A4A1A2FF00FFA7A4A5B3B1B2F4F2F3FFFFFFF2F0F0D6D5D5B3B1B2A4
            A1A1ACA9AA9E9D9D7E7D7D5655573536383635378D8B8CFF00FFB0ADAEEEEDED
            EBEBEBCCCACAB9B7B7C4C2C2D0CFCFB7B5B5ABA8A9A8A6A6ACA9AAAFADADA4A1
            A28584849A9999FF00FFAAA7A8BFBDBEB7B5B5C1C0C0D5D5D5DCDDDDF1F1F0F4
            F2F4E4E3E3D2D1D1BFBDBDAFADAEA9A6A6ACA9AAA4A1A2FF00FFA7A4A5C0BFC0
            D5D4D4D9D9D9D5D5D5E9E9E9DCDADAB5BDB5CCCBCBD7D9DADFDFDFDDDDDDD3D2
            D2C6C6C6ADACACFF00FFFF00FFB0AEAFDBDCDCDADADAE4E4E4D5D3D3C5C1C4B8
            DCBAC9D1CBD2BAB5BFB7B6BBB9BAC4C2C3D0CFCFBBB9BAFF00FFFF00FFFF00FF
            B0AEAFCFCDCDC0BFBFC2C1C1EAEAEAF8F6F6F2F1F2F1E8E6E4E1E1D8D8D8C4C4
            C4A9A6A7FF00FFFF00FFFF00FFFF00FFFF00FFB0AEAFE1E3E3D6D6D7B1B3B4CA
            CDCFDDDFE0DEE2E2DFDFDFD3D2D3C0BFBFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFCEBE8FAE7DEEED5CCEAD4CCE9D8D4E6DDD9DBD9D8AAA8AAFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1FFE6D9FFDACCFF
            D1C0FFC9B6FFC2AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFD9B3B1FFE5D9FFD8CBFED0C1FFCAB7F9BBA8FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1FFE5D9FFD8CBFE
            D0C1FEC8B6FBC1AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFD9B3B1FBE7DFFFE3D8FFD9CCFFD3C2FDC8B6FABFAEFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1D9B3B1D9B3B1D9B3B1F6
            BFB1F6BFB1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 2
          OnClick = cxButton3Click
        end
        object cxLabel5: TcxLabel
          Left = 352
          Top = 3
          Caption = 'C'#211'PIA DE AVALIA'#199#195'O'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Visible = False
        end
        object cxLabel6: TcxLabel
          Left = 352
          Top = 16
          Caption = 
            'Somente ser'#227'o mostrados os primeiros 1000 registros da base de d' +
            'ados'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Visible = False
        end
      end
      object Grid: THierCubeGrid
        Left = 0
        Top = 37
        Width = 976
        Height = 541
        Align = alClient
        UseDockManager = False
        ParentColor = False
        TabOrder = 1
        HierCube = HC
        VisualSettings.CaptionFont.Charset = DEFAULT_CHARSET
        VisualSettings.CaptionFont.Color = clWindowText
        VisualSettings.CaptionFont.Height = -11
        VisualSettings.CaptionFont.Name = 'MS Sans Serif'
        VisualSettings.CaptionFont.Style = [fsBold]
        VisualSettings.DimPanelFont.Charset = DEFAULT_CHARSET
        VisualSettings.DimPanelFont.Color = clWindowText
        VisualSettings.DimPanelFont.Height = -11
        VisualSettings.DimPanelFont.Name = 'MS Sans Serif'
        VisualSettings.DimPanelFont.Style = []
        VisualSettings.LabelFont.Charset = DEFAULT_CHARSET
        VisualSettings.LabelFont.Color = clWindowText
        VisualSettings.LabelFont.Height = -11
        VisualSettings.LabelFont.Name = 'MS Sans Serif'
        VisualSettings.LabelFont.Style = []
        VisualSettings.DataFont.Charset = DEFAULT_CHARSET
        VisualSettings.DataFont.Color = clWindowText
        VisualSettings.DataFont.Height = -11
        VisualSettings.DataFont.Name = 'MS Sans Serif'
        VisualSettings.DataFont.Style = []
        VisualSettings.ShowMoreIconsButton = True
        VisualSettings.EditOnDoubleClick = True
        SummarySettings = <>
        FunctionDefs = <
          item
            DisplayName = 'Sum'
            UserAllowed = True
          end
          item
            DisplayName = 'Count'
            UserAllowed = True
          end
          item
            DisplayName = 'Average'
            UserAllowed = True
          end
          item
            DisplayName = 'Min'
            UserAllowed = True
          end
          item
            DisplayName = 'Max'
            UserAllowed = True
          end
          item
            DisplayName = 'Variance'
            UserAllowed = True
          end
          item
            DisplayName = 'Standard deviation'
            UserAllowed = True
          end
          item
            DisplayName = 'Average deviation'
            UserAllowed = True
          end
          item
            DisplayName = 'Skewness'
            UserAllowed = True
          end
          item
            DisplayName = 'Kurtosis'
            UserAllowed = True
          end
          item
            DisplayName = 'Median'
            UserAllowed = True
          end>
        SubFunctionDefs = <
          item
            DisplayName = 'Agg. value'
            UserAllowed = True
          end
          item
            DisplayName = 'Row rank'
            UserAllowed = True
          end
          item
            DisplayName = 'Col rank'
            UserAllowed = True
          end
          item
            DisplayName = '% ROW'
            UserAllowed = True
          end
          item
            DisplayName = '% COL'
            UserAllowed = True
          end
          item
            DisplayName = 'Prev. row compare'
            UserAllowed = True
          end
          item
            DisplayName = 'Prev. col compare'
            UserAllowed = True
          end
          item
            DisplayName = 'Row cumul. Sum'
            UserAllowed = True
          end
          item
            DisplayName = 'Col cumul. Sum'
            UserAllowed = True
          end
          item
            DisplayName = '% ABC'
            UserAllowed = True
          end
          item
            DisplayName = 'ABC'
            UserAllowed = True
          end>
        OnDrawLabelCell = GridDrawLabelCell
        OnDrawCell = GridDrawCell
        OnCustomDrawCell = GridCustomDrawCell
        OnGetSubFunctionCalculator = GridGetSubFunctionCalculator
        DimensionEditorFilterOn = True
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Gr'#225'fico de Decis'#227'o'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 976
        Height = 37
        Align = alTop
        TabOrder = 0
        object cxButton6: TcxButton
          Left = 4
          Top = 3
          Width = 80
          Height = 30
          Caption = 'Imprimir'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB3B1B2FF00FFFF00FFFF00FF9A99999A9999A4A1
            A2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3B1B2B3B1B2DEDCDCAB
            A9A95553546F6D6EAEACACD2D0D1E0DFDF9A9999FF00FFFF00FFFF00FFFF00FF
            B3B1B2B3B1B2FBFBFBFFFFFFE0DEDFB2B0B05F5E603131333131344F4D4F8180
            819A9999A4A1A2FF00FFA7A4A5B3B1B2F4F2F3FFFFFFF2F0F0D6D5D5B3B1B2A4
            A1A1ACA9AA9E9D9D7E7D7D5655573536383635378D8B8CFF00FFB0ADAEEEEDED
            EBEBEBCCCACAB9B7B7C4C2C2D0CFCFB7B5B5ABA8A9A8A6A6ACA9AAAFADADA4A1
            A28584849A9999FF00FFAAA7A8BFBDBEB7B5B5C1C0C0D5D5D5DCDDDDF1F1F0F4
            F2F4E4E3E3D2D1D1BFBDBDAFADAEA9A6A6ACA9AAA4A1A2FF00FFA7A4A5C0BFC0
            D5D4D4D9D9D9D5D5D5E9E9E9DCDADAB5BDB5CCCBCBD7D9DADFDFDFDDDDDDD3D2
            D2C6C6C6ADACACFF00FFFF00FFB0AEAFDBDCDCDADADAE4E4E4D5D3D3C5C1C4B8
            DCBAC9D1CBD2BAB5BFB7B6BBB9BAC4C2C3D0CFCFBBB9BAFF00FFFF00FFFF00FF
            B0AEAFCFCDCDC0BFBFC2C1C1EAEAEAF8F6F6F2F1F2F1E8E6E4E1E1D8D8D8C4C4
            C4A9A6A7FF00FFFF00FFFF00FFFF00FFFF00FFB0AEAFE1E3E3D6D6D7B1B3B4CA
            CDCFDDDFE0DEE2E2DFDFDFD3D2D3C0BFBFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFCEBE8FAE7DEEED5CCEAD4CCE9D8D4E6DDD9DBD9D8AAA8AAFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1FFE6D9FFDACCFF
            D1C0FFC9B6FFC2AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFD9B3B1FFE5D9FFD8CBFED0C1FFCAB7F9BBA8FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1FFE5D9FFD8CBFE
            D0C1FEC8B6FBC1AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFD9B3B1FBE7DFFFE3D8FFD9CCFFD3C2FDC8B6FABFAEFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1D9B3B1D9B3B1D9B3B1F6
            BFB1F6BFB1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 0
          OnClick = cxButton6Click
        end
        object cxButton4: TcxButton
          Left = 87
          Top = 3
          Width = 80
          Height = 30
          Caption = 'Modelos'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFA05027954B25944A25944A24944A24944A24944A2494
            4A24944A24944A24944A24944A24944A24944A24964C25A15127834221FFF6ED
            FFF3E7888684FCEDDAFDEBD5888684FFE6CAFFE6CA888684FEDEBAFCD9B08886
            84FDD7ACFDD7AC9149237F4020F3EDE588868488868488868488868488868488
            86848886848886848886848886848886848886848886848F4823804020888684
            888684FFF5E95470E40124B1FFEFDD1785181C6619FFE9D1BF7373954444FFE4
            C75DA4EA2062A58F4823804020FEF6ED888684FEF6ED516FE50327B4FFEFDD15
            86161C6619FFE9D1BF7373954444FFE4C75DA4EA2062A58F48237F401F888684
            888684FEF8F0516FE50327B4FFEFDD1987191C6619FFE9D1FAE1C6FAE1C6FFE4
            C75DA4EA2062A58F48237F401FFFF9F2888684FFF9F2516FE50327B4FFEFDD1C
            881B1C6619FFE9D1FAE1C6FAE1C6FFE4C75DA4EA2062A58F4823804020888684
            888684FFFBF6516EE50125B3FFEFDD1B881B1C6619FEEBD4FFE8CEFBE5CCFFE4
            C7FEE1C1FEE1C18F48237F3F1FFFFDFB888684FFFCF9FFFDFBFFF5E9FFEFDD1D
            871D1C6619FEEDD9FFE9D3FFE7CDFFE4C7FEE1C1FEE1C18E4722854523888684
            888684FFFDFBFFFDFBFFF5E9FFEFDDFFEFDDFFEFDDFFEFDDFEECD7FEEAD1FEE6
            CBFEE3C5FEE1BF944D29B26C39D7A961D3A35DD3A35CD3A35CD3A35CD3A35CD3
            A35CD3A35CD4A45DD8AE6DD7A962D9AE6CCFA769CAAA77B56D38AE5C27D87E26
            DB7F26DA7F26DA7F26DA7F26DA7F26DA7F26DA7F26DC822CF6BB80E78A21F6BB
            80B37D534E6ED4B95D19FF00FFA95A2EAA5A2FAA5A2FAA5A2FAA5A2FAA5A2FAA
            5A2FAA5A2FAA5B2FAE5F32AA5827AF6031A3562E9C573BFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 1
          OnClick = cxButton4Click
        end
      end
      object xChart1: THierCubeChart
        Left = 0
        Top = 37
        Width = 976
        Height = 541
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Gradient.EndColor = clWhite
        BackWall.Gradient.StartColor = 15395562
        Foot.Font.Name = 'Verdana'
        Legend.Visible = False
        SubFoot.Font.Name = 'Verdana'
        SubTitle.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'THierCubeChart')
        Title.Visible = False
        BottomAxis.TicksInner.Color = 11119017
        DepthAxis.TicksInner.Color = 11119017
        DepthTopAxis.TicksInner.Color = 11119017
        LeftAxis.TicksInner.Color = 11119017
        RightAxis.TicksInner.Color = 11119017
        TopAxis.TicksInner.Color = 11119017
        Align = alClient
        TabOrder = 1
        HierGrid = Grid
        UseDimension = xhcRows
        TotalDimension = True
        ColorSchemaDimension = xhrDefault
        Summaries = <>
        PrintMargins = (
          15
          24
          15
          24)
        ColorPaletteIndex = 13
      end
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 602
    Width = 980
    Height = 20
    Images = ImageList1
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.ImageIndex = 0
        Text = 'Data:'
        Width = 130
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.ImageIndex = 1
        Text = 'Vers'#227'o:'
        Width = 200
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.ImageIndex = 3
        Text = 'Registro:'
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.ImageIndex = 2
        Text = 'Arquivo:'
        Width = 700
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object bdDados: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 544
    Top = 32
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.gbs'
    Filter = 'Arquivos de GeoBusiness|*.gbs'
    Left = 400
    Top = 32
  end
  object dxSkinController1: TdxSkinController
    Kind = lfStandard
    NativeStyle = False
    SkinName = 'Black'
    UseSkins = False
    Left = 472
    Top = 32
  end
  object cdsMapaTotalRef: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    FieldDefs = <
      item
        Name = 'pais'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'regiao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'estado'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'mesoregiao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'microregiao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'cidade'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'valor'
        DataType = ftFloat
      end
      item
        Name = 'perc'
        DataType = ftFloat
      end
      item
        Name = 'acum_perc'
        DataType = ftFloat
      end
      item
        Name = 'abc_perc'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'cdsMapaTotalRefIndex1'
        DescFields = 'valor'
        Fields = 'valor'
        Options = [ixDescending]
      end
      item
        Name = 'cdsMapaTotalRefIndex2'
        Fields = 'pais;regiao;estado;mesoregiao;microregiao;cidade'
      end>
    Params = <>
    StoreDefs = True
    Left = 544
    Top = 224
    object StringField1: TStringField
      FieldName = 'pais'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 255
    end
    object StringField2: TStringField
      FieldName = 'regiao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 255
    end
    object StringField3: TStringField
      FieldName = 'estado'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 255
    end
    object StringField4: TStringField
      FieldName = 'mesoregiao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 255
    end
    object StringField5: TStringField
      FieldName = 'microregiao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 255
    end
    object StringField6: TStringField
      FieldName = 'cidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 255
    end
    object FloatField1: TFloatField
      FieldName = 'valor'
    end
    object cdsMapaTotalRefperc: TFloatField
      FieldName = 'perc'
    end
    object cdsMapaTotalRefacum_perc: TFloatField
      FieldName = 'acum_perc'
    end
    object cdsMapaTotalRefabc_perc: TStringField
      FieldName = 'abc_perc'
      Size = 1
    end
  end
  object cdsMapaTotalDim: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    FieldDefs = <
      item
        Name = 'dimensao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'valor'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'cdsMapaTotalDimIndex1'
        Fields = 'dimensao'
      end>
    Params = <>
    StoreDefs = True
    Left = 632
    Top = 224
    object cdsMapaTotalDimdimensao: TStringField
      FieldName = 'dimensao'
      Size = 255
    end
    object cdsMapaTotalDimvalor: TFloatField
      FieldName = 'valor'
    end
  end
  object cdsMapa: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    FieldDefs = <
      item
        Name = 'pais'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'regiao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'estado'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'mesoregiao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'microregiao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'cidade'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'dimensao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'valor'
        DataType = ftFloat
      end
      item
        Name = 'perc_ref'
        DataType = ftFloat
      end
      item
        Name = 'acum_perc_ref'
        DataType = ftFloat
      end
      item
        Name = 'abc_ref'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'perc_dim'
        DataType = ftFloat
      end
      item
        Name = 'acum_perc_dim'
        DataType = ftFloat
      end
      item
        Name = 'abc_dim'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'perc'
        DataType = ftFloat
      end
      item
        Name = 'acum_perc'
        DataType = ftFloat
      end
      item
        Name = 'abc_perc'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'cdsMapaIndex1'
        DescFields = 'valor'
        Fields = 'pais;regiao;estado;mesoregiao;microregiao;cidade;valor'
        Options = [ixDescending]
      end
      item
        Name = 'cdsMapaIndex2'
        DescFields = 'valor'
        Fields = 'dimensao;valor'
        Options = [ixDescending]
      end>
    Params = <>
    StoreDefs = True
    Left = 464
    Top = 224
    object cdsMapapais: TStringField
      FieldName = 'pais'
      Size = 255
    end
    object cdsMaparegiao: TStringField
      FieldName = 'regiao'
      Size = 255
    end
    object cdsMapaestado: TStringField
      FieldName = 'estado'
      Size = 255
    end
    object cdsMapamesoregiao: TStringField
      FieldName = 'mesoregiao'
      Size = 255
    end
    object cdsMapamicroregiao: TStringField
      FieldName = 'microregiao'
      Size = 255
    end
    object cdsMapacidade: TStringField
      FieldName = 'cidade'
      Size = 255
    end
    object cdsMapadimensao: TStringField
      FieldName = 'dimensao'
      Size = 255
    end
    object cdsMapavalor: TFloatField
      FieldName = 'valor'
    end
    object cdsMapaperc_ref: TFloatField
      FieldName = 'perc_ref'
    end
    object cdsMapaacum_perc_ref: TFloatField
      FieldName = 'acum_perc_ref'
    end
    object cdsMapaabc_ref: TStringField
      FieldName = 'abc_ref'
      Size = 1
    end
    object cdsMapaperc_dim: TFloatField
      FieldName = 'perc_dim'
    end
    object cdsMapaacum_perc_dim: TFloatField
      FieldName = 'acum_perc_dim'
    end
    object cdsMapaabc_dim: TStringField
      FieldName = 'abc_dim'
      Size = 1
    end
    object cdsMapaperc: TFloatField
      FieldName = 'perc'
    end
    object cdsMapaacum_perc: TFloatField
      FieldName = 'acum_perc'
    end
    object cdsMapaabc_perc: TStringField
      FieldName = 'abc_perc'
      Size = 1
    end
  end
  object cdsMapa1: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    FieldDefs = <
      item
        Name = 'pais'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'regiao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'estado'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'mesoregiao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'microregiao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'cidade'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'dimensao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'valor'
        DataType = ftFloat
      end
      item
        Name = 'perc_ref'
        DataType = ftFloat
      end
      item
        Name = 'acum_perc_ref'
        DataType = ftFloat
      end
      item
        Name = 'abc_ref'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'perc_dim'
        DataType = ftFloat
      end
      item
        Name = 'acum_perc_dim'
        DataType = ftFloat
      end
      item
        Name = 'abc_dim'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'perc'
        DataType = ftFloat
      end
      item
        Name = 'acum_perc'
        DataType = ftFloat
      end
      item
        Name = 'abc_perc'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'cdsMapaIndex1'
        DescFields = 'valor'
        Fields = 'pais;regiao;estado;mesoregiao;microregiao;cidade;valor'
        Options = [ixDescending]
      end
      item
        Name = 'cdsMapaIndex2'
        DescFields = 'valor'
        Fields = 'dimensao;valor'
        Options = [ixDescending]
      end>
    Params = <>
    StoreDefs = True
    Left = 696
    Top = 224
    object StringField7: TStringField
      FieldName = 'pais'
      Size = 255
    end
    object StringField8: TStringField
      FieldName = 'regiao'
      Size = 255
    end
    object StringField9: TStringField
      FieldName = 'estado'
      Size = 255
    end
    object StringField10: TStringField
      FieldName = 'mesoregiao'
      Size = 255
    end
    object StringField11: TStringField
      FieldName = 'microregiao'
      Size = 255
    end
    object StringField12: TStringField
      FieldName = 'cidade'
      Size = 255
    end
    object StringField13: TStringField
      FieldName = 'dimensao'
      Size = 255
    end
    object FloatField2: TFloatField
      FieldName = 'valor'
    end
    object FloatField3: TFloatField
      FieldName = 'perc_ref'
    end
    object FloatField4: TFloatField
      FieldName = 'acum_perc_ref'
    end
    object StringField14: TStringField
      FieldName = 'abc_ref'
      Size = 1
    end
    object FloatField5: TFloatField
      FieldName = 'perc_dim'
    end
    object FloatField6: TFloatField
      FieldName = 'acum_perc_dim'
    end
    object StringField15: TStringField
      FieldName = 'abc_dim'
      Size = 1
    end
    object FloatField7: TFloatField
      FieldName = 'perc'
    end
    object FloatField8: TFloatField
      FieldName = 'acum_perc'
    end
    object StringField16: TStringField
      FieldName = 'abc_perc'
      Size = 1
    end
  end
  object MainMenu1: TMainMenu
    Left = 392
    Top = 88
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object mnuCriar: TMenuItem
        Caption = 'Criar arquivo de GeoBusiness'
        OnClick = mnuCriarClick
      end
      object mnuAbrir: TMenuItem
        Caption = 'Abrir arquivo de GeoBusiness'
        OnClick = mnuAbrirClick
      end
      object mnuFecharArquivo: TMenuItem
        Caption = 'Fechar arquivo de GeoBusiness'
        Enabled = False
        OnClick = mnuFecharArquivoClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object EncerrarAplicao1: TMenuItem
        Caption = 'Encerrar Aplica'#231#227'o'
        ShortCut = 32883
        OnClick = EncerrarAplicao1Click
      end
    end
    object Ferramentas1: TMenuItem
      Caption = 'Ferramentas'
      object mnuSkin: TMenuItem
        Caption = 'Skin'
        object Nativo1: TMenuItem
          Caption = 'Nativo'
          object Padro1: TMenuItem
            Caption = 'Padr'#227'o'
            Checked = True
            OnClick = Padro1Click
          end
          object Flat1: TMenuItem
            Caption = 'Flat'
            OnClick = Flat1Click
          end
          object UltraFlat1: TMenuItem
            Caption = 'Ultra Flat'
            OnClick = UltraFlat1Click
          end
          object Office111: TMenuItem
            Caption = 'Office'
            OnClick = Office111Click
          end
        end
        object Blue1: TMenuItem
          Caption = 'Blue'
          OnClick = Springtime1Click
        end
        object Black1: TMenuItem
          Caption = 'Black'
          OnClick = Springtime1Click
        end
        object Silver1: TMenuItem
          Caption = 'Silver'
          OnClick = Springtime1Click
        end
        object UserSkin1: TMenuItem
          Caption = 'UserSkin'
          OnClick = Springtime1Click
        end
        object Stardust1: TMenuItem
          Caption = 'Stardust'
          OnClick = Springtime1Click
        end
        object Valentine1: TMenuItem
          Caption = 'Valentine'
          OnClick = Springtime1Click
        end
        object Xmas2008Blue1: TMenuItem
          Caption = 'Xmas2008Blue'
          OnClick = Springtime1Click
        end
        object Caramel1: TMenuItem
          Caption = 'Caramel'
          OnClick = Springtime1Click
        end
        object Coffee1: TMenuItem
          Caption = 'Coffee'
          OnClick = Springtime1Click
        end
        object Pumpkin1: TMenuItem
          Caption = 'Pumpkin'
          OnClick = Springtime1Click
        end
        object DarkSide1: TMenuItem
          Caption = 'DarkSide'
          OnClick = Springtime1Click
        end
        object GlassOceans1: TMenuItem
          Caption = 'GlassOceans'
          OnClick = Springtime1Click
        end
        object iMaginary1: TMenuItem
          Caption = 'iMaginary'
          OnClick = Springtime1Click
        end
        object Lilian1: TMenuItem
          Caption = 'Lilian'
          OnClick = Springtime1Click
        end
        object McSkin1: TMenuItem
          Caption = 'McSkin'
          OnClick = Springtime1Click
        end
        object LiquidSky1: TMenuItem
          Caption = 'LiquidSky'
          OnClick = Springtime1Click
        end
        object LondonLiquidSky1: TMenuItem
          Caption = 'LondonLiquidSky'
          OnClick = Springtime1Click
        end
        object MoneyTwins1: TMenuItem
          Caption = 'MoneyTwins'
          OnClick = Springtime1Click
        end
        object Office2007Black1: TMenuItem
          Caption = 'Office2007Black'
          OnClick = Springtime1Click
        end
        object Office2007Blue1: TMenuItem
          Caption = 'Office2007Blue'
          OnClick = Springtime1Click
        end
        object Office2007Green1: TMenuItem
          Caption = 'Office2007Green'
          OnClick = Springtime1Click
        end
        object Office2007Pink1: TMenuItem
          Caption = 'Office2007Pink'
          OnClick = Springtime1Click
        end
        object Office2007Silver1: TMenuItem
          Caption = 'Office2007Silver'
          OnClick = Springtime1Click
        end
        object Of1: TMenuItem
          Caption = 'Office2010Black'
          OnClick = Springtime1Click
        end
        object Office2010Blue1: TMenuItem
          Caption = 'Office2010Blue'
          OnClick = Springtime1Click
        end
        object Office2010Silver1: TMenuItem
          Caption = 'Office2010Silver'
          OnClick = Springtime1Click
        end
        object Summer20081: TMenuItem
          Caption = 'Summer2008'
          OnClick = Springtime1Click
        end
        object Springtime1: TMenuItem
          Caption = 'Springtime'
          OnClick = Springtime1Click
        end
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mnuLocalizacao: TMenuItem
        Caption = 'Gerar informa'#231#245'es sobre localiza'#231#245'es'
        Enabled = False
        OnClick = mnuLocalizacaoClick
      end
      object mnuEditarLocalizacao: TMenuItem
        Caption = 'Visualizar informa'#231#245'es sobre localiza'#231#245'es'
        Enabled = False
        OnClick = mnuEditarLocalizacaoClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object mnuFatos: TMenuItem
        Caption = 'Visualizar informa'#231#245'es sobre a tabela de fatos'
        Enabled = False
        OnClick = mnuFatosClick
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      object Informaessobreoregistro1: TMenuItem
        Caption = 'Informa'#231#245'es sobre o registro'
        OnClick = Informaessobreoregistro1Click
      end
      object Informaessobreaaplicao1: TMenuItem
        Caption = 'Informa'#231#245'es sobre a aplica'#231#227'o'
        OnClick = Informaessobreaaplicao1Click
      end
    end
  end
  object cdsGeoBusiness: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id_geo'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'descricao'
        DataType = ftMemo
        Size = 10
      end
      item
        Name = 'dt_criacao'
        DataType = ftDateTime
      end
      item
        Name = 'connection_string'
        DataType = ftMemo
        Size = 10
      end
      item
        Name = 'tabela'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_ref'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_1'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_2'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_3'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_4'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_5'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_6'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_7'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_8'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_9'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_10'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_11'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_12'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_13'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_14'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_15'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_16'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_17'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_18'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_19'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_20'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_21'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_22'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_23'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_24'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_25'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_26'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_27'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_28'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_29'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_30'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_31'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_32'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_33'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_34'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_35'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_36'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_37'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_38'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_39'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_40'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_41'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_42'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_43'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_44'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_45'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_46'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_47'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_48'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_49'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_dimensao_50'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_1'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_2'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_3'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_4'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_5'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_6'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_7'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_8'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_9'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_10'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_11'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_12'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_13'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_14'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_15'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_16'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_17'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_18'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_19'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_20'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_21'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_22'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_23'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_24'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_25'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_26'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_27'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_28'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_29'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_30'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_31'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_32'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_33'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_34'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_35'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_36'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_37'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_38'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_39'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_40'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_41'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_42'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_43'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_44'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_45'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_46'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_47'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_48'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_49'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_sumario_50'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'maximo_itens'
        DataType = ftInteger
      end
      item
        Name = 'largura'
        DataType = ftInteger
      end
      item
        Name = 'altura'
        DataType = ftInteger
      end
      item
        Name = 'tamanho'
        DataType = ftInteger
      end
      item
        Name = 'itens_mark'
        DataType = ftInteger
      end
      item
        Name = 'visao'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'visualiza_coord'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'endereco_a'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'endereco_b'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'endereco_c'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo_aux_1'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_2'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_3'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_4'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_5'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_6'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_7'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_8'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_9'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_10'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_11'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_12'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_13'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_14'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_16'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_17'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_18'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_19'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_20'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_21'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_22'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_23'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_24'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_25'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_26'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_27'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_28'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_29'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_30'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'campo_aux_b_1'
        DataType = ftBlob
        Size = 100
      end
      item
        Name = 'campo_aux_b_2'
        DataType = ftBlob
        Size = 10
      end
      item
        Name = 'campo_aux_b_3'
        DataType = ftBlob
        Size = 10
      end
      item
        Name = 'campo_aux_b_4'
        DataType = ftBlob
        Size = 10
      end
      item
        Name = 'campo_aux_b_5'
        DataType = ftBlob
        Size = 10
      end
      item
        Name = 'campo_aux_b_6'
        DataType = ftBlob
        Size = 10
      end
      item
        Name = 'campo_aux_b_7'
        DataType = ftBlob
        Size = 10
      end
      item
        Name = 'campo_aux_b_8'
        DataType = ftBlob
        Size = 10
      end
      item
        Name = 'campo_aux_b_9'
        DataType = ftBlob
        Size = 9
      end
      item
        Name = 'campo_aux_b_10'
        DataType = ftBlob
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterInsert = cdsGeoBusinessAfterInsert
    Left = 544
    Top = 288
    object cdsGeoBusinessid_geo: TStringField
      FieldName = 'id_geo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cdsGeoBusinessdescricao: TMemoField
      FieldName = 'descricao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 10
    end
    object cdsGeoBusinessdt_criacao: TDateTimeField
      FieldName = 'dt_criacao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGeoBusinessconnection_string: TMemoField
      FieldName = 'connection_string'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 10
    end
    object cdsGeoBusinesstabela: TStringField
      FieldName = 'tabela'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_ref: TStringField
      FieldName = 'campo_ref'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_1: TStringField
      FieldName = 'campo_dimensao_1'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_2: TStringField
      FieldName = 'campo_dimensao_2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_3: TStringField
      FieldName = 'campo_dimensao_3'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_4: TStringField
      FieldName = 'campo_dimensao_4'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_5: TStringField
      FieldName = 'campo_dimensao_5'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_6: TStringField
      FieldName = 'campo_dimensao_6'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_7: TStringField
      FieldName = 'campo_dimensao_7'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_8: TStringField
      FieldName = 'campo_dimensao_8'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_9: TStringField
      FieldName = 'campo_dimensao_9'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_10: TStringField
      FieldName = 'campo_dimensao_10'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_11: TStringField
      FieldName = 'campo_dimensao_11'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_12: TStringField
      FieldName = 'campo_dimensao_12'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_13: TStringField
      FieldName = 'campo_dimensao_13'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_14: TStringField
      FieldName = 'campo_dimensao_14'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_15: TStringField
      FieldName = 'campo_dimensao_15'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_16: TStringField
      FieldName = 'campo_dimensao_16'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_17: TStringField
      FieldName = 'campo_dimensao_17'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_18: TStringField
      FieldName = 'campo_dimensao_18'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_19: TStringField
      FieldName = 'campo_dimensao_19'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_demensao_20: TStringField
      FieldName = 'campo_dimensao_20'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_21: TStringField
      FieldName = 'campo_dimensao_21'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_22: TStringField
      FieldName = 'campo_dimensao_22'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_23: TStringField
      FieldName = 'campo_dimensao_23'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_24: TStringField
      FieldName = 'campo_dimensao_24'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_25: TStringField
      FieldName = 'campo_dimensao_25'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_26: TStringField
      FieldName = 'campo_dimensao_26'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_27: TStringField
      FieldName = 'campo_dimensao_27'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_29: TStringField
      FieldName = 'campo_dimensao_28'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_292: TStringField
      FieldName = 'campo_dimensao_29'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_30: TStringField
      FieldName = 'campo_dimensao_30'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_31: TStringField
      FieldName = 'campo_dimensao_31'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_32: TStringField
      FieldName = 'campo_dimensao_32'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_33: TStringField
      FieldName = 'campo_dimensao_33'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_34: TStringField
      FieldName = 'campo_dimensao_34'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_35: TStringField
      FieldName = 'campo_dimensao_35'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_36: TStringField
      FieldName = 'campo_dimensao_36'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_37: TStringField
      FieldName = 'campo_dimensao_37'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_38: TStringField
      FieldName = 'campo_dimensao_38'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_39: TStringField
      FieldName = 'campo_dimensao_39'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_40: TStringField
      FieldName = 'campo_dimensao_40'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_41: TStringField
      FieldName = 'campo_dimensao_41'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_42: TStringField
      FieldName = 'campo_dimensao_42'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_43: TStringField
      FieldName = 'campo_dimensao_43'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_44: TStringField
      FieldName = 'campo_dimensao_44'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_45: TStringField
      FieldName = 'campo_dimensao_45'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_46: TStringField
      FieldName = 'campo_dimensao_46'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_47: TStringField
      FieldName = 'campo_dimensao_47'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_48: TStringField
      FieldName = 'campo_dimensao_48'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_49: TStringField
      FieldName = 'campo_dimensao_49'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_dimensao_50: TStringField
      FieldName = 'campo_dimensao_50'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_1: TStringField
      FieldName = 'campo_sumario_1'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_2: TStringField
      FieldName = 'campo_sumario_2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_3: TStringField
      FieldName = 'campo_sumario_3'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_4: TStringField
      FieldName = 'campo_sumario_4'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_5: TStringField
      FieldName = 'campo_sumario_5'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_6: TStringField
      FieldName = 'campo_sumario_6'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_7: TStringField
      FieldName = 'campo_sumario_7'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_8: TStringField
      FieldName = 'campo_sumario_8'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_9: TStringField
      FieldName = 'campo_sumario_9'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_10: TStringField
      FieldName = 'campo_sumario_10'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_11: TStringField
      FieldName = 'campo_sumario_11'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_12: TStringField
      FieldName = 'campo_sumario_12'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_13: TStringField
      FieldName = 'campo_sumario_13'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_14: TStringField
      FieldName = 'campo_sumario_14'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_15: TStringField
      FieldName = 'campo_sumario_15'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_16: TStringField
      FieldName = 'campo_sumario_16'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_17: TStringField
      FieldName = 'campo_sumario_17'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_18: TStringField
      FieldName = 'campo_sumario_18'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_19: TStringField
      FieldName = 'campo_sumario_19'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_20: TStringField
      FieldName = 'campo_sumario_20'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_21: TStringField
      FieldName = 'campo_sumario_21'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_22: TStringField
      FieldName = 'campo_sumario_22'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_23: TStringField
      FieldName = 'campo_sumario_23'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_24: TStringField
      FieldName = 'campo_sumario_24'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_25: TStringField
      FieldName = 'campo_sumario_25'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_26: TStringField
      FieldName = 'campo_sumario_26'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_27: TStringField
      FieldName = 'campo_sumario_27'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_28: TStringField
      FieldName = 'campo_sumario_28'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_29: TStringField
      FieldName = 'campo_sumario_29'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_30: TStringField
      FieldName = 'campo_sumario_30'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_31: TStringField
      FieldName = 'campo_sumario_31'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_32: TStringField
      FieldName = 'campo_sumario_32'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_33: TStringField
      FieldName = 'campo_sumario_33'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_34: TStringField
      FieldName = 'campo_sumario_34'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_35: TStringField
      FieldName = 'campo_sumario_35'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_36: TStringField
      FieldName = 'campo_sumario_36'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_37: TStringField
      FieldName = 'campo_sumario_37'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_38: TStringField
      FieldName = 'campo_sumario_38'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_39: TStringField
      FieldName = 'campo_sumario_39'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_40: TStringField
      FieldName = 'campo_sumario_40'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_41: TStringField
      FieldName = 'campo_sumario_41'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_42: TStringField
      FieldName = 'campo_sumario_42'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_43: TStringField
      FieldName = 'campo_sumario_43'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_44: TStringField
      FieldName = 'campo_sumario_44'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_45: TStringField
      FieldName = 'campo_sumario_45'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_46: TStringField
      FieldName = 'campo_sumario_46'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_47: TStringField
      FieldName = 'campo_sumario_47'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_48: TStringField
      FieldName = 'campo_sumario_48'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_49: TStringField
      FieldName = 'campo_sumario_49'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_sumario_50: TStringField
      FieldName = 'campo_sumario_50'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinessmaximo_itens: TIntegerField
      FieldName = 'maximo_itens'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGeoBusinesslargura: TIntegerField
      FieldName = 'largura'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGeoBusinessaltura: TIntegerField
      FieldName = 'altura'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGeoBusinesstamanho: TIntegerField
      FieldName = 'tamanho'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGeoBusinessitens_mark: TIntegerField
      FieldName = 'itens_mark'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGeoBusinessvisao: TStringField
      FieldName = 'visao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGeoBusinessvisualiza_coord: TStringField
      FieldName = 'visualiza_coord'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsGeoBusinessendereco_a: TStringField
      FieldName = 'endereco_a'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinessendereco_b: TStringField
      FieldName = 'endereco_b'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinessendereco_c: TStringField
      FieldName = 'endereco_c'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_aux_1: TStringField
      FieldName = 'campo_aux_1'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_2: TStringField
      FieldName = 'campo_aux_2'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_3: TStringField
      FieldName = 'campo_aux_3'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_4: TStringField
      FieldName = 'campo_aux_4'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_5: TStringField
      FieldName = 'campo_aux_5'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_6: TStringField
      FieldName = 'campo_aux_6'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_7: TStringField
      FieldName = 'campo_aux_7'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_8: TStringField
      FieldName = 'campo_aux_8'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_9: TStringField
      FieldName = 'campo_aux_9'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_10: TStringField
      FieldName = 'campo_aux_10'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_11: TStringField
      FieldName = 'campo_aux_11'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_12: TStringField
      FieldName = 'campo_aux_12'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_13: TStringField
      FieldName = 'campo_aux_13'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_14: TStringField
      FieldName = 'campo_aux_14'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_16: TStringField
      FieldName = 'campo_aux_16'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_17: TStringField
      FieldName = 'campo_aux_17'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_18: TStringField
      FieldName = 'campo_aux_18'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_19: TStringField
      FieldName = 'campo_aux_19'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_20: TStringField
      FieldName = 'campo_aux_20'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_21: TStringField
      FieldName = 'campo_aux_21'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_22: TStringField
      FieldName = 'campo_aux_22'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_23: TStringField
      FieldName = 'campo_aux_23'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_24: TStringField
      FieldName = 'campo_aux_24'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_25: TStringField
      FieldName = 'campo_aux_25'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_26: TStringField
      FieldName = 'campo_aux_26'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_27: TStringField
      FieldName = 'campo_aux_27'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_28: TStringField
      FieldName = 'campo_aux_28'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_29: TStringField
      FieldName = 'campo_aux_29'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_30: TStringField
      FieldName = 'campo_aux_30'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsGeoBusinesscampo_aux_b_1: TBlobField
      FieldName = 'campo_aux_b_1'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsGeoBusinesscampo_aux_b_2: TBlobField
      FieldName = 'campo_aux_b_2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsGeoBusinesscampo_aux_b_3: TBlobField
      FieldName = 'campo_aux_b_3'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsGeoBusinesscampo_aux_b_4: TBlobField
      FieldName = 'campo_aux_b_4'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsGeoBusinesscampo_aux_b_5: TBlobField
      FieldName = 'campo_aux_b_5'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsGeoBusinesscampo_aux_b_6: TBlobField
      FieldName = 'campo_aux_b_6'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsGeoBusinesscampo_aux_b_7: TBlobField
      FieldName = 'campo_aux_b_7'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsGeoBusinesscampo_aux_b_8: TBlobField
      FieldName = 'campo_aux_b_8'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsGeoBusinesscampo_aux_b_9: TBlobField
      FieldName = 'campo_aux_b_9'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsGeoBusinesscampo_aux_b_10: TBlobField
      FieldName = 'campo_aux_b_10'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object ImageList1: TImageList
    Left = 464
    Top = 144
    Bitmap = {
      494C010104008C008C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002129A5001821
      B500000000004A4A4A005A5A5A0084847B0084847B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C0000009C0000009C0000009C0000009C0000009C000000
      9C0000009C0000009C0000009C0000009C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084736B005A63BD002121
      B50063635A00A5A5A500FFFFFF00E7E7DE00D6CECE009C94940084847B007B73
      73005A5A5A000000000000000000000000000000000000000000000000000000
      00000000000000009C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000009C00AD847B00B58C7B00B58C7B00B58C
      7B00B58C7B00B58C7B00B58C7B00B58C7B00B58C7B00B58C7B00B58C7B00B58C
      7B00B58C7B00000000000000000000000000000000000000000000000000009C
      CE004AB5E70063C6EF0052BDE70039B5DE004ABDE70000000000000000000000
      00000000000000000000000000000000000000000000AD9484007B73C6002121
      B500BD947300A5A5A500FFFFFF00FFFFFF00FFFFFF00D6D6CE00CEC6BD00F7EF
      DE00EFE7D600A59C94006B6B630000000000AD7B7B00B58C7B00B58C7B00B58C
      7B00B58C7B0000009C00FFFFFF00FFFFFF0000009C00FFFFFF0000009C000000
      9C0000009C0000009C00FFFFFF0000009C00AD847B00FFE7CE00F7E7CE00F7E7
      C600F7E7BD00F7DEBD00F7DEB500F7DEB500F7DEAD00F7D6AD00F7D6A500F7D6
      A500B58C7B00000000000000000000000000000000000000000008A5CE0008A5
      D6007BD6F700A5DEFF0094DEFF0094DEFF007BCEEF0073CEEF004AB5E7000000
      00000000000000000000000000000000000000000000AD9484007B73C6002121
      B500BD9C7B00A5A5A500FFFFFF00FFFFFF009C9CA50073737300313131007B7B
      7300FFF7E700FFF7E7008484840000000000AD847B00FFEFD600F7E7C600F7DE
      BD00F7DEB50000009C00FFFFFF00FFFFFF0000009C00FFFFFF00FFFFFF000000
      9C00FFFFFF00FFFFFF00FFFFFF0000009C00B5847B00FFEFD600FFEFCE00F7E7
      CE00F7E7C600F7E7C600F7DEBD00F7DEB500F7DEB500F7DEAD00F7D6AD00F7D6
      A500B58C7B00000000000000000000000000000000000000000010ADD60018AD
      DE0084DEEF00A5E7FF0094DEFF0084D6F7005ABDE7008CD6F7009CDEFF0073CE
      F7000000000000000000000000000000000000000000AD9484007B73C6002121
      B500BDA58C00A5A5A500FFFFFF00FFFFFF00CECECE00F7F7F700FFFFFF003131
      3100F7EFE700FFF7E7008484840000000000B5847B00FFEFDE00F7E7CE00F7E7
      C600F7DEBD0000009C00FFFFFF00FFFFFF0000009C00FFFFFF00FFFFFF00FFFF
      FF0000009C00FFFFFF00FFFFFF0000009C00B58C7B00FFEFDE00FFEFD600F7EF
      CE00F7E7CE00F7E7C600F7E7C600F7DEBD00F7DEBD00F7DEB500F7DEAD00F7D6
      AD00B58C7B00000000000000000000000000000000000000000021ADDE0029B5
      DE0094DEEF00B5EFFF00A5E7FF0063B5D600319CC6006BC6EF0094DEFF009CDE
      FF0031B5DE0000000000000000000000000000000000AD948C007B73CE002121
      B500BDAD9400A5A5A500FFFFFF00FFFFFF00B5B5B50084848400A5A5A5003131
      3100FFF7EF00FFF7EF008484840000000000B58C7B00FFF7E700DE9C3900F7E7
      CE00DE9C390000009C00FFFFFF0000009C0000009C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000009C00FFFFFF0000009C00BD8C7B00FFEFDE00DE9C3900DE9C
      3900DE9C3900DE9C3900DE9C3900DE9C3900DE9C3900DE9C3900DE9C3900F7DE
      B500B58C7B00000000000000000000000000000000000000000029B5DE0039BD
      E700B5E7F700CEFFFF00B5F7FF0084CEDE00297BA5006BBDE70094DEFF0094DE
      FF0031B5DE0000000000000000000000000000000000948C8400737BCE002121
      B500BDADA500A5A5A500FFFFFF00FFFFFF009C9C9C00313131007B7B7B00CECE
      CE00FFFFFF00FFF7EF008484840000000000BD8C8400FFFFEF00FFEFDE00FFEF
      D600F7E7CE0000009C00FFFFFF00FFFFFF0000009C00FFFFFF0000009C000000
      9C0000009C00FFFFFF00FFFFFF0000009C00BD8C7B00FFF7E700FFF7DE00FFEF
      DE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE00000000000000000039BDE7004AC6
      EF00C6EFF700EFFFFF00CEF7FF00B5EFF70063ADBD008CCEEF009CDEFF0094DE
      FF0031B5DE00000000000000000000000000000000008C8C8C007B7BD6002121
      B500BDB5AD00A5A5A500FFFFFF00FFFFFF00BDBDBD0031313100313131003131
      3100FFFFFF00FFFFF7008484840000000000C6948400FFFFF700DE9C3900DE9C
      3900DE9C390000009C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000009C00C6947B00FFF7EF00DE9C3900DE9C
      3900009CCE00C6FFFF00ADFFFF00A5FFFF009CFFFF009CFFFF009CFFFF009CF7
      FF009CF7FF009CF7FF009CF7FF00009CCE00000000000000000029B5DE0042C6
      E7005AC6DE006BCEE70063CEE70063C6E7006BCEE70084DEEF009CE7FF00A5E7
      FF0031B5DE00000000000000000000000000000000008C8C8C007B7BDE002121
      B500B5B5BD00A5A5A500FFFFFF00EFEFEF00E7E7E700BDBDBD00A5A5A500DEDE
      E700FFFFFF00FFFFFF008484840000000000C69C8400FFFFFF00FFF7F700FFF7
      E700FFEFDE0000009C0000009C0000009C0000009C0000009C0000009C000000
      9C0000009C0000009C0000009C0000009C00C6947B00FFF7EF00FFF7EF00FFF7
      E700009CCE00CEFFFF00BDFFFF00ADFFFF0094EFEF009CFFFF009CFFFF009CFF
      FF009CF7FF009CF7FF009CF7FF00009CCE00000000000000000029B5DE005ACE
      E70042BDD60042BDDE0042C6DE0031B5DE004AC6E7006BCEEF009CE7FF0084D6
      F70021ADD600000000000000000000000000000000008C8C94007B84DE002121
      B500B5B5BD00A5A5A500FFFFFF00A5A5A500BDBDBD009C9CA500C6C6C600C6C6
      C600E7E7E700FFFFFF008484840000000000CE9C8400FFFFFF00FFFFFF00FFF7
      F700FFF7E700FFEFDE00FFEFD600F7E7CE00F7DEC600F7DEBD00F7DEB500B58C
      7B0000000000000000000000000000000000CE9C7B00FFFFF700DE9C3900DE9C
      3900009CCE00DEFFFF00C6FFFF009CE7DE0084CECE009CFFFF009CFFFF009CFF
      FF009CF7FF009CF7FF009CF7FF00009CCE00000000000000000029B5D6005ACE
      DE00089CC60039B5D6008CF7FF0052D6EF0021B5DE00009CCE0021ADD60052C6
      E70018A5D600000000000000000000000000000000008C8C94007B84DE002121
      B500B5B5BD00A5A5A500FFFFFF00BDBDBD00B5B5B500ADADAD00ADADAD00BDBD
      BD00E7E7E700FFFFFF008484840000000000D6A58C00FFFFFF00DE9C3900DE9C
      3900DE9C3900DE9C3900DE9C3900FFEFD600DE9C3900DE9C3900F7DEB500B58C
      7B0000000000000000000000000000000000CE9C8400FFFFF700FFFFF700FFF7
      EF00009CCE00E7FFFF00A5C6C6009CCECE00A5F7F7009CFFFF009CFFFF009CFF
      FF009CFFFF009CF7FF009CF7FF00009CCE000000000000000000000000000894
      C6000094BD0029ADCE0084F7FF007BEFFF0042C6DE000894C600109CC60018AD
      D6000000000000000000000000000000000000000000949494007B84E7002121
      B500B5B5B500A5A5A500FFFFFF007B7B7B00E7E7E700FFFFFF00EFEFEF00BDBD
      BD00DEDEDE00FFFFFF008484840000000000D6A58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7E700FFEFDE00FFEFD600F7E7CE00F7E7BD00B58C
      7B0000000000000000000000000000000000D69C8400FFFFFF00DE9C3900DE9C
      3900009CCE00EFFFFF005A6363007B9C9C00BDFFFF00A5FFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CF7FF00009CCE000000000000000000000000000000
      0000089CC600189CC6000000000039BDE70021A5CE000894C6000894C6000000
      0000000000000000000000000000000000000000000084848C00636BD6001821
      BD006B7394009C9CAD00BDBDBD007B7B73008C8C8C00EFEFE700E7E7E7006363
      630094949400FFFFFF008484840000000000DEAD8C00FFFFFF00DE9C3900DE9C
      3900DE9C3900FFFFFF00DE9C3900DE9C3900DE9C3900DE9C3900FFE7CE00B58C
      7B0000000000000000000000000000000000D6A58400FFFFFF00FFFFFF00FFFF
      F700009CCE00F7FFFF00C6D6D60008108C0000089C00B5FFFF00A5FFFF009CFF
      FF009CFFFF009CFFFF009CF7FF00009CCE000000000000000000000000000000
      00004AC6E700299CC6000000000000000000000000000894BD00088CB5000000
      0000000000000000000000000000000000000000000000000000424263002931
      7B00313184003942940039399400424294004242630052529C006B6B9400736B
      8C005A5A6300948C8C006363630000000000DEAD8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFF7E700FFEFD600B58C
      7B0000000000000000000000000000000000DEA58400FFFFFF00FFFFFF00FFFF
      FF00009CCE00009CCE00009CCE001021B5003152DE0000000000009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE000000000000000000000000000000
      000039A5C60073DEEF0039ADCE0000000000108CB500089CCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A4A4A0000000000393963004A4A4A0031316300000000003131
      840039396300101073000000000000000000DEAD8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFF7DE00B58C
      7B0000000000000000000000000000000000DEA58400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF7005A5ABD003939AD00FFF7E700FFF7
      E700B58C7B000000000000000000000000000000000000000000000000000000
      0000000000004AB5CE007BE7EF006BD6E7004ABDE700189CC600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A004A4A4A0000000000000000004A4A4A004A4A
      4A0000000000000000000000000000000000DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400B58C
      7B0000000000000000000000000000000000DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA584000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C87FF800FFFFFFFF8007F8000007E07F
      800100000007C01F800100000007C00F800100000007C007800100000007C007
      800100000000C007800100000000C007800100000000C0078001000F0000C007
      8001000F0000E00F8001000F0000F21F8001000F0000F39FC001000F0000F13F
      FA23000F0007F83FFCCF000F0007FFFF00000000000000000000000000000000
      000000000000}
  end
  object cxLocalizer1: TcxLocalizer
    Left = 472
    Top = 88
  end
  object HC: THierCube
    DataSet = qryMapa
    DimensionMap = <>
    Options.LookupHasntTheValue = lvIgnoreSumValue
    Left = 460
    Top = 290
  end
  object qryMapa: TADOQuery
    Connection = bdDados
    Parameters = <>
    Left = 632
    Top = 288
  end
  object ImageList2: TImageList
    Left = 388
    Top = 144
    Bitmap = {
      494C010105001C001C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF006B6BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF0000000000000000000000000000000000000000006B6B
      FF006B6BFF006B6BFF006B6BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6BFF006B6BFF006B6B
      FF006B6BFF0000000000000000006B6BFF006B6BFF006B6BFF00000000000000
      00006B6BFF006B6BFF006B6BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6BFF006B6BFF006B6B
      FF0000000000000000006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF000000
      0000000000006B6BFF006B6BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6BFF006B6BFF000000
      0000000000006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF000000
      0000000000006B6BFF006B6BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6BFF006B6BFF000000
      0000000000006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF006B6BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6BFF006B6BFF000000
      0000000000006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF006B6BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6BFF006B6BFF000000
      0000000000006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF006B6BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6BFF006B6BFF000000
      0000000000006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF006B6BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6BFF006B6BFF000000
      0000000000006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF000000
      0000000000006B6BFF006B6BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6BFF006B6BFF006B6B
      FF0000000000000000006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF000000
      0000000000006B6BFF006B6BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6BFF006B6BFF006B6B
      FF006B6BFF0000000000000000006B6BFF006B6BFF0000000000000000000000
      0000000000006B6BFF006B6BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF00000000000000000000000000000000006B6BFF000000
      0000000000006B6BFF006B6BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6BFF006B6B
      FF006B6BFF006B6BFF006B6BFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001810B50000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000FF0000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000000000000000000000000000000000187B
      1800187B1800187B1800187B1800187B1800187B1800187B1800187B1800187B
      1800187B1800187B180000000000000000000000000000000000000000000000
      00000000000000000000000000007B4AAD000029F7007B4AAD00000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF00000000
      00000000000000FF000000FF0000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000007B6B
      840000D6000000D6000000D6000000D6000000D6000000D6000000D6000000D6
      000000CE00007B6B840000000000000000000000000000000000000000000000
      00000000000000000000000000001810B5000029F7001810B500000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF00000000
      00000000000000FF000000FF0000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      00001084100000D6000000D6000000D6000000D6000000D6000000D6000000D6
      0000187B18000000000000000000000000000000000000000000000000000000
      000000000000000000007B4AAD000029F7000029F7000029F7007B4AAD000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      0000000000000000000000FF000000FF000000FF000000FF000000FF00000000
      00000000000000FF000000FF0000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      00005A845A0000D6000000D6000000D6000000D6000000D6000000D6000000CE
      00007B6B84000000000000000000000000000000000000000000000000000000
      000000000000000000001810B5000029F7000029F7000029F7001810B5000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000001084100000D6000000D6000000D6000000D6000000D60000187B
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000007B4AAD000029F7000029F7000029F7000029F7000029F7007B4A
      AD00000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF0000000000000000000000FF000000FF000000FF0000000000000000
      000000FF000000FF000000FF0000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000005A845A0000D6000000D6000000D6000000D6000000CE00007B6B
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000001810B5000029F7000029F7000029F7000029F7000029F7001810
      B500000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF0000000000000000000000FF000000FF0000000000000000000000FF
      000000FF000000FF000000FF0000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000001084100000D6000000D6000000D60000187B18000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B4AAD000029F7000029F7000029F7000029F7000029F7000029F7000029
      F7007B4AAD000000000000000000000000000000000000FF000000FF000000FF
      000000FF0000000000000000000000FF000000FF0000000000000000000000FF
      000000FF000000FF000000FF0000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000005A845A0000D6000000D6000000CE00007B6B84000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001810B5000029F7000029F7000029F7000029F7000029F7000029F7000029
      F7001810B5000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF00000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000001084100000D60000187B1800000000000000
      0000000000000000000000000000000000000000000000000000000000001810
      B5000029F7000029F7000029F7000029F7000029F7000029F7000029F7000029
      F7000029F7001810B50000000000000000000000000000FF000000FF000000FF
      000000FF000000FF00000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000005A845A0000CE00007B6B8400000000000000
      0000000000000000000000000000000000000000000000000000000000001810
      B5001810B5001810B5001810B5001810B5001810B5001810B5001810B5001810
      B5001810B5001810B50000000000000000000000000000FF000000FF000000FF
      000000FF000000FF00000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000187B180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF00000000FFFFFFFF00000000
      FFFFFF7F00000000E003FE3F00000000E003FE3F00000000F007FC1F00000000
      F007FC1F00000000F80FF80F00000000F80FF80F00000000FC1FF00700000000
      FC1FF00700000000FE3FE00300000000FE3FE00300000000FF7FFFFF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object HierCubeGridExportToPDF1: THierCubeGridExportToPDF
    Units = muMM
    Page.Height = 297.000000000000000000
    Page.Width = 210.000000000000000000
    Grid = Grid
    ExportOptions.DecimalSeparator = ','
    Left = 544
    Top = 88
  end
  object ChartPreviewer1: TChartPreviewer
    Chart = xChart1
    Options = [cpoChangePrinter, cpoSetupPrinter, cpoResizeChart, cpoMoveChart, cpoChangeDetail, cpoChangePaperOrientation, cpoChangeMargins, cpoProportional, cpoDragChart, cpoPrintPanel, cpoAsBitmap]
    Title = 'Visulizar Impress'#227'o'
    Left = 544
    Top = 152
  end
end
