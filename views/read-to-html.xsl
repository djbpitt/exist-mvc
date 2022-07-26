<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:m="http://www.obdurodon.org/hoax/model" xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math" version="3.0">
    <xsl:template match="/">
        <!-- ============================================================ -->
        <!-- Create HTML fragment                                         -->
        <!-- Input root node is either <m:no-result> or <m:result>        -->
        <!-- ============================================================ -->
        <main>
            <xsl:apply-templates/>
        </main>
    </xsl:template>
    <xsl:template match="m:no-result">
        <p>No matching story found</p>
    </xsl:template>
    <xsl:template match="m:result">
        <xsl:apply-templates select="descendant::titleStmt/title, descendant::body"/>
    </xsl:template>
    <xsl:template match="title">
        <h1>
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="rs">
        <span class="{@ref}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="placeName">
        <span class="placeName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="q">
        <q>
            <xsl:apply-templates/>
        </q>
    </xsl:template>
    <xsl:template match="emph">
        <em>
            <xsl:apply-templates/>
        </em>
    </xsl:template>
</xsl:stylesheet>
