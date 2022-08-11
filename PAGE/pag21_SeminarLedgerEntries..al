page 50121 "CSD Seminar Ledger Entries"
{
    PageType = List;
    // ApplicationArea = All;
    // UsageCategory = Lists;
    SourceTable = "CSD Seminar Ledger Entry";
    Caption = 'Seminar Ledger Entries';
    Editable = false;
    layout
    {
        area(Content)
        {
            repeater("Group")
            {

                field("Posting Date"; Rec."Posting Date")
                {
                    Caption = 'Posting Date';
                    ApplicationArea = all;
                }
                field("Document No."; Rec."Document No.")
                {
                    Caption = 'Document No.';
                    ApplicationArea = all;
                }
                field("Document Date"; Rec."Document Date")
                {
                    Visible = false;
                    ApplicationArea = all;
                    Caption = 'Document Date';
                }
                field("Entry Type"; Rec."Entry Type")
                {
                    Caption = 'Entry Type';
                    ApplicationArea = all;
                }
                field("Seminar No."; Rec."Seminar No.")
                {
                    Caption = 'Seminar No.';
                    ApplicationArea = all;
                }
                field("Description"; Rec."Description")
                {
                    Caption = 'Description';
                    ApplicationArea = all;
                }
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    Caption = 'Bill-to Customer No.';
                    ApplicationArea = all;
                }
                field("Charge Type"; Rec."Charge Type")
                {
                    Caption = 'Charge Type';
                    ApplicationArea = all;
                }
                field("Type"; Rec."Type")
                {
                    Caption = 'Type';
                    ApplicationArea = all;
                }
                field("Quantity"; Rec."Quantity")
                {
                    Caption = 'Quantity';
                    ApplicationArea = all;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                    ApplicationArea = all;
                }
                field("Total Price"; Rec."Total Price")
                {
                    Caption = 'Total Price';
                    ApplicationArea = all;
                }
                field("Chargeable"; Rec."Chargeable")
                {
                    Caption = 'Chargeable';
                    ApplicationArea = all;
                }
                field("Participant Contact No."; Rec."Participant Contact No.")
                {
                    Caption = 'Participant Contact No.';
                    ApplicationArea = all;
                }
                field("Participant Name"; Rec."Participant Name")
                {
                    Caption = 'Participant Name';
                    ApplicationArea = all;
                }
                field("Instructor Resource No."; Rec."Instructor Resource No.")
                {
                    Caption = 'Instructor Resource No.';
                    ApplicationArea = all;
                }
                field("Room Resource No."; Rec."Room Resource No.")
                {
                    Caption = 'Room Resource No.';
                    ApplicationArea = all;
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    Caption = 'Starting Date';
                    ApplicationArea = all;
                }
                field("Seminar Registration No."; Rec."Seminar Registration No.")
                {
                    Caption = 'Seminar Registration No.';
                    ApplicationArea = all;
                }
                field("Entry No."; Rec."Entry No.")
                {
                    Caption = 'Entry No.';
                    ApplicationArea = all;
                }
            }
        }
        area(Factboxes)
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
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}