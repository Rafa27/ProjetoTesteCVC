# condig: utf-8

require 'magic_encoding'
require 'pages/Global/HomePageLocator'

class HomePage < HomePageLocator

    def initialize
    @driver = $browser
    @tela = 'Página Inicial'
    end

    def pesquisa_basica (origin, destino)
    validar_pagina_carregada
    preencher_origin(origin)
    preencher_destino(destino)
    clicar_elemento(btn_buscar, 'Buscar')
    aguardar_loading

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

end