<%@ page contentType="text/html"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.sqlite.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>SQLite Demo</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Item No.</th>
				<th>Name</th>
			</tr>
		</thead>
		<tbody>
			<%
				Class.forName("org.sqlite.JDBC");
				Connection conn = DriverManager.getConnection("jdbc:sqlite:D:\\databases\\music.db");
				Statement stat = conn.createStatement();

				ResultSet rs = stat.executeQuery("SELECT * from artists;");

				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>" + rs.getString("_id") + "</td>");
					out.println("<td>" + rs.getString("name") + "</td>");
					out.println("</tr>");
				}

				rs.close();
				conn.close();
			%>
		</tbody>
	</table>
</body>
</html>