Quand('je me focalise sur {string}') do |title|
  click_on_icon_next_to('focus', title)
end

Quand('je consulte le contenu de {string}') do |title|
  click_on_icon_next_to('open', title)
end

Quand("j'essaie de créer un nouveau document") do
  click_on_icon('create-document')
end

Quand("j'essaie de remplacer les métadonnées de la glose par :") do |metadata|
  click_on_text('metadata')
  find('textarea').fill_in with: metadata
  leave_textarea
end

Quand("j'attache le type {string}") do |type|
  click_on_icon('typeIcon')
  find('.typeBadge', text: type).click
end

Quand("j'essaie de remplacer le contenu de la glose par :") do |markdown|
  click_on_text('content')
  find('textarea').fill_in with: markdown
  leave_textarea
end

<<<<<<< HEAD
Quand('je crée une collection à partir de ce document') do
  click_on_icon('create-collection')
end

Quand("je navigue vers le document suivant") do
  click_on('->')
=======
Quand('je navigue vers le parcours {string}') do |title|
  click_on_icon_next_to('focus', title)
>>>>>>> f6aebc6eab9ac3acb2fb719192248be7b3d614b9
end