<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:sa="http://www.w3schools.com">
	<xsl:template match="/">
		<center>
			<h1>
				Order Forecasting
			</h1>
			<xsl:for-each select="//sa:Item">
				<br /><b>
					<big>
						<xsl:value-of select="@item" />
					</big>
				</b>
				(Average Order: <xsl:value-of select="@avgOrder" />)
				<table>
					<tr>
						<th>Week #</th>
						<th>Weekly Activity</th>
						<th>BPForecast</th>
						<th>IndForecast</th>
						<th>Order Quantity</th>
						<th>Promised Quantity</th>
					</tr>
					<xsl:for-each select="sa:Weeks">
						<tr>
							<td align="center">
								<xsl:value-of select="@week"/>
							</td>
							<td align="center">
								<xsl:value-of select="@weeklyActivity"/>
							</td>
							<td align="center">
								<xsl:value-of select="@BPForecast"/>
							</td>
							<td align="center">
								<xsl:value-of select="@IndForecast"/>
							</td>
							<td align="center">
								<xsl:value-of select="@OrderQuantity"/>
							</td>
							<td align="center">
								<xsl:value-of select="@PromiseQuantity"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</xsl:for-each>
		</center>
	</xsl:template>
</xsl:stylesheet>