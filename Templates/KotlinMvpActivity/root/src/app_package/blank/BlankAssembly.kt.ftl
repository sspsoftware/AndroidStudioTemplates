package ${packageName}.${subPackage}

import ${applicationPackage}.di.AppComponent
import ${applicationPackage}.di.scopes.LifetimeScope
import dagger.Binds
import dagger.Component
import dagger.Module
import dagger.Provides

@LifetimeScope
@Component(modules = arrayOf(${moduleName}Module::class), dependencies = arrayOf(AppComponent::class))
interface ${moduleName}Component {
    fun inject(${moduleNameCamelCase}Activity: ${moduleName}Activity)
}

@Module(includes = arrayOf(${moduleName}Module.Declarations::class))
class ${moduleName}Module(val ${moduleNameCamelCase}View: I${moduleName}View) {

    @Provides
    fun provide${moduleName}View(): I${moduleName}View {
        return ${moduleNameCamelCase}View
    }

    @Module
    interface Declarations {

        @Binds
        @LifetimeScope
        fun bind${moduleName}Presenter(${moduleNameCamelCase}Presenter: ${moduleName}Presenter): I${moduleName}Presenter
    }
}
