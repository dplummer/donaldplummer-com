module Haml
  module Filters
    module Code
      include Base

      def render(text)
        text = text.encode("UTF-8")
        text = Middleman::Syntax::Highlighter.highlight(text, "html")
        text = Haml::Helpers.preserve text
      end
    end

    module CodeCss
      include Base

      def render(text)
        text = text.encode("UTF-8")
        text = Middleman::Syntax::Highlighter.highlight(text, "css")
        text = Haml::Helpers.preserve text
      end
    end

    module CodeJs
      include Base

      def render(text)
        text = text.encode("UTF-8")
        text = Middleman::Syntax::Highlighter.highlight(text, "js")
        text = Haml::Helpers.preserve text
      end
    end

    module CodeJson
      include Base

      def render(text)
        text = text.encode("UTF-8")
        text = Middleman::Syntax::Highlighter.highlight(text, "json")
        text = Haml::Helpers.preserve text
      end
    end

    module CodeBash
      include Base

      def render(text)
        text = text.encode("UTF-8")
        text = Middleman::Syntax::Highlighter.highlight(text, "bash")
        text = Haml::Helpers.preserve text
      end
    end

    module CodeShell
      include Base

      def render(text)
        text = text.encode("UTF-8")
        text = Middleman::Syntax::Highlighter.highlight(text, "shell")
        text = Haml::Helpers.preserve text
      end
    end
  end
end
