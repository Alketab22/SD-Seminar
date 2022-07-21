page 50106 "CSD Seminar Card"
{

    PageType = Card;
    Caption = 'Seminar Card';
    SourceTable = "CSD Seminarr";
    ApplicationArea = all;
    UsageCategory = Lists;
    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; xRec."No.")
                {
                    AssistEdit = true;
                    ApplicationArea = all;
                    trigger OnAssistEdit()

                    begin

                        if xRec.AssistEdit then
                            CurrPage.Update();
                    end;

                }
                field(Name; xRec.Name)
                {
                    ApplicationArea = all;
                }
                field("Search Name"; xRec."Search Name")
                {
                    ApplicationArea = all;
                }
                field("Seminar Duration"; xRec."Seminar Duration")
                {
                    ApplicationArea = all;
                }
                field("Maximum participants"; xRec."Maximum participants")
                {
                    ApplicationArea = all;
                }
                field("Minimum participants"; xRec."Minimum participants")
                {
                    ApplicationArea = all;
                }
                field(Blocked; xRec.Blocked)
                {
                    ApplicationArea = all;
                }
                field("Last Date Modified"; xRec."Last Date Modified")
                {
                    ApplicationArea = all;
                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; xRec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = all;
                }
                field("VAT Prod. Posting Group"; xRec."VAT Prod. Posting Group")
                {
                    ApplicationArea = all;
                }
                field("Seminar Price"; xRec."Seminar Price")
                {
                    ApplicationArea = all;
                }
            }
        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {
                ApplicationArea = all;
            }
            systempart("Notes"; Notes)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mment")
                {
                    ApplicationArea = all;
                    RunObject = page "CSD Seminar Comment Sheet";
                    RunPageLink = "Table Name" = const(Seminar),
                    "No." = field("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }

            }
        }
    }


}