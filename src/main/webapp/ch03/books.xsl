<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
		<xml:output method = "html" indent="yes" encoding="utf-8"/>
		<xsl:template match="books">
		<ul>
				<xsl:for-each select="book">
				<li><b><xsl:value-of select="title"/></b>
				(<i><xsl:value-of select="author"/></i>)
				</li>
				</xsl:for-each>
		</ul>
		</xsl:template>
</xsl:stylesheet>