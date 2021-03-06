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
        @driver.input(class: 'txtOutboundDate grid-full hasDatepicker', id: 'txtOutboundDate')
    end

    def label_data_volta
        @driver.input(id: 'txtInboundDate')
    end

    def btn_buscar
        @driver.div(id: 'btnSearch')
    end

    def label_pacote
        @driver.div(class: 'titleBoxOfertas')
    end

    def btn_fechar_calendario
        @driver.button(class: 'ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all ui-state-hover')
    end

    def valor_minimo_consulta
        @driver.div(id: 'spnAirMinPrice')
    end

end