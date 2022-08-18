page 50140 "CSD Seminar Manager Activities"
{
    PageType = CardPart;
    // ApplicationArea = All;
    //UsageCategory = Administration;
    SourceTable = "CSD Seminar Cue";
    Caption = 'Seminar Manager Activities';
    Editable = false;

    layout
    {
        area(Content)
        {
            cuegroup("Registrations")
            {
                Caption = 'Registrations';
                field(Planned; Rec.Planned)
                {
                    ApplicationArea = All;
                    Caption = 'Planned';

                }
                field(Registered; Rec.Registered)
                {
                    ApplicationArea = all;
                    Caption = 'Registered';
                }
                actions
                {
                    action("New")
                    {
                        Caption = 'New';
                        RunObject = page "CSD Seminar Registration";
                        RunPageMode = Create;
                        ApplicationArea = all;
                    }

                }
            }
            cuegroup("For Posting")
            {
                field(Closed; Rec.Closed)
                {
                    ApplicationArea = all;
                    Caption = 'Closed';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {

        }
    }

    var
        myInt: Integer;

    trigger OnOpenPage()

    begin
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}