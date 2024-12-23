module MealOrdersHelper
  def meal_order_step_link_to(path, completed:, options: {})
    link_classes = "flex justify-between gap-2 items-center border border-slate-200 rounded-md py-4 px-6 " \
                   "has-[:checked]:bg-lime-100 has-[:checked]:text-lime-900 has-[:checked]:border-lime-500"
    link_options = { class: link_classes }.merge(options)

    link_to(path, link_options) do
      yield
      concat(
        if completed
          content_tag(:div, "✓", class: "h-5 w-5 grid place-content-center shrink-0 border-2 border-lime-400 text-lime-500 rounded-full")
        else
          content_tag(:div, nil, class: "h-5 w-5 shrink-0 border-2 border-dashed border-slate-400 rounded-full")
        end
      )
    end
  end
end
