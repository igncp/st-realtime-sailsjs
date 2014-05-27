module.exports = {

    index: (req, res)->
        res.view()

    newMessage: (req, res)->
        sails.io.sockets.emit("newMessage", req.body )
        res.json({ success: true })

    _config: {}


};