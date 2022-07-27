page 50105 "CSD Seminar Setup"
{
    PageType = Card;
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Setup";
    ApplicationArea = all;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar Nos"; Rec."Seminar Nos.")
                {
                    ApplicationArea = all;

                }
                field("Seminar Registration Nos."; Rec."Seminar Registration Nos.")
                {
                    ApplicationArea = all;
                }
                field("Posted Seminar Reg. Nos."; Rec."Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    trigger OnOpenPage();
    begin
        if not xRec.get then begin
            xRec.Init();
            xRec.Insert();
        end;

    end;
}