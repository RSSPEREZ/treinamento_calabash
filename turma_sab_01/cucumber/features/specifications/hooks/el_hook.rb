Before '@dados_cadastrais' do
  @senha = Faker::Base.numerify("inicial####")
  @phone_number = Faker::Base.numerify("119########")
  @name = Faker::StarWars.character
  @data_aniversario = Time.now.strftime("%d/%m/1986")
  @email = Faker::Internet.email
end
