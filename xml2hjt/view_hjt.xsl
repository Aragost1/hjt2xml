<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="no"/>
<!--
  <xsl:strip-space elements="n"/>
-->

<xsl:template match="/tree">
<html>
<head>
<META content="text/html; charset=windows-1251" http-equiv="Content-Type"/>
<SCRIPT SRC="view_hjt.js"></SCRIPT>
<META content="Aragost.TreeGraph.webtg.xml2hjt" name="GENERATOR"/>
</head>
<body>
&lt;Treepad version 2.7&gt;<br/>
dt=Text<br/>
&lt;node&gt;<br/>
1root<br/>
0<br/>
&lt;end node&gt; 5P9i0s8y19Z<br/>
<xsl:apply-templates>
<xsl:with-param name='depth' select='1'/>
</xsl:apply-templates>
</body>
</html>
</xsl:template>

<xsl:template match="n">
<xsl:param name="depth"/>
dt=Text<br/>
&lt;node&gt;<br/>
<xsl:value-of select="@b"/><br/>
<xsl:value-of select="$depth"/><br/>
<xsl:choose>
  	<xsl:when test="@h">
<pre><SCRIPT>document.write(ReadFile('<xsl:value-of select="@h"/>'));</SCRIPT></pre>
	</xsl:when>
	<xsl:otherwise>
	</xsl:otherwise>
</xsl:choose> 
&lt;end node&gt; 5P9i0s8y19Z<br/>
<xsl:apply-templates>
<xsl:with-param name='depth' select='$depth+1'/>
</xsl:apply-templates>
</xsl:template>

</xsl:stylesheet>