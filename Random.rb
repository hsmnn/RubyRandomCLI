class Function
    attr_accessor :apprentices

    def addApprentice
        puts("Veuillez entrer une liste d'apprenti (ex: appr1, appr2, ...)")
        appr = gets
        apprTab = appr.split(", ")
        apprTab.each do |appr|
            apprentices << appr
        end
    end
end

class App
    fonction = Function.new
    fonction.apprentices = Array.new
end