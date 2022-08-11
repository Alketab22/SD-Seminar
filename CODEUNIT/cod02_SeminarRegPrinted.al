codeunit 50102 "CSD SeminarRegPrinted"
{
    TableNo = "CSD Seminar Reg. Header";
    trigger OnRun()
    begin
        Rec.Find();
        Rec."No. Printed" += 1;
        Rec.Modify();
        //pse perdorim modify ktu?
        Commit();
    end;


}