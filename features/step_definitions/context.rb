Soit('la liste des documents affichée') do
  visit '/'
end

Soit('{string} le document principal') do |title|
  visit '/'
  click_on_icon_next_to('focus', title)
end

Soit('{string} une des sources') do |title|
  expect(find('.sources')).to have_content title
end

Soit('{string} une des gloses') do |title|
  expect(find('.gloses')).to have_content title
end

<<<<<<< HEAD
Soit('je vois les sources') do
  expect(find('.sources'))
end

Soit('je vois les gloses') do
  expect(find('.gloses'))
end

Soit('je ne vois pas les sources') do
  expect(find('.sources', :visible => :hidden))
end

Soit('je ne vois pas les gloses') do
  expect(find('.gloses', :visible => :hidden))
end

Soit('je suis sur téléphone') do
  resize_window(550, 800)
end

Soit('je suis sur ordinateur') do
  resize_window(1080, 1920)
=======
Soit('{string} le parcours actuel') do |title|
  expect(find('.navBar-collection')).to have_content title
end

Soit('{string} le parcours dans lequel est présent notre document principal') do |title|
  expect(find('.relatedCollectionsDisplayer')) to have_content title
>>>>>>> f6aebc6eab9ac3acb2fb719192248be7b3d614b9
end

Soit('une session active avec mon compte') do
  sign_in('alice', 'whiterabbit')
end

Soit('un document existant affiché comme document principal') do
  visit '/'
  sign_in('alice', 'whiterabbit')
  click_on_icon('create-document')
  sign_out
end

Soit("un document dont je suis l'auteur affiché comme glose") do
  visit '/'
  sign_in('alice', 'whiterabbit')
  click_on_icon('create-document')
  click_on_icon('create-document')
  sign_out
end

Soit("un document dont je ne suis pas l'auteur affiché comme glose") do
  visit '/'
  sign_in('bill', 'madhatter')
  click_on_icon('create-document')
  click_on_icon('create-document')
  sign_out
end

Soit('un document existant contenant :') do |markdown|
  visit '/'
  sign_in('bill', 'madhatter')
  click_on_icon('create-document')
  click_on_icon('create-document')
  click_on_text('content')
  find('textarea').fill_in with: markdown
  leave_textarea
  click_on_icon('focus')
  sign_out
end

Soit("le texte {string} visible dans la navbar") do |text|
  expect(find('.navbar-collec')).to have_content text
end

Soit("{string} le document actuel dans la collection") do |text|
  expect(find('.runningHead')).to have_content text
end

Soit('{string} l\'id du document actuel dans la collection ayant l\'id {string}') do |document, collection|
  go_on_document_inside_collection(document, collection)
end

Soit('{string} autre collection dans laquelle le document principal est contenu') do |text|
  expect(find('.related-collections-displayer')).to have_content text
end
