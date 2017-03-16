# condig: utf-8

require 'magic_encoding'

class HomePage

    #LOCATORS
    def label_local_origin
        @driver.input(input: 'txtOrigin')
    end 
    
    def label_local_destino
        @driver.input(input: 'txtDestination')
    end
    
    def label_data_ida
        @driver.input(input: 'txtOutboundDate')
    end

    def label_data_volta
        @driver.input(input: 'txtInboundDate')
    end

    def btn_buscar
        @driver.button(id: 'btnSearch')
    end

end