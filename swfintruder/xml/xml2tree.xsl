<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
    <xsl:output method="html"/>
	<xsl:strip-space elements="*"/>

	<xsl:template name="recursion">
		<xsl:for-each select="node()">
		<li>
			<xsl:choose>
				<xsl:when test="name()=''">
					<em><xsl:value-of select="." /></em>
				</xsl:when>
				<xsl:otherwise>
				<xsl:value-of select="name()" />
					<ul>
						<xsl:for-each select="@*">
							<li>
							<xsl:value-of select="name()" /> = <xsl:value-of select="." />
							</li>
						</xsl:for-each>
						<xsl:call-template name="recursion" />
					</ul>
				</xsl:otherwise>
			</xsl:choose>
		</li>
		</xsl:for-each>
	</xsl:template>
	
    <xsl:template match = "/*"> <!-- see http://www.dpawson.co.uk/xsl/sect2/root.html for explanation -->
	<html>
	<head>
		<script type="text/javascript">
		<![CDATA[
		var featureList = ["tree"];
		function init() {
			var t = new OAT.Tree();
			t.assign("tree",1);
		}
		]]>
		</script>

		<script type="text/javascript" src="/DAV/JS/oat/loader.js"></script>
		<style type="text/css">
			ul {
				margin: 0px;
				padding: 0px;
			}
			ul#tree ul {
				padding-left: 1em;
				_padding-left: 0em;
				_margin-left: 1em;
			}
		</style>
		<title>XML tree</title>
		<link rel="stylesheet" href="/DAV/JS/oat/demo/style.css" type="text/css" />
	</head>
	<body onload="init()" >

	<ul id="tree">
		<li>
			<xsl:value-of select="name()" />
			<ul>
				<xsl:call-template name="recursion" />
			</ul>
		</li>
	</ul>

	</body>
	</html>
	
	</xsl:template>
</xsl:stylesheet>
