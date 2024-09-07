class BotController < ApplicationController
  def webhook
    message = params[:text]
    if message && message.downcase == 'hello bot'
      send_message('Hello! How can I assist you today?')
    end
    head :ok
  end

  private

  def send_message(text)
    bot_id = ENV['GROUPME_BOT_ID']
    HTTParty.post('https://api.groupme.com/v3/bots/post', body: {
      bot_id: bot_id,
      text: text
    }.to_json, headers: { 'Content-Type' => 'application/json' })
  end
end
