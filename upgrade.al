codeunit 50112 MyupgradeCode
{
    Subtype = Upgrade;
    trigger OnCheckPreconditionsPerDatabase();
    var
        myInfo: ModuleInfo;
    begin
        if NavApp.GetCurrentModuleInfo(myInfo) then
            if myInfo.DataVersion = Version.Create(1, 0, 0, 1) then
                Error('The upgrade is not compatible');
    end;
}
