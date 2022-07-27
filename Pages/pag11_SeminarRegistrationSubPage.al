page 50111 "CSD Seminar Reg. Subpage"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 3
    //     - Created new page

    Caption = 'Lines';
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = "CSD Seminar Registration Line";
    ApplicationArea = all;
    UsageCategory = Lists;
    AutoSplitKey = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Bill-to Customer No."; xRec."Bill-to Customer No.")
                {
                    ApplicationArea = all;
                }
                field("Participant Contact No."; xRec."Participant Contact No.")
                {
                    ApplicationArea = all;
                }
                field("Participant Name"; xRec."Participant Name")
                {
                    ApplicationArea = all;
                }
                field(Participated; xRec.Participated)
                {
                    ApplicationArea = all;
                }
                field("Registration Date"; xRec."Registration Date")
                {
                    ApplicationArea = all;
                }

                field("Confirmation Date"; xRec."Confirmation Date")
                {
                    ApplicationArea = all;
                }
                field("To Invoice"; xRec."To Invoice")
                {
                    ApplicationArea = all;
                }
                field(Registered; xRec.Registered)
                {
                    ApplicationArea = all;
                }
                field("Seminar Price"; xRec."Seminar Price")
                {
                    ApplicationArea = all;
                }
                field("Line Discount %"; xRec."Line Discount %")
                {
                    ApplicationArea = all;
                }
                field("Line Discount Amount"; xRec."Line Discount Amount")
                {
                    ApplicationArea = all;
                }
                field(Amount; xRec.Amount)
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
    }
}

