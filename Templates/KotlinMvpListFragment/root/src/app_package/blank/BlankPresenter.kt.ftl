package ${packageName}.${subPackage}

import ${applicationPackage}.common.mvp.RxPresenter
import javax.inject.Inject


class ${moduleName}Presenter @Inject constructor(view: I${moduleName}View) : RxPresenter<I${moduleName}View>(view), I${moduleName}Presenter {
    
    override fun onViewAttached() {
        super.onViewAttached()
    }    
}
