# frozen_string_literal: true
require 'uri'
require 'forwardable'
# BEGIN
class Url
  extend Forwardable
  include Comparable

  def initialize url_string
    @uri = URI(url_string)
  end

  def_delegators :@uri, :host, :scheme, :port
  def_delegator :@uri, :==

  def ==(other)
    self.host == other.host &&
      self.scheme == other.scheme &&
      self.port == other.port &&
      self.query_params == other.query_params
  end

  def query_params
    return {} if @uri.query.nil?

    @uri.query.split('&').each_with_object({}) do |pair, acc|
      (key, value) = pair.split('=')

      acc[key.to_sym] = value
    end
  end

  def query_param(key, default = nil)
    self.query_params[key] || default
  end
end
# END

