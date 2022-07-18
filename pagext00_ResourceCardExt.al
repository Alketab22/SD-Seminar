pageextension 50101 "CSD ResourceCardExt" extends "Resource Card"
{

    layout

    {

        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {

            }

        }



        addafter("Personal data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowMaxField;
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {

                }
            }
        }
    }

    trigger OnafterGetRecord();

    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false);
    end;


    var
        [InDataSet]
        ShowMaxField: Boolean;


}