<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

	<xsl:template match="/">

	<table border="1">
		<th>nimi</th>
		<th>laps</th>
		<th>sünnipäev</th>
		<th>vanus</th>

		<xsl:for-each select="//inimene">
			<tr>
				<td>
					<xsl:value-of select="../../nimi"/>

				</td>
				<td>
					<xsl:value-of select="nimi"/>

				</td>
				<td>
					<xsl:value-of select="@saasta"/>
				</td>
				<td>
					<xsl:value-of select="2025-@saasta"/>
				</td>
			</tr>
		</xsl:for-each>

	</table>
    </xsl:template>
</xsl:stylesheet>
