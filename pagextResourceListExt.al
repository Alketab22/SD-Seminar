pageextension 50103 "CSD ResourceListExt" extends "Resource List"
{

    layout
    {
        /*
     modify("Type"){
        Visible=ShowType;
     }*/
        addafter("Type")
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
        ShowType := (Rec.GetFilter(Rec.Type) = '');
        ShowMaxField := (Rec.GetFilter(Rec.Type) = format(Rec.Type::Machine));
    end;

    var
        [InDataSet]

        ShowType: Boolean;

        [InDataSet]

        ShowMaxField: Boolean;
}