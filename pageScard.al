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
                field("No."; "No.")
                {
                    AssistEdit = true;
                    ApplicationArea = all;
                    trigger OnAssistEdit()

                    begin

                        if AssistEdit then
                            CurrPage.Update();
                    end;

                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field("Search Name"; "Search Name")
                {
                    ApplicationArea = all;
                }
                field("Seminar Duration"; "Seminar Duration")
                {
                    ApplicationArea = all;
                }
                field("Maximum participants"; "Maximum participants")
                {
                    ApplicationArea = all;
                }
                field("Minimum participants"; "Minimum participants")
                {
                    ApplicationArea = all;
                }
                field(Blocked; Blocked)
                {
                    ApplicationArea = all;
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                    ApplicationArea = all;
                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                    ApplicationArea = all;
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                    ApplicationArea = all;
                }
                field("Seminar Price"; "Seminar Price")
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