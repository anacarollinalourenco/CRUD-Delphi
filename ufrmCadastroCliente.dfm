object frmCadastroCliente: TfrmCadastroCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cliente'
  ClientHeight = 214
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 79
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 346
    Top = 8
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object Label4: TLabel
    Left = 8
    Top = 65
    Width = 55
    Height = 13
    Caption = 'Logradouro'
  end
  object Label5: TLabel
    Left = 256
    Top = 65
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  object Label6: TLabel
    Left = 490
    Top = 65
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object Label7: TLabel
    Left = 8
    Top = 121
    Width = 49
    Height = 13
    Caption = 'C'#243'd. IBGE'
  end
  object Label8: TLabel
    Left = 112
    Top = 121
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label9: TLabel
    Left = 344
    Top = 121
    Width = 65
    Height = 13
    Caption = 'Complemento'
  end
  object edtID: TEdit
    Left = 8
    Top = 32
    Width = 65
    Height = 21
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 79
    Top = 32
    Width = 259
    Height = 21
    TabOrder = 1
  end
  object edtCep: TEdit
    Left = 345
    Top = 32
    Width = 139
    Height = 21
    MaxLength = 8
    NumbersOnly = True
    TabOrder = 2
  end
  object edtLogradouro: TEdit
    Left = 8
    Top = 88
    Width = 237
    Height = 21
    TabOrder = 4
  end
  object btnCep: TcxButton
    Left = 490
    Top = 30
    Width = 75
    Height = 25
    Caption = '&Buscar CEP'
    TabOrder = 3
    OnClick = btnCepClick
  end
  object edtBairro: TEdit
    Left = 256
    Top = 88
    Width = 227
    Height = 21
    TabOrder = 5
  end
  object edtCodIbge: TEdit
    Left = 8
    Top = 144
    Width = 93
    Height = 21
    MaxLength = 10
    NumbersOnly = True
    TabOrder = 7
  end
  object edtCidade: TEdit
    Left = 112
    Top = 144
    Width = 221
    Height = 21
    TabOrder = 8
  end
  object edtComplemento: TEdit
    Left = 344
    Top = 144
    Width = 221
    Height = 21
    TabOrder = 9
  end
  object edtUF: TEdit
    Left = 490
    Top = 88
    Width = 75
    Height = 21
    MaxLength = 2
    TabOrder = 6
  end
  object btnSalvar: TcxButton
    Left = 494
    Top = 181
    Width = 75
    Height = 25
    Caption = '&Salvar'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000000B744558745469746C6500536176653BF9E8F9090000020349444154
      785E7D52316B145110FEDEE6EE9A03EF2E57284A6C6DAC42C0262185829D0A36
      16820AFE010BADC47F60AB2022585A588875B01041822158D858081204956872
      DC5DD6DD3733CF99D93DD713CCC0F7BEF776E7FB66E6ED0654912982633EFCFC
      9F67A2603B2CAC9DBFB2810CEB4B274EE1E4D271B0303832A24450A94C113112
      2846ECED8F301A7DB59CD76F379E9F6D9901425A5F3DB38C4F9FC7B87BE70690
      60E1E49C80BC886049B87EF33656964F6373EBFD1A8096190466017352B0ABA6
      BF22C4D5C9C5972E5CD632010F1F3F0553C4CECE17088B8F9ED99292B898884C
      EFE2548B270711D942867E7F114717BB9E0308582A83962D2C6EE0EE2925EFA6
      245671899205ED561B9D4EA77EC7CA6D887063904CCCE29735C923BEEF4F91C4
      A771DC7FF008C7865DEF88896B23FA6310BC03226FEFEAB55B9A203E63823143
      5490445C3883D05F23F8FCC228F26F180C06B3CB730059BD57866F20229EDF18
      D42358BC78F60487C5EAB98B5A6408E63903B1F6BD358B9FE302F06D729610BC
      B2AE20B63CF9D780602072579FB9F98B6082E6DF8D044932FF156CA648EC89F7
      5E7E844802299851B3C26667F30BCAF31D043B3091DFC3917E0F5C895C1C4D3C
      03E095C79303A4CA20984111CBFCDDE6D6F6CA70D0C39B571F2A7164AF129589
      14C65E59B0FB631765596C03C8030033E929BA8A0C4D8443F6A2982AF67E037E
      F6AC9379188DF20000000049454E44AE426082}
    TabOrder = 10
    OnClick = btnSalvarClick
  end
  object XMLDocument: TXMLDocument
    Left = 32
    Top = 168
  end
end
