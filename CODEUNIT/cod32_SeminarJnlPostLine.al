codeunit 50132 "CSD Seminar Jnl.-Post Line"
{
    TableNo = "CSD Seminar Journal Line";
    trigger OnRun()
    begin

    end;

    var
        SeminarJnLine: Record "CSD Seminar Journal Line";
        SeminarLedgerEntry: Record "CSD Seminar Ledger Entry";
        SeminarRegister: Record "CSD Seminar Register";
        SeminarJnlCheckLine: Codeunit "CSD Seminar Jnl.-Check Line";
        NextEntryNo: Integer;

    local procedure Code()
    var
        myInt: Integer;
    begin

        if NextEntryNo = 0 then begin
            SeminarLedgerEntry.LockTable;
            if SeminarLedgerEntry.FindLast then
                NextEntryNo := SeminarLedgerEntry."Entry No.";
            NextEntryNo := NextEntryNo + 1;
        end;

        if SeminarRegister."No." = 0 then begin
            SeminarRegister.LockTable;
            if (not SeminarRegister.FindLast) or
            (SeminarRegister."To Entry No." <> 0) then begin
                SeminarRegister.INIT;
                SeminarRegister."No." := SeminarRegister."No." + 1;
                SeminarRegister."From Entry No." := NextEntryNo;
                SeminarRegister."To Entry No." := NextEntryNo;
                SeminarRegister."Creation Date" := TODAY;
                SeminarRegister."Source Code" := SeminarJnLine."Source Code";
                SeminarRegister."Journal Batch Name" :=
                 SeminarJnLine."Journal Batch Name";
                SeminarRegister."User ID" := USERID;
                SeminarRegister.Insert;
            end;

            SeminarRegister."To Entry No." := NextEntryNo;
            SeminarRegister.Modify;
        end;
        SeminarLedgerEntry.INIT;
        SeminarLedgerEntry."Seminar No." := SeminarJnLine."Seminar No.";
        SeminarLedgerEntry."Posting Date" := SeminarJnLine."Posting Date";
        SeminarLedgerEntry."Document Date" := SeminarJnLine."Document Date";
        SeminarLedgerEntry."Entry Type" := SeminarJnLine."Entry Type";
        SeminarLedgerEntry."Document No." := SeminarJnLine."Document No.";
        SeminarLedgerEntry.Description := SeminarJnLine.Description;
        SeminarLedgerEntry."Bill-to Customer No." :=
         SeminarJnLine."Bill-to Customer No.";
        SeminarLedgerEntry."Charge Type" := SeminarJnLine."Charge Type";
        SeminarLedgerEntry.Type := SeminarJnLine.Type;
        SeminarLedgerEntry.Quantity := SeminarJnLine.Quantity;
        SeminarLedgerEntry."Unit Price" := SeminarJnLine."Unit Price";
        SeminarLedgerEntry."Total Price" := SeminarJnLine."Total Price";
        SeminarLedgerEntry."Participant Contact No." :=
         SeminarJnLine."Participant Contact No.";
        SeminarLedgerEntry."Participant Name" :=
         SeminarJnLine."Participant Name";
        SeminarLedgerEntry.Chargeable := SeminarJnLine.Chargeable;
        SeminarLedgerEntry."Room Resource No." :=
        SeminarJnLine."Room Resource No.";
        SeminarLedgerEntry."Instructor Resource No." :=
         SeminarJnLine."Instructor Resource No.";
        SeminarLedgerEntry."Starting Date" := SeminarJnLine."Starting Date";
        SeminarLedgerEntry."Seminar Registration No." :=
         SeminarJnLine."Seminar Registration No.";
        SeminarLedgerEntry."Res. Ledger Entry No." :=
         SeminarJnLine."Res. Ledger Entry No.";
        SeminarLedgerEntry."Source Type" := SeminarJnLine."Source Type";
        SeminarLedgerEntry."Source No." := SeminarJnLine."Source No.";
        SeminarLedgerEntry."Journal Batch Name" :=
         SeminarJnLine."Journal Batch Name";
        SeminarLedgerEntry."Source Code" := SeminarJnLine."Source Code";
        SeminarLedgerEntry."Reason Code" := SeminarJnLine."Reason Code";
        SeminarLedgerEntry." No. Series" :=
         SeminarJnLine."Posting No. Series";
        SeminarLedgerEntry."Entry No." := NextEntryNo;
        NextEntryNo += 1;
        SeminarLedgerEntry.Insert;
    end;



    procedure RunWithCheck(var SeminarJnLine2: Record "CSD Seminar Journal Line");
    var
        myInt: Integer;
    begin
        if SeminarJnLine2.EmptyLine then
            SeminarJnLine := SeminarJnLine2;
        Code();
        SeminarJnLine2 := SeminarJnLine;
    end;



}
