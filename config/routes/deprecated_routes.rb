Rails.application.routes.draw do |map|

  map.connect ':html',
                  :controller => 'urlpools',
                  :action => 'redirect',
                  :requirements => {:html => /.+\.html/ }
end