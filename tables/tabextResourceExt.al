tableextension 50100 "CSD ResourceExt" extends Resource
{

    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()

            begin
                Rec.TestField("Unit Cost");
            end;
        }
        field(50101; "CSD Resource Type"; Enum "CSD Resource Type")
        {

            Caption = 'Resource Type';

        }
        field(50102; "CSD Seminar Type"; Enum "CSD Seminar Type")
        {
            Caption = 'CSD Seminar Type';
        }
        field(50103; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(50104; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
        }
    }
}





