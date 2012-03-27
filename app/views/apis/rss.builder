xml.instruct! :xml, :version => "1.0"

xml.rss "version" => "2.0" do
 xml.channel do

   xml.title       "news"
   xml.link        url_for(:only_path => false, :controller => 'machines')
   xml.description "sitemap"


 end
end