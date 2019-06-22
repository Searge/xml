<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl" 
    xmlns:fo="http://www.w3.org/1999/XSL/Format" 
    xmlns:OReilly="https://oreilly.com">
    <xsl:template match="/">
        <fo:display-sequence>
            <xsl:apply-templates />
        </fo:display-sequence>
    </xsl:template>
    <xsl:template match="OReilly:Books">
        <fo:block font-size="18pt">
            <xsl:text>Books:</xsl:text>
            <xsl:apply-templates />
        </fo:block>
    </xsl:template>
    <xsl:template match="OReilly:Product">
        <fo:block font-size="12pt">
            <xsl:apply-templates />
        </fo:block>
    </xsl:template>
    <xsl:template match="OReilly:Price">
        <fo:block font-size="14pt">
            <xsl:text>Price: $</xsl:text>
            <xsl:apply-templates />
            <xsl:text>+ tax</xsl:text>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>