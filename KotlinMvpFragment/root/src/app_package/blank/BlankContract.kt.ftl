package ${packageName}.${subPackage}

import ${applicationPackage}.common.mvp.IPresenter
import ${applicationPackage}.common.mvp.IView


interface I${moduleName}View : IView {
}

interface I${moduleName}Presenter : IPresenter<I${moduleName}View> {
}
