class PagesController < ApplicationController
  def home
    welcome_arr = [ "Mirëdita",  "Ahalan", "Parev", "Zdravei", "Nei Ho", "Dobrý", "Goddag", "Goede", "Hello", "Saluton", "Hei", "Bonjour", "Guten Tag", "Gia'sou", "Aloha", "Shalom", "Namaste", "Jó napot", "Góðan daginn", "Halo", "Qanuipit?", "Dia dhuit", "Ciao", "Kon-nichiwa", "An-nyong Ha-se-yo", "Salve", "Ni hao", "Hallo", "Dzien' dobry", "Olá", "Bunã ziua", "Zdravstvuyte", "Hola", "Jambo", "Hej", "Sa-wat-dee", "Merhaba", "Vitayu", "Xin chào", "Sut Mae?", "Sholem Aleychem", "Sawubona" ]

    random = Random.rand(0..41)
    @greeting = welcome_arr[random]

  end
end
