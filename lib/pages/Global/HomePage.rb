# condig: utf-8

require 'magic_encoding'
require 'pages/Global/HomePageLocator'

class HomePage < HomePageLocator

    def initialize
    @driver = $browser
    @tela = 'Página Inicial'
    end

    def pesquisa_origin_destino (origin, destino)
    validar_pagina_carregada
    preencher_origin(origin)
    preencher_destino(destino)
    
    #aguardar_loading
    end

    def pesquisa_ida_volta (data_ida, data_volta)
    preencher_data_ida(data_ida)
    preencher_data_volta(data_volta)
    clicar_elemento(btn_buscar, 'Buscar')
    end

###################################################################################

    def validar_pagina_carregada
    elemento_existe?(label_pacote, 'Pacotes')
    end

    def preencher_origin(origin)
        preencher_input(label_local_origin, origin, 'Origin')
    end 

    def preencher_destino(destino)
        preencher_input(label_local_destino, destino, 'Destino')
    end

    def preencher_data_ida(data_ida)
        preencher_input(label_data_ida, data_ida, 'Ida')
    end

    def preencher_data_volta(data_volta)
        preencher_input(label_data_volta, data_volta, 'Volta')
    end

end