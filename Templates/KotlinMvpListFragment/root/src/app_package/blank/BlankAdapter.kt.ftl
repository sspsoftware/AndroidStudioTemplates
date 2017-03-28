package ${packageName}.${subPackage}

import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${applicationPackage}.R
import kotlinx.android.synthetic.main.${itemLayoutName}.view.*


class ${moduleName}Adapter(val models: List<${viewModelName}>, val onClick: ((${viewModelName}) -> Unit)? = null) : RecyclerView.Adapter<${moduleName}Adapter.ViewHolder>() {

    override fun getItemCount(): Int {
        return models.count()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = LayoutInflater.from(parent.context).inflate(R.layout.${itemLayoutName}, parent, false)
        return ViewHolder(view, onClick)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bindModel(models[position])
    }

    class ViewHolder(itemView: View, val onClick: ((${viewModelName}) -> Unit)?) : RecyclerView.ViewHolder(itemView) {
        fun bindModel(${viewModelNameCamelCase}: ${viewModelName}) {
            itemView.apply {
				//TODO init views
            }
        }
    }
}
