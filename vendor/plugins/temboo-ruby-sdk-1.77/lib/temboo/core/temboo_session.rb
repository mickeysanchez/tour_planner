##############################################################################
#
# temboo.core.session.TembooSession
#
# Class for establishing HTTP access to the Temboo REST API.
#
# Ruby version 1.9
#
#
# Copyright 2013, Temboo Inc.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
# either express or implied. See the License for the specific
# language governing permissions and limitations under the License.
#
##############################################################################


require "json"
require "net/http"

require "temboo/core/choreography"
require "temboo/core/temboo_exception"

# Class for handling conections to the Temboo server.
class TembooSession
  @@client_identifier = "RubySDK_1.77"
  # This path is common to all Temboo requests.
  @@base_path = "/arcturus-web/api-1.0"

  # Return the base path used by all resources.
  # * *returns* :
  #   -  +base_path+ ->  String of base path for Arcturus API.
  def self.get_base_path()
    return @@base_path
  end

  # Identify the client for use in choreography executions.
  # * *returns* :
  #   - +client_identifier+  -> String of current Ruby SDK version.
  def self.get_identifier()
    return @@client_identifier
  end

  # Initialize session and store login info.
  # * *params*  :
  #   -  +accountName+  ->  String of your Temboo account name.
  #   -  +name+  ->  String of your Temboo application key name.
  #   -  +password+ ->  String of Temboo application key value.
  def initialize(accountName, appKeyName, appKeyValue)
    @accountName = accountName
    @appKeyName = appKeyName
    @appKeyValue = appKeyValue
    @scheme = "https"
    @port = "443"
  end

  # Return the host name that will be used in making requests.
  # * *returns* :
  #   -  +hostname+  -> String of host name for your Temboo account.
  def get_host()
    return @accountName + ".temboolive.com"
  end

  # Set up a get request and return its result.
  # This method creates a get request and passes it along to the 
  # method-agnostic make_request method.
  # * *params*  :
  #   - +path+  ->  String of path to resource with which you wish to
  #     interact.
  #   - +params+  ->  Optional hash of http parameters to send with your
  #     request.
  # * *returns*
  #   - +response+ -> Net/HTTP response object containing the Temboo server response
  #     to your request.
  def get_request(path, params = nil)
    # If we have params for this request, add them to the request path.
    if params
      path = [path, URI.encode_www_form(params)].join("?")
    end
    # Set up request.
    request = Net::HTTP::Get.new(path)
    request.basic_auth(@appKeyName, @appKeyValue)
    header_hash = {"Accept" => "application/json",
                   "Content-Type" => "application/json",
                   "x-temboo-domain" => [@accountName, "master"].join("/")}
    header_hash.keys.each do |header_name|
      request[header_name] = header_hash[header_name]
    end

    response = make_request(request)
    return response
  end

  # Set up a post request and return its result.
  # This method creates a post request and passes it along to the 
  # method-agnostic make_request method.
  # * *params*  :
  #   - +path+  ->  String of path to resource with which you wish to
  #     interact.
  #   - +body+ -> Optional hash of keys and values to be converted to a JSON
  #     string and send as the body of your post.
  #   - +params+  ->  Optional hash of http parameters to send with your
  #     request.
  # * *returns*
  #   - +response+ -> Net/HTTP response object containing the Temboo server response
  #     to your request.
  def post_request(path, body = nil, params = nil)
    if params
      path = [path, URI.encode_www_form(params)].join("?")
    end
    # Set up request.
    request = Net::HTTP::Post.new(path)
    request.basic_auth(@appKeyName, @appKeyValue)
    header_hash = {"Accept" => "application/json",
                   "Content-Type" => "application/json",
                   "x-temboo-domain" => [@accountName, "master"].join("/")}
    header_hash.keys.each do |header_name|
      request[header_name] = header_hash[header_name]
    end

    if body
      request.body = body
    end

    response = make_request(request)
    return response
  end

  # Make a request and return its result.
  # * *params*  :
  #   - +request+ ->  Net/HTTP request object configured by either the
  #     get_request or post_request methods above.
  # * *returns* :
  #   - +response+  -> Net/HTTP response object containing the Temboo server response
  #     to your request.
  def make_request(request)
	begin
		connection = Net::HTTP.start(get_host(), @port, :use_ssl => true)
		response = connection.request(request)
		resp_code = response.code.to_i()
	rescue SocketError
		raise (TembooHTTPError.new("Unable to reach the Temboo server. Verify that your Temboo account name is correct and a network connection is available."))
	end
    if resp_code >= 200 && resp_code < 300
      return response
    # Uh oh, something bad has happened.
    else
      server_message = response.body()
      # Figure out if we have a Temboo-specific error.
      if server_message.scan(/\{\"error\":\{\"message\":\"[^}]+\"\}\}/).any?
        # It's a Temboo error.
        error_message = "\nServer Message:\n" + 
          JSON.load(server_message)["error"]["message"]
        # But what sort?
        if resp_code == 401
          # Your credentials are incorrect.
          raise(TembooCredentialError.new(error_message))
        elsif resp_code == 404
          # What you want isn't there, or you aren't allowed to accesss it.
          raise(TembooObjectNotAccessibleError.new(error_message))
        else
          raise(TembooHTTPError.new(error_message))
        end
      else
        # It's not a Temboo error.
        error_message = "\nYou have encountered a non-Temboo error.\n" +
                        "The server responded:\n" +
                        server_message
        raise(error_message)
      end
    end
  end
end
