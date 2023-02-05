<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output omit-xml-declaration="no" method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
	<xsl:template match="/icestats">
		<!-- By Abdullah As-Sadeed -->
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta charset="UTF-8" />
				<meta name="author" content="Abdullah As-Sadeed" />
				<link rel="manifest" href="Sadeed_Stream.webmanifest" />
				<meta name="theme-color" content="rgb(66, 66, 66)" />
				<link rel="icon" type="image/x-icon" href="favicon.ico" />
				<link rel="apple-touch-icon" href="Sadeed_Stream_192.png" />
				<title>Sadeed Stream</title>
				<meta name="description" content="Sadeed Stream" />
				<meta name="keywords" content="sadeed, stream, radio, video, audio, streaming" />
				<link rel="stylesheet" type="text/css" href="Sadeed_Stream.css" />
				<meta
					name="viewport"
					content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
				 />
			</head>
			<body lang="en-US">
				<h1 id="header">Sadeed Stream</h1>
				<div id="menu">
					<ul>
						<li>
							<a href="status.xsl">Home</a>
						</li>
					</ul>
				</div>

				<h2>Authorization Page</h2>
				<xsl:for-each select="source">
					<xsl:choose>
						<xsl:when test="listeners">
							<xsl:if test="authenticator">
								<div class="roundbox">
									<h3 class="mount">
										Mount Point
										<xsl:value-of select="@mount" />
										<xsl:if test="server_name">
											<small>
												<xsl:value-of select="server_name" />
											</small>
										</xsl:if>
									</h3>
									<form class="alignedform" method="get" action="/admin/buildm3u">
										<p>
											<label for="name">Username: </label>
											<input id="name" name="username" type="text" />
										</p>
										<p>
											<label for="password">Password: </label>
											<input id="password" name="password" type="password" />
										</p>
										<input type="hidden" name="mount" value="{@mount}" />
										<input type="submit" value="Login" />
									</form>
								</div>
							</xsl:if>
						</xsl:when>
						<xsl:otherwise>
							<h3>
								<xsl:value-of select="@mount" />
								- Not Connected
							</h3>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
				<div id="footer">
					Sadeed Stream | Jointly powered by
					<a href="https://service-ways.com/" target="new" title="Igniter of Machines">Service-Ways</a>
					and
					<a href="https://telechirkut.xyz/" target="new" title="TeleChirkut">TeleChirkut</a>
					| ©
					<a href="https://sadeed.service-ways.com/" title="Abdullah As-Sadeed" target="new">Abdullah As-Sadeed</a>
				</div>
				<script src="Sadeed_Stream.js"></script>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
