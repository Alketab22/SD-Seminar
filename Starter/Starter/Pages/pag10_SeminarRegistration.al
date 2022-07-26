page 50110 "CSD Seminar Registration"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 3-1
    //     - Created new page

    Caption = 'Seminar Registration';
    PageType = Document;
    SourceTable = "CSD Seminar Reg. Header";
    UsageCategory = tasks;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; xRec."No.")
                {
                    ApplicationArea = all;
                    AssistEdit = true;
                    trigger OnAssistEdit();
                    begin
                        if xRec.AssistEdit(xRec) then
                            CurrPage.UPDATE;
                    end;
                }
                field("Starting Date"; xRec."Starting Date")
                {
                    ApplicationArea = all;
                }
                field("Seminar No."; xRec."Seminar No.")
                {
                    ApplicationArea = all;
                }
                field("Seminar Name"; xRec."Seminar Name")
                {
                    ApplicationArea = all;
                }
                field("Instructor Resource No."; xRec."Instructor Resource No.")
                {
                    ApplicationArea = all;
                }
                field("Instructor Name"; xRec."Instructor Name")
                {
                    ApplicationArea = all;
                }
                field("Posting Date"; xRec."Posting Date")
                {
                    ApplicationArea = all;
                }

                field("Document Date"; xRec."Document Date")
                {
                    ApplicationArea = all;
                }
                field(Status; xRec.Status)
                {
                    ApplicationArea = all;
                }
                field("Duration"; xRec."Duration")
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
            }


            part(SeminarRegistrationLines; "CSD Seminar Reg. Subpage")
            {
                ApplicationArea = all;
                Caption = 'Lines';
                SubPageLink = "Document No." = field("No.");
            }
            group("Seminar Room")
            {
                field("Room Resource No."; xRec."Room Resource No.")
                {
                    ApplicationArea = all;
                }
                field("Room Name"; xRec."Room Name")
                {
                    ApplicationArea = all;
                }
                field("Room Address"; xRec."Room Address")
                {
                    ApplicationArea = all;
                }
                field("Room Address 2"; xRec."Room Address 2")
                {
                    ApplicationArea = all;
                }
                field("Room Post Code"; xRec."Room Post Code")
                {
                    ApplicationArea = all;
                }
                field("Room City"; xRec."Room City")
                {
                    ApplicationArea = all;
                }
                field("Room Country/Reg. Code"; xRec."Room Country/Reg. Code")
                {
                    ApplicationArea = all;
                }
                field("Room County"; xRec."Room County")
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
        area(factboxes)
        {


            part("Seminar Details FactBox"; "CSD Seminar Details FactBox")
            {
                SubPageLink = "No." = field("Seminar No.");
                ApplicationArea = all;
            }
            part("Customer Details FactBox"; "Customer Details FactBox")
            {
                Provider = SeminarRegistrationLines;
                ApplicationArea = all;
                SubPageLink = "No." = field("Bill-to Customer No.");
            }
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
                    ApplicationArea = all;

                }
                action("&Charges")
                {
                    ApplicationArea = all;
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page 50124;
                    RunPageLink = "Document No." = Field("No.");
                }
            }
        }
    }
}

