xml.instruct! :xml, :version => "1.0", :encoding => "UTF-8"

xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9", "xmlns:xsi" => "http://www.w3.org/2001/XMLSchema-instance", "xsi:schemaLocation" => "http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" do



@categories.each do |category|
	 xml.url do
		  	
		  	    xml.loc      url_for(vending_solution_url(category))
			  xml.lastmod      category.updated_at
		 xml.changefreq      "monthly"
			 xml.priority	     "0.05"
	  
	  end
	
	category.machines.each do |machine|
      xml.url do

         xml.loc        vending_solution_machine_url(category,machine)
         xml.lastmod    machine.updated_at
         xml.changefreq "monthly"
         xml.priority   "0.05"

       end
		end
	end
end