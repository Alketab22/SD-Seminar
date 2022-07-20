page 50105 "CSD Seminar Setup"
{
    PageType = Card;
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Setupp";


    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar Nos"; "Seminar Nos")
                {


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