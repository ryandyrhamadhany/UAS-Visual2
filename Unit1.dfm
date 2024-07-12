object Form1: TForm1
  Left = 484
  Top = 153
  Width = 622
  Height = 539
  Caption = 'Kustomer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label2: TLabel
    Left = 40
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 40
    Top = 88
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object Label4: TLabel
    Left = 40
    Top = 120
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object Label5: TLabel
    Left = 40
    Top = 152
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label6: TLabel
    Left = 40
    Top = 184
    Width = 38
    Height = 13
    Caption = 'Member'
  end
  object Label7: TLabel
    Left = 48
    Top = 432
    Width = 72
    Height = 13
    Caption = 'Masukan Name'
  end
  object Label8: TLabel
    Left = 256
    Top = 184
    Width = 41
    Height = 13
    Caption = 'Diskon : '
  end
  object Label9: TLabel
    Left = 312
    Top = 184
    Width = 71
    Height = 13
    Caption = 'Terisi Otomatis'
  end
  object Edit1: TEdit
    Left = 96
    Top = 24
    Width = 361
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 96
    Top = 56
    Width = 361
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 96
    Top = 88
    Width = 361
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 96
    Top = 120
    Width = 361
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 96
    Top = 152
    Width = 361
    Height = 21
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 184
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    OnChange = ComboBox1Change
    Items.Strings = (
      'Yes'
      'No')
  end
  object Button1: TButton
    Left = 40
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 216
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 304
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 392
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 10
    OnClick = Button5Click
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 264
    Width = 425
    Height = 153
    DataSource = DataModule2.DataKustomer
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit6: TEdit
    Left = 136
    Top = 432
    Width = 241
    Height = 21
    TabOrder = 12
    OnChange = Edit6Change
  end
  object Button6: TButton
    Left = 392
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 13
    OnClick = Button6Click
  end
  object frxReport1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45485.184316898200000000
    ReportOptions.LastChange = 45485.204070868100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 504
    Top = 120
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      HGuides.Strings = (
        '3,77953')
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 94.488250000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 52.913420000000000000
          Top = 22.677180000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'id')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 83.149660000000000000
          Top = 22.677180000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 166.299320000000000000
          Top = 22.677180000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 294.803340000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Telp')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 389.291590000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Email')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 483.779840000000000000
          Top = 22.677180000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 623.622450000000000000
          Top = 22.677180000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Member')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 325.039580000000000000
          Top = 22.677180000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Report Data Kustomer')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 279.685220000000000000
        Width = 793.701300000000000000
        object Memo16: TfrxMemoView
          Left = 343.937230000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Hasil Data Report')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 196.535560000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 52.913420000000000000
          Top = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."id"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 83.149660000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'nik'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nik"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 166.299320000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'name'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."name"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'telp'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."telp"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 389.291590000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'email'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."email"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'member'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."member"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DataModule2.ZKustomer
    Left = 504
    Top = 56
  end
end
