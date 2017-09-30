<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : tutor.xsl
    Created on : 2017년 9월 30일 (토), 오후 10:08
    Author     : deocr
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
 
    <xsl:template match="/">
        <html>
            <head>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="tutors/tutor">
        <table>
            <thead>
                <tr>
                    <th>Tutor</th>
                    <th>Email</th>
                    <th>Specialty</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <xsl:apply-templates/>
            </tbody>
        </table>
    </xsl:template>
    
    <xsl:template match="name|email|specialty|status">
        <tr><xsl:apply-templates/></tr>
    </xsl:template>

</xsl:stylesheet>
