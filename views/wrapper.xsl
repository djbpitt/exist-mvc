<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xpath-default-namespace="http://www.w3.org/1999/xhtml"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="#all" version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
        indent="yes" byte-order-mark="no"/>
    <xsl:param name="xslt.fqcontroller" required="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:copy-of select="descendant::h1/node()"/>
                </title>
                <link rel="stylesheet" type="text/css" href="{$xslt.fqcontroller || '/resources/css/hoax.css'}"/>
            </head>
            <body>
                <xsl:copy-of select="*"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
