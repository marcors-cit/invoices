# encoding: utf-8

Dado(/^que eu tenho os seguintes dados de acesso:$/) do |table|
  @email = table.rows_hash['email']
  @password = table.rows_hash['password']
  visit 'https://ninvoices-qa.herokuapp.com/login'
end

Quando(/^faço login$/) do
  find('#email').set @email
  find('input[type=password]').set @password
  find('button[id*=btnLogin').click
end

Então(/^vejo o Dashboard com a descrição "([^"]*)"$/) do |dash|
  title = find('#content h3').text
  expect(title).to eql dash
end

Então(/^a mensagem "([^"]*)"$/) do |msg|
  title2 = find('#title_row')
  expect(title2).to have_content msg
end