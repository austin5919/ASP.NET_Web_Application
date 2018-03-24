' Program Name: The Village Bike Shop Reservation Form Web Application
' Author:       Austin Ash
' Date:         October 4th, 2013
' Purpose:      This Web application allows the user to reserve rental bikes online.

Public Class About
    Inherits System.Web.UI.Page

    ' Declaration Section' 
    Dim arrayInputs As Array
    Dim receiptInfo As Array
    Dim totalCost As Decimal
    Dim selectedBike As String
    Dim bikeTypes As Array _
        = {"Beach Cruiser",
           "Road",
           "Mountain"}



    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        ' When the Sumbit button is clicked this code will confirm
        ' if the user inputs meet the requirements. If so, then the
        ' code will continue to process the data and output a receipt

        arrayInputs = {tbFirstName.Text & " " & tbLastName.Text,
                       tbAddress.Text,
                       tbPhone.Text,
                       rblTypeOfBike.SelectedIndex,
                       Val(ddlHours.SelectedValue),
                       cldDate.SelectedDate,
                       tbNumberOfBikes.Text}

        ' The above puts all user entered data into a single array.

        lblReciept.Visible = False
        errorDate.Visible = False
        errorNumberBicycles.Visible = False

        If arrayInputs(5) >= cldDate.TodaysDate Then
            ' Confirms that Selected Date is not in the past, if it is in
            ' the past the code will request user to pick a valid date.

            If arrayInputs(6) <> "" And IsNumeric(arrayInputs(6)) And Val(arrayInputs(6)) >= 1 And Val(arrayInputs(6)) <= 12 Then
                ' Checks to be sure that the quantity of bikes requested 
                ' isn't blanks, non-numeric, or out of the 1-12 range.

                arrayInputs(6) = Convert.ToInt32(arrayInputs(6)) 'Convert number of bikes to integer
                totalCost = arrayInputs(6) * arrayInputs(4)      'Multiply number of bikes by total hours
                ' Determines the total cost.

                Select Case arrayInputs(3)
                    Case 0
                        totalCost *= 5D   ' Breach Cruiser Cost
                    Case 1
                        totalCost *= 6D   ' Road Cost
                    Case 2
                        totalCost *= 7.5D ' Mountain Cost
                End Select

                lblReciept.Visible = True
                lblReciept.Text = "<hr><h1><u><b>Client Info</u></h1>Name: </b>" & arrayInputs(0) & _
                    "<br><b>Address: </b>" & arrayInputs(1) & "<br><b>Phone Number: </b></b>" & _
                     arrayInputs(2) & "<br><br><b><h1><u>Purchase Receipt</u></h1>Bike Type: </b> " & _
                     bikeTypes(arrayInputs(3)) & "<br><b>Reserved Bikes: </b>" & Val(arrayInputs(6)) & _
                     "<br><b>Reserved Hours: </b>" & Val(arrayInputs(4)) & "<br><b>Reserved Date: </b>" & _
                     arrayInputs(5) & "<br><br><b><h1>Total Cost: <font color=#0404B4>" & _
                     totalCost.ToString("C") & "</font></h1></b>"
                'Presents the receipt to the client

            Else
                ' Notifies the user of an issue with 
                ' their bike quantity input
                errorNumberBicycles.Visible = True

            End If
        Else
            errorDate.Visible = True
            'Displays request for user to enter valid date.

        End If
    End Sub
End Class