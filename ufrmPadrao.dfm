object frmPadrao: TfrmPadrao
  Left = 0
  Top = 0
  Width = 680
  Height = 435
  BiDiMode = bdLeftToRight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  ParentFont = False
  TabOrder = 0
  object lblTitulo: TLabel
    AlignWithMargins = True
    Left = 4
    Top = 0
    Width = 672
    Height = 23
    Margins.Left = 4
    Margins.Top = 0
    Margins.Right = 4
    Margins.Bottom = 6
    Align = alTop
    Caption = 'Padr'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 5
    ExplicitTop = 1
    ExplicitWidth = 58
  end
  object grdPadrao: TcxGrid
    Left = 0
    Top = 29
    Width = 680
    Height = 373
    Align = alClient
    TabOrder = 0
    ExplicitTop = 30
    ExplicitWidth = 678
    ExplicitHeight = 371
    object grdPadraoDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '<No Data To Display>'
      OptionsView.GroupByBox = False
    end
    object grdPadraoLevel1: TcxGridLevel
      GridView = grdPadraoDBTableView1
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 402
    Width = 680
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 401
    ExplicitWidth = 678
    object btnIncluir: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 116
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      Caption = 'Incluir'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001B744558745469746C65004164643B506C75733B426172733B526962
        626F6E3B9506332F0000036349444154785E35927D6C535518C69F73EE6DEB64
        63A3AEFB60A3A36E33B8C56581E0D8707E21CC1A43A2A22304FE3001512A86C4
        E900132451FF503367420043B244364C483031465C248B4441C0980C45B4D065
        CDBA4ECAE82AAC5DBBDE8FF3E1BD27F1397973DE9C3CBFF7233964226FC2D543
        A53E0280443E3FD752525AB14323FA06685A3381E492F329C6ADF39954E2F8C9
        C3DBA6018858DE940A9C2C5870C1D51BB6FAF61DBB327860F81A1BFE25297FB8
        3127C7EFE4E5D5745E9EBB9991239766E481937FE4DE1818DB0DC0EB322EABBA
        B63FD5EB7D6CCBBE6F1B83FE9E67BA82E084C0E4123697CAE0D109BC94805B0C
        E7AFCC606A66EEECF75FBCBB753AFAEB2201A0BD3E7861B02914D8DBF34408A9
        AC0D2181D3672E23319D81AB950D016CEBED824E809A722FC62E4CE17A343130
        D4DF73507FB9FFAB551E9F6FCF93EB82B879BB088D52504A14FCC9CE4E95F79D
        B80CD396284A8179C7D3DD1144F29FEC5BE1D73E1BA6BEB2C09BEDCD955A7CCE
        44D1744C1687C9045C05EBFC686F0DAADCB08413D2098E89B4E1BC5779965687
        5ED585D03ACBFDA548E7197EFA711C776EDFC5FF12200A7075F4E85975D7D4FA
        F1F4A635A82C5F02A2956CD46D2EEB1D160B455BC19FEE5E0F4A885A45828071
        81137D1B61DB0C1E5D43E4C8CF5858E4D0A1810BBA5CB76DEEBDB768C1E604AE
        EA6B1F40D9121F0A265385BC0E5457530109404A8010E27805EEE60598CDA15B
        8699C8E7CD4784EEC3F2BA00767C340A4AA9327E79300CE1505BDEFF0E9AA681
        5082150DD5604CA26858282E1693D428E42F6666B3909068EF68C5E6171FC7E6
        17BA611A260C93A9029C713CF7FC3A3C1BEE404B5B2398E0989FCBA190FD774C
        CFA46243B11B4B77ADADF67BB236478E10500AA5D2121D5C48354D3A674108A1
        56114C201E4BB1D9F86FA70880FB1EDD3E34B0A229B4E7E1350FC2E22E2011BF
        16C3FCBD050557562DC3CA964608B8B4C4E49F4924A27F1F193F1DD9AF03B0FE
        1AFDE03D113EDC6431B1A96575089212B4AD6D555F581280D902398343308EC9
        EB49DC9A981A75E043000CA46D09005A49457059DB4BC78E77EDFCDAEAFDF892
        DC3B1295EF7C13977D4E444E45E52BCE5BE7AE338555E10FDF0650EE32B30E4B
        D24C0212A8F210EAAED3D01969BB3FD0BCDDE32BEB06D56AD5D09CCDDA66EE62
        EED6EF43A9AB2331008603ABCEFF019D3AAD15CCD8D2E00000000049454E44AE
        426082}
      TabOrder = 0
    end
    object btnAlterar: TcxButton
      AlignWithMargins = True
      Left = 128
      Top = 4
      Width = 116
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      Caption = 'Alterar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000020744558745469746C6500456469743B426172733B526962626F6E3B
        5374616E646172643B3013C3DB0000028449444154785E5D515D48145114FEEE
        CE9AA662FE942B1499246108D94B106588D24B461914843DD443500FF590D81F
        F550D443692F86A1A084AB581AD90F124260A4596AB14A96B556AC6192FDA045
        AEB3BBCE9DB9B77BE732BBEA99F9CEB9C39CEF3BDF9C219C731042B496CEB167
        9AA6157170C89045BE53C758A286D177F4C0A69D826700801B2A5C42A4E85069
        2E9CE08B12711EE07DFC6907004DD16202C4B254834119B823C2559297BA092C
        66D9FD4B05603135832D602BBEE348C134B923B0D40175BE3B4A8AED80280191
        2D93D9FDAF6E6C4744A70B05542B63311224513A23CA8D26EAE6BC3400482C3C
        DB6F00A02E47C0A41694650E0680896AC933E1F699886ACCCF636EB419DD97B6
        FC6A3ABEB10A4092E300865A22989CCA17FF46108648288C89170DC84D1B41CE
        E17BF0B7579CBAFE3DE88E3A60A6691319531305D462B920EB3AC69FD7211583
        C8D9530DFAB5067F3E04A045CC93D11D50CA94804CB610E0727184F520023DF5
        58A5F9B07E5F0DC21FABF1A6B907C8F4E0CBCFC9A69880A5044489EE7D6EF61F
        C67BEA904986B0E1602D667D573174A70FD64A0FDA6E0FB77AC782179C25C2B2
        991CC9091A92E25D6086B47D0B19F435F2CA6B31DD7BD19E1C4E4E87D7FBB65D
        90CF0198761C987A48EFBD7CB3BF880358E34900D7032808FA905F598FA9AE4A
        8C3E194638291D775BDFDFEF98089F01F0BBDCB3CC74362D9D2C1748115821B0
        2E6FEB91879D0DD7B83E39C8BB8E65F3F613F9BC6C75FC0300D902EE40DB2EEC
        CF888314588497D5DB00606D4149C58F77034F794BD5797EA538979766C53F02
        902310E76F2C81BFB1187B5335B8B12422212A0BF9F67924ABB0AC6F8646FE0E
        249A531D33A1F96E697B778A464F57F6AA8100FE037C7D7091F11B3976000000
        0049454E44AE426082}
      TabOrder = 1
    end
    object btnExcluir: TcxButton
      AlignWithMargins = True
      Left = 252
      Top = 4
      Width = 116
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      Caption = 'Excluir'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000C744558745469746C650054726173683B649A356D0000
        024249444154785E75924F6BD44018C69FD9CC36E976975D28A52DDA562DB1C5
        2FE021C52FE04128C52A28BD7810912E5814113D78F0E4A907BD0852C4434FF5
        50B4071145DB83081E2C45BBBBAD8AF51F8B6CDBD5CD6EE69F99A181B0A40F09
        79923CEFF07BDF19AA94429BC8D9A96B6FFA7ABB3DC7B10128B45A0C3F7E5657
        E61FDD1D439B28122484F06AB5DDD9B907776E025053176EDC9652CE2041D475
        5D63CAE532C6CF14970921DED0E14184CFE2E973578A1A7060E8204252FD5FE3
        AE2CCCCF8EE9BA38013935397DFFD8E8B037E21E427F5F0F0AF91CD21D142CE0
        A8FFFD87ED9D3A46DD419437BE7961F61E80CB9A8EEA62002925E5C542EF01EC
        0629A4EB01489AC39104CD264775BB893FB526FC264177FF004AA5CD4B00A601
        C888C0924262F9C54B8D0E4A2DA42905491128A9C03807E7C2B4111BBA151118
        ADAF3ECF1F3F31BE3331711241AB85ADEFBF313A321C12F82855BEE2A87B04BE
        DFC0D2D22BBC7DBD5068DF05012050522293C982520A100BD95C0E969582440A
        99AE2C0801A410D0598D1F23302F4C2A820EDB41486E2663DBB62E306D394E67
        E83974265A2022507BDB2826CFCF98FE95A4900A86C40A6F2194FEAE7D442012
        0F92101C003197E01ACA583D40E3A24C5C541FA04882F3A8084CA3EF2DC6431F
        CF542A15E3955271021D94918D500D03E73C2193D402E7D50FAB6B3D9D8E6D82
        1B9B9FC1183733F8F8691D8D860FC1D9D6BE0B1025E79E3E59BCDA95CDA090CF
        E3D7970A1817085A0C6BEFDF210818A8957EBC2FC1B3C587D701DC8A9D0D2BC1
        33C4F41F3E8F1596C01C0CF00000000049454E44AE426082}
      TabOrder = 2
    end
  end
end
