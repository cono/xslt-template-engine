<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/root">
<html>
    <head>
	<title>Third Party</title>
    </head>
    <body bgcolor="#fff">
	<table border="1" cellpadding="1" cellspacing="1">
	    <th>Event</th><th>Performer</th><th>Where</th><th>Date</th>
	    <xsl:for-each select="results">
		<tr>
		    <td>
			<xsl:value-of select="@event" />
		    </td>
		    <td>
			<xsl:value-of select="@artist_name" />
		    </td>
		    <td>
			<xsl:value-of select="@venue" />
		    </td>
		    <td>
			<xsl:value-of select="@date" />
		    </td>
		</tr>
	    </xsl:for-each>
	</table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
