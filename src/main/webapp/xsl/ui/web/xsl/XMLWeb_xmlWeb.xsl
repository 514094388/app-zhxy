<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:c="http://a0002-02469:8000/JAVA WEB/WEB-INF/ui/web/xsl/XMLWeb_xmlWeb.jsp">
	<xsl:template match="/">
		<html>
			<head></head>
			<body>
				<table border="1">
				    <tr bgcolor="#9acd32">
				      <th align="left">公司</th>
				      <th align="left">合同编号</th>
				      <th align="left">工号</th>
				    </tr>
				    <xsl:for-each select="c:Agreement">
				    <tr>
				      <td><xsl:value-of select="c:Company"/></td>
				      <td><xsl:value-of select="c:AgreementNum"/></td>
				      <td><xsl:value-of select="c:ElevatorNum"/></td>
				    </tr>
				    </xsl:for-each>
			    </table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>