codeunit 50139 "CSD EventSubscriptions"
{

    [EventSubscriber(ObjectType::Codeunit, 212, 'OnBeforeResLedgEntryInsert', '', true, true)]
    local procedure PostResJnlLineOnBeforeResLedgEntryInsert
   (var
        ResLedgerEntry: Record "Res. Ledger Entry";
        ResJournalLine: Record "Res. Journal Line");
    begin
        ResLedgerEntry."CSD Seminar No." := ResJournalLine."CSD Seminar No.";
        ResLedgerEntry."CSD Seminar Registration No." := ResJournalLine."CSD Seminar Registration No."

    end;

    [EventSubscriber(ObjectType::Page, 344, 'OnAfterNavigateFindRecords', '', true, true)]
    local procedure ExtendNavigateOnAfterNavigateFindRecords
    (var DocumentEntry: Record "Document Entry";
         DocNoFilter: Text;
         PostingDateFilter: Text);
    var
        SeminarLedgerEntry: Record "CSD Seminar Ledger Entry";
        PostedSeminarRegistrationHeader: Record "CSD Posted Seminar Reg. Header";
        DocNoOfRec: Integer;
        NextEntryNo: Integer;
    begin
        if PostedSeminarRegistrationHeader.ReadPermission then begin
            PostedSeminarRegistrationHeader.Reset();
            PostedSeminarRegistrationHeader.SetFilter("No.", DocNoFilter);
            PostedSeminarRegistrationHeader.SetFilter("Posting Date", PostingDateFilter);
            DocNoOfRec := PostedSeminarRegistrationHeader.Count;
            //  with DocumentEntry do begin
            if DocNoOfRec = 0 then
                exit;
            if DocumentEntry.FindLast() then
                NextEntryNo := DocumentEntry."Entry No." + 1
            else
                NextEntryNo := 1;
            DocumentEntry.Init();
            DocumentEntry."Entry No." := NextEntryNo;
            DocumentEntry."Table ID" := Database::"CSD Posted Seminar Reg. Header";
            DocumentEntry."Document Type" := DocumentEntry."Document Type"::Quote;
            DocumentEntry."Table Name" := CopyStr(PostedSeminarRegistrationHeader.TableCaption, 1, MaxStrLen(DocumentEntry."Table Name"));
            DocumentEntry."No. of Records" := DocNoOfRec;
            DocumentEntry.Insert();
        end;

    end;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  

    [EventSubscriber(ObjectType::Page, 344, 'OnAfterNavigateShowRecords', '', true, true)]
    local procedure ExtendNavigateOnAfterNavigateShowRecords
        (TableID: Integer;
          DocNoFilter: Text;
          PostingDateFilter: Text;
          ItemTrackingSearch: Boolean);
    var
        SeminarLedgerEntry: record "CSD Seminar Ledger Entry";
        PostedSeminarRegHeader: record "CSD Posted Seminar Reg. Header";

    begin
        case TableID of
            Database::"CSD Posted Seminar Reg. Header":
                begin
                    PostedSeminarRegHeader.SetFilter("No.", DocNoFilter);
                    PostedSeminarRegHeader.SetFilter("Posting Date",
                    PostingDateFilter);
                    Page.Run(0, PostedSeminarRegHeader);
                end;
            Database::"CSD Seminar Ledger Entry":
                begin
                    SeminarLedgerEntry.SetFilter("Document No.",
                    DocNoFilter);
                    SeminarLedgerEntry.SetFilter("Posting Date",
                    PostingDateFilter);
                    Page.Run(0, SeminarLedgerEntry);
                end;
        end;
    end;

}

