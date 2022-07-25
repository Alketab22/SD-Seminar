page 50117 "CSD Seminar Details FactBox"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 2
    //     - Created new page

    Caption = 'Seminar Details';
    PageType = CardPart;
    SourceTable = "CSD Seminarr";
    ApplicationArea = all;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            field("No."; xRec."No.")
            {
                ApplicationArea = all;
            }
            field(Name; xRec.Name)
            {
                ApplicationArea = all;
            }
            field("Seminar Duration"; xRec."Seminar Duration")
            {
                ApplicationArea = all;
            }
            field("Minimum Participants"; xRec."Minimum Participants")
            {
                ApplicationArea = all;
            }
            field("Maximum Participants"; xRec."Maximum Participants")
            {
                ApplicationArea = all;
            }
            field("Seminar Price"; xRec."Seminar Price")
            {
                ApplicationArea = all;
            }
        }
    }


}

