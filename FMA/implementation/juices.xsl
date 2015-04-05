<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>Yum Juices</title>        
        <link rel="stylesheet" type="text/css" href="yumstyle.css" />
        <link rel="stylesheet" type="text/css" href="juices.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      </head>
      <body>
        <div id="main">
          <div id="commonlinksbar"> |
            <a href="#">about us</a> |
            <a href="#">contact us</a> |
            <a href="#">sitemap</a> |
            <a href="#">accessibility</a> |
          </div>
          <div id="header">
            <h1>Yum Juices</h1>
          </div>
          <div id="topnavcontainer">
            <ul id="topnavbar">
              <li><a href="index.html">Home</a></li>
              <li><a class="current" href="juices.html" >Juices</a></li>
              <li><a href="#">Juicers</a></li>
              <li><a href="#">Recipes</a></li>
              <li><a href="#">Promotions</a></li>
            </ul>
          </div>
          <div id="contentcontainer">
            <div id="rightcol">
              <div id="breadcrumbbar">
                <a class="small" href="index.html">Home</a> >
                <a class="small" href="juices.html">Juices</a> >
                <a class="small" href="#">Fruit Juices</a>
              </div>
              <h2>
                Fruit Juices
              </h2>
              <xsl:for-each select="juices/type[@id=1]/juice">
                <div class="productblock">
                  <img class="juice"
                       src="images/juices/juice_1.png"
                       width="70"
                       height="70"
                       alt=""/>
                  <h3>Citrus Zing</h3>
                  <p>
                    <xsl:value-of select="description"/>
                  </p>
                  <h4>Ingredients</h4>
                  <ul>
                    <xsl:for-each select="./ingredients">
                      <li><xsl:value-of select="."/></li>
                    </xsl:for-each>
                  </ul>
                  <h4>Juices and Fruit information</h4>
                  <ul>
                    <li>
                      <b>Blend: </b>
                      <xsl:value-of select="information/blend"/>
                    </li>
                    <li>
                      <b>Concentrate: </b>
                      <xsl:value-of select="information/concentrate"/>
                    </li>
                    <li>
                      <b>Vitamins: </b>
                      <ul>
                        <xsl:for-each select="information/vitamins/vitamin">
                          <li><xsl:value-of select="."/></li>
                        </xsl:for-each>
                      </ul>
                    </li>
                  </ul>
                  <h4>Nutritional values</h4>
                  <ul>
                    <li>
                      Energy (kJ): <xsl:value-of select="nutricional/kj"/>
                    </li>
                    <li>
                      Energy (kcal): <xsl:value-of select="nutricional/kcal"/>
                    </li>
                    <li>
                      Carbohydrate (g): <xsl:value-of select="nutricional/carbohydrate"/>
                    </li>
                    <li>
                      of which Sugars (g): <xsl:value-of select="nutricional/sugars"/>
                    </li>
                    <li>
                      Salt (g): <xsl:value-of select="nutricional/salt"/>
                    </li>
                  </ul>
                  <p>
                    <xsl:value-of select="price"/>
                  </p>
                </div>
              </xsl:for-each>
            </div>
            <div id="leftcol">
              <div id="leftnavcontainer">
                <ul>
                  <xsl:for-each select="juices/type">
                  <li>
                    <a href="fruitjuices.xml" class="current">
                      <xsl:value-of select="title"/>
                    </a>
                  </li>
                  </xsl:for-each>
                </ul>
              </div>
            </div>
          </div>
          <div id="footer">
            <p>Copyright Yum Juices, 2011</p>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
