require "temboo"

module Xively




  module APIKeys



    ##############################################################################
    #
    # CreateKey
    #
    # Creates a new APIKey.
    #
    ##############################################################################

    class CreateKey < Choreography

      ####
      #  Create a new instance of the CreateKey Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/APIKeys/CreateKey")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateKeyInputSet
      ####
      def new_input_set()
        return CreateKeyInputSet.new()
      end

      def make_result_set()
        return CreateKeyResultSet.new()
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
        results = CreateKeyResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateKey
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateKeyInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The master API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessMethods input for this Choreo. 
        # 
        # @param String - (conditional, string) Comma-separated input containing one or more allowed HTTP methods that the key is allowed. Valid values: get, put, post, and/or delete. Ex.: "put,post". Required unless writing your own CustomKey.
        ###

        def set_AccessMethods(value)
          set_input("AccessMethods", value)
        end
        #### 
        # Set the value of the CustomKey input for this Choreo. 
        # 
        # @param String - (optional, any) Optional Custom key to send to Xively. Type and format depends on CustomType. Please see documentation for more information on constructing your own body. If used, all other scalar inputs are ignored.
        ###

        def set_CustomKey(value)
          set_input("CustomKey", value)
        end
        #### 
        # Set the value of the CustomPermissions input for this Choreo. 
        # 
        # @param String - (optional, any) Optional custom permissions for advanced configuration. Type and format depends on CustomType. If specified, ignores SourceIP, ResourcesData and AccessMethodsData.
        ###

        def set_CustomPermissions(value)
          set_input("CustomPermissions", value)
        end
        #### 
        # Set the value of the CustomType input for this Choreo. 
        # 
        # @param String - (optional, string) The datatype that is being input if adding custom permission objects. Valid values are "json" (the default) and "xml".
        ###

        def set_CustomType(value)
          set_input("CustomType", value)
        end
        #### 
        # Set the value of the ExpirationDate input for this Choreo. 
        # 
        # @param String - (optional, date) Expiration date for the key, after which it won't work. Must be in ISO 8601 format, default zone is UTC.  Ex: 2013-05-07T00:00:00Z.
        ###

        def set_ExpirationDate(value)
          set_input("ExpirationDate", value)
        end
        #### 
        # Set the value of the Label input for this Choreo. 
        # 
        # @param String - (conditional, string) A label by which the key can be referenced. Required unless writing your own CustomKey.
        ###

        def set_Label(value)
          set_input("Label", value)
        end
        #### 
        # Set the value of the PrivateAccess input for this Choreo. 
        # 
        # @param String - (optional, string) Flag that indicates whether this key can access private resources belonging to the user. To turn on, input "true", leave blank for "false".
        ###

        def set_PrivateAccess(value)
          set_input("PrivateAccess", value)
        end
        #### 
        # Set the value of the ResourceFeedID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify a particular FeedID that the new APIKey should have access to. If not specified, the new APIKey permissions will apply to all feeds you are authorized to access.
        ###

        def set_ResourceFeedID(value)
          set_input("ResourceFeedID", value)
        end
        #### 
        # Set the value of the SourceIP input for this Choreo. 
        # 
        # @param String - (optional, string) An IP address that, when specified, limits incoming requests to that specific IP address only.
        ###

        def set_SourceIP(value)
          set_input("SourceIP", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateKey Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateKeyResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NewAPIKey" output from this Choreo execution
      	#
      	# @return String - (string) The new APIKey obtained from the APIKeyLocation returned by this Choreo.
      	####
      	def get_NewAPIKey()
      	  return @outputs["NewAPIKey"]
      	end
      	####
      	# Retrieve the value for the "APIKeyLocation" output from this Choreo execution
      	#
      	# @return String - (string) The URL of the newly created APIKey.
      	####
      	def get_APIKeyLocation()
      	  return @outputs["APIKeyLocation"]
      	end
      end

    end # class CreateKey



    ##############################################################################
    #
    # DeleteKey
    #
    # Deletes a specific API Key.
    #
    ##############################################################################

    class DeleteKey < Choreography

      ####
      #  Create a new instance of the DeleteKey Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/APIKeys/DeleteKey")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteKeyInputSet
      ####
      def new_input_set()
        return DeleteKeyInputSet.new()
      end

      def make_result_set()
        return DeleteKeyResultSet.new()
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
        results = DeleteKeyResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteKey
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteKeyInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key you would like to delete.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the MasterAPIKey input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a MasterAPIKey with more permissions if the APIKey you would like to delete does not have sufficient permissions.
        ###

        def set_MasterAPIKey(value)
          set_input("MasterAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteKey Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteKeyResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a valid deletion, the code returned should be 200.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class DeleteKey



    ##############################################################################
    #
    # ListAllKeys
    #
    # Returns a JSON or XML representation of all of the user's keys.
    #
    ##############################################################################

    class ListAllKeys < Choreography

      ####
      #  Create a new instance of the ListAllKeys Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/APIKeys/ListAllKeys")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllKeysInputSet
      ####
      def new_input_set()
        return ListAllKeysInputSet.new()
      end

      def make_result_set()
        return ListAllKeysResultSet.new()
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
        results = ListAllKeysResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllKeys
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllKeysInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The master API Key for which you would like to return a list of all the user's keys.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllKeys Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllKeysResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Xively.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAllKeys



    ##############################################################################
    #
    # ReadKey
    #
    # Returns a JSON or XML representation of the specified APIKey.
    #
    ##############################################################################

    class ReadKey < Choreography

      ####
      #  Create a new instance of the ReadKey Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/APIKeys/ReadKey")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ReadKeyInputSet
      ####
      def new_input_set()
        return ReadKeyInputSet.new()
      end

      def make_result_set()
        return ReadKeyResultSet.new()
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
        results = ReadKeyResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ReadKey
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ReadKeyInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key you would like to return information on.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the MasterAPIKey input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a MasterAPIKey with more permissions if the APIKey you would like to view does not have sufficient (read) permissions.
        ###

        def set_MasterAPIKey(value)
          set_input("MasterAPIKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ReadKey Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ReadKeyResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Xively.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ReadKey



    ##############################################################################
    #
    # RegenerateKey
    #
    # Allows you to regenerate a new key with the same attributes and permissions as a previous key.
    #
    ##############################################################################

    class RegenerateKey < Choreography

      ####
      #  Create a new instance of the RegenerateKey Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/APIKeys/RegenerateKey")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RegenerateKeyInputSet
      ####
      def new_input_set()
        return RegenerateKeyInputSet.new()
      end

      def make_result_set()
        return RegenerateKeyResultSet.new()
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
        results = RegenerateKeyResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RegenerateKey
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RegenerateKeyInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key you would like to regenerate. On successful regeneration, this API Key will no longer be valid.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the MasterAPIKey input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a MasterAPIKey with sufficient permissions if the APIKey you would like to regenerate does not have the permissions to do so.
        ###

        def set_MasterAPIKey(value)
          set_input("MasterAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RegenerateKey Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RegenerateKeyResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NewAPIKey" output from this Choreo execution
      	#
      	# @return String - (string) The regenerated APIKey obtained from the APIKeyLocation returned by this Choreo.
      	####
      	def get_NewAPIKey()
      	  return @outputs["NewAPIKey"]
      	end
      	####
      	# Retrieve the value for the "APIKeyLocation" output from this Choreo execution
      	#
      	# @return String - (string) The URL of the newly regenerated APIKey.
      	####
      	def get_APIKeyLocation()
      	  return @outputs["APIKeyLocation"]
      	end
      end

    end # class RegenerateKey



    ##############################################################################
    #
    # UpdateKey
    #
    # Updates an existing APIKey.
    #
    ##############################################################################

    class UpdateKey < Choreography

      ####
      #  Create a new instance of the UpdateKey Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/APIKeys/UpdateKey")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateKeyInputSet
      ####
      def new_input_set()
        return UpdateKeyInputSet.new()
      end

      def make_result_set()
        return UpdateKeyResultSet.new()
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
        results = UpdateKeyResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateKey
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateKeyInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key you would like to update.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessMethods input for this Choreo. 
        # 
        # @param String - (conditional, string) Comma-separated input containing one or more allowed HTTP methods that the key is allowed. Valid values: get, put, post, and/or delete. Ex.: "put,post". Required unless writing your own CustomKey.
        ###

        def set_AccessMethods(value)
          set_input("AccessMethods", value)
        end
        #### 
        # Set the value of the CustomKey input for this Choreo. 
        # 
        # @param String - (optional, any) Optional Custom key to sent to Xively. Type and format depends on CustomType. Please see documentation for more information on constructing your own body. If used all other scalar inputs are ignored.
        ###

        def set_CustomKey(value)
          set_input("CustomKey", value)
        end
        #### 
        # Set the value of the CustomPermissions input for this Choreo. 
        # 
        # @param String - (optional, any) Optional custom permissions for advanced configuration. Type and format depends on CustomType. If specified ignores SourceIP, ResourcesData and AccessMethodsData.
        ###

        def set_CustomPermissions(value)
          set_input("CustomPermissions", value)
        end
        #### 
        # Set the value of the CustomType input for this Choreo. 
        # 
        # @param String - (optional, string) The datatype that is being input if adding custom permission objects. Valid values are "json" (the default) and "xml".
        ###

        def set_CustomType(value)
          set_input("CustomType", value)
        end
        #### 
        # Set the value of the Label input for this Choreo. 
        # 
        # @param String - (conditional, string) A label by which the key can be referenced. Required unless writing your own CustomKey.
        ###

        def set_Label(value)
          set_input("Label", value)
        end
        #### 
        # Set the value of the MasterAPIKey input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a MasterAPIKey with more permissions if the APIKey you would like to view does not have sufficient (write) permissions.
        ###

        def set_MasterAPIKey(value)
          set_input("MasterAPIKey", value)
        end
        #### 
        # Set the value of the PrivateAccess input for this Choreo. 
        # 
        # @param String - (optional, string) Flag that indicates whether this key can access private resources belonging to the user. To turn on, input "true", leave blank for "false".
        ###

        def set_PrivateAccess(value)
          set_input("PrivateAccess", value)
        end
        #### 
        # Set the value of the ResourceFeedID input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a particular FeedID that the APIKey should have access to. If not specified, the APIKey permissions will apply to all feeds you are authorized to access.
        ###

        def set_ResourceFeedID(value)
          set_input("ResourceFeedID", value)
        end
        #### 
        # Set the value of the SourceIP input for this Choreo. 
        # 
        # @param String - (optional, string) An IP address that, when specified, limits incoming requests to that specific IP address only.
        ###

        def set_SourceIP(value)
          set_input("SourceIP", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateKey Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateKeyResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful APIKey update, the code should be 200.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class UpdateKey




  end # module APIKeys

  module Devices



    ##############################################################################
    #
    # ActivateDevice
    #
    # Activates (or reactivates) a device given an authorization code. Returns the device API Key and Feed ID. 
    #
    ##############################################################################

    class ActivateDevice < Choreography

      ####
      #  Create a new instance of the ActivateDevice Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Devices/ActivateDevice")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ActivateDeviceInputSet
      ####
      def new_input_set()
        return ActivateDeviceInputSet.new()
      end

      def make_result_set()
        return ActivateDeviceResultSet.new()
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
        results = ActivateDeviceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ActivateDevice
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ActivateDeviceInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) Not required for first activation. If re-activating a device, either the original device APIKey returned from the first activation or the master APIKey is required.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ActivationCode input for this Choreo. 
        # 
        # @param String - (required, string) Activation code provided when pre-registering a device with a serial number.
        ###

        def set_ActivationCode(value)
          set_input("ActivationCode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ActivateDevice Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ActivateDeviceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Xively. Upon successful activation, it returns a JSON array containing the device APIKey, FeedID and Datastreams.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ActivateDevice



    ##############################################################################
    #
    # CreateDevice
    #
    # Creates a new device in a product batch for each serial number provided. When created, each device will be in a pre-registered state awaiting activation. Creating a non-product-affiliated device is not available through the Xively API, and can only be done through the browser-only Xively Developer Workbench.
    #
    ##############################################################################

    class CreateDevice < Choreography

      ####
      #  Create a new instance of the CreateDevice Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Devices/CreateDevice")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateDeviceInputSet
      ####
      def new_input_set()
        return CreateDeviceInputSet.new()
      end

      def make_result_set()
        return CreateDeviceResultSet.new()
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
        results = CreateDeviceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateDevice
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateDeviceInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ProductID input for this Choreo. 
        # 
        # @param String - (required, string) The product ID for the device you would like to add.
        ###

        def set_ProductID(value)
          set_input("ProductID", value)
        end
        #### 
        # Set the value of the SerialNumbers input for this Choreo. 
        # 
        # @param String - (required, string) Comma-separated list of device serial numbers to add. Allowed characters: case-sensitive alphanumeric characters (Ab3) and the following characters: "+", "-", "_", and ":". Ex: abc:123,aBc-124.
        ###

        def set_SerialNumbers(value)
          set_input("SerialNumbers", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateDevice Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateDeviceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful device creation, the code should be 201.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class CreateDevice



    ##############################################################################
    #
    # DeleteDevice
    #
    # Deletes the device matching the provided serial number.
    #
    ##############################################################################

    class DeleteDevice < Choreography

      ####
      #  Create a new instance of the DeleteDevice Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Devices/DeleteDevice")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteDeviceInputSet
      ####
      def new_input_set()
        return DeleteDeviceInputSet.new()
      end

      def make_result_set()
        return DeleteDeviceResultSet.new()
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
        results = DeleteDeviceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteDevice
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteDeviceInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ProductID input for this Choreo. 
        # 
        # @param String - (required, string) The product ID for the device you would like to delete.
        ###

        def set_ProductID(value)
          set_input("ProductID", value)
        end
        #### 
        # Set the value of the SerialNumber input for this Choreo. 
        # 
        # @param String - (required, string) The serial number for the device you would like to delete.
        ###

        def set_SerialNumber(value)
          set_input("SerialNumber", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteDevice Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteDeviceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful deletion, the status code should be 200.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class DeleteDevice



    ##############################################################################
    #
    # ListAllDevices
    #
    # Returns a paged list of devices belonging to a specific product.
    #
    ##############################################################################

    class ListAllDevices < Choreography

      ####
      #  Create a new instance of the ListAllDevices Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Devices/ListAllDevices")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllDevicesInputSet
      ####
      def new_input_set()
        return ListAllDevicesInputSet.new()
      end

      def make_result_set()
        return ListAllDevicesResultSet.new()
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
        results = ListAllDevicesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllDevices
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllDevicesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Activated input for this Choreo. 
        # 
        # @param String - (optional, string) Filter for returning device serial numbers in the requested activation state. Valid values: "all" (default), "true" or "false".
        ###

        def set_Activated(value)
          set_input("Activated", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicates which page of results you are requesting. Starts from 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Defines how many results to return per page (1 to 1000, default is 30).
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the ProductID input for this Choreo. 
        # 
        # @param String - (required, string) The ID for the product you would like to retrieve the list of devices for.
        ###

        def set_ProductID(value)
          set_input("ProductID", value)
        end
        #### 
        # Set the value of the SerialNumber input for this Choreo. 
        # 
        # @param String - (optional, string) Filter by providing an exact or partial serial number string. Letters are case-insensitive. Ex: inputting 'abc' will return serials that contain 'Abc',  'aBc' and 'abc', but not 'ab-c'.
        ###

        def set_SerialNumber(value)
          set_input("SerialNumber", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllDevices Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllDevicesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Xively.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAllDevices



    ##############################################################################
    #
    # ReadDevice
    #
    # Returns a JSON representation of the device with the provided serial number.
    #
    ##############################################################################

    class ReadDevice < Choreography

      ####
      #  Create a new instance of the ReadDevice Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Devices/ReadDevice")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ReadDeviceInputSet
      ####
      def new_input_set()
        return ReadDeviceInputSet.new()
      end

      def make_result_set()
        return ReadDeviceResultSet.new()
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
        results = ReadDeviceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ReadDevice
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ReadDeviceInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ProductID input for this Choreo. 
        # 
        # @param String - (required, string) The product ID of the device you would like to read.
        ###

        def set_ProductID(value)
          set_input("ProductID", value)
        end
        #### 
        # Set the value of the SerialNumber input for this Choreo. 
        # 
        # @param String - (required, string) The serial number for the device you would like to read.
        ###

        def set_SerialNumber(value)
          set_input("SerialNumber", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ReadDevice Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ReadDeviceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Xively.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ReadDevice



    ##############################################################################
    #
    # UpdateDevice
    #
    # Updates a single device's serial number. 
    #
    ##############################################################################

    class UpdateDevice < Choreography

      ####
      #  Create a new instance of the UpdateDevice Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Devices/UpdateDevice")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateDeviceInputSet
      ####
      def new_input_set()
        return UpdateDeviceInputSet.new()
      end

      def make_result_set()
        return UpdateDeviceResultSet.new()
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
        results = UpdateDeviceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateDevice
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateDeviceInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the NewSerialNumber input for this Choreo. 
        # 
        # @param String - (required, string) The new serial number you want to update the existing device to. Allowed characters: case-sensitive alphanumeric characters (Ab3) and certain characters: "+", "-", "_", and ":". Ex: abc:123,aBc-124.
        ###

        def set_NewSerialNumber(value)
          set_input("NewSerialNumber", value)
        end
        #### 
        # Set the value of the ProductID input for this Choreo. 
        # 
        # @param String - (required, string) The product ID for the device you would like to update.
        ###

        def set_ProductID(value)
          set_input("ProductID", value)
        end
        #### 
        # Set the value of the SerialNumber input for this Choreo. 
        # 
        # @param String - (required, string) The existing serial number for the device you would like to update.
        ###

        def set_SerialNumber(value)
          set_input("SerialNumber", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateDevice Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateDeviceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful device update, the code should be 200.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class UpdateDevice




  end # module Devices

  module Products



    ##############################################################################
    #
    # CreateProduct
    #
    # Creates a new product batch.
    #
    ##############################################################################

    class CreateProduct < Choreography

      ####
      #  Create a new instance of the CreateProduct Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Products/CreateProduct")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateProductInputSet
      ####
      def new_input_set()
        return CreateProductInputSet.new()
      end

      def make_result_set()
        return CreateProductResultSet.new()
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
        results = CreateProductResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateProduct
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateProductInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CustomProduct input for this Choreo. 
        # 
        # @param String - (optional, json) Optional custom configuration for creating your product in JSON. If you use this field the other optional parameters will be ignored. See Choreo description and Xively documentation for details.
        ###

        def set_CustomProduct(value)
          set_input("CustomProduct", value)
        end
        #### 
        # Set the value of the Datastreams input for this Choreo. 
        # 
        # @param String - (optional, json) Default device datastream JSON array. Every newly created device in this product will have this default datastream. Ex: [{"id":"channel1"},{"id":"demo"}]
        ###

        def set_Datastreams(value)
          set_input("Datastreams", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) Description of the product.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (conditional, string) Name of the product. Required unless using the CustomProduct JSON input.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the Private input for this Choreo. 
        # 
        # @param String - (optional, string) Default device feed privacy settings. Valid values: "true", "false" (default).
        ###

        def set_Private(value)
          set_input("Private", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateProduct Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateProductResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful product creation, the code should be 201.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      	####
      	# Retrieve the value for the "ProductID" output from this Choreo execution
      	#
      	# @return String - (string) The ProductID obtained from the ProductLocation returned by this Choreo.
      	####
      	def get_ProductID()
      	  return @outputs["ProductID"]
      	end
      	####
      	# Retrieve the value for the "ProductLocation" output from this Choreo execution
      	#
      	# @return String - (string) The URL of the newly created product.
      	####
      	def get_ProductLocation()
      	  return @outputs["ProductLocation"]
      	end
      end

    end # class CreateProduct



    ##############################################################################
    #
    # DeleteProduct
    #
    # Deletes a product batch. This will also delete all devices and feeds associated with the specified product batch.
    #
    ##############################################################################

    class DeleteProduct < Choreography

      ####
      #  Create a new instance of the DeleteProduct Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Products/DeleteProduct")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteProductInputSet
      ####
      def new_input_set()
        return DeleteProductInputSet.new()
      end

      def make_result_set()
        return DeleteProductResultSet.new()
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
        results = DeleteProductResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteProduct
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteProductInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ProductID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the product you are trying to delete.
        ###

        def set_ProductID(value)
          set_input("ProductID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteProduct Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteProductResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful product deletion, the code should be 200.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class DeleteProduct



    ##############################################################################
    #
    # ListAllProducts
    #
    # Returns a JSON representation of all products associated with the specified APIKey.
    #
    ##############################################################################

    class ListAllProducts < Choreography

      ####
      #  Create a new instance of the ListAllProducts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Products/ListAllProducts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllProductsInputSet
      ####
      def new_input_set()
        return ListAllProductsInputSet.new()
      end

      def make_result_set()
        return ListAllProductsResultSet.new()
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
        results = ListAllProductsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllProducts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllProductsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllProducts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllProductsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Xively.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAllProducts



    ##############################################################################
    #
    # ReadProduct
    #
    # Returns a JSON representation of a product. 
    #
    ##############################################################################

    class ReadProduct < Choreography

      ####
      #  Create a new instance of the ReadProduct Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Products/ReadProduct")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ReadProductInputSet
      ####
      def new_input_set()
        return ReadProductInputSet.new()
      end

      def make_result_set()
        return ReadProductResultSet.new()
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
        results = ReadProductResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ReadProduct
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ReadProductInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ProductID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the product you are trying to read information on.
        ###

        def set_ProductID(value)
          set_input("ProductID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ReadProduct Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ReadProductResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Xively.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ReadProduct



    ##############################################################################
    #
    # UpdateProduct
    #
    # Updates an existing product batch.
    #
    ##############################################################################

    class UpdateProduct < Choreography

      ####
      #  Create a new instance of the UpdateProduct Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Products/UpdateProduct")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateProductInputSet
      ####
      def new_input_set()
        return UpdateProductInputSet.new()
      end

      def make_result_set()
        return UpdateProductResultSet.new()
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
        results = UpdateProductResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateProduct
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateProductInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CustomProduct input for this Choreo. 
        # 
        # @param String - (optional, json) Optional custom configuration for creating your product in JSON. If you use this field the other optional parameters will be ignored. See Choreo description and Xively documentation for details.
        ###

        def set_CustomProduct(value)
          set_input("CustomProduct", value)
        end
        #### 
        # Set the value of the Datastreams input for this Choreo. 
        # 
        # @param String - (optional, json) Default device datastream JSON array. Every newly created device in this product will have this default datastream. Ex: [{"id":"channel1"},{"id":"demo"}].
        ###

        def set_Datastreams(value)
          set_input("Datastreams", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) Description of the product.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (optional, string) Name of the product.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the Private input for this Choreo. 
        # 
        # @param String - (optional, string) Default device feed privacy settings. Valid values: "true", "false" (default). Note - leaving this blank will automatically change a private device feed to a public device feed.
        ###

        def set_Private(value)
          set_input("Private", value)
        end
        #### 
        # Set the value of the ProductID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the product you are trying to update.
        ###

        def set_ProductID(value)
          set_input("ProductID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateProduct Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateProductResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful product update, the code should be 200.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class UpdateProduct




  end # module Products

  module ReadWriteData



    ##############################################################################
    #
    # DeleteDatapoint
    #
    # Deletes a single existing datapoint for a specific timestamp.
    #
    ##############################################################################

    class DeleteDatapoint < Choreography

      ####
      #  Create a new instance of the DeleteDatapoint Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/ReadWriteData/DeleteDatapoint")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteDatapointInputSet
      ####
      def new_input_set()
        return DeleteDatapointInputSet.new()
      end

      def make_result_set()
        return DeleteDatapointResultSet.new()
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
        results = DeleteDatapointResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteDatapoint
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteDatapointInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the DatastreamID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the datastream you would like to delete the datapoint for.
        ###

        def set_DatastreamID(value)
          set_input("DatastreamID", value)
        end
        #### 
        # Set the value of the FeedID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the feed you would like to delete the datapoint for.
        ###

        def set_FeedID(value)
          set_input("FeedID", value)
        end
        #### 
        # Set the value of the Timestamp input for this Choreo. 
        # 
        # @param String - (required, date) Timestamp of datapoint value to delete. Must be in ISO 8601 format, and can include up to 6 decimal places of resolution (in seconds), default zone is UTC.  Ex: 2013-05-07T00:00:00.123456Z.
        ###

        def set_Timestamp(value)
          set_input("Timestamp", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteDatapoint Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteDatapointResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponsStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful datapoint deletion, the code should be 200.
      	####
      	def get_ResponsStatusCode()
      	  return @outputs["ResponsStatusCode"]
      	end
      end

    end # class DeleteDatapoint



    ##############################################################################
    #
    # DeleteDatastream
    #
    # Deletes a datastream. 
    #
    ##############################################################################

    class DeleteDatastream < Choreography

      ####
      #  Create a new instance of the DeleteDatastream Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/ReadWriteData/DeleteDatastream")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteDatastreamInputSet
      ####
      def new_input_set()
        return DeleteDatastreamInputSet.new()
      end

      def make_result_set()
        return DeleteDatastreamResultSet.new()
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
        results = DeleteDatastreamResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteDatastream
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteDatastreamInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the DatastreamID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the datastream you wish to delete.
        ###

        def set_DatastreamID(value)
          set_input("DatastreamID", value)
        end
        #### 
        # Set the value of the FeedID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the feed you would like to delete the datastream for.
        ###

        def set_FeedID(value)
          set_input("FeedID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteDatastream Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteDatastreamResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful deletion, the code should be 200.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class DeleteDatastream



    ##############################################################################
    #
    # DeleteMultipleDatapoints
    #
    # Deletes multiple datapoints from a single datastream given a start date, end date, and/or duration.
    #
    ##############################################################################

    class DeleteMultipleDatapoints < Choreography

      ####
      #  Create a new instance of the DeleteMultipleDatapoints Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/ReadWriteData/DeleteMultipleDatapoints")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteMultipleDatapointsInputSet
      ####
      def new_input_set()
        return DeleteMultipleDatapointsInputSet.new()
      end

      def make_result_set()
        return DeleteMultipleDatapointsResultSet.new()
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
        results = DeleteMultipleDatapointsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteMultipleDatapoints
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteMultipleDatapointsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the DatastreamID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the datastream you would like to delete datapoints from.
        ###

        def set_DatastreamID(value)
          set_input("DatastreamID", value)
        end
        #### 
        # Set the value of the Duration input for this Choreo. 
        # 
        # @param String - (conditional, string) Specifies the duration of the deletion. Can be used with StartDate or EndDate. Ex: 5seconds, 10minutes, 6hours. See documentation for full description / examples.
        ###

        def set_Duration(value)
          set_input("Duration", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (conditional, date) Defines the end point of the deletion as a timestamp. Can be used with Duration. Ex: 2013-05-10T12:00:00Z.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the FeedID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the feed you would like to delete datapoints from.
        ###

        def set_FeedID(value)
          set_input("FeedID", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (conditional, date) Defines the starting point of the deletion as a timestamp. Can be used with Duration. Ex: 2013-05-10T00:00:00Z.
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteMultipleDatapoints Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteMultipleDatapointsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponsStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful datapoint range deletion, the code should be 200.
      	####
      	def get_ResponsStatusCode()
      	  return @outputs["ResponsStatusCode"]
      	end
      end

    end # class DeleteMultipleDatapoints



    ##############################################################################
    #
    # ListAllFeeds
    #
    # Returns filterable data on all feeds viewable by the authenticated account.
    #
    ##############################################################################

    class ListAllFeeds < Choreography

      ####
      #  Create a new instance of the ListAllFeeds Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/ReadWriteData/ListAllFeeds")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllFeedsInputSet
      ####
      def new_input_set()
        return ListAllFeedsInputSet.new()
      end

      def make_result_set()
        return ListAllFeedsResultSet.new()
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
        results = ListAllFeedsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllFeeds
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllFeedsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Content input for this Choreo. 
        # 
        # @param String - (optional, string) Describes whether to return full or summary results. Full - all datastream values are returned, summary - returns the environment metadata for each feed. Valid values: 'full' or 'summary'.
        ###

        def set_Content(value)
          set_input("Content", value)
        end
        #### 
        # Set the value of the DistanceUnits input for this Choreo. 
        # 
        # @param String - (optional, string) Units of distance. Valid values: "miles" or "kms" (default).
        ###

        def set_DistanceUnits(value)
          set_input("DistanceUnits", value)
        end
        #### 
        # Set the value of the Distance input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Search radius (units like miles or kilometers defined by DistanceUnits). Ex: 5.0.
        ###

        def set_Distance(value)
          set_input("Distance", value)
        end
        #### 
        # Set the value of the FeedType input for this Choreo. 
        # 
        # @param String - (optional, string) The type of feed that is being returned. Valid values are "json" (the default), "xml" and "csv". No metadata is returned for the csv feed.
        ###

        def set_FeedType(value)
          set_input("FeedType", value)
        end
        #### 
        # Set the value of the FullTextSearch input for this Choreo. 
        # 
        # @param String - (optional, string) Returns any feeds matching this string.
        ###

        def set_FullTextSearch(value)
          set_input("FullTextSearch", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Used to find feeds located around this latitude. Ex. 51.5235375648154.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Used to find feeds located around this longitude. Ex: -0.0807666778564453.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicates which page of results you are requesting. Starts from 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Defines how many results to return per page (1 to 1000).
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the ShowUser input for this Choreo. 
        # 
        # @param String - (optional, string) Include user login and user level for each feed. Valid values: true, false (default).
        ###

        def set_ShowUser(value)
          set_input("ShowUser", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Order of returned feeds. Valid values: "created_at", "retrieved_at" or "relevance".
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end
        #### 
        # Set the value of the Status input for this Choreo. 
        # 
        # @param String - (optional, string) Sets whether to search for only live feeds, only frozen feeds, or all feeds. Valid values: "live", "frozen", "all" (default).
        ###

        def set_Status(value)
          set_input("Status", value)
        end
        #### 
        # Set the value of the Tag input for this Choreo. 
        # 
        # @param String - (optional, string) Returns feeds containing datastreams tagged with the search query.
        ###

        def set_Tag(value)
          set_input("Tag", value)
        end
        #### 
        # Set the value of the Units input for this Choreo. 
        # 
        # @param String - (optional, string) Returns feeds containing datastreams with units specified by the search query. Ex: Celsius.
        ###

        def set_Units(value)
          set_input("Units", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (optional, string) Returns feeds created by the user specified.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllFeeds Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllFeedsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Xively.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAllFeeds



    ##############################################################################
    #
    # ReadFeed
    #
    # Returns filterable data on a specific feed viewable by the authenticated account.
    #
    ##############################################################################

    class ReadFeed < Choreography

      ####
      #  Create a new instance of the ReadFeed Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/ReadWriteData/ReadFeed")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ReadFeedInputSet
      ####
      def new_input_set()
        return ReadFeedInputSet.new()
      end

      def make_result_set()
        return ReadFeedResultSet.new()
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
        results = ReadFeedResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ReadFeed
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ReadFeedInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Datastreams input for this Choreo. 
        # 
        # @param String - (optional, string) Filter by datastream. Valid values - comma separated datastream IDs (Ex: energy,power).
        ###

        def set_Datastreams(value)
          set_input("Datastreams", value)
        end
        #### 
        # Set the value of the Duration input for this Choreo. 
        # 
        # @param String - (optional, string) Used for a historical query. If used with EndDate will request data prior to EndDate, if used with StartDate will request data after StartDate. By itself will give most recent data. Ex: 6hours, 2days.
        ###

        def set_Duration(value)
          set_input("Duration", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (optional, date) Used for a historical query. Defines the end point of the data returned as a timestamp. Ex: 2013-05-10T12:00:00Z.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the FeedID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the feed you wish to view.
        ###

        def set_FeedID(value)
          set_input("FeedID", value)
        end
        #### 
        # Set the value of the FeedType input for this Choreo. 
        # 
        # @param String - (optional, string) The type of feed that is being returned. Valid values are "json" (the default), "csv" and "xml". No metadata is returned for the csv feed.
        ###

        def set_FeedType(value)
          set_input("FeedType", value)
        end
        #### 
        # Set the value of the FindPrevious input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Used for a historical query. Will also return the previous value to the date range being requested. Useful when graphing, to start a graph with a datapoint. Valid values: "true", blank (default).
        ###

        def set_FindPrevious(value)
          set_input("FindPrevious", value)
        end
        #### 
        # Set the value of the IntervalType input for this Choreo. 
        # 
        # @param String - (optional, string) Used for a historical query. If set to "discrete" the data will be returned in fixed time interval format according to Interval value. If not set, the raw datapoints will be returned.
        ###

        def set_IntervalType(value)
          set_input("IntervalType", value)
        end
        #### 
        # Set the value of the Interval input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used for a historical query. Determines what interval of data is requested and is defined in seconds between the datapoints. See documentation for full list of possible values. Ex.: 0, 30, 60, etc.
        ###

        def set_Interval(value)
          set_input("Interval", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used for a historical query. Limits the number of results to the number specified here. Defaults to 100, has a maximum of 1000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ShowUser input for this Choreo. 
        # 
        # @param String - (optional, string) Include user login for each feed. For JSON/XML response only. Valid values: "true", "false" (default).
        ###

        def set_ShowUser(value)
          set_input("ShowUser", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (optional, date) Used for a historical query. Defines the starting point of the query as a timestamp. Ex: 2013-05-10T00:00:00Z.
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ReadFeed Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ReadFeedResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Xively.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ReadFeed



    ##############################################################################
    #
    # ReadGraph
    #
    # Returns a customizable graph (Base64-encoded PNG image file) of datapoints from a specific datastream.
    #
    ##############################################################################

    class ReadGraph < Choreography

      ####
      #  Create a new instance of the ReadGraph Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/ReadWriteData/ReadGraph")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ReadGraphInputSet
      ####
      def new_input_set()
        return ReadGraphInputSet.new()
      end

      def make_result_set()
        return ReadGraphResultSet.new()
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
        results = ReadGraphResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ReadGraph
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ReadGraphInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Color input for this Choreo. 
        # 
        # @param String - (optional, string) The PNG color in hex. Ex: FFCC33.
        ###

        def set_Color(value)
          set_input("Color", value)
        end
        #### 
        # Set the value of the DatastreamID input for this Choreo. 
        # 
        # @param String - (required, string) The ID for the datastream you wish to read.
        ###

        def set_DatastreamID(value)
          set_input("DatastreamID", value)
        end
        #### 
        # Set the value of the Duration input for this Choreo. 
        # 
        # @param String - (optional, string) Used for a historical query. If used with EndDate will request data prior to EndDate, if used with StartDate will request data after StartDate. By itself will give most recent data. Ex: 6hours, 2days.
        ###

        def set_Duration(value)
          set_input("Duration", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (optional, date) Used for a historical query. Defines the end point of the data returned as a timestamp. Ex: 2013-05-10T12:00:00Z. Default value is set to current timestamp.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the FeedID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the feed you wish to read.
        ###

        def set_FeedID(value)
          set_input("FeedID", value)
        end
        #### 
        # Set the value of the FindPrevious input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Used for a historical query. Will also return the previous value to the date range being requested. Useful to allow a graph to start a graph with some datapoint. Valid values: "true", blank (default).
        ###

        def set_FindPrevious(value)
          set_input("FindPrevious", value)
        end
        #### 
        # Set the value of the Height input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The PNG height in pixels. Max height: 500. Ex: 400.
        ###

        def set_Height(value)
          set_input("Height", value)
        end
        #### 
        # Set the value of the IntervalType input for this Choreo. 
        # 
        # @param String - (optional, string) Used for a historical query. If set to "discrete" the data will be returned in fixed time interval format according to Interval value. If not set, the raw datapoints will be returned.
        ###

        def set_IntervalType(value)
          set_input("IntervalType", value)
        end
        #### 
        # Set the value of the Interval input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used for a historical query. Determines what interval of data is requested and is defined in seconds between the datapoints. See documentation for full list of possible values. Ex: 0, 30, 60, etc.
        ###

        def set_Interval(value)
          set_input("Interval", value)
        end
        #### 
        # Set the value of the Legend input for this Choreo. 
        # 
        # @param String - (optional, string) Label given datapoints on a legend included on the graph.
        ###

        def set_Legend(value)
          set_input("Legend", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used for a historical query. LImits the number of results to the number specified here. Defaults to 100, has a maximum of 1000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the LineSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Size of the lines/strokes in pixels. Ex: 4.
        ###

        def set_LineSize(value)
          set_input("LineSize", value)
        end
        #### 
        # Set the value of the ShowAxisLabels input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Show access labels. Input "true" to turn on, leave blank to keep off (default).
        ###

        def set_ShowAxisLabels(value)
          set_input("ShowAxisLabels", value)
        end
        #### 
        # Set the value of the ShowDetailedGrid input for this Choreo. 
        # 
        # @param String - (optional, string) Show detailed grid. Input "true" to turn on, leave blank to keep off (default).
        ###

        def set_ShowDetailedGrid(value)
          set_input("ShowDetailedGrid", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (optional, date) Used for a historical query. Defines the starting the point of the query as a timestamp. Ex: 2013-05-10T00:00:00Z.
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end
        #### 
        # Set the value of the Timezone input for this Choreo. 
        # 
        # @param String - (optional, string) Timezone of the graph. For a list of valid values please see description and API documenation. Ex: Eastern Time (US & Canada), Pacific Time (US & Canada), UTC, Tokyo.
        ###

        def set_Timezone(value)
          set_input("Timezone", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (optional, string) Title of the graph.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the Width input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The PNG width in pixels. Max width: 600. Ex: 600.
        ###

        def set_Width(value)
          set_input("Width", value)
        end
        #### 
        # Set the value of the YAxisMax input for this Choreo. 
        # 
        # @param String - (optional, string) Y-axis maximum value if the YAxisScale is set to "manual".
        ###

        def set_YAxisMax(value)
          set_input("YAxisMax", value)
        end
        #### 
        # Set the value of the YAxisMin input for this Choreo. 
        # 
        # @param String - (optional, string) Y-axis minimum value if the YAxisScale is set to "manual".
        ###

        def set_YAxisMin(value)
          set_input("YAxisMin", value)
        end
        #### 
        # Set the value of the YAxisScale input for this Choreo. 
        # 
        # @param String - (optional, string) Method used to determine the y-axis scale. Valid values: "auto" (default), "datastream", or "manual".
        ###

        def set_YAxisScale(value)
          set_input("YAxisScale", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ReadGraph Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ReadGraphResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Xively, which is a base64-encoded binary .png file. Decode to get the binary PNG graphic.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ReadGraph



    ##############################################################################
    #
    # WriteData
    #
    # Allows you to update your feed, including updating/creating new datastreams and datapoints. 
    #
    ##############################################################################

    class WriteData < Choreography

      ####
      #  Create a new instance of the WriteData Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/ReadWriteData/WriteData")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return WriteDataInputSet
      ####
      def new_input_set()
        return WriteDataInputSet.new()
      end

      def make_result_set()
        return WriteDataResultSet.new()
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
        results = WriteDataResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the WriteData
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class WriteDataInputSet < Choreography::InputSet

        #### 
        # Set the value of the FeedData input for this Choreo. 
        # 
        # @param String - (optional, any) Custom data body for the new feed in JSON or XML format (set by FeedType). See documentation for the minimum required fields for a feed. If custom FeedData is used, Value and Timestamp is ignored.
        ###

        def set_FeedData(value)
          set_input("FeedData", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the DatastreamID input for this Choreo. 
        # 
        # @param String - (optional, string) ID for single datastream you would like to update. Required if specifying a single datapoint update using Value.
        ###

        def set_DatastreamID(value)
          set_input("DatastreamID", value)
        end
        #### 
        # Set the value of the FeedID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the feed that you would like to update.
        ###

        def set_FeedID(value)
          set_input("FeedID", value)
        end
        #### 
        # Set the value of the FeedType input for this Choreo. 
        # 
        # @param String - (optional, string) The type of feed that is being provided for custom FeedData. Valid values are "json" (the default), "xml" and "csv". Ignored if specifying single datapoint Value.
        ###

        def set_FeedType(value)
          set_input("FeedType", value)
        end
        #### 
        # Set the value of the Timestamp input for this Choreo. 
        # 
        # @param String - (optional, date) Can be used with a single Value and DatastreamID. If specified, sets timestamp for Value. If Value is set with blank Timestamp, Value's timestamp will be current time. Ex: 2013-05-10T00:00:00.123456Z.
        ###

        def set_Timestamp(value)
          set_input("Timestamp", value)
        end
        #### 
        # Set the value of the Value input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies the value for a single datapoint in a specified datastream.
        ###

        def set_Value(value)
          set_input("Value", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the WriteData Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class WriteDataResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful feed / data update, the code should be 200.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class WriteData



    ##############################################################################
    #
    # WriteDatastreamMetadata
    #
    # Allows you to easily update the metadata of your datastream.
    #
    ##############################################################################

    class WriteDatastreamMetadata < Choreography

      ####
      #  Create a new instance of the WriteDatastreamMetadata Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/ReadWriteData/WriteDatastreamMetadata")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return WriteDatastreamMetadataInputSet
      ####
      def new_input_set()
        return WriteDatastreamMetadataInputSet.new()
      end

      def make_result_set()
        return WriteDatastreamMetadataResultSet.new()
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
        results = WriteDatastreamMetadataResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the WriteDatastreamMetadata
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class WriteDatastreamMetadataInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CustomDatastreamData input for this Choreo. 
        # 
        # @param String - (optional, json) Custom data body for the updated datastream in JSON. See documentation for how to construct your own datastream feed. If custom DatastreamData is used, all other optional inputs are ignored.
        ###

        def set_CustomDatastreamData(value)
          set_input("CustomDatastreamData", value)
        end
        #### 
        # Set the value of the DatastreamID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the Datastream you would like to add metadata to. Required unless you are using CustomDatastreamData.
        ###

        def set_DatastreamID(value)
          set_input("DatastreamID", value)
        end
        #### 
        # Set the value of the FeedID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the feed that you would like to update.
        ###

        def set_FeedID(value)
          set_input("FeedID", value)
        end
        #### 
        # Set the value of the MaxValue input for this Choreo. 
        # 
        # @param String - (optional, string) The maximum value since the last reset. Leave empty to keep existing MaxValue. Type "BLANK" to clear existing value.
        ###

        def set_MaxValue(value)
          set_input("MaxValue", value)
        end
        #### 
        # Set the value of the MinValue input for this Choreo. 
        # 
        # @param String - (optional, string) The minimum value since the last reset. Leave empty to keep existing MinValue. Type "BLANK" to clear existing value.
        ###

        def set_MinValue(value)
          set_input("MinValue", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated list of searchable tags (the characters ', ", and commas are not allowed). Tags input overwrites previous tags, enter "BLANK" to clear all tags. Ex: "power,energy".
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the UnitSymbol input for this Choreo. 
        # 
        # @param String - (optional, string) The symbol of the Unit. Leave empty to keep existing UnitSymbol. Type "BLANK" to clear existing value. Ex: "C".
        ###

        def set_UnitSymbol(value)
          set_input("UnitSymbol", value)
        end
        #### 
        # Set the value of the UnitType input for this Choreo. 
        # 
        # @param String - (optional, string) The type of Unit. Leave empty to keep existing UnitType. Type "BLANK" to clear existing value. Ex: "basicSI".
        ###

        def set_UnitType(value)
          set_input("UnitType", value)
        end
        #### 
        # Set the value of the Units input for this Choreo. 
        # 
        # @param String - (optional, string) The units of the datastream. Leave empty to keep existing Units. Type "BLANK" to clear existing Units. Ex: "Celsius".
        ###

        def set_Units(value)
          set_input("Units", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the WriteDatastreamMetadata Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class WriteDatastreamMetadataResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful datastream update, the code should be 200.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class WriteDatastreamMetadata



    ##############################################################################
    #
    # WriteFeedMetadata
    #
    # Allows you to easily update the metadata of your feed.
    #
    ##############################################################################

    class WriteFeedMetadata < Choreography

      ####
      #  Create a new instance of the WriteFeedMetadata Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/ReadWriteData/WriteFeedMetadata")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return WriteFeedMetadataInputSet
      ####
      def new_input_set()
        return WriteFeedMetadataInputSet.new()
      end

      def make_result_set()
        return WriteFeedMetadataResultSet.new()
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
        results = WriteFeedMetadataResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the WriteFeedMetadata
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class WriteFeedMetadataInputSet < Choreography::InputSet

        #### 
        # Set the value of the FeedData input for this Choreo. 
        # 
        # @param String - (optional, any) Custom data body for the new feed in JSON or XML format (set by FeedType). See documentation for how to write your own feed. If custom FeedData is used, all other optional inputs are ignored.
        ###

        def set_FeedData(value)
          set_input("FeedData", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) A description of the feed. Leave empty to keep existing Description. Type "BLANK" to clear existing Description.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) Contact Email. Leave empty to keep existing Email. Type "BLANK" to clear existing Email.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the FeedID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the feed that you would like to update.
        ###

        def set_FeedID(value)
          set_input("FeedID", value)
        end
        #### 
        # Set the value of the FeedType input for this Choreo. 
        # 
        # @param String - (optional, string) The type of feed that is being provided for custom FeedData. Valid values are "json" (the default) and "xml".
        ###

        def set_FeedType(value)
          set_input("FeedType", value)
        end
        #### 
        # Set the value of the Icon input for this Choreo. 
        # 
        # @param String - (optional, string) The URL of an icon which is relevant to this feed. Leave empty to keep existing Icon. Type "BLANK" to clear existing Icon.
        ###

        def set_Icon(value)
          set_input("Icon", value)
        end
        #### 
        # Set the value of the Private input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Specifies whether or not the feed is private to the creator of the feed. If 'true' the feed is private, if 'false' the feed is public. Leave empty to keep existing settings.
        ###

        def set_Private(value)
          set_input("Private", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated list of searchable tags (the characters ', ", and commas are not allowed). Tags input overwrites previous tags, enter "BLANK" to clear all tags. Ex: "power,energy".
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (optional, string) A descriptive name for the feed. Leave empty to keep existing Title. Type "BLANK" to clear existing Title.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the Website input for this Choreo. 
        # 
        # @param String - (optional, string) The URL of a website which is relevant to this feed. Leave empty to keep existing Website. Type "BLANK" to clear existing Website. Ex.: http://www.homepage.com.
        ###

        def set_Website(value)
          set_input("Website", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the WriteFeedMetadata Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class WriteFeedMetadataResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful feed update, the code should be 200.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class WriteFeedMetadata



    ##############################################################################
    #
    # WriteLocationData
    #
    # Allows you to easily update the location data of your feed.
    #
    ##############################################################################

    class WriteLocationData < Choreography

      ####
      #  Create a new instance of the WriteLocationData Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/ReadWriteData/WriteLocationData")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return WriteLocationDataInputSet
      ####
      def new_input_set()
        return WriteLocationDataInputSet.new()
      end

      def make_result_set()
        return WriteLocationDataResultSet.new()
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
        results = WriteLocationDataResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the WriteLocationData
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class WriteLocationDataInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Disposition input for this Choreo. 
        # 
        # @param String - (optional, string) Can be set to "mobile" to enable creating waypoints (lat, lon and elevation with timestamp), or "fixed" (default) for a single location. Leave empty to keep existing settings.
        ###

        def set_Disposition(value)
          set_input("Disposition", value)
        end
        #### 
        # Set the value of the Domain input for this Choreo. 
        # 
        # @param String - (optional, string) The domain of the location, i.e. physical or virtual. Leave empty to keep existing Domain. Type "BLANK" to clear existing Domain. Ex: "physical".
        ###

        def set_Domain(value)
          set_input("Domain", value)
        end
        #### 
        # Set the value of the Elevation input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Elevation in meters. Leave empty to keep previously existing Elevation. Type "BLANK" to clear existing Elevation. Ex: 20.5.
        ###

        def set_Elevation(value)
          set_input("Elevation", value)
        end
        #### 
        # Set the value of the FeedID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the feed that you would like to update.
        ###

        def set_FeedID(value)
          set_input("FeedID", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Latitude coordinates. Leave empty to keep previously existing Latitude. Type "BLANK" to clear existing Latitude. Ex: 40.728194.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Longitude coordinates. Leave empty to keep previously existing Location. Type "BLANK" to clear existing settings. Ex: -73.957316.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (optional, string) Name of Location. Leave empty to keep existing Location. Type "BLANK" to clear existing settings. Ex.: "My Fitbit Tracker".
        ###

        def set_Name(value)
          set_input("Name", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the WriteLocationData Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class WriteLocationDataResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful feed location update, the code should be 200.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class WriteLocationData




  end # module ReadWriteData

  module Triggers



    ##############################################################################
    #
    # CreateTrigger
    #
    # Creates a new trigger.
    #
    ##############################################################################

    class CreateTrigger < Choreography

      ####
      #  Create a new instance of the CreateTrigger Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Triggers/CreateTrigger")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateTriggerInputSet
      ####
      def new_input_set()
        return CreateTriggerInputSet.new()
      end

      def make_result_set()
        return CreateTriggerResultSet.new()
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
        results = CreateTriggerResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateTrigger
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateTriggerInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the DatastreamID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the datastream you would like to create a trigger for.
        ###

        def set_DatastreamID(value)
          set_input("DatastreamID", value)
        end
        #### 
        # Set the value of the FeedID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the feed you would like to create a trigger for.
        ###

        def set_FeedID(value)
          set_input("FeedID", value)
        end
        #### 
        # Set the value of the ThresholdValue input for this Choreo. 
        # 
        # @param String - (required, string) Threshold that will cause the trigger to activate. Not required if TriggerType = "change", "frozen" or "live". Required for all others.
        ###

        def set_ThresholdValue(value)
          set_input("ThresholdValue", value)
        end
        #### 
        # Set the value of the TriggerType input for this Choreo. 
        # 
        # @param String - (required, string) Type of trigger. Possible values: "gt", "gte", "lt", "lte", "eq", "change" (any change), "frozen" (no updates for 15 minutes), or "live" (updated again after being frozen).
        ###

        def set_TriggerType(value)
          set_input("TriggerType", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (required, string) The URL that the Xively trigger will post to when activated. Ex: http://requestb.in
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateTrigger Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateTriggerResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful trigger creation, the code should be 201.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      	####
      	# Retrieve the value for the "TriggerLocation" output from this Choreo execution
      	#
      	# @return String - (string) The URL of the newly created trigger.
      	####
      	def get_TriggerLocation()
      	  return @outputs["TriggerLocation"]
      	end
      	####
      	# Retrieve the value for the "TriggerID" output from this Choreo execution
      	#
      	# @return String - (integer) TriggerID extracted from the TriggerLocation.
      	####
      	def get_TriggerID()
      	  return @outputs["TriggerID"]
      	end
      end

    end # class CreateTrigger



    ##############################################################################
    #
    # DeleteTrigger
    #
    # Deletes the specified trigger.
    #
    ##############################################################################

    class DeleteTrigger < Choreography

      ####
      #  Create a new instance of the DeleteTrigger Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Triggers/DeleteTrigger")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteTriggerInputSet
      ####
      def new_input_set()
        return DeleteTriggerInputSet.new()
      end

      def make_result_set()
        return DeleteTriggerResultSet.new()
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
        results = DeleteTriggerResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteTrigger
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteTriggerInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the TriggerID input for this Choreo. 
        # 
        # @param Integer - (required, integer) TriggerID for the trigger that you wish to delete.
        ###

        def set_TriggerID(value)
          set_input("TriggerID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteTrigger Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteTriggerResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful trigger deletion, the code should be 200.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class DeleteTrigger



    ##############################################################################
    #
    # ListAllTriggers
    #
    # Returns all triggers for the authenticated account.
    #
    ##############################################################################

    class ListAllTriggers < Choreography

      ####
      #  Create a new instance of the ListAllTriggers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Triggers/ListAllTriggers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllTriggersInputSet
      ####
      def new_input_set()
        return ListAllTriggersInputSet.new()
      end

      def make_result_set()
        return ListAllTriggersResultSet.new()
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
        results = ListAllTriggersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllTriggers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllTriggersInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the FeedID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Filter the returned triggers to only include those for the specified FeedID.
        ###

        def set_FeedID(value)
          set_input("FeedID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllTriggers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllTriggersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Xively.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAllTriggers



    ##############################################################################
    #
    # ReadTrigger
    #
    # Returns a specific trigger for the authenticated account.
    #
    ##############################################################################

    class ReadTrigger < Choreography

      ####
      #  Create a new instance of the ReadTrigger Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Triggers/ReadTrigger")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ReadTriggerInputSet
      ####
      def new_input_set()
        return ReadTriggerInputSet.new()
      end

      def make_result_set()
        return ReadTriggerResultSet.new()
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
        results = ReadTriggerResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ReadTrigger
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ReadTriggerInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the TriggerID input for this Choreo. 
        # 
        # @param Integer - (required, integer) ID for the trigger that you wish to retrieve information about.
        ###

        def set_TriggerID(value)
          set_input("TriggerID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ReadTrigger Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ReadTriggerResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Xively.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ReadTrigger



    ##############################################################################
    #
    # UpdateTrigger
    #
    # Updates an existing trigger.
    #
    ##############################################################################

    class UpdateTrigger < Choreography

      ####
      #  Create a new instance of the UpdateTrigger Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Xively/Triggers/UpdateTrigger")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateTriggerInputSet
      ####
      def new_input_set()
        return UpdateTriggerInputSet.new()
      end

      def make_result_set()
        return UpdateTriggerResultSet.new()
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
        results = UpdateTriggerResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateTrigger
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateTriggerInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Xively.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ThresholdValue input for this Choreo. 
        # 
        # @param String - (optional, string) Threshold that will cause the trigger to activate. Include input only if changing Threshold Value.
        ###

        def set_ThresholdValue(value)
          set_input("ThresholdValue", value)
        end
        #### 
        # Set the value of the TriggerID input for this Choreo. 
        # 
        # @param Integer - (required, integer) TriggerID for the trigger that you wish to update.
        ###

        def set_TriggerID(value)
          set_input("TriggerID", value)
        end
        #### 
        # Set the value of the TriggerType input for this Choreo. 
        # 
        # @param String - (optional, string) Type of trigger. Include input only if changing TriggerType. Valid values: gt, gte, lt, lte, eq, change (any change), frozen (no updates for 15 minutes), or live (updated again after being frozen).
        ###

        def set_TriggerType(value)
          set_input("TriggerType", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that the Xively trigger will post to when activated. Include input only if changing the URL. Ex: http://requestb.in
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateTrigger Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateTriggerResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Xively. For a successful trigger update, the code should be 200.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class UpdateTrigger




  end # module Triggers

end # module Xively