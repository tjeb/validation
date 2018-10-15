<?xml version="1.0" encoding="UTF-8"?>

<!-- These are some general checks that make sure we can determine the
     version; without with the version-specific tests could not be run.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="SI-UBL-VERSIONS">
    <rule context="ubl:Invoice" flag="fatal">
        <assert test="cbc:CustomizationID" flag="fatal">[BII2-T10-R001] An invoice MUST have a customization identifier</assert>
    </rule>
    <rule context="cn:CreditNote" flag="fatal">
        <assert test="cbc:CustomizationID" flag="fatal">[BII2-T10-R001] A credit note MUST have a customization identifier</assert>
    </rule>
    <!-- must be si 2.0 -->
    <rule context="cbc:CustomizationID">
        <assert test="contains(normalize-space(.), 'urn:cen.eu:en16931:2017#compliant#urn:fdc:nen.nl:nlcius:v1.0')" flag="fatal">[SI-V20-INV-R000]-This XML instance is NOT tagged as an SI-UBL 2.0 invoice or credit note; please check the CustomizationID value</assert>
    </rule>
    <rule context="/" flag="fatal">
        <assert test="ubl:Invoice or cn:CreditNote" flag="fatal">[SI-INV-R000]-This is not an SI-UBL 2.0 Invoice or CreditNote, validation cannot continue</assert>
    </rule>
</pattern>
