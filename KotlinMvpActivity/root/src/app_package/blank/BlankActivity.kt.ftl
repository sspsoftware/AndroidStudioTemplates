package ${packageName}.${subPackage}

import android.os.Bundle
import ${applicationPackage}.R
import ${applicationPackage}.common.mvp.MvpActivity
import ${applicationPackage}.di.AppComponent
<#if includeLayout>
import kotlinx.android.synthetic.main.${layoutName}.*
</#if>
import javax.inject.Inject

class ${moduleName}Activity : MvpActivity(), I${moduleName}View {

    @Inject lateinit var presenter: I${moduleName}Presenter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        <#if includeLayout>
        setContentView(R.layout.${layoutName})
		</#if>
        
        initViews()

        presenter.onViewAttached()
    }

    override fun resolveDependencies(appComponent: AppComponent) {
        Dagger${moduleName}Component.builder()
                .appComponent(appComponent)
                .${moduleNameCamelCase}Module(${moduleName}Module(this))
                .build()
                .inject(this)
    }

    override fun beforeDestroy() {
        presenter.dropView()
    }

    private fun initViews() {
        //TODO init views
    }
}
