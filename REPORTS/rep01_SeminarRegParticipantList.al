report 50101 "CSD SeminarRegParticipantList"
{
    Caption = 'CSD Seminar Reg. Participant List';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = './Layouts/SeminarRegParticipantList.rdl';
    //ket layoutin e vendosim vet?
    DefaultLayout = RDLC;


    dataset
    {

        dataitem(SeminarRegHeader; "CSD Seminar Reg. Header")
        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.", "Seminar No.";
            column(No_; "No.")
            {
                IncludeCaption = true;
            }
            column(Seminar_No_; "Seminar No.")
            {
                IncludeCaption = true;
            }
            column(Seminar_Name; "Seminar Name")
            {
                IncludeCaption = true;
            }
            column(Starting_Date; "Starting Date")
            {
                IncludeCaption = true;
            }
            column(Duration_; "Duration")
            {
                IncludeCaption = true;
            }
            column(Instructor_Name; "Instructor Name")
            {
                IncludeCaption = true;
            }
            column(Room_Name; "Room Name")
            {
                IncludeCaption = true;
            }
            dataitem(SeminarRegistrationLine; "CSD Seminar Registration Line")
            {
                DataItemTableView = sorting("Document No.", "Line No.");
                DataItemLink = "Document No." = field("No.");

                column(Bill_to_Customer_No_; "Bill-to Customer No.")
                {
                    IncludeCaption = true;
                }
                column(Participant_Contact_No_; "Participant Contact No.")
                {
                    IncludeCaption = true;

                }
                column(Participant_Name; "Participant Name")
                {
                    IncludeCaption = true;

                }

            }
            dataitem("Company Information"; "Company Information")
            {
                column(Company_Name; "Name")
                {

                }

            }
        }


    }
    labels
    {
        SeminarRegHeaderCap = 'Seminar Registration List';
    }


}