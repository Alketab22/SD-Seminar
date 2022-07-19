page 50105 "CSD Seminar Setup"
{
    PageType = Card;
    Caption = 'CSD Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Setup";


    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar Nos"; "Seminar Nos")
                {
                    ApplicationArea = All;

                }
                field("Seminar Registration Nos."; "Seminar Registration Nos.")
                {

                }
                field("Posted Seminar Reg. Nos."; "Posted Seminar Reg. Nos.")
                {

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