page 50124 "CSD Seminar Charges"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 1
    //     - Created new page

    AutoSplitKey = true;
    Caption = 'Seminar Charges';
    PageType = List;
    SourceTable = "CSD Seminar Charge";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; xRec."No.")
                {
                }
                field(Description; xRec.Description)
                {
                }
                field(Quantity; xRec.Quantity)
                {
                }
                field("Unit of Measure Code"; xRec."Unit of Measure Code")
                {
                }
                field("Bill-to Customer No."; xRec."Bill-to Customer No.")
                {
                }
                field("Gen. Prod. Posting Group"; xRec."Gen. Prod. Posting Group")
                {
                }
                field("Unit Price"; xRec."Unit Price")
                {
                }
                field("Total Price"; xRec."Total Price")
                {
                }
                field("To Invoice"; xRec."To Invoice")
                {
                }
            }
        }
    }

    actions
    {
    }
}

