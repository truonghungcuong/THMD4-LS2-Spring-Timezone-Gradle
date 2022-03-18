<%--
  Created by IntelliJ IDEA.
  User: Laptop
  Date: 3/18/2022
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>The World Clock</title>
  </head>
  <body>
  <h2>Current Local Times Around the World</h2>
  <span>Current time in ${city}: <strong>${date}</strong></span>
  <form action="locale" action="world-clock" method="post">
    <select name="city" onchange="document.getElementById('locale').submit()">
      <option value="Asia/Ho_Chi_Minh" selected>Select a city</option>
      <option value="Asia/Ho_Chi_Minh">Ho Chi Minh</option>
      <option value="Singapore">Singapore</option>
      <option value="Asia/Hong_Kong">Hong Kong</option>
      <option value="Asia/Tokyo">Tokyo</option>
      <option value="Asia/Seoul">Seoul</option>
      <option value="Europe/London">London</option>
      <option value="Europe/Madrid">Madrid</option>
      <option value="America/New_York">New York</option>
      <option value="Australia/Sydney">Sydney</option>
      <option value="Argentina/Buenos_Aires">Buenos Aires</option>
    </select>
  </form>
  </body>
</html>
