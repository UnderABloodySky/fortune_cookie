# frozen_string_literal: truerequire "sinatra"
require "json"
require_relative "phrase_maker"
require "rack/cors"

use Rack::Cors do
  allow do
    origins "*"
    resource "*", headers: :any, methods: %i[get post put delete]
  end
end

get "/" do
  phrase_maker = PhraseMaker.new
  phrase = phrase_maker.give_a_phrase
  content_type :json
  { phrase: phrase }.to_json
end

Sinatra::Application.run!
