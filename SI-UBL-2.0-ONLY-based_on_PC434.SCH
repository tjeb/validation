<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:ubl="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" queryBinding="xslt2" xmlns="http://purl.oclc.org/dsdl/schematron">
    <!--
        Release 2.0 alpha
        Author: Jelte Jansen (SIDN)
        Email: support@simplerinvoicing.org
        Changes since 1.1.1:
        - Full rework based on EN/CEN PC 434/SI-UBL 2.0 (wip)

    -->
    <title>PC434-NL-specific Validation</title>
    <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
    <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
    <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"/>
    <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>

    <!-- additional prefixes for EN-16931 -->
    <ns prefix="ext" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2"/>
    <ns prefix="qdt" uri="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDataTypes-2"/>
    <ns prefix="udt" uri="urn:oasis:names:specification:ubl:schema:xsd:UnqualifiedDataTypes-2"/>
    <ns prefix="cn" uri="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2"/>
    <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>

    <!-- basic CustomizationID check -->
    <include href="general/SI-UBL-INV-2.0.SCH" />

    <!-- EN-16931 -->
    <include href="CenPC434/abstract/EN16931-model.sch"/>
    <include href="CenPC434/abstract/EN16931-syntax.sch"/>

    <include href="CenPC434/codelist/EN16931-UBL-codes.sch"/>

    <include href="CenPC434/UBL/EN16931-UBL-model.sch"/>
    <include href="CenPC434/UBL/EN16931-UBL-syntax.sch"/>

    <!-- NL / SI specific additions -->
    <include href="v2.0/SI-UBL-2.0-Additional.SCH"/>
</schema>
