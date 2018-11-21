report 50101 CSDSeminarRegParticipantList
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/SeminarRegParticipantList.rdl';
    dataset
    {
        dataitem("CSD Seminar Reg. Header"; "CSD Seminar Reg. Header")
        {
            DataItemTableView = sorting ("No.");
            RequestFilterFields = "No.", "Seminar No.";
            column("No"; "No.")
            {
                IncludeCaption = true;
            }
            column("SeminarNo"; "Seminar No.")
            {
                IncludeCaption = true;
            }
            column("SeminarName"; "Seminar Name")
            {
                IncludeCaption = true;
            }
            column("StartingDate"; "Starting Date")
            {
                IncludeCaption = true;
            }
            column("Duration"; "Duration")
            {
                IncludeCaption = true;
            }
            column("InstructorName"; "Instructor Name")
            {
                IncludeCaption = true;
            }
            column("RoomName"; "Room Name")
            {
                IncludeCaption = true;
            }
            dataitem(SeminarRegistrationLine; "CSD Seminar Registration Line")
            {
                DataItemTableView = sorting ("Document No.", "Line No.");
                DataItemLink = "Document No." = field ("No.");

                column(Bill_to_Customer_No_; "Bill-to Customer No.")
                {

                }
                column(Participant_Contact_No_; "Participant Contact No.")
                {

                }
                column(Participant_Name; "Participant Name")
                {

                }
            }
            dataitem("Company Information"; "Company Information")
            {
                column(Company_Name; Name)
                {
                }
            }
        }
    }

    labels
    {
        SeminarRegistrationHeaderCap = 'Seminar Registration List';
    }
}