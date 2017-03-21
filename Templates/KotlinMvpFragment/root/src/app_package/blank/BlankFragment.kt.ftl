package ${packageName}.${subPackage}

import android.os.Bundle
<#if includeLayout>
import android.view.LayoutInflater
</#if>
import ${applicationPackage}.R
import ${applicationPackage}.common.mvp.MvpFragment
import ${applicationPackage}.di.AppComponent
<#if includeLayout>
import kotlinx.android.synthetic.main.${layoutName}.*
</#if>
import javax.inject.Inject

class ${moduleName}Fragment : MvpFragment(), I${moduleName}View {

    @Inject lateinit var presenter: I${moduleName}Presenter

    <#if includeLayout>
    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {
        return inflater.inflate(R.layout.${layoutName}, container, false)
    }
    </#if>

    override fun injectDependencies(appComponent: AppComponent) {
        Dagger${moduleName}Component.builder()
                .appComponent(appComponent)
                .${moduleNameCamelCase}Module(${moduleName}Module(this))
                .build()
                .inject(this)
    }
        
    override fun onViewCreated(view: View?, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        
        initViews()
        
        presenter.onViewAttached()
    }

    override fun beforeDestroy() {
        presenter.dropView()
    }

    private fun initViews() {
        //TODO init views
    }
}
