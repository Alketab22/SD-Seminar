page 50117 "CSD Seminar Details FactBox"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 2
    //     - Created new page

    Caption = 'Seminar Details';
    PageType = CardPart;
    SourceTable = "CSD Seminarr";

    layout
    {
        area(content)
        {
            field("No."; xRec."No.")
            {
            }
            field(Name; xRec.Name)
            {
            }
            field("Seminar Duration"; xRec."Seminar Duration")
            {
            }
            field("Minimum Participants"; xRec."Minimum Participants")
            {
            }
            field("Maximum Participants"; xRec."Maximum Participants")
            {
            }
            field("Seminar Price"; xRec."Seminar Price")
            {
            }
        }
    }

    actions
    {
    }
}

