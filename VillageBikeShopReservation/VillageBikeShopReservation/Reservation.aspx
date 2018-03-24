<%@ Page Title="Reservations" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Reservation.aspx.vb" Inherits="VillageBikeShopReservation.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style5
        {
            height: 50px;
            width: 232px;
        }
        .style6
        {
            width: 284px;
            }
        .style10
        {
            height: 220px;
        width: 232px;
    }
        .style13
        {
            height: 57px;
        width: 232px;
    }
        .style16
        {
            height: 42px;
        width: 232px;
    }
        .style19
        {
            height: 30px;
        width: 232px;
    }
        .style21
    {
            width: 85px;
            height: 50px;
        }
    .style23
    {
        width: 85px;
        height: 57px;
    }
    .style27
    {
            width: 232px;
            height: 400px;
        }
    .style28
    {
        width: 155px;
        height: 23px;
    }
    .style29
    {
        width: 155px;
        height: 22px;
    }
        .style43
        {
            width: 85px;
            height: 42px;
        }
        .style44
        {
            width: 85px;
            height: 220px;
        }
        .style45
        {
            width: 85px;
            height: 400px;
        }
        .style46
        {
            width: 85px;
            height: 30px;
        }
        .style47
        {
            width: 155px;
        }
        .style48
        {
            width: 155px;
            height: 42px;
        }
        .style49
        {
            width: 155px;
            height: 220px;
        }
        .style50
        {
            width: 155px;
            height: 30px;
        }
        .style53
        {
            width: 155px;
            height: 57px;
        }
        .style54
        {
            width: 155px;
            height: 400px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Bike Reservations</h2>
    <table style="width: 898px; height: 1193px; margin-right: 399px;">
        <tr>
            <td align="right" class="style21">
                First Name:</td>
            <td class="style5">
                <asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox>
            </td>
            <td class="style47">
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                    ControlToValidate="tbFirstName" ErrorMessage="* Missing First Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style6" rowspan="11" valign="top">
                <asp:Image ID="Image1" runat="server" Height="197px" ImageAlign="Top" 
                    ImageUrl="http://thebikevault.com.au/wp-content/uploads/2013/05/13-Cannondale-Trigger-29er-mountain-bikes.jpg" 
                    Width="343px" />
                <br />
                <br />
                <br />
                <asp:Image ID="Image3" runat="server" Height="240px" 
                    ImageUrl="http://www.goodroadbikes.net/wp-content/uploads/2013/02/trekroadbike.jpg" 
                    Width="346px" />
                <asp:Image ID="Image2" runat="server" Height="242px" ImageAlign="Left" 
                    ImageUrl="http://www.policebikestore.com/Merchant2/graphics/00000003/eldorado-beach-cruiser.jpg" 
                    Width="342px" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style21">
                Last Name:</td>
            <td class="style5">
                <asp:TextBox ID="tbLastName" runat="server"></asp:TextBox>
            </td>
            <td class="style47">
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                    ControlToValidate="tbLastName" ErrorMessage="* Missing Last Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style43">
                Address:</td>
            <td class="style16">
                <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
            </td>
            <td class="style48">
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" 
                    ControlToValidate="tbAddress" ErrorMessage="* Address Missing or Wrong Format" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style23" rowspan="2">
                Phone Number:</td>
            <td class="style13" rowspan="2">
                <asp:TextBox ID="tbPhone" runat="server"></asp:TextBox>
            </td>
            <td class="style28">
                <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                    ControlToValidate="tbPhone" 
                    ErrorMessage="* Incorrect Phone Format" ForeColor="Red" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style29">
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                    ControlToValidate="tbPhone" ErrorMessage="* Phone Number Missing" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style21">
                Type Of Bike:</td>
            <td class="style5">
                <asp:RadioButtonList ID="rblTypeOfBike" runat="server" style="margin-left: 0px">
                    <asp:ListItem>Beach Cruiser(s) - $5.00 per Hour</asp:ListItem>
                    <asp:ListItem Selected="True">Road Bike(s) - $6.00 per Hour</asp:ListItem>
                    <asp:ListItem>Mountain Bike(s) - $7.50 per Hour</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style47">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style21">
                Number Of Hours:&nbsp;
            </td>
            <td class="style5">
                <asp:DropDownList ID="ddlHours" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style47">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style44">
                Date:</td>
            <td class="style10">
                <asp:Calendar ID="cldDate" runat="server" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="200px" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
            <td class="style49">
                <asp:Label ID="errorDate" runat="server" ForeColor="Red" 
                    Text="*Please Select A Valid Date" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style23" valign="middle">
                Number Of 
                <br />
                Bicycles(1-12):</td>
            <td class="style13">
                <asp:TextBox ID="tbNumberOfBikes" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td class="style53">
                <asp:Label ID="errorNumberBicycles" runat="server" ForeColor="Red" 
                    Text="* Number Of Bicycles Must Be From 1-12" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style46">
                </td>
            <td align="center" class="style19">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
            </td>
            <td class="style50">
                </td>
        </tr>
        <tr>
            <td class="style45">
                </td>
            <td align="center" class="style27">
                <br />
                <asp:Label ID="lblReciept" runat="server" Visible="False"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="style54">
                </td>
        </tr>
    </table>
</asp:Content>
