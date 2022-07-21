pageextension 50103 "CSD ResourceListExt" extends "Resource List"
{

    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; xRec."CSD Resource Type")
            {
                ApplicationArea = all;
            }
            field("CSD Maximum Participants"; xRec."CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }

        }
    }
    trigger OnOpenPage()
    begin
        ShowType := (xRec.GetFilter(type) = '');
        ShowMaxField := (xRec.GetFilter(Type) = format(xRec.Type::machine));
    end;

    var
        [InDataSet]

        ShowType: Boolean;

        [InDataSet]

        ShowMaxField: Boolean;
}