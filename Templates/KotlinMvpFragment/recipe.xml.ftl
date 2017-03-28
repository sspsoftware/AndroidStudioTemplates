<?xml version="1.0"?>
<recipe>

    <#if includeLayout>
        <instantiate from="res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />
    </#if>

    <instantiate from="src/app_package/blank/BlankFragment.kt.ftl"
                   to="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Fragment.kt" />
				   
	<open file="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Fragment.kt" />
	
	<instantiate from="src/app_package/blank/BlankPresenter.kt.ftl"
                   to="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Presenter.kt" />
				   
	<open file="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Presenter.kt" />
	
	<instantiate from="src/app_package/blank/BlankContract.kt.ftl"
                   to="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Contract.kt" />
				   
	<open file="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Contract.kt" />
	
	<instantiate from="src/app_package/blank/BlankAssembly.kt.ftl"
                   to="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Assembly.kt" />
	
</recipe>
