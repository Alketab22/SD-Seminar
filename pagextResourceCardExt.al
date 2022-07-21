pageextension 50101 "CSD ResourceCardExt" extends "Resource Card"
{

    layout

    {

        addlast(General)
        {
            field("CSD Resource Type"; xRec."CSD Resource Type")
            {
                ApplicationArea = all;
            }
            field("CSD Quantity Per Day"; xRec."CSD Quantity Per Day")
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
                field("CSD Maximum Participants"; xRec."CSD Maximum Participants")
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    trigger OnafterGetRecord();

    begin
        ShowMaxField := (xRec."CSD Resource Type" = xRec."CSD Resource Type"::Internal);
        CurrPage.Update(false);
    end;


    var
        [InDataSet]
        ShowMaxField: Boolean;


}