<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Book Translations</title>
        <link rel="stylesheet" type="text/css" href="BookTranslations.css" />
      </head>
      <body>
        <h2>Book Translations</h2>
        <table>
          <tr class="header">
            <th>Question</th>
            <th>Result</th>
            <th>XPath</th>
          </tr>
          <tr>
            <td>
              Find the title of books that have Japanese translations available
            </td>
            <td>
              <xsl:for-each select="/books/book[translation='Japanese']/title">
                <div><xsl:value-of select="." /></div>
              </xsl:for-each>
            </td>
            <td>
              /books/book[translation='Japanese']/title
            </td>
          </tr>
          <tr>
            <td>
              Find the edition of the books that have Spanish translations available
            </td>
            <td>
              <xsl:for-each select="/books/book[translation='Spanish']/title">
                <div><xsl:value-of select="." /></div>
              </xsl:for-each>
            </td>
            <td>
              /books/book[translation='Spanish']/title
            </td>
          </tr>
          <tr>
            <td>
              Find the available translations for each book
            </td>
            <td>
              <ul>
                <xsl:for-each select="/books/book">
                  <li>
                    <xsl:value-of select="title/." />
                    <ul>
                      <xsl:for-each select="translation">
                        <li><xsl:value-of select="." /></li>
                      </xsl:for-each>
                    </ul>
                  </li>
                </xsl:for-each>
              </ul>
            </td>
            <td>
              /books/book/translation
            </td>
          </tr>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
