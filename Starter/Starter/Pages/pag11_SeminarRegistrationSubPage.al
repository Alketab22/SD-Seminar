page 50111 "CSD Seminar Reg. Subpage"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 3
    //     - Created new page

    Caption = 'Lines';
    DelayedInsert = true;
    PageType = List;
    SourceTable = "CSD Seminar Registration Line";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Bill-to Customer No."; xRec."Bill-to Customer No.")
                {
                }
                field("Participant Contact No."; xRec."Participant Contact No.")
                {
                }
                field("Participant Name"; xRec."Participant Name")
                {
                }
                field(Participated; xRec.Participated)
                {
                }
                field("Registration Date"; xRec."Registration Date")
                {
                }
                field("Confirmation Date"; xRec."Confirmation Date")
                {
                }
                field("To Invoice"; xRec."To Invoice")
                {
                }
                field(Registered; xRec.Registered)
                {
                }
                field("Seminar Price"; xRec."Seminar Price")
                {
                }
                field("Line Discount %"; xRec."Line Discount %")
                {
                }
                field("Line Discount Amount"; xRec."Line Discount Amount")
                {
                }
                field(Amount; xRec.Amount)
                {
                }
            }
        }
    }

    actions
    {
    }
}

