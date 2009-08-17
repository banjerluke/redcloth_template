require 'redcloth'
require 'rdiscount'

module ActionView
  module TemplateHandlers
    class TextileTemplate < TemplateHandler
      include Compilable

      cattr_accessor :erb_trim_mode
      self.erb_trim_mode = '-'

      def compile(template)
        %{
          interpolated = ::ERB.new(template.source, nil, "#{erb_trim_mode}").result(binding)
          interpolated.sub!(/\A#coding:.*\n/, '') if RUBY_VERSION >= '1.9'
          ::RedCloth.new(interpolated).to_html
        }
      end
    end

    class MarkdownTemplate < TemplateHandler
      include Compilable

      cattr_accessor :erb_trim_mode
      self.erb_trim_mode = '-'

      def compile(template)
        %{
          interpolated = ::ERB.new(template.source, nil, "#{erb_trim_mode}").result(binding)
          interpolated.sub!(/\A#coding:.*\n/, '') if RUBY_VERSION >= '1.9'
          ::RDiscount.new(interpolated).to_html
        }
      end
    end
  end
end
