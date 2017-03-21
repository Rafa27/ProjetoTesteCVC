# encoding: utf-8

require 'magic_encoding'

home_page = HomePage.new

Dado(/^que o usuário coloque o destino de "([^"]*)" para "([^"]*)"$/) do |origin, destino|
home_page.pesquisa_origin_destino(origin, destino)
obter_evidencia
end

Então(/^tenha que viaje na data "([^"]*)" até "([^"]*)"$/) do |data_ida, data_volta|
home_page.pesquisa_ida_volta(data_ida, data_volta)
obter_evidencia
end

Transform /^(-?\d+)$/ do |valor_inicial_oferta|
  valor_inicial_oferta.to_i
end

Dado(/^O valor seja maio que "([^"]*)"$/) do |valor_inicial_oferta|
home_page.conferir_valor_inicial_oferta(valor_inicial_oferta)
end