package ${packageName}.${subPackage}

import android.os.Bundle
import android.support.v7.widget.RecyclerView
<#if customLayout>
import android.view.LayoutInflater
</#if>
import android.view.View
import ${applicationPackage}.R
import ${applicationPackage}.common.mvp.BaseListFragment
import ${applicationPackage}.di.AppComponent
<#if customLayout>
import kotlinx.android.synthetic.main.${layoutName}.*
</#if>
import javax.inject.Inject

class ${moduleName}Fragment : BaseListFragment<${viewModelName}>(), I${moduleName}View {

    @Inject lateinit var presenter: I${moduleName}Presenter
    
    <#if customLayout>    
    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {
        return inflater.inflate(R.layout.${layoutName}, container, false)
    }
    
    </#if>    
    override fun injectDependencies(appComponent: AppComponent) {
        Dagger${moduleName}Component.builder()
                .appComponent(appComponent)
                .${viewModelNameCamelCase}Module(${moduleName}Module(this))
                .build()
                .inject(this)
    }
        
    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
                
        presenter.onViewAttached()
    }

    override fun beforeDestroy() {
        presenter.dropView()
    }
    
    override fun createAdapter(): RecyclerView.Adapter<*> {
        return ${moduleName}Adapter(dataset) {
            ${viewModelNameCamelCase} ->
            //TODO on item click
        }
    }

    override fun initViews() {
        super.initViews()
        //TODO init views
    }
}
