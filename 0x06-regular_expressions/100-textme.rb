#!/usr/bin/env ruby

def extract_data_from_message(message)
  match_data = message.match(/^(\S+)\s+(\S+)\s+(.*)$/)
  sender = match_data[1]
  receiver = match_data[2]
  flags = match_data[3]
  [sender, receiver, flags]
end

def process_text_messages(text_messages)
  text_messages.each do |message|
    sender, receiver, flags = extract_data_from_message(message)
    puts "#{sender},#{receiver},#{flags}"
  end
end

# Assuming the text_messages array contains the input messages
text_messages = [
  "John +123456789 Jane -987654321 urgent",
  "Alice +11223344 Bob -55667788 important",
  "David +44332211 Emily -33221100",
]

process_text_messages(text_messages)

