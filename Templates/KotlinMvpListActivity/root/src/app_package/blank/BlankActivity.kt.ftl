package ${packageName}.${subPackage}

import android.os.Bundle
import android.support.v7.widget.RecyclerView
import android.view.View
import ${applicationPackage}.R
import ${applicationPackage}.common.mvp.BaseListFragment
import ${applicationPackage}.di.AppComponent
<#if customLayout>
import kotlinx.android.synthetic.main.${layoutName}.*
</#if>
import javax.inject.Inject

class ${moduleName}Activity : BaseListActivity<${viewModelName}>(), I${moduleName}View {

    @Inject lateinit var presenter: I${moduleName}Presenter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.<#if customLayout>${layoutName}<#else>layout_recycler_view</#if>)

        initViews()

        presenter.onViewAttached()
    }
  
    override fun resolveDependencies(appComponent: AppComponent) {
        Dagger${moduleName}Component.builder()
                .appComponent(appComponent)
                .${viewModelNameCamelCase}Module(${moduleName}Module(this))
                .build()
                .inject(this)
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
