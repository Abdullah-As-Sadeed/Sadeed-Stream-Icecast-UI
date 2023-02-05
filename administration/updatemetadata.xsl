<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0">
<xsl:output omit-xml-declaration="no" method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/icestats">
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

	<h2>Update Metadata</h2>
	<xsl:for-each select="source">
		<div class="roundbox">
			<h3>Mountpoint <xsl:value-of select="@mount" /> 
				<xsl:if test="server_name">
					<small><xsl:value-of select="server_name" /></small>
				</xsl:if>
			</h3>
			<form class="alignedform" method="get" action="/admin/metadata.xsl">
				<p>
					<label for="song">Metadata:</label>
					<input type="text" id="song" name="song"/>
				</p>
				<p>
					<input type="submit" value="Update"/>
					<input type="hidden" name="mount" value="{@mount}"/>
					<input type="hidden" name="mode" value="updinfo"/>
					<input type="hidden" name="charset" value="UTF-8"/>
				</p>
			</form>
		</div>
	</xsl:for-each>
	<div id="footer">
		Sadeed Radio | Jointly powered by <a href="https://service-ways.com/" target="new" title="Igniter of Machines">Service-Ways</a> and <a href="https://telechirkut.xyz/" target="new" title="TeleChirkut">TeleChirkut</a> | © <a href="https://sadeed.service-ways.com/" title="Abdullah As-Sadeed" target="new">Abdullah As-Sadeed</a>
	</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
