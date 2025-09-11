<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">

		<h2>Sugupuu</h2>
		<table border="1" cellpadding="5" cellspacing="0" style="border-collapse: collapse;">
			<tr bgcolor="#ccc">
				<th>Vanema nimi</th>
				<th>Vanema sünniaasta</th>
				<th>Vanema elukoht</th>
				<th>Laste nimi</th>
				<th>Laste sünniaast</th>
				<th>Laste elukoht</th>
				<th>Laste arv</th>
			</tr>

			<xsl:apply-templates select="//inimene">
				<xsl:sort select="@synniaasta" data-type="number" order="ascending"/>
			</xsl:apply-templates>
		</table>


	</xsl:template>
	<xsl:template match="inimene">
		<xsl:variable name="lasteArv" select="count(lapsed/inimene)"/>



		<tr>
			<xsl:if test="$lasteArv &gt;= 2">
				<xsl:attribute name="style">background-color: yellow;</xsl:attribute>
			</xsl:if>
			<td>
				<xsl:choose>
					<xsl:when test="contains(nimi, 'e') or contains(nimi, 'E')">
						<span style="color: red;">
							<xsl:value-of select="nimi"/>
						</span>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="nimi"/>
					</xsl:otherwise>
					
				</xsl:choose>
				
			</td>
			<td>
				<xsl:value-of select="@synniaasta"/>
			</td>
			<td>
				
				<xsl:value-of select="@elukoht"/>
						
			</td>
			<td>
				<xsl:for-each select="lapsed/inimene">
					<xsl:value-of select="nimi"/>
					<xsl:if test="position() != last()">, </xsl:if>
				</xsl:for-each>
			</td>
			<td>
				<xsl:for-each select="lapsed/inimene">
					<xsl:value-of select="@synniaasta"/>
					<xsl:if test="position() != last()">, </xsl:if>
				</xsl:for-each>
			</td>
			<td>
				<xsl:for-each select="lapsed/inimene">
					<xsl:value-of select="@elukoht"/>
					<xsl:if test="position() != last()">, </xsl:if>
				</xsl:for-each>
			</td>
			<td>
				<xsl:value-of select="$lasteArv"/>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>