<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/root">
<html>
    <head>
	<title>Name</title>
    </head>
    <body bgcolor="#fff">
	<p>Hello <xsl:value-of select="@nick" /></p>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
