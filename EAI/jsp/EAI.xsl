<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">
		<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
		<xsl:template match="/Employee">
			<Employee>
				<xsl:variable name="var_employee" select="."/>
				<xsl:for-each select="FirstName">
					<xsl:variable name="var_firstName" select="."/>
					<xsl:for-each select="$var_employee/MiddleName">
						<xsl:variable name="var_middleName" select="."/>
						<xsl:for-each select="$var_employee/LastName">
							<xsl:variable name="var_lastName" select="."/>
							<xsl:variable name="temp_result1" select="concat($var_middleName, $var_lastName)"/>
							<xsl:variable name="temp_result2" select="concat($var_firstName, $temp_result1)"/>
							<Name>
								<xsl:value-of select="$temp_result2"/>
							</Name>
						</xsl:for-each>
					</xsl:for-each>
				</xsl:for-each>
				<xsl:for-each select="Designation">
					<Designation>
						<xsl:value-of select="."/>
					</Designation>
				</xsl:for-each>
				<xsl:variable name="constant" select="'0'"/>
				<BasicSalary>
					<xsl:value-of select="$constant"/>
				</BasicSalary>				
				<HRA>
					<xsl:value-of select="$constant"/>
				</HRA>				
				<LTA>
					<xsl:value-of select="$constant"/>
				</LTA>
			</Employee>
		</xsl:template>
	</xsl:stylesheet>
