<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Book Store</title>
        <link rel="stylesheet" type="text/css" href="books.css" />
      </head>
      <body>
        <div class="container">
          <h1>Book Store</h1>
          <xsl:for-each select="/books/book">
            <div class="wrapper">
              <div class="left">
                <div class="title"><xsl:value-of select="title/." /></div>
                <div><xsl:value-of select="author/." /></div>
              </div>
              <div class="right">
                <div class="listPrice">
                  List price: <span>$<xsl:value-of select="listPrice/." /></span>
                </div>
                <div class="price">
                  Our price: $<xsl:value-of select="price/." />
                </div>
              </div>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
