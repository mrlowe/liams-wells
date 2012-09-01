require 'sinatra'
require 'erb'

def defineLink( s )
	"<a href=\"http://www.google.com/search?q=define:+#{s}\">#{s}</a>"	
end

get '/' do
	template = ERB.new File.open('index.rhtml').read 
	template.result(binding) 
end

not_found do
	template = ERB.new File.open('404.rhtml').read 
	template.result(binding) 
end

