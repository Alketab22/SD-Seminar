pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; Rec."CSD Resource Type")
            {
                ApplicationArea = all;
            }
            field("CSD Quantity Per Day"; Rec."CSD Quantity Per Day")
            {
                ApplicationArea = all;
            }
        }
        addafter("Personal data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowMaxField;
                field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    trigger OnafterGetRecord();

    begin
        ShowMaxField := (Rec.Type = Rec.Type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}
