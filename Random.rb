class Function
    attr_accessor :apprentices, :jour

    def addApprentice
        apprentices.delete("")
        puts "Veuillez entrer une liste d'apprenti (ex: appr1, appr2, ...)"
        appr = gets
        apprTab = appr.split(", ")
        apprTab.each do |appr|
            apprentices << appr
        end
    end

    def result
        randomNum = rand(apprentices.size)
        puts "#{apprentices[randomNum]} fera #{jour} jusqu'à 17h"
    end
end

class App
    fonction = Function.new
    fonction.apprentices = Array.new
    quitter = false

    while quitter==false
        puts "Veuillez choisir une option: \n1) Ajouter des apprentis\n2) Ajouter le jour\n3) Résultat aléatoire\n4) Quitter"
        choix = gets
        case choix
            when "1\n"
                fonction.addApprentice
            when "2\n"
                puts "veuillez entrer le jour : "
                fonction.jour = gets
            when "3\n"
                fonction.result
            when "4\n"
                quitter = true
            else
                puts "Mauvais choix"
        end
    end
    puts "Merci d'avoir utilisé notre programme, à bientôt !"
end