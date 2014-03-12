require "temboo"

module Instapaper



  ##############################################################################
  #
  # AddURL
  #
  # Add a document to an Instapaper account.
  #
  ##############################################################################

  class AddURL < Choreography

    ####
    #  Create a new instance of the AddURL Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instapaper/AddURL")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AddURLInputSet
    ####
    def new_input_set()
      return AddURLInputSet.new()
    end

    def make_result_set()
      return AddURLResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = AddURLResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AddURL
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AddURLInputSet < Choreography::InputSet

      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, string) Your Instapaper password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Selection input for this Choreo. 
      # 
      # @param String - (optional, string) Enter a description of the URL being added.
      ###

      def set_Selection(value)
        set_input("Selection", value)
      end
      #### 
      # Set the value of the Title input for this Choreo. 
      # 
      # @param String - (optional, string) Enter a titile for the uploaded URL. If no title is provided, Instapaper will crawl the URL to detect a title.
      ###

      def set_Title(value)
        set_input("Title", value)
      end
      #### 
      # Set the value of the URL input for this Choreo. 
      # 
      # @param String - (required, string) Enter the URL of the document that is being added to an Instapaper account.
      ###

      def set_URL(value)
        set_input("URL", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) Your Instapaper username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AddURL Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AddURLResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (integer) The response from Instapaper. Successful reqests will return a 201 status code.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AddURL



  ##############################################################################
  #
  # Authenticate
  #
  # Validate an Instapaper account.
  #
  ##############################################################################

  class Authenticate < Choreography

    ####
    #  Create a new instance of the Authenticate Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instapaper/Authenticate")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AuthenticateInputSet
    ####
    def new_input_set()
      return AuthenticateInputSet.new()
    end

    def make_result_set()
      return AuthenticateResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = AuthenticateResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Authenticate
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AuthenticateInputSet < Choreography::InputSet

      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, string) Your Instapaper password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) Your Instapaper username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Authenticate Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AuthenticateResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Instapaper. Successful reqests will return a 200 status code.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Authenticate




end # module Instapaper