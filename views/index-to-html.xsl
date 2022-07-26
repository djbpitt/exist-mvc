<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xpath-default-namespace="http://www.obdurodon.org/hoax/model"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="#all" version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" 
        include-content-type="no" indent="yes"/>
    <xsl:param name="xslt.fqcontroller" required="yes"/>
    <xsl:variable name="stories" as="document-node()*" select="collection()"/>
    <xsl:template match="/">
        <!-- ============================================================ -->
        <!-- Create HTML fragment                                         -->
        <!-- ============================================================ -->
        <main>
            <h1>Sample app with XSLT pipeline</h1>
            <p>The only feature supported in this sample app is reading stories.
            The list of stories is constructed dynamically by reading the contents
            of the <code>data</code> collection.</p>
            <xsl:apply-templates select="descendant::stories"/>
        </main>
    </xsl:template>
    <xsl:template match="stories">
        <ul>
            <xsl:apply-templates/>
        </ul>
    </xsl:template>
    <xsl:template match="story">
        <li>
            <a href="read?id={@xml:id}"><xsl:value-of select="."/></a>
        </li>
    </xsl:template>
</xsl:stylesheet>