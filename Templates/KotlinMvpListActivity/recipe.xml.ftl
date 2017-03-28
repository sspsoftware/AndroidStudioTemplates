<?xml version="1.0"?>
<recipe>

    <#if customLayout>
        <instantiate from="res/layout/activity_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />
    </#if>
    
    <instantiate from="res/layout/item_blank.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(itemLayoutName)}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(itemLayoutName)}.xml" />
    
    <instantiate from="src/app_package/blank/BlankAdapter.kt.ftl"
                   to="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Adapter.kt" />
				   
	<open file="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Adapter.kt" />

    <instantiate from="src/app_package/blank/BlankActivity.kt.ftl"
                   to="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Activity.kt" />
				   
	<open file="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Activity.kt" />
	
	<instantiate from="src/app_package/blank/BlankPresenter.kt.ftl"
                   to="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Presenter.kt" />
				   
	<open file="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Presenter.kt" />
	
	<instantiate from="src/app_package/blank/BlankContract.kt.ftl"
                   to="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Contract.kt" />
				   
	<open file="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Contract.kt" />
	
	<instantiate from="src/app_package/blank/BlankAssembly.kt.ftl"
                   to="${escapeXmlAttribute(kotlinOut)}/${subPackage}/${moduleName}Assembly.kt" />
	
</recipe>
