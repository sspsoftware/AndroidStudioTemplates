package ${packageName}.${subPackage}

import ${applicationPackage}.common.mvp.IListPresenter
import ${applicationPackage}.common.mvp.IListView


interface I${moduleName}View : IListView<${viewModelName}> {
}

interface I${moduleName}Presenter : IListPresenter<${viewModelName}, I${moduleName}View> {
}
