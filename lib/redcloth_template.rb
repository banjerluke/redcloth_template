require 'redcloth'

module ActionView
  class Template
    module Handlers
      class TextileTemplate < ERB
        def compile(template)
          %{
            #{super(template)}
            ::RedCloth.new(@output_buffer).to_html
          }
        end
      end

      # TODO: Implement BlueCloth/Markdown for Rails 3
      #class MarkdownTemplate < ERB
      #  def compile(template)
      #    %{
      #      #{super(template)}
      #      ::BlueCloth.new(@output_buffer).to_html
      #    }
      #  end
      #end
    end
  end
end
