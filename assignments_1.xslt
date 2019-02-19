<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<link rel="stylesheet" type = "text/CSS" href="style.css"/>
</head>
<body>
 <div class = "personal">

 <h1>Personal Details</h1>
 





<xsl:for-each select = "personal_details/student_details/students">


<xsl:sort select = "surname"/>

<img src ="{student_image}" align = "left" style="width:100px;height:160px;"/> <br    />

<div class = "students">

<strong>Student_id:</strong><xsl:value-of select = "student_id"/><br   />
<strong>Title:</strong><xsl:value-of select = "title"/><br        />
<strong>Surname:</strong><xsl:value-of select = "surname"/><br    />
<strong>Preferred Given Names:</strong><xsl:value-of select = "preferred_name"/><br />
<strong>Given Name:</strong><xsl:value-of select = "given_name"/><br   />
<strong>Date of Birth:</strong><xsl:value-of select = "date-of-birth"/><br/>
<strong>Email:</strong><xsl:value-of select = "email"/><br/><br />

<xsl:for-each select = "notes_details/notes">

<strong>Notes:</strong><xsl:value-of select = "note"/><br />

</xsl:for-each>
</div>
<br/>
<br/>
<br/>



<div class = "course_attempts">

 <table style="margin-top:-190px; margin-left:1000px;" >
  <tr>
    <th>Course Attempts</th>
    
  </tr>
  <xsl:for-each select = "course_attempts/course_details">
  
  <td><a href="{link}" target = "_new"> <xsl:value-of select= "course/@code"/></a> - <xsl:value-of select = "course/@title"/>
  <br  />


  </td>
  </xsl:for-each>
  </table>
  </div>
 <br    />
  <br    />

 <br    />

 <br    />




 <div class = "addresses">
 <h2>Address</h2>
 <h3>Address Details</h3>
 <h3>Correspondence address</h3>


 <div class = "correspondence_address">
 <xsl:for-each select = "addresses/address_details/correspondence_address">
 <strong>Start Date:</strong><xsl:value-of select = "start_date"/>  <br    />
 <strong>Address Line 1:</strong><xsl:value-of select = "address_line1"/>  <br    />
 <strong>Address Line 2:</strong><xsl:value-of select = "address_line2"/>  <br    />
 <strong>Address Line 3:</strong><xsl:value-of select = "address_line3"/>  <br    />
 <strong>Suburb:</strong><xsl:value-of select = "suburb"/>  <br   />
 <strong>Post Code:</strong><xsl:value-of select = "postcode"/> <br   />
 <strong>Home Phone No:</strong><xsl:value-of select = "home_ph"/><br   />
 <strong>Work Phone No:</strong><xsl:value-of select = "work_ph"/><br   />
 <strong>Mobile Phone No::</strong><xsl:value-of select = "mobile_no"/><br   />
 <strong>Fax no:</strong><xsl:value-of select = "fax_no"/><br   />
 <br   />
 <br   />
 </xsl:for-each>
 <br   />
 </div>
 <br   />
 <br   />

<h4>Home address</h4>
<div class = "home_address">
 <xsl:for-each select = "addresses/address_details/home_address">
 <strong>Start Date:</strong><xsl:value-of select = "startDate"/>  <br    />
 <strong>Address Line 1:</strong><xsl:value-of select = "address_line_1"/>  <br    />
 <strong>Address Line 2:</strong><xsl:value-of select = "address_line_2"/>  <br    />
 <strong>Address Line 3:</strong><xsl:value-of select = "address_line_3"/>  <br    />
 <strong>Suburb:</strong><xsl:value-of select = "suburb"/>  <br   />
 <strong>Post Code:</strong><xsl:value-of select = "post_code"/> <br   />
 <strong>Home Phone No:</strong><xsl:value-of select = "home_ph"/><br   />
 <strong>Work Phone No:</strong><xsl:value-of select = "work_ph"/><br   />
 <strong>Mobile Phone No::</strong><xsl:value-of select = "mobile_no"/><br   />
 <strong>Fax no:</strong><xsl:value-of select = "fax_no"/><br   />
 <br   />
 <br   />
 </xsl:for-each>
 <br   />
 </div>
 </div>


<br    />
<br    />


<i><strong>Number Of Notes :<xsl:value-of select = "count(notes_details/notes/note)"/></strong></i><br   />
<i><strong>Number Of Course :<xsl:value-of select = "count(course_attempts/course_details/course/@code)"/></strong></i><br   />

<br   />
<br   />
<br   />

</xsl:for-each>


<i><b>Total Number of Students :<xsl:value-of select = "count(personal_details/student_details/students)"/></b></i>
<br     />


</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>


