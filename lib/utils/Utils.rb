require 'magic_encoding'
require 'unicode_utils/upcase'

def clicar_elemento(locator_elemento, elemento)
#def clicar_elemento(locator_elemento)
    elemento_existe?(locator_elemento, "#{elemento} a ser clicado")
    locator_elemento.click
end

def obter_evidencia
    $encoded_img = $browser.driver.screenshot_as(:base64)
end

def elemento_existe?(locator_elemento, elemento = '')
    raise "Tela #{@tela} - Elemento '#{elemento}' não encontrado. Esperado: Elemento encontrado" unless locator_elemento.exist?
end

def preencher_input(locator_elemento, valor, elemento)
    elemento_existe?(locator_elemento, "TextField #{elemento}")
    locator_elemento.send_keys valor
end

def preencher_textfield(locator_elemento, valor, elemento)
    elemento_existe?(locator_elemento, "TextField #{elemento}")
    locator_elemento.set valor
end

def aguardar_loading
    count = 0
    sleep 1
    if $browser.form(id: 'continueForm').exists?
        begin
            while $browser.form(id: 'continueForm').visible? && count < 40
                sleep 1
                count += 1
            end
        rescue
        end
    end
    sleep 1
end

########################################################################################################################
# Popup_Dialog
########################################################################################################################

  def popup_contem_mensagem?(mensagem)
    if popup_dialog.span(text: /#{mensagem}/).exists?
      return true
    else
      return false
    end
  end

  def clicar_botao_popup(texto_botao)
    elemento_existe?(popup_dialog.span(text: texto_botao), "botao popup #{texto_botao} a ser clicado")
    popup_dialog.span(text: texto_botao).click
  end

  def popup_dialog
      @driver.div(class: /ui-dialog/&&/ui-overlay-visible/)
  end

  def popup_confirmacao(mensagem)
    raise "Mensagem inválida. Mensagem esperada: #{mensagem}." unless  popup_contem_mensagem?(mensagem)
    if popup_dialog.span(text: 'Sim').exists?
      clicar_botao_popup('Sim')
    elsif popup_dialog.span(text: 'OK').exists?
      clicar_botao_popup('OK')
    end
    aguardar_loading
  end
