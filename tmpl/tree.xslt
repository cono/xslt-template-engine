<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="example">
    <li>
	<xsl:variable name="id" select="@id" />
	<label onclick="fold(this)"><xsl:value-of select="@name" /></label>
	<xsl:if test="../example[@parent=$id]">
	    <ul><xsl:apply-templates select="../example[@parent=$id]" /></ul>
	</xsl:if>
    </li>
</xsl:template>

<xsl:template match="/root">
<html>
    <head>
	<title>Tree</title>
	<link rel="stylesheet" type="text/css" href="/c/index.css" />
	<script type="text/javascript" src="/j/index.js" />
    </head>
    <body bgcolor="#fff">
	<div class="treeroot">
	    <ul>
		<xsl:apply-templates select="example[@parent=0]" />
	    </ul>
	</div>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
