app = {}

((io)-> app.socket = io.connect() )(window.io)


ready = ()->
    app.user = Math.floor(Math.random() * 1000) + 1 # 1 - 1000

    $('#user-number').html(app.user)
    
    $('#send').click(()-> app.socket.get('/newMessage', {message: $('#message').val(), user: app.user} ) )

    app.socket.on('newMessage', (data)->
        if data.user != app.user
            user = 'User ' +  data.user + ': '
        else
            user = 'You: '
        $('#messages-board').append( user + data.message + "\n")
    )

$(document).ready(ready)
$(document).on('page:load', ready)