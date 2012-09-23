# -*- encoding : utf-8 -*-"
#
# @author Andi Altendorfer <andreas@altendorfer.at>
#
module Admin
  # = BootstrapHelper
  # provides some methods to map bootstrap-specific logics.
  module BootstrapHelper

    # @param [String|Symbol] icon
    # @see #bootstrap_icon
    # @return [String] HTML-string to 'draw' an icon
    def icon(icon)
      "<i class='#{bootstrap_icon(icon)}'></i>".html_safe
    end

    # = button_to
    # Adds class 'btn-primary-link' to define "white" text-color in links if btn is dark (red/danger, blue/primary)
    #
    # @example HAML-usage
    #   = button_to classes: "btn-primary" { link_to "Somewhare", "http://....." }
    #
    # @param [Hash] options
    # @option options [String] :classes additional bootstrap btn-classes, eg. 'btn-primary'
    # @return [String] - HTML Bootstrap button with :block inside
    def button_to(options={}, &block)
      if options[:classes].present?
        options[:classes] += " btn-primary-link" if options[:classes] =~ /(btn-primary)|(btn-danger)/
      end
      content_tag :button, class: "btn #{options[:classes]}" do
        yield
      end
    end

    # draw a caret (dor dropdowns)
    # @return [String] - HTML-String representing a caret "v"
    def caret
      "<b class='caret'></b>".html_safe
    end

    private # @!group private methods

    # = map symbols to bootstrap-classes
    # @param [Symbol|String] icon
    #
    # Map:
    #   :home             ... 'icon-home'
    #   default, missing  ... 'icon-certificate'
    #
    # @return [String] - the icon-class for twitter bootstrap
    def bootstrap_icon(icon)
      case icon.to_s
        when 'home'
          'icon-home'
        else
          'icon-certificate'
      end
    end
    # @!endgroup
  end
end