xml.rss 'xmlns:atom' => "http://www.w3.org/2005/Atom", 'version' => '2.0' do 
 xml.channel do

   xml.title        "Seaga Press Releases"
   xml.atom({
            :href => url_for(:action => 'press', :controller => 'apis', :only_path => false),
            :rel => 'self', :type => 'application/rss+xml'
   })         
   xml.description  "Press releases by Seaga about current news in the vending world."
   xml.language     "en"

   @pressreleases.each do |pressrelease|
     xml.item do
      xml.title       pressrelease.title
      xml.description pressrelease.teaser
      xml.content     cdata_section(pressrelease.content)
      xml.link        pressrelease_url(pressrelease)
      xml.guid(pressrelease_url(pressrelease),{:isPermaLink => true})
      xml.pubDate     pressrelease.created_at.rfc2822
     end  
   end
  end

end
