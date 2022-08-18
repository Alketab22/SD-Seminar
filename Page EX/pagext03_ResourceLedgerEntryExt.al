pageextension 50104 "CSD ResourceLedgerEntryExt" extends "Resource Ledger Entries"
{
    layout
    {
        addlast(Content)
        {
            field("CSD Seminar No."; Rec."CSD Seminar No.")
            {
                ApplicationArea = all;
            }
            field("CSD Seminar Registration No."; Rec."CSD Seminar Registration No.")
            {
                ApplicationArea = all;
            }
        }
    }
}