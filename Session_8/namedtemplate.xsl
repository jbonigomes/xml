<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" omit-xml-declaration="yes" indent="yes" doctype-system="about:legacy-compat" />
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Named templates example</title>
                <meta charset="utf-8" />
                <link href="style.css" rel="stylesheet" type="text/css" />
            </head>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>

    <xsl:template name="admonition">
        <xsl:param name="type">warning</xsl:param>
        <xsl:element name="div">
            <xsl:attribute name="class">
                <xsl:value-of select="$type"/>
            </xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>

    </xsl:template>

    <xsl:template match="warning">
        <xsl:call-template name="admonition"/>
    </xsl:template>

    <xsl:template match="caution">
        <xsl:call-template name="admonition">
            <xsl:with-param name="type">caution</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="para">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="emphasis">
        <i>
            <xsl:apply-templates/>
        </i>
    </xsl:template>
</xsl:stylesheet>
