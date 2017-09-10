ready = ->
  Typed.new '.element',
    strings: [
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
      'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.'
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready