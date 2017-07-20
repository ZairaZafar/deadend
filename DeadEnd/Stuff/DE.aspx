<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DE.aspx.cs" Inherits="DeadEnd.Stuff.DE" %>

<!DOCYPE html>

<html>

<head>
<title> DeadEnd </title>
<link rel="stylesheet" type="text/css" href="DeadEnd.css">
</head>

 <body class = "text">

<header>
		<div class = "headerContentRight"> 
		Home |  
		 About </div>
		 <div class = "headerContentLeft">
		 DeadEnd
		 </div>
  
</header>		
		<div class = "introText">
		
		We Welcome you.<br>
		& <br>
		your DEMONS.
		
		</div>

	<ul class="tab">		
		<li><a href="javascript:void(0)" class="tablinks" onclick="openOption(event, 'signUpOpt')" id = "defaultOpen">Sign Up</a></li>
		
		<li><a href="javascript:void(0)" class="tablinks" onclick="openOption(event, 'signInOpt')">Sign In</a></li>
	</ul>
		
     <form id="signUpForm" runat="server" method ="post">

		<div id= "signUpOpt" class= "formStyle">

		First Name: <br><asp:TextBox ID="fname" runat="server"> </asp:TextBox><br><br>
		Last Name: <br><asp:TextBox ID="lname" runat="server"> </asp:TextBox><br><br>
		Pen Name: <asp:TextBox ID="penname1" runat="server"> </asp:TextBox> <br><br>
		Gender: <asp:TextBox ID="gender" runat="server"> </asp:TextBox><br><br>
		Email:<asp:TextBox ID="email" runat="server"> </asp:TextBox><br><br>
		Code:<asp:TextBox ID="password1" runat="server"> </asp:TextBox>
		
		 <asp:Button ID="signUp" runat="server" class = "button" Text="Sign Up" OnClick="signup" />
        	</div>
     
		<div id = "signInOpt" class = "formStyle">
		
		Pen Name:   <asp:TextBox  ID="penname2" runat="server"> </asp:TextBox> <br><br>
		Code:<asp:TextBox ID="password2" runat="server"> </asp:TextBox>
		
		 <asp:Button ID="signIn" runat="server" class = "button" Text="Sign In" OnClick ="signin"/>

		<br>
		</div>
		</form>
		 
     <script>
  
  function openOption(evt, option) {
    // Declare all variables
    var i, tabcontent, tablinks;
	
	// Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("formStyle");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the link that opened the tab
    document.getElementById(option).style.display = "block";
    evt.currentTarget.className += " active";
	
}

  </script>
  
  <script>

  // Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();

</script>

     <footer>

All rights belong to PurpleSkeletons.<br>
© MZ 

</footer>

 </body>

  </html>	