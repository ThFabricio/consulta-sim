Given('que eu esteja na tela de cadastro de paciente') do
  visit '/pacientes/new'
  expect(page).to have_content('New paciente')
end

When('eu preencho os campos nome {string}, data {string}, cpf {string}, email {string}, logradouro {string}, bairro {string}, cidade {string}, complemento {string} e cep {string}') do |string, string2, string3, string4, string5, string7, string8, string9, string10|
  fill_in 'paciente[nome]', with: string
  fill_in 'paciente[data]', with: string2
  fill_in 'paciente[cpf]', with: string3
  fill_in 'paciente[email]', with: string4
  fill_in 'paciente[endereco_attributes][logradoro]', with: string5
  fill_in 'paciente[endereco_attributes][bairro]', with: string7
  fill_in 'paciente[endereco_attributes][cidade]', with: string8
  fill_in 'paciente[endereco_attributes][complemento]', with: string9
  fill_in 'paciente[endereco_attributes][cep]', with: string10
end

When('eu clicar em salvar') do
  click_button 'Create Paciente'
end

Then('o paciente deve ser cadastrado com sucesso') do
  expect(page).to have_content 'Paciente was successfully created.'
end

Given('eu tenha um paciente cadastrado com cpf {string}') do |string|
  visit '/pacientes/new'
  expect(page).to have_content('New paciente')

  fill_in 'paciente[cpf]', with: string
  fill_in 'paciente[nome]', with: 'João'
  fill_in 'paciente[data]', with: '01/01/2000'
  fill_in 'paciente[email]', with: 'joaodojao@email'
  fill_in 'paciente[endereco_attributes][logradoro]', with: 'Rua'
  fill_in 'paciente[endereco_attributes][bairro]', with: 'Bairro'
  fill_in 'paciente[endereco_attributes][cidade]', with: 'Cidade'
  fill_in 'paciente[endereco_attributes][complemento]', with: 'Complemento'
  fill_in 'paciente[endereco_attributes][cep]', with: '12345678'
  click_button 'Create Paciente'
  expect(page).to have_content (string)
end

When('eu clico no paciente com cpf {string}') do |string|
  id = Paciente.where(cpf: string).first.id
  find("a[href='/pacientes/#{id}']").click
  expect(page).to have_content(string)
end

When('eu clico em deletar o paciente') do
  click_link 'Destroy this paciente'
end

Then('o paciente deve ser deletado com sucesso') do
  expect(page).to have_content 'Paciente was successfully destroyed.'
end
