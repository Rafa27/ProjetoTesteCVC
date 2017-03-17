# encoding: utf-8

require 'magic_encoding'

home_page = HomePage.new

Dado(/^que o usuário coloque o destino de "([^"]*)" para "([^"]*)"$/) do |origin, destino|
home_page.pesquisa_basica(origin, destino)

end