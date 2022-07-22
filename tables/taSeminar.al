table 50105 "CSD Seminarr"
{
    LookupPageID = "CSD Seminar List";
    DrillDownPageID = "CSD Seminar List";
    Caption = 'Seminar';

    fields
    {
        field(10; "No."; Code[20])
        {
            Caption = 'No.';


        }
        field(20; "Name"; Text[50])
        {
            Caption = 'Name';
            trigger OnValidate()

            begin
                if ("Search Name" = UpperCase(xRec.Name)) or
                ("Search Name" = '') then
                    "Search Name" := Name;
            end;


        }
        field(30; "Seminar Duration"; Decimal)
        {
            DecimalPlaces = 0 : 1;
            Caption = 'Seminar Duration';

        }
        field(40; "Minimum participants"; Integer)
        {
            Caption = 'Minimum participants';
        }
        field(50; "Maximum participants"; Integer)
        {
            Caption = 'Maximum participants';
        }
        field(60; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
        }
        field(70; "Blocked"; Boolean)
        {
            Caption = 'Blocked';
        }
        field(80; "Last Date Modified"; Date)
        {
            Editable = false;
            Caption = 'Last Date Modified';
        }

        field(90; "Comment"; Boolean)
        {
            Editable = false;
            Caption = 'Comment';
            FieldClass = FlowField;
            CalcFormula = exist("CSD Seminar Comment Line"
             where("Table Name" = const("Seminar"),
               "No." = Field("No.")));
        }

        field(100; "Seminar Price"; Decimal)
        {
            Caption = 'Seminar Price';
            AutoFormatType = 1;
        }
        field(110; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Business Posting Group";
            /*
            trigger OnValidate();

            begin
                if (xRec."Gen. Prod. Posting Group" <>
                "Gen. Prod. Posting Group") then begin
                    if GenProdPostingGroup.ValidateVatProdPostingGroup
                    (GenProdPostingGroup, "Gen. Prod. Posting Group") then
                        Validate("VAT Prod. Posting Group", GenProdPostingGroup."Def. VAT Prod. Posting Group");
                end;
            end; */
        }
        field(120; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";

        }
        field(130; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
            Editable = false;

        }
    }


    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Key1; "Search Name")
        {

        }
    }
    var
        SeminarSetup: Record "CSD Seminar Setupp";
        CommentLine: record "CSD Seminar Comment Line";
        Seminar: Record "CSD Seminarr";
        GenProdPostingGroup: Record "Gen. Product Posting Group";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert();

    begin
        if "No." = '' then begin
            SeminarSetup.get;
            SeminarSetup.TestField("Seminar Registration Nos.");
            NoSeriesMgt.InitSeries(SeminarSetup."Seminar Registration Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;

    trigger OnModify();
    begin
        "Last Date Modified" := Today;
    end;

    trigger OnRename();
    begin
        "Last Date Modified" := Today;
    end;

    trigger OnDelete();

    begin
        CommentLine.Reset;
        CommentLine.SetRange("Table Name",
        CommentLine."Table Name"::Seminar);
        CommentLine.SetRange("No.", "No.");
        CommentLine.DeleteAll;
    end;

    procedure AssistEdit(): Boolean;
    begin
        with Seminar do begin
            Seminar := Rec;
            SeminarSetup.Get();
            SeminarSetup.TestField("Seminar Nos");
            if NoSeriesMgt.SelectSeries(SeminarSetup."Seminar Nos"
            , xRec."No. Series", "No. Series") then begin
                NoSeriesMgt.SetSeries("No.");
                Rec := Seminar;
                exit(true);
            end;
        end;
    end;

}

