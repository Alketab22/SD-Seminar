pageextension 50103 "CSD ResourceListExt" extends "Resource List" //OriginalId
{

    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }

        }
    }
    trigger OnOpenPage()
    begin
        ShowType := (GetFilter(type) = '');
        ShowMaxField := (GetFilter(Type) = format(Type::machine));
    end;

    var
        [InDataSet]

        ShowType: Boolean;

        [InDataSet]

        ShowMaxField: Boolean;
}