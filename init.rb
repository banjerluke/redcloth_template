require File.join(File.dirname(__FILE__), 'lib', 'redcloth_template')
ActionView::Template.register_template_handler :textile, ActionView::TemplateHandlers::TextileTemplate
# Markdown isn't working at the moment.
#ActionView::Template.register_template_handler :md, ActionView::TemplateHandlers::MarkdownTemplate