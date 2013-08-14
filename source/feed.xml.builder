xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  xml.title "Donald Plummer's Blog"
  xml.subtitle "I have no witty subtitle, I am a blog"
  xml.id "http://www.donaldplummer.com/"
  xml.link "href" => "http://www.donaldplummer.com/"
  xml.link "href" => "http://www.donaldplummer.com/feed.xml", "rel" => "self"
  xml.updated blog.articles.first.date.to_time.iso8601
  xml.author { xml.name "Donald Plummer" }

  blog.articles.each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => article.url
      xml.id article.url
      xml.published article.date.to_time.iso8601
      xml.updated article.date.to_time.iso8601
      xml.author { xml.name "Donald Plummer" }
      xml.summary article.summary, "type" => "html"
      xml.content article.body, "type" => "html"
    end
  end
end
