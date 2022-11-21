<?xml version="1.0" encoding="UTF-8"?>
<manifest xmlns="http://www.imsglobal.org/xsd/imscp_v1p1" xmlns:imsmd="http://www.imsglobal.org/xsd/imsmd_v1p2" xmlns:imsqti="http://www.imsglobal.org/xsd/imsqti_metadata_v2p2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" identifier="{$manifestidentifier}" xsi:schemaLocation="http://www.imsglobal.org/xsd/imscp_v1p1 http://www.imsglobal.org/xsd/qti/qtiv2p2/qtiv2p2_imscpv1p2_v1p0.xsd
                        http://ltsc.ieee.org/xsd/LOM http://www.imsglobal.org/xsd/imsmd_loose_v1p3p2.xsd 
                        http://www.imsglobal.org/xsd/imsqti_metadata_v2p2  http://www.imsglobal.org/xsd/qti/qtiv2p2/imsqti_metadata_v2p2.xsd">
	<metadata>
		<schema>QTIv2.2 Package</schema>
		<schemaversion>1.0.0</schemaversion>
	<organizations/>
	<resources>
    	{section name=question loop=$questions}
		<resource identifier="question{$questions[question].id}" type="imsqti_item_xmlv2p2" {if $externalfiles == 1}href="question{$questions[question].id}.xml"{/if}>
			<metadata>
				<schema>IMS QTI Item</schema>
				<schemaversion>2.0</schemaversion>
				<imsmd:lom>
					<imsmd:general>
						<imsmd:identifier>question{$questions[question].id}</imsmd:identifier>
						<imsmd:title>
							<imsmd:langstring xml:lang="{$lang}">{$questions[question].name}</imsmd:langstring>
						</imsmd:title>
						<imsmd:description>
							<imsmd:langstring xml:lang="en">Question {$questions[question].id}</imsmd:langstring>
						</imsmd:description>
					</imsmd:general>
					<imsmd:lifecycle>
						<imsmd:version>
							<imsmd:langstring xml:lang="en">1.0</imsmd:langstring>
						</imsmd:version>
						<imsmd:status>
							<imsmd:source>
								<imsmd:langstring xml:lang="en">LOMv1.0</imsmd:langstring>
							</imsmd:source>
							<imsmd:value>
								<imsmd:langstring xml:lang="en">Draft</imsmd:langstring>
							</imsmd:value>
						</imsmd:status>
					</imsmd:lifecycle>
				</imsmd:lom>
				<imsqti:qtiMetadata>
					<imsqti:timeDependent>false</imsqti:timeDependent>
					<imsqti:interactionType>{$questions[question].qtiinteractiontype}</imsqti:interactionType>
					<imsqti:canComputerScore>{$questions[question].qtiscoreable}</imsqti:canComputerScore>
					<imsqti:feedbackType>nonadaptive</imsqti:feedbackType>
					<imsqti:solutionAvailable>{$questions[question].qtisolutionavailable}</imsqti:solutionAvailable>
				</imsqti:qtiMetadata>
			</metadata>
			{if $questions[question].image != ''}
			<file href="{$questions[question].mediaurl}" />
			{/if}
			{$questions[question].exporttext}
		</resource>
		{/section}
	</resources>
</manifest>