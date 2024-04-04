class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel"
  end

  def receive(data)
    puts "Mensaje recibido en el servidor: #{data.inspect}" # Imprime el mensaje recibido en la consola
    ActionCable.server.broadcast("chat_channel", data)
  end
end
