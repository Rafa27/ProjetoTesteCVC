# condig: utf-8

require 'magic_encoding'

class HomePageLocator
    
     #LOCATORS
    def label_local_origin
        @driver.input(id: 'txtOrigin')
    end 
    
    def label_local_destino
        @driver.input(id: 'txtDestination')
    end
    
    def label_data_ida
        @driver.input(id: 'txtOutboundDate')
    end

    def label_data_volta
        @driver.input(id: 'txtInboundDate')
    end

    def btn_buscar
        @driver.button(id: 'btnSearch')
    end

    def label_pacote
        @driver.div(class: 'titleBoxOfertas')
    end

end