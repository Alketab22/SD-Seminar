page 50110 "CSD Seminar Registration"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 3-1
    //     - Created new page

    Caption = 'Seminar Registration';
    PageType = Card;
    SourceTable = "CSD Seminar Reg. Header";
    UsageCategory = tasks;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; xRec."No.")
                {
                    AssistEdit = true;
                    trigger OnAssistEdit();
                    begin
                        if xRec.AssistEdit(xRec) then
                            CurrPage.UPDATE;
                    end;
                }
                field("Starting Date"; xRec."Starting Date")
                {
                }
                field("Seminar No."; xRec."Seminar No.")
                {
                }
                field("Seminar Name"; xRec."Seminar Name")
                {
                }
                field("Instructor Resource No."; xRec."Instructor Resource No.")
                {
                }
                field("Instructor Name"; xRec."Instructor Name")
                {
                }
                field("Posting Date"; xRec."Posting Date")
                {

                }

                field("Document Date"; xRec."Document Date")
                {
                }
                field(Status; xRec.Status)
                {
                }
                field(Duration; xRec.Duration)
                {
                }
                field("Minimum Participants"; xRec."Minimum Participants")
                {
                }
                field("Maximum Participants"; xRec."Maximum Participants")
                {
                }
            }
            group("Seminar Room")
            {
                field("Room Resource No."; xRec."Room Resource No.")
                {
                }
                field("Room Name"; xRec."Room Name")
                {
                }
                field("Room Address"; xRec."Room Address")
                {
                }
                field("Room Address 2"; xRec."Room Address 2")
                {
                }
                field("Room Post Code"; xRec."Room Post Code")
                {
                }
                field("Room City"; xRec."Room City")
                {
                }
                field("Room Country/Reg. Code"; xRec."Room Country/Reg. Code")
                {
                }
                field("Room County"; xRec."Room County")
                {
                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; xRec."Gen. Prod. Posting Group")
                {
                }
                field("VAT Prod. Posting Group"; xRec."VAT Prod. Posting Group")
                {
                }
                field("Seminar Price"; xRec."Seminar Price")
                {
                }
            }
        }
        area(factboxes)
        {
            part("Seminar Details FactBox"; "CSD Seminar Details FactBox")
            {
                SubPageLink = "No." = field("Seminar No.");
            }
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
        area(navigation)
        {
            group("&Seminar Registration")
            {
                Caption = '&Seminar Registration';
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = Page 50121;
                    RunPageLink = "No." = Field("No.");
                    RunPageView = where("Table Name" = Const("Seminar Registration Header"));


                }
                action("&Charges")
                {
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page 50124;
                    RunPageLink = "Document No." = Field("No.");
                }
            }
        }
    }
}

