<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="DeadEnd.DeadEnd.UserProfile" %>

<!DOCYPE html>

<html>

<head>

<title> DeadEnd </title>

<link rel="stylesheet" type="text/css" href="Userprofile.css">

</head>

<body class = "text" style = "background-color:  #818286;">
  
<header>
	
    <form runat = "server" class = "headerContentRight">
  
	    	<asp:LinkButton id="user" OnClick="userprofile" runat="server"> </asp:LinkButton>| 		
		 
            <asp:LinkButton id="logOut" OnClick="logout" runat="server"> Log Out</asp:LinkButton>
	
    </form>

		<div class = "headerContentLeft"> DeadEnd </div>
  
</header>
		
	<div class = "nav">
	
		<%--<label id= "catchUp"> Catch Up </label>
		&nbsp; &nbsp; &nbsp; &nbsp;--%>
		<label id= "connect"> <a href="Connect.aspx"> Connect </a></label>
		&nbsp; &nbsp; &nbsp; &nbsp;
		<label id = "explore"> Explore </label>
		&nbsp; &nbsp; &nbsp; &nbsp;
		<label id = "getAdvice"> Get Advice </label>
		&nbsp; &nbsp; &nbsp; &nbsp;
		<label id = "meetUp"> Support Groups </label>
		&nbsp; &nbsp; &nbsp; &nbsp;
		<label id = "storyBoard"> StoryBoard </label>
	
	</div>	
	
<div class = "bodyContentUpperLeft">
	
		<label id = "viewingRequest"> Profile Veiwing Requests: </label> &nbsp;
	
		<label id = "requestNo" style = "color: #A6001F; "> 4 </label> &nbsp; &nbsp; &nbsp; &nbsp;
		
		<label id = "allowedViews"> Allowed Views: </label> &nbsp;
	
		<label id = "allowedNo" style = "color: #A6001F; "> 2 </label> &nbsp; &nbsp; &nbsp; &nbsp;
		
		<label id = "admirers"> Admirers: </label> &nbsp;
	
		<label id = "admirerNo" style = "color: #A6001F; "> 40 </label> &nbsp; &nbsp; &nbsp; &nbsp;
		
		<label id = "admiring"> Admiring: </label> &nbsp;
	
		<label id = "admiringNo" style = "color: #A6001F; "> 104 </label> &nbsp; &nbsp; &nbsp; &nbsp;
		
		
		
	</div>
		
	
	<div class = "bodyContentCenter">
	<label id = "edit" class= "bodyContentUpperRight"> E <br> d <br> i <br> t </label>
	
	
		<label style = "font-size: 35px; color: #A6001F;"> Inner You <hr></label>
		<br>
	
		<label style = "font-weight: bold;"> Condition: </label>
		<asp:Label id = "condition" class = "labelStyling" runat="server"> </asp:Label><br>
	
		<label style = "font-weight: bold;"> Type: </label>
		<asp:Label id = "type" class = "labelStyling" runat="server"> </asp:Label><br>
	
		<label style = "font-weight: bold;"> Symtoms: </label>
		<asp:Label id = "symptoms" class = "labelStyling" runat="server"> </asp:Label><br>

		<label style = "font-weight: bold;"> How you feel: </label>
		<asp:Label id = "howYouFeel" class = "labelStyling" runat="server"></asp:Label><br>
	
	<br>
	
		<label style = "font-weight: bold;"> Condition: </label>
		<asp:Label id = "condition1" class = "labelStyling" runat="server"> </asp:Label><br>
	
		<label style = "font-weight: bold;"> Type: </label>
		<asp:Label id = "type1" class = "labelStyling" runat="server"> </asp:Label><br>
	
		<label style = "font-weight: bold;"> Symtoms: </label>
		<asp:Label id = "symptoms1" class = "labelStyling" runat="server"> </asp:Label><br>

		<label style = "font-weight: bold;"> How you feel: </label>
		<asp:Label id = "howYouFeel1" class = "labelStyling" runat="server"> </asp:Label><br>

	</div>

	<div class = "bodyContentLeft">
		
		<label style = "font-size: 35px; color: #A6001F;"> Outer You</label> <hr>
		<br>

		
<%--		<img id = "userImage" src="defaultpic.png" alt="Mountain View" style="width:220px;height:200px;">
		<br>
		--%>
		<asp:Label id = "name" class = "labelStyling" runat="server"> </asp:Label><br>

		<asp:Label id = "penName" class = "labelStyling" runat="server">  </asp:Label><br>	

		<asp:Label id = "age" class = "labelStyling" runat="server"> </asp:Label><br>

		<asp:Label id = "gender" class = "labelStyling" runat="server"></asp:Label><br>

		<%--<asp:Label id = "dob" class = "labelStyling" runat="server">26/10/1994</asp:Label><br>
	--%>
		<asp:Label id = "bio" class = "labelStyling" runat="server"></asp:Label><br>
		
		
	</div>
	

<footer>

All rights belong to PurpleSkeletons.<br>
© MZ 

</footer>
	
</body>

</html>