<?xml version="1.0"?>
<globals>

    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="resOut" value="${resDir}" />
    
	<global id="kotlinOut" value="${srcOut?replace(r'/java/', r'/kotlin/')}" />
	
    <global id="moduleNameLowercase" value="${moduleName?lower_case}" />
    <global id="moduleNameCamelCase" value="${moduleName?uncap_first}" />
    
    <global id="viewModelName" type="string" value="${modelName}" /> 
    <global id="viewModelNameCamelCase" type="string" value="${modelName?uncap_first}" />
    
</globals>
