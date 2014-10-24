module ApplicationHelper
  def active_controller?(controller_name)
    controller.controller_name == controller_name ? "active" : ""
  end

  def left_quote
    content_tag :span, :class => "ldquo" do
      "&ldquo;"
    end
  end

  def right_quote
    content_tag :span, :class => "rdquo" do
      "&rdquo;"
    end
  end

  def blockquote(&block)
    content_tag :blockquote do
      left_quote +
      capture_haml(&block) +
      right_quote
    end
  end
end
