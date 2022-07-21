pageextension 50103 "CSD ResourceListExt" extends "Resource List"
{
    layout
    {

        addafter(Type)
        {
            field("CSD Resource Type"; xRec."CSD Resource Type")
            {
                ApplicationArea = all;
            }
            field("CSD Maximum Participants"; xRec."CSD Maximum Participants")
            {
                Visible = ShowMaxField;
                ApplicationArea = all;
            }

        }
    }
    trigger OnOpenPage()
    begin
        ShowType := (xRec.GetFilter("CSD Seminar Type") = '');
        ShowMaxField := (xRec.GetFilter("CSD Seminar Type") = format(xRec."CSD Seminar Type"::Room));
    end;

    var
        [InDataSet]

        ShowType: Boolean;

        [InDataSet]

        ShowMaxField: Boolean;
}