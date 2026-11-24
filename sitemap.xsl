<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:image="http://www.google.com/schemas/sitemap-image/1.1">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="robots" content="noindex"/>
  <title>XML Sitemap – Danyal Zahoor Malik</title>
  <style>
    body{font-family:system-ui,-apple-system,Segoe UI,Roboto,sans-serif;margin:0;background:#f6f7f9;color:#1f2933}
    .wrap{max-width:1100px;margin:40px auto;padding:0 20px}
    h1{font-size:26px;margin:0 0 6px}
    p{color:#52606d;margin:0 0 24px}
    table{width:100%;border-collapse:collapse;background:#fff;border-radius:8px;overflow:hidden;box-shadow:0 1px 3px rgba(0,0,0,.08)}
    th{background:#1f2933;color:#fff;text-align:left;padding:12px 14px;font-size:14px}
    td{padding:10px 14px;border-top:1px solid #e4e7eb;font-size:14px}
    tr:hover td{background:#f0f4f8}
    a{color:#2563eb;text-decoration:none;word-break:break-all}
    a:hover{text-decoration:underline}
  </style>
</head>
<body>
<div class="wrap">
  <h1>XML Sitemap</h1>
  <p>This sitemap lists <xsl:value-of select="count(s:urlset/s:url)"/> URLs for search engines.</p>
  <table>
    <tr><th>#</th><th>URL</th><th>Images</th><th>Last modified</th><th>Change freq.</th><th>Priority</th></tr>
    <xsl:for-each select="s:urlset/s:url">
      <tr>
        <td><xsl:value-of select="position()"/></td>
        <td><a href="{s:loc}"><xsl:value-of select="s:loc"/></a></td>
        <td><xsl:value-of select="count(image:image)"/></td>
        <td><xsl:value-of select="s:lastmod"/></td>
        <td><xsl:value-of select="s:changefreq"/></td>
        <td><xsl:value-of select="s:priority"/></td>
      </tr>
    </xsl:for-each>
  </table>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
