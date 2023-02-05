<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0" >
<xsl:output omit-xml-declaration="no" method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/iceresponse" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Sadeed Radio</title>
	<link rel="stylesheet" type="text/css" href="/style.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
</head>
<body>
	<h1 id="header">Sadeed Radio</h1>

	<div id="menu">
		<ul>
			<li><a href="stats.xsl">Admin Home</a></li>
			<li><a href="listmounts.xsl">Mountpoint List</a></li>
			<li><a href="/status.xsl">Public Home</a></li>
		</ul>
	</div>

	<h2>Icecast Server Response</h2>
	<xsl:for-each select="/iceresponse">
		<div class="roundbox">
			<h3>Response</h3>
			<p>Message: <xsl:value-of select="message" /></p>
			<p>Return Code: <xsl:value-of select="return" /></p>
		</div>
	</xsl:for-each>
	<div id="footer">
		Sadeed Radio | Jointly powered by <a href="https://service-ways.com/" target="new" title="Igniter of Machines">Service-Ways</a> and <a href="https://telechirkut.xyz/" target="new" title="TeleChirkut">TeleChirkut</a> | © <a href="https://sadeed.service-ways.com/" title="Abdullah As-Sadeed" target="new">Abdullah As-Sadeed</a>
	</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
