<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        		<head>
        			<title>European countries</title>
        			<link rel="stylesheet" type="text/css" href="Country.css" />
        		</head>
            <body>
                <h2>List of European countries</h2>
                <table>
                    <tr class="header">
                        <th>Country Name</th>
                    </tr>
                    <xsl:for-each select="europe/country">
                        <tr>
                            <td>
                                <xsl:value-of select="."/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
