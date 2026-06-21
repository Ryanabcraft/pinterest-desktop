[Setup]
AppName=Pinterest Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/pinterest-desktop
AppSupportURL=https://github.com/Ryanabcraft/pinterest-desktop/issues
DefaultDirName={localappdata}\Pinterest Desktop
DefaultGroupName=Pinterest Desktop
UninstallDisplayIcon={app}\Pinterest.exe
UninstallDisplayName=Pinterest Desktop
OutputDir=dist_installer
OutputBaseFilename=Pinterest-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Pinterest.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Pinterest"; Filename: "{app}\Pinterest.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Pinterest Desktop"; Filename: "{app}\Pinterest.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Pinterest Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Pinterest.exe"; Description: "Executar Pinterest Desktop"; Flags: postinstall nowait skipifsilent
