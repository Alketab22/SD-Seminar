page 50106 "CSD Seminar Card"
{
    PageType = Card;
    Caption = 'Seminar Card';
    SourceTable = "CSD Seminar";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    AssistEdit = true;
                    trigger OnAssistEdit()
                    begin
                        if AssistEdit then
                            CurrPage.Update();
                    end;

                }
                field(Name; Name)
                {

                }
                field("Search Name"; "Search Name")
                {

                }
                field("Seminar Duration"; "Seminar Duration")
                {

                }
                field("Maximum participants"; "Maximum participants")
                {

                }
                field("Minimum participants"; "Minimum participants")
                {

                }
                field(Blocked; Blocked)
                {

                }
                field("Last Date Modified"; "Last Date Modified")
                {

                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {

                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {

                }
                field("Seminar Price"; "Seminar Price")
                {

                }
            }
        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {

            }
            systempart("Notes"; Notes)
            {

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