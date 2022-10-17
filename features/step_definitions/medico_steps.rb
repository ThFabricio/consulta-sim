Given('que eu esteja na tela de cadastro de medico') do
  visit '/medicos/new'
  expect(page).to have_content('New medico')
end

When('eu preencher os campos com os dados do medico nome {string}, crm {string}, email {string}, cfp {string} e especialidade {string}') do |string, string2, string3, string4, string5|
  fill_in 'medico_nome', :with => string
  fill_in 'medico_crm', :with => string2
  fill_in 'medico_email', :with => string3
  fill_in 'medico_cpf', :with => string4
  fill_in 'medico_especialidade', :with => string5
end

When('eu clicar no botao cadastrar') do
  click_button 'Create Medico'
end

Then('o medico deve ser cadastrado com sucesso') do
  expect(page).to have_content('Medico was successfully created.')
end


Given('existe um Medico cujo nome é {string}, crm {string}, email {string}, cfp {string} e especialidade {string}') do |string, string2, string3, string4, string5|
  visit '/medicos/new'
  expect(page).to have_content('New medico')

  fill_in 'medico_nome', :with => string
  fill_in 'medico_crm', :with => string2
  fill_in 'medico_email', :with => string3
  fill_in 'medico_cpf', :with => string4
  fill_in 'medico_especialidade', :with => string5
  click_button 'Create Medico'
  expect(page).to have_content(string)
end

Given('eu esteja na tela de medico') do
  visit '/medicos'
  expect(page).to have_content('Medicos')
end

Given('visualizo o medico de cpf {string}') do |string|
  id = Medico.where(cpf: string).first.id
  find("a[href='/medicos/#{id}']").click
  expect(page).to have_content(string)
end

When('eu clico no botao deletar') do
  click_button 'Destroy this medico'
end

Then('o medico deve ser deletado com sucesso') do
  expect(page).to have_content('Medico was successfully destroyed.')
end

