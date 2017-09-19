object frmRegistro: TfrmRegistro
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Registro'
  ClientHeight = 213
  ClientWidth = 242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 150
    Top = 180
    Width = 75
    Height = 25
    Caption = 'Continuar'
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 9
    Caption = 'N'#250'mero de S'#233'rie'
    Transparent = True
  end
  object edtSerial: TcxTextEdit
    Left = 8
    Top = 32
    Properties.ReadOnly = True
    TabOrder = 2
    Width = 217
  end
  object cxLabel2: TcxLabel
    Left = 8
    Top = 65
    Caption = 'Identifica'#231#227'o do Equipamento'
    Transparent = True
  end
  object edtMaquina: TcxTextEdit
    Left = 8
    Top = 88
    Properties.ReadOnly = True
    TabOrder = 4
    Width = 217
  end
  object cxLabel3: TcxLabel
    Left = 8
    Top = 121
    Caption = 'C'#243'digo de Libera'#231#227'o'
    Transparent = True
  end
  object edtRelease: TcxTextEdit
    Left = 8
    Top = 144
    TabOrder = 6
    Width = 217
  end
  object cxButton2: TcxButton
    Left = 8
    Top = 180
    Width = 75
    Height = 25
    Caption = 'Registrar'
    TabOrder = 7
    OnClick = cxButton2Click
  end
end
