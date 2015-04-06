<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Yum Juices</title>        
        <link rel="stylesheet" type="text/css" href="yumstyle.css" />
        <link rel="stylesheet" type="text/css" href="juices.css" />
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
              <li><a class="current" href="juices.xml">Juices</a></li>
              <li><a href="#">Juicers</a></li>
              <li><a href="#">Recipes</a></li>
              <li><a href="#">Promotions</a></li>
            </ul>
          </div>
          <div id="contentcontainer">
            <div class="rightcol">
              <div class="breadcrumbbar">
                <a class="small" href="index.html">Home</a> >
                <a class="small" href="#">Juices</a>
              </div>
              <div class="featureblock">
                <h3>Our Juices - Freshness Guaranteed</h3>
                <img class="feature"
                     src="images/bananassmall.jpg"
                     alt="bananas"
                     width="100"
                     height="100" />
                <img class="feature"
                     src="images/applessmall.jpg"
                     alt="apples"
                     width="100"
                     height="100" />
                <img class="feature"
                     src="images/orangessmall.jpg"
                     alt="orange"
                     width="100"
                     height="100" />
                <img class="feature"
                     src="images/strawberrysmall.jpg"
                     alt="strawberry"
                     width="100"
                     height="100" />
                <img class="feature"
                     src="images/plumsmall.jpg"
                     alt="plum"
                     width="100"
                     height="100" />
                <img class="feature"
                     src="images/pomegranatessmall.jpg"
                     alt="plum"
                     width="150"
                     height="100" />
                <p>
                  Choose from an incredible range of types and
                  <a href="#">flavours</a>: we have fruit, berry, vegetable, we
                  have juices that will wake you up, knock you over, keep you
                  health and keep you looking as slim and fit as you have ever
                  looked.
                </p>

                <p>
                  The taste goes on. take a look through our juice categories
                  and you will find flavours that you have never even dreamed
                  of. Flavours that are so wild and exciting that they will have
                  you drooling and coming back for more.
                </p>
                <p>
                  Specials include: Citrus Zinger, Apple Sunday, Beetroot
                  Blaster, Fruit Salad, Moring Glory, Fresh and Lively, Slim and
                  Juicy, Juicy Lucy Very Berry, The Tangster, Sea Breeze and
                  many, many more. Special offers on orders of five or more
                  cartons. Free delivery applies for the month of December.
                </p>
                <p>
                  Read our 45 page <a href="#">Guide to Juicing and Health</a>.
                </p>
              </div>
            </div>
            <xsl:for-each select="juices/type">
              <div class="rightcol hidden">
                <xsl:attribute name="id">
                  <xsl:value-of select="concat('type_', @id)" />
                </xsl:attribute>
                <div class="breadcrumbbar">
                  <a class="small" href="index.html">Home</a> >
                  <a class="small" href="juices.xml">Juices</a> >
                  <a class="small" href="#">
                    <xsl:value-of select="title"/>
                  </a>
                </div>
                <h2>
                  <xsl:value-of select="title"/>
                </h2>
                <xsl:for-each select="juice">
                  <div class="productblock">
                    <img>
                      <xsl:attribute name="src">
                        <xsl:value-of select="concat(concat('images/juices/juice_', @id), '.png')"/>
                      </xsl:attribute>
                      <xsl:attribute name="class">
                        <xsl:value-of select="'juice'"/>
                      </xsl:attribute>
                      <xsl:attribute name="width">
                        <xsl:value-of select="70"/>
                      </xsl:attribute>
                      <xsl:attribute name="height">
                        <xsl:value-of select="70"/>
                      </xsl:attribute>
                      <xsl:attribute name="alt">
                        <xsl:value-of select="name"/>
                      </xsl:attribute>
                    </img>
                    <h3 class="juice-title">
                      <xsl:value-of select="name"/>
                      <span>&#163;<xsl:value-of select="price"/></span>
                    </h3>
                    <p>
                      <xsl:value-of select="description"/>
                    </p>
                    <div class="details-wrap">
                      <div class="detail small">
                        <h4>Ingredients</h4>
                        <ul>
                          <xsl:for-each select="./ingredients/ingredient">
                            <li><xsl:value-of select="."/></li>
                          </xsl:for-each>
                        </ul>
                      </div>
                      <div class="detail">
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
                      </div>
                      <div class="detail">
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
                      </div>
                    </div>
                  </div>
                </xsl:for-each>
              </div>
            </xsl:for-each>
            <div class="leftcol">
              <div class="leftnavcontainer">
                <ul>
                  <xsl:for-each select="/juices/type">
                    <li>
                      <a href="#">
                        <xsl:attribute name="data-type">
                          <xsl:value-of select="@id" />
                        </xsl:attribute>
                        <xsl:value-of select="title"/>
                      </a>
                    </li>
                  </xsl:for-each>
                </ul>
              </div>
            </div>
          </div>
          <div id="footer">
            <p>Copyright &#64;Yum Juices, 2011</p>
          </div>
        </div>
        <script src="juices.js"></script>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
