require 'digest/sha1'

# Manages signatures used for password resets
class Signature
  attr_reader :email, :expiration, :payload, :secret_token, :username

  def initialize(username, email, expiration, secret_token, payload=nil)
    @username = username
    @email = email
    @expiration = expiration
    @secret_token = secret_token
    @payload = payload
  end

  # String representation of signature
  def to_s
    OpenSSL::Digest::SHA1.hexdigest(canonical_string)
  end

  # Lets you compare signature == "some string"
  def ==(other)
    to_s == other.to_s
  end

  # Checks if another signature matches and is not expired
  def valid_for?(other)
    self == other && !expired?
  end

  private

  def canonical_string
    ["--#{username}", "--#{expiration}", "--#{email}", "--#{payload}", "--#{secret_token}"].join
  end

  def expired?
    Time.zone.now > Time.zone.at(expiration.to_i)
  end
end
