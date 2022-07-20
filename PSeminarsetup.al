page 50105 "CSD Seminar Setup"
{
    PageType = Card;
    Caption = 'Seminar Setup';
    InsertAllowed = true;
    DeleteAllowed = true;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Setupp";
    ApplicationArea = all;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar Nos"; "Seminar Nos")
                {
                    ApplicationArea = all;

                }
                field("Seminar Registration Nos."; "Seminar Registration Nos.")
                {
                    ApplicationArea = all;
                }
                field("Posted Seminar Reg. Nos."; "Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    trigger OnOpenPage();
    begin
        if not get then begin
            Init();
            Insert();
        end;

    end;
}