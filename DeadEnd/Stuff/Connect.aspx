<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connect.aspx.cs" Inherits="DeadEnd.DeadEnd.Connect" %>


<!DOCYPE html>

<html>

<head>
<title> DeadEnd </title>
<link rel="stylesheet" type="text/css" href="Connect.css">
		
</head>

<body class = "text" style = "background-color:  #818286;">

<header>
    <form runat ="server" class = "headerContentRight">
  
	    	<asp:LinkButton id="user" OnClick="userprofile" runat="server"> </asp:LinkButton>| 		
		 
            <asp:LinkButton id="logOut" OnClick="logout" runat="server"> Log Out</asp:LinkButton>
    </form>
		<div class = "headerContentLeft">
      <%-- <img id = "logo" src="logo.png" alt="Mountain View" style="width:80px;height:80px; margin: 0px -10px;">--%>
	
            	DeadEnd 

		</div>
   </header>
	
    <div class = "nav">
	
		<%--<label id= "catchUp"> Catch Up </label>
		&nbsp; &nbsp; &nbsp; &nbsp;--%>
		<label id= "connect"> <a href = "Connect.aspx"> Connect </a></label>
		&nbsp; &nbsp; &nbsp; &nbsp;
       <label id = "explore"> Explore </label>
		&nbsp; &nbsp; &nbsp; &nbsp;
		<label id = "getAdvice"> Get Advice </label>
		&nbsp; &nbsp; &nbsp; &nbsp;
		<label id = "meetUp"> Support Groups </label>
		&nbsp; &nbsp; &nbsp; &nbsp;
		<label id = "storyBoard"> StoryBoard </label>
		</div>
		
		<div>
		
		<img id = "grid" src="grid.png" alt="Mountain View" style="width:101.3%;height:460.2px; margin: 0px -10px;">
		
		</div>
		
		<script>

		for (i = 0; i < 150; i++){
		
		var img = document.createElement("img");
		img.src = 'user.png';
		img.height = 38;
		img.width = 38;
		img.alt = 'User Icon';
		img.setAttribute("id", "user" + i);
		img.onclick = 'getId';
		document.body.appendChild(img);
		}
		for (i = 0; i < 150; i++) {

		var rand = Math.random() * 700;
		document.getElementById("user" + i).style.marginLeft = rand/0.945;
		rand = 1.5 * Math.random() * 1000;
		while (rand > 475 || rand < 75){
		if ( rand > 475)
		{
		rand /= 1.5;
		if (rand < 0)
		rand *= -1;	
		}
		if ( rand < 75)
		rand *= 1.5;
		}
		document.getElementById("user" + i).style.marginTop = -rand;
		}
		
var x = document.createElement("LABEL");
    var t = document.createTextNode("Male");
    x.setAttribute("for", "male");
    x.appendChild(t);
    document.getElementById("user 1").insertBefore(x, document.getElementById("male"));

    function getId(ClickedId)
    {
        return ClickedId;
    }
		</script>

<footer>
<br>
All rights belong to PurpleSkeletons.<br>
© MZ 

</footer>
</body>

</html>