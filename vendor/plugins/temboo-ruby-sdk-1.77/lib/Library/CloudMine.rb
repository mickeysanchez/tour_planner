require "temboo"

module CloudMine




  module FileStorage



    ##############################################################################
    #
    # DeleteFile
    #
    # Deletes one or more files from the CloudMine server using the keys provided.
    #
    ##############################################################################

    class DeleteFile < Choreography

      ####
      #  Create a new instance of the DeleteFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/FileStorage/DeleteFile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteFileInputSet
      ####
      def new_input_set()
        return DeleteFileInputSet.new()
      end

      def make_result_set()
        return DeleteFileResultSet.new()
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
        results = DeleteFileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteFile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteFileInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end
        #### 
        # Set the value of the Keys input for this Choreo. 
        # 
        # @param String - (required, string) A comma-separated list of keys to delete.
        ###

        def set_Keys(value)
          set_input("Keys", value)
        end
        #### 
        # Set the value of the SessionToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
        ###

        def set_SessionToken(value)
          set_input("SessionToken", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - A path to the vault file to upload. This can be used as an alternative to the FileContents input.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteFile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteFileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteFile



    ##############################################################################
    #
    # GetFile
    #
    # Retrieves a file from the CloudMine server with a given key.
    #
    ##############################################################################

    class GetFile < Choreography

      ####
      #  Create a new instance of the GetFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/FileStorage/GetFile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFileInputSet
      ####
      def new_input_set()
        return GetFileInputSet.new()
      end

      def make_result_set()
        return GetFileResultSet.new()
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
        results = GetFileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFileInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end
        #### 
        # Set the value of the Key input for this Choreo. 
        # 
        # @param String - (required, string) The key whose value you want.
        ###

        def set_Key(value)
          set_input("Key", value)
        end
        #### 
        # Set the value of the SessionToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
        ###

        def set_SessionToken(value)
          set_input("SessionToken", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - A path to the vault file to upload. This can be used as an alternative to the FileContents input.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFile



    ##############################################################################
    #
    # SetFile
    #
    # Allows you to update or create a file on the CloudMine server.
    #
    ##############################################################################

    class SetFile < Choreography

      ####
      #  Create a new instance of the SetFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/FileStorage/SetFile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SetFileInputSet
      ####
      def new_input_set()
        return SetFileInputSet.new()
      end

      def make_result_set()
        return SetFileResultSet.new()
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
        results = SetFileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SetFile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SetFileInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end
        #### 
        # Set the value of the ContentType input for this Choreo. 
        # 
        # @param String - (optional, string) The Content-Type of the file you are creating or updating. This defaults to application/octet-stream.
        ###

        def set_ContentType(value)
          set_input("ContentType", value)
        end
        #### 
        # Set the value of the FileContents input for this Choreo. 
        # 
        # @param String - (conditional, string) The Base64 encoded contents of the file.
        ###

        def set_FileContents(value)
          set_input("FileContents", value)
        end
        #### 
        # Set the value of the Key input for this Choreo. 
        # 
        # @param String - (optional, string) A key for the file you are uploading. If provided, the file will be stored with this key; otherwise, a key will be generated and returned.
        ###

        def set_Key(value)
          set_input("Key", value)
        end
        #### 
        # Set the value of the SessionToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
        ###

        def set_SessionToken(value)
          set_input("SessionToken", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - A path to the vault file to upload. This can be used as an alternative to the FileContents input.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SetFile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SetFileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SetFile




  end # module FileStorage

  module ObjectStorage



    ##############################################################################
    #
    # ObjectDelete
    #
    # Deletes one or more specified keys.
    #
    ##############################################################################

    class ObjectDelete < Choreography

      ####
      #  Create a new instance of the ObjectDelete Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/ObjectStorage/ObjectDelete")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ObjectDeleteInputSet
      ####
      def new_input_set()
        return ObjectDeleteInputSet.new()
      end

      def make_result_set()
        return ObjectDeleteResultSet.new()
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
        results = ObjectDeleteResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ObjectDelete
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ObjectDeleteInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the All input for this Choreo. 
        # 
        # @param Boolean - (conditional, boolean) Indicates that all keys should be deleted if the Keys input is left empty. Set to "true" to delete all keys.
        ###

        def set_All(value)
          set_input("All", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end
        #### 
        # Set the value of the Keys input for this Choreo. 
        # 
        # @param String - (conditional, string) A comma separated list of keys to delete. Required unless specifying "true" for the All parameter.
        ###

        def set_Keys(value)
          set_input("Keys", value)
        end
        #### 
        # Set the value of the SessionToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
        ###

        def set_SessionToken(value)
          set_input("SessionToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ObjectDelete Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ObjectDeleteResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ObjectDelete



    ##############################################################################
    #
    # ObjectGet
    #
    # Retrieves one or more objects from Cloudmine.
    #
    ##############################################################################

    class ObjectGet < Choreography

      ####
      #  Create a new instance of the ObjectGet Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/ObjectStorage/ObjectGet")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ObjectGetInputSet
      ####
      def new_input_set()
        return ObjectGetInputSet.new()
      end

      def make_result_set()
        return ObjectGetResultSet.new()
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
        results = ObjectGetResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ObjectGet
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ObjectGetInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Returns a count of the results in the response if set to true. Valid values are true and false.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Keys input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of keys to return. If not specified, all key/value pairs are returned.
        ###

        def set_Keys(value)
          set_input("Keys", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of results returned. Use -1 for no limit. Use 0 for no results, and with Count=true to just get the number of available results. This defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the SessionToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
        ###

        def set_SessionToken(value)
          set_input("SessionToken", value)
        end
        #### 
        # Set the value of the Skip input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicates to start results after skiping this number objects. Used to page through results.
        ###

        def set_Skip(value)
          set_input("Skip", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ObjectGet Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ObjectGetResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ObjectGet



    ##############################################################################
    #
    # ObjectSearch
    #
    # Allows you to query key/value pair objects.
    #
    ##############################################################################

    class ObjectSearch < Choreography

      ####
      #  Create a new instance of the ObjectSearch Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/ObjectStorage/ObjectSearch")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ObjectSearchInputSet
      ####
      def new_input_set()
        return ObjectSearchInputSet.new()
      end

      def make_result_set()
        return ObjectSearchResultSet.new()
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
        results = ObjectSearchResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ObjectSearch
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ObjectSearchInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Returns a count of the results in the response if set to true. Valid values are true and false.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of results returned. Use -1 for no limit. Use 0 for no results, and with Count=true to just get the number of available results. This defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (required, string) The query for your search. See Choreo documentation for information on appropriate query syntax.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the SessionToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
        ###

        def set_SessionToken(value)
          set_input("SessionToken", value)
        end
        #### 
        # Set the value of the Skip input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicates to start results after skiping this number objects. Used to page through results.
        ###

        def set_Skip(value)
          set_input("Skip", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ObjectSearch Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ObjectSearchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ObjectSearch



    ##############################################################################
    #
    # ObjectSet
    #
    # Allows you to update or create key/value pairs.

    #
    ##############################################################################

    class ObjectSet < Choreography

      ####
      #  Create a new instance of the ObjectSet Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/ObjectStorage/ObjectSet")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ObjectSetInputSet
      ####
      def new_input_set()
        return ObjectSetInputSet.new()
      end

      def make_result_set()
        return ObjectSetResultSet.new()
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
        results = ObjectSetResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ObjectSet
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ObjectSetInputSet < Choreography::InputSet

        #### 
        # Set the value of the Data input for this Choreo. 
        # 
        # @param String - (required, json) A valid JSON object containing key/value pairs.
        ###

        def set_Data(value)
          set_input("Data", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end
        #### 
        # Set the value of the SessionToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
        ###

        def set_SessionToken(value)
          set_input("SessionToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ObjectSet Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ObjectSetResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ObjectSet



    ##############################################################################
    #
    # ObjectUpdate
    #
    # Allows you to update, merge, or create key/value pairs.

    #
    ##############################################################################

    class ObjectUpdate < Choreography

      ####
      #  Create a new instance of the ObjectUpdate Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/ObjectStorage/ObjectUpdate")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ObjectUpdateInputSet
      ####
      def new_input_set()
        return ObjectUpdateInputSet.new()
      end

      def make_result_set()
        return ObjectUpdateResultSet.new()
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
        results = ObjectUpdateResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ObjectUpdate
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ObjectUpdateInputSet < Choreography::InputSet

        #### 
        # Set the value of the Data input for this Choreo. 
        # 
        # @param String - (required, json) A valid JSON object containing key/value pairs.
        ###

        def set_Data(value)
          set_input("Data", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end
        #### 
        # Set the value of the SessionToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
        ###

        def set_SessionToken(value)
          set_input("SessionToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ObjectUpdate Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ObjectUpdateResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ObjectUpdate




  end # module ObjectStorage

  module UserAccountManagement



    ##############################################################################
    #
    # AccountLogin
    #
    # Authenticates a user and returns a session token in order to create and query against user-level objects.
    #
    ##############################################################################

    class AccountLogin < Choreography

      ####
      #  Create a new instance of the AccountLogin Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/UserAccountManagement/AccountLogin")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AccountLoginInputSet
      ####
      def new_input_set()
        return AccountLoginInputSet.new()
      end

      def make_result_set()
        return AccountLoginResultSet.new()
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
        results = AccountLoginResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AccountLogin
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AccountLoginInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, string) The password for the user that needs to authenticate.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The username for the user that needs to authenticate.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AccountLogin Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AccountLoginResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AccountLogin



    ##############################################################################
    #
    # AccountLogout
    #
    # Allows you to invalidate a user's session token.
    #
    ##############################################################################

    class AccountLogout < Choreography

      ####
      #  Create a new instance of the AccountLogout Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/UserAccountManagement/AccountLogout")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AccountLogoutInputSet
      ####
      def new_input_set()
        return AccountLogoutInputSet.new()
      end

      def make_result_set()
        return AccountLogoutResultSet.new()
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
        results = AccountLogoutResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AccountLogout
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AccountLogoutInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end
        #### 
        # Set the value of the SessionToken input for this Choreo. 
        # 
        # @param String - (required, string) The session token obtained from the AccountLogin Choreo.
        ###

        def set_SessionToken(value)
          set_input("SessionToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AccountLogout Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AccountLogoutResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AccountLogout



    ##############################################################################
    #
    # CreateAccount
    #
    # Creates a user account with a given username and password.
    #
    ##############################################################################

    class CreateAccount < Choreography

      ####
      #  Create a new instance of the CreateAccount Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/UserAccountManagement/CreateAccount")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateAccountInputSet
      ####
      def new_input_set()
        return CreateAccountInputSet.new()
      end

      def make_result_set()
        return CreateAccountResultSet.new()
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
        results = CreateAccountResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateAccount
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateAccountInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The latitude coordinate of the user's location. If provide, Longitude is also required.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The longitude coordinate of the user's location. If provide, Latitude is also required.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (optional, string) A name to associated with the user profile information.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, string) The password for the account that is being created.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The username for the account that is being created.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateAccount Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateAccountResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateAccount



    ##############################################################################
    #
    # GetUsers
    #
    # Retrieves a list of all users that have been created for your application.
    #
    ##############################################################################

    class GetUsers < Choreography

      ####
      #  Create a new instance of the GetUsers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/UserAccountManagement/GetUsers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUsersInputSet
      ####
      def new_input_set()
        return GetUsersInputSet.new()
      end

      def make_result_set()
        return GetUsersResultSet.new()
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
        results = GetUsersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUsers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUsersInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUsers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUsersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetUsers



    ##############################################################################
    #
    # PasswordChange
    #
    # Updates a user's password.
    #
    ##############################################################################

    class PasswordChange < Choreography

      ####
      #  Create a new instance of the PasswordChange Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/UserAccountManagement/PasswordChange")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PasswordChangeInputSet
      ####
      def new_input_set()
        return PasswordChangeInputSet.new()
      end

      def make_result_set()
        return PasswordChangeResultSet.new()
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
        results = PasswordChangeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PasswordChange
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PasswordChangeInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end
        #### 
        # Set the value of the NewPassword input for this Choreo. 
        # 
        # @param String - (required, string) The user's new password.
        ###

        def set_NewPassword(value)
          set_input("NewPassword", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, string) The password for the user that needs to authenticate.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The username for the user that needs to authenticate.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PasswordChange Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PasswordChangeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PasswordChange



    ##############################################################################
    #
    # PasswordReset
    #
    # Allows a user who has forgotten their password to trigger a password reset email.
    #
    ##############################################################################

    class PasswordReset < Choreography

      ####
      #  Create a new instance of the PasswordReset Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/UserAccountManagement/PasswordReset")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PasswordResetInputSet
      ####
      def new_input_set()
        return PasswordResetInputSet.new()
      end

      def make_result_set()
        return PasswordResetResultSet.new()
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
        results = PasswordResetResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PasswordReset
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PasswordResetInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The username/email for the user that needs to reset their password.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PasswordReset Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PasswordResetResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PasswordReset



    ##############################################################################
    #
    # SearchUsers
    #
    # Allows you to search for users using CloudMine's search query language syntax.
    #
    ##############################################################################

    class SearchUsers < Choreography

      ####
      #  Create a new instance of the SearchUsers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CloudMine/UserAccountManagement/SearchUsers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchUsersInputSet
      ####
      def new_input_set()
        return SearchUsersInputSet.new()
      end

      def make_result_set()
        return SearchUsersResultSet.new()
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
        results = SearchUsersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchUsers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchUsersInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by CloudMine after registering your app.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ApplicationIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) The application identifier provided by CloudMine after registering your app.
        ###

        def set_ApplicationIdentifier(value)
          set_input("ApplicationIdentifier", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (required, string) Search query for which users to retrieve.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the SessionToken input for this Choreo. 
        # 
        # @param String - (required, string) The session token for an existing user (returned by the AccountLogin Choreo).
        ###

        def set_SessionToken(value)
          set_input("SessionToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchUsers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchUsersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from CloudMine.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchUsers




  end # module UserAccountManagement

end # module CloudMine