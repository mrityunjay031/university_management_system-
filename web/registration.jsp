<%-- 
    Document   : mmmut
    Created on : 3 Aug, 2021, 3:44:35 PM
    Author     : Mrityunjay Upadhyay
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MMMUT</title>
        <script src="js/slider.js" type="text/javascript"></script>
         <script src="js/scrollup.js"></script>
        <link rel="stylesheet" href="css/scrollup.css">
    </head>
    <body onload="moveSlider()"background="images/karam1.jpg" style="background-size:cover;background-attachment: fixed;">
        
        <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
        <div id="outer">
            <div id="header">
                <div id="logo">
                    <img src="images/logo1.jpg"> 
                   
                </div>
                <div id="banner">
                    <span id="kamlesh">   MMMUT   </span>
                </div>
            </div>
             <div id="menu">
                 <ul>
                     <li><a href="index.jsp">Home</a></li>
                     <li><a href="aboutus.jsp">About Us</a></li>
                     <li><a href="registration.jsp">Registration</a></li>
                     <li><a href="login.jsp">Login</a></li>
                     <li><a href="contactus.jsp">Contact Us</a></li>
                 </ul>
             </div>
             <div id="slider">
                 <img id="slide" width="1000px" height="250px"/>
             </div>
            <div id="parent">
                <div id="left">
                    
                     <div id="notification">
                        <center> <img src="images/bell.png" height="100px" width="100px"/></center>
                    </div>
                    <div id="news"> 
                    <marquee direction="up" height="500px" onmouseover="stop()" onmouseout="start()" scrollamount="5">
                    
                    <%
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.selectQuery("select * from notification");
                        while(rs.next())
                        {
                           
                        %>
                        
                        <span style="text-align: center;">
                            <p style="color:white;font-size: 20px;font-family: consolas;"><%=rs.getString("notificationtext")%></p>
                            <p><%=rs.getString("posteddate")%></p>
                        </span>
                         <% 
                        }
                        %>
                </marquee>
                    </div>
                    
                    
                </div>
                <div id="main">
                    <img src="images/register.png" height=" 100px"width="100px"style="margin:5px auto;cursor:not-allowed;"/>
                     <form action="generalcode/regcode.jsp" method="post">
                        <h2 style="text-align: center; margin-top: -30px;margin-bottom: -5px;font-size: 40px;font-family: Impact, sans-serif;color: white;font-stretch: normal;text-shadow: 2px 2px 5px red;">
                            Student Registration form 
                        </h2>
                        <table style="margin:0 auto;width:70%;font-family:consolas;/*box-shadow: 5px 5px 5px black;*/ "cellspacing="10px">
                            <tr>
                                 
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Enter Student Name</td>
                                <td>
                                    <input type="text" name="student_name" required style="background-color:lightseagreen;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;color: white;"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Father Name</td>
                                <td>
                                    <input type="text" name="father_name" required style="background-color:lightseagreen;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;color: white;"/> </td>
                            </tr>
                            
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Branch Name</td>
                                <td>
                                     <input type="text" name="branch" required style="background-color:lightseagreen;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;color: white;"/> </td>
                           </td>
                            </tr>
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Gender</td>
                                <td>
                                    <input type="text" name="gender" required style="background-color:lightseagreen;color: white;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Contact No.</td>
                                <td>
                                    <input type="number" name="contactno" required style="background-color:lightseagreen;color: white;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;"/> 
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">E-mail Address</td>
                                <td>
                                    <input type="email" name="emailaddress" required style="background-color:lightseagreen;color: white;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;"/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Enrollment Id</td>
                                <td>
                                    <input type="text" name="enrollmentid" required style="background-color:lightseagreen;color: white;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Address</td>
                                <td>
                                    <textarea name="address" required style="resize: none;color: white;background-color:lightseagreen;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:98.4%;font-family: consolas;font-size:20px;"></textarea>  </td>
                            </tr>
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Password</td>
                                <td>
                                    <input type="password" name="password" required style="background-color:lightseagreen;color: white;outline:none;border: none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;">
                                </td>
                            </tr>
                             
                            <tr>
                                 
                                <td align="center" colspan="2">
                                    <input type="submit" value="Submit" style="height: 40px;width:40%;border-radius: 30px;outline: none;box-shadow:5px 2px 5px 5px black;font-family: consolas;font-size: 30px; cursor: pointer;"/>
                                </td>
                            </tr>
                        </table>
                    </form>                    
                </div>                
            </div>
            <div id="footer">
 
		<div id="footer-left">
                 <div id="footerla">
		<h3 align="center">The University</h3><hr/>
                <ul align="left" style="font-family: consolas;"> 
                <li>Thoughts & Leadership</li>
	
		<li>Training Program</li>
	
		<li>Activities</li>
	
		<li>About</li>
	
		<li>FAQ</li>
	
                <li>Contact Me<br/>Mo.No.-8112740805</li>
                </ul>
                 </div>
		</div>
 
		<div id="footer-center">
                    <div id="footerca">
                        <h3 align="center" >Quick Links</h3><hr/>
                        <ul style="margin-top: 15; font-family: consolas;" type="square">
                            <li style="margin-top:8px;"><a href="index.jsp" style="color: white;">Home</a></li>
                            <li style="margin-top:8px;"><a href="aboutus.jsp"  style="color: white;">About Us</a></li>
                            <li style="margin-top:8px;"><a href="login.jsp"  style="color: white;">Quick Login</a></li>
                            <li style="margin-top:8px;"><a href="registration.jsp"  style="color: white;">Registration</a></li>
                            <li style="margin-top:8px;"><a href="contactus.jsp"  style="color: white;">Give Feedback</a></li>
                            
                        </ul>
                    </div>
                </div>
		<div id="footer-right">
                    <div id="footerra"> 
		 
                <h3 align="center" > Address/Location</h3>
                    <hr/>
                    <ul type="none" style="margin-top: 15px; font-family: consolas;"> 
                        <li>Vill& Post-Saheri</li>
                    <li>Distt.& Tashil-Ghazipur</li>
                    <li>Pin-code: 233302</li>
                    <li>STATE-<br/>
                        Northern-Uttarpradesh</li>
                    <li style="text-align: center;"><a style="font-size: 25px;color:yellow;" href="https://www.google.com/maps/place/Madan+Mohan+Malaviya+University+Of+Technology/@26.7314343,83.4309389,17z/data=!3m1!4b1!4m5!3m4!1s0x39915ca3e2aa136b:0xc039bdf0211338a9!8m2!3d26.7314295!4d83.4331276" target="blank">View on Map</a></li>
                    </ul>
                    
                    </div>
		</div>
 
                <div id="copyright">
                 
                 &copy; Copyright to mmmut::Developed & Managed by Mrityunjay...
                 
             </div>
                
		</div>            
        </div>
    </body>
</html>

