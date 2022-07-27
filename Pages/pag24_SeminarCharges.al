page 50124 "CSD Seminar Charges"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 1
    //     - Created new page

    AutoSplitKey = true;
    Caption = 'Seminar Charges';
    PageType = List;
    SourceTable = "CSD Seminar Charge";
    ApplicationArea = all;
    UsageCategory = Lists;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = all;
                }
                field(Description; xRec.Description)
                {
                    ApplicationArea = all;
                }
                field(Quantity; xRec.Quantity)
                {
                    ApplicationArea = all;
                }
                field("Unit of Measure Code"; xRec."Unit of Measure Code")
                {
                    ApplicationArea = all;
                }
                field("Bill-to Customer No."; xRec."Bill-to Customer No.")
                {
                    ApplicationArea = all;
                }
                field("Gen. Prod. Posting Group"; xRec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = all;
                }
                field("Unit Price"; xRec."Unit Price")
                {
                    ApplicationArea = all;
                }
                field("Total Price"; xRec."Total Price")
                {
                    ApplicationArea = all;
                }
                field("To Invoice"; xRec."To Invoice")
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

