pageextension 50101 "CSD ResourceListExt" extends "Resource List" //77
{
    layout
    {
        modify("Type")
        {
            Visible = ShowType;
        }
        addafter("Type")
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

    var
        [InDataSet]
        ShowMaxField: Boolean;
        ShowType: Boolean;

    trigger OnOpenPage();
    begin
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = format(Type::machine));
    end;
}