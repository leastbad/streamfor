# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  def foo
    WidgetJob.perform_later widget: Widget.find(element["data-widget-id-value"])
    morph :nothing
  end
end
