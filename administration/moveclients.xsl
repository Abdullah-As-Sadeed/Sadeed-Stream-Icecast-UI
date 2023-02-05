<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0" >
<xsl:output omit-xml-declaration="no" method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/icestats" >
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

	<xsl:variable name = "currentmount" ><xsl:value-of select="current_source" /></xsl:variable>
	<h2>Moving listeners from <xsl:value-of select="current_source" /></h2>
	<div class="roundbox">
		<h3>Move to which mountpoint?</h3>
		<xsl:for-each select="source">
			<p>
				Move from <code><xsl:copy-of select="$currentmount" /></code> to <code><xsl:value-of select="@mount" /></code><br />
				<xsl:value-of select="listeners" /> listeners<br />
				<a href="moveclients.xsl?mount={$currentmount}&amp;destination={@mount}">Move clients</a>
			</p>
		</xsl:for-each>
	</div>
	<div id="footer">
		Sadeed Radio | Jointly powered by <a href="https://service-ways.com/" target="new" title="Igniter of Machines">Service-Ways</a> and <a href="https://telechirkut.xyz/" target="new" title="TeleChirkut">TeleChirkut</a> | © <a href="https://sadeed.service-ways.com/" title="Abdullah As-Sadeed" target="new">Abdullah As-Sadeed</a>
	</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
