require "temboo"

module Dropbox




  module Account



    ##############################################################################
    #
    # AccountInfo
    #
    # Retrieves information about the user's account.
    #
    ##############################################################################

    class AccountInfo < Choreography

      ####
      #  Create a new instance of the AccountInfo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/Account/AccountInfo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AccountInfoInputSet
      ####
      def new_input_set()
        return AccountInfoInputSet.new()
      end

      def make_result_set()
        return AccountInfoResultSet.new()
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
        results = AccountInfoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AccountInfo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AccountInfoInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AccountInfo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AccountInfoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AccountInfo




  end # module Account
  ##############################################################################
  #
  # AccountInfo
  #
  # Retrieves information about the user's account.
  #
  ##############################################################################

  class AccountInfo < Choreography

    ####
    #  Create a new instance of the AccountInfo Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Dropbox/AccountInfo")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AccountInfoInputSet
    ####
    def new_input_set()
      return AccountInfoInputSet.new()
    end

    def make_result_set()
      return AccountInfoResultSet.new()
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
      results = AccountInfoResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AccountInfo
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AccountInfoInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the AppKey input for this Choreo. 
      # 
      # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
      ###

      def set_AppKey(value)
        set_input("AppKey", value)
      end
      #### 
      # Set the value of the AppSecret input for this Choreo. 
      # 
      # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
      ###

      def set_AppSecret(value)
        set_input("AppSecret", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AccountInfo Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AccountInfoResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AccountInfo



  ##############################################################################
  #
  # CreateFolder
  #
  # Creates a Dropbox folder.
  #
  ##############################################################################

  class CreateFolder < Choreography

    ####
    #  Create a new instance of the CreateFolder Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Dropbox/CreateFolder")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateFolderInputSet
    ####
    def new_input_set()
      return CreateFolderInputSet.new()
    end

    def make_result_set()
      return CreateFolderResultSet.new()
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
      results = CreateFolderResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateFolder
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateFolderInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the AppKey input for this Choreo. 
      # 
      # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
      ###

      def set_AppKey(value)
        set_input("AppKey", value)
      end
      #### 
      # Set the value of the AppSecret input for this Choreo. 
      # 
      # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
      ###

      def set_AppSecret(value)
        set_input("AppSecret", value)
      end
      #### 
      # Set the value of the NewFolderName input for this Choreo. 
      # 
      # @param String - (required, string) The name of the new folder to create. A path with a root folder is also valid (i.e. RootFolder/NewFolderName).
      ###

      def set_NewFolderName(value)
        set_input("NewFolderName", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Root input for this Choreo. 
      # 
      # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
      ###

      def set_Root(value)
        set_input("Root", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateFolder Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateFolderResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateFolder



  ##############################################################################
  #
  # DeleteFileOrFolder
  #
  # Deletes a Dropbox file or folder that you specify.
  #
  ##############################################################################

  class DeleteFileOrFolder < Choreography

    ####
    #  Create a new instance of the DeleteFileOrFolder Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Dropbox/DeleteFileOrFolder")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteFileOrFolderInputSet
    ####
    def new_input_set()
      return DeleteFileOrFolderInputSet.new()
    end

    def make_result_set()
      return DeleteFileOrFolderResultSet.new()
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
      results = DeleteFileOrFolderResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteFileOrFolder
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteFileOrFolderInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the AppKey input for this Choreo. 
      # 
      # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
      ###

      def set_AppKey(value)
        set_input("AppKey", value)
      end
      #### 
      # Set the value of the AppSecret input for this Choreo. 
      # 
      # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
      ###

      def set_AppSecret(value)
        set_input("AppSecret", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) The path to the file or folder you want to delete (i.e. RootFolder/SubFolder/FileToDelete.txt).
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Root input for this Choreo. 
      # 
      # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
      ###

      def set_Root(value)
        set_input("Root", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteFileOrFolder Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteFileOrFolderResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteFileOrFolder



  ##############################################################################
  #
  # Delta
  #
  # Allows you keep up with changes to files and folders in a user's Dropbox.
  #
  ##############################################################################

  class Delta < Choreography

    ####
    #  Create a new instance of the Delta Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Dropbox/Delta")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeltaInputSet
    ####
    def new_input_set()
      return DeltaInputSet.new()
    end

    def make_result_set()
      return DeltaResultSet.new()
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
      results = DeltaResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Delta
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeltaInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the AppKey input for this Choreo. 
      # 
      # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
      ###

      def set_AppKey(value)
        set_input("AppKey", value)
      end
      #### 
      # Set the value of the AppSecret input for this Choreo. 
      # 
      # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
      ###

      def set_AppSecret(value)
        set_input("AppSecret", value)
      end
      #### 
      # Set the value of the Cursor input for this Choreo. 
      # 
      # @param String - (optional, string) A string that is used to keep track of your current state. On the next call pass in this value to return delta entries that have been recorded since the cursor was returned.
      ###

      def set_Cursor(value)
        set_input("Cursor", value)
      end
      #### 
      # Set the value of the Locale input for this Choreo. 
      # 
      # @param String - (optional, string) The metadata returned will have its size field translated based on the given locale.
      ###

      def set_Locale(value)
        set_input("Locale", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Delta Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeltaResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Delta




  module FileOperations



    ##############################################################################
    #
    # CopyFileOrFolder
    #
    # Copies a file or folder to a new location in the Dropbox tree.
    #
    ##############################################################################

    class CopyFileOrFolder < Choreography

      ####
      #  Create a new instance of the CopyFileOrFolder Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FileOperations/CopyFileOrFolder")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CopyFileOrFolderInputSet
      ####
      def new_input_set()
        return CopyFileOrFolderInputSet.new()
      end

      def make_result_set()
        return CopyFileOrFolderResultSet.new()
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
        results = CopyFileOrFolderResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CopyFileOrFolder
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CopyFileOrFolderInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the FromCopyRef input for this Choreo. 
        # 
        # @param String - (conditional, string) Specifies a CopyRef previously generated by running the CreateCopyRef choreo. If you specify this value, you must leave FromPath empty.
        ###

        def set_FromCopyRef(value)
          set_input("FromCopyRef", value)
        end
        #### 
        # Set the value of the FromPath input for this Choreo. 
        # 
        # @param String - (conditional, string) Specifies the file or folder to be copied. If you specify this value, you must leave the FromCopyRef blank.
        ###

        def set_FromPath(value)
          set_input("FromPath", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end
        #### 
        # Set the value of the ToPath input for this Choreo. 
        # 
        # @param String - (required, string) Specifies the destination path, including the new name for the file or folder.
        ###

        def set_ToPath(value)
          set_input("ToPath", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CopyFileOrFolder Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CopyFileOrFolderResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CopyFileOrFolder



    ##############################################################################
    #
    # CreateFolder
    #
    # Creates a Dropbox folder.
    #
    ##############################################################################

    class CreateFolder < Choreography

      ####
      #  Create a new instance of the CreateFolder Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FileOperations/CreateFolder")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateFolderInputSet
      ####
      def new_input_set()
        return CreateFolderInputSet.new()
      end

      def make_result_set()
        return CreateFolderResultSet.new()
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
        results = CreateFolderResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateFolder
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateFolderInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the NewFolderName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the new folder to create. A path with a root folder is also valid (i.e. RootFolder/NewFolderName).
        ###

        def set_NewFolderName(value)
          set_input("NewFolderName", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateFolder Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateFolderResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateFolder



    ##############################################################################
    #
    # DeleteFileOrFolder
    #
    # Deletes a Dropbox file or folder that you specify.
    #
    ##############################################################################

    class DeleteFileOrFolder < Choreography

      ####
      #  Create a new instance of the DeleteFileOrFolder Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FileOperations/DeleteFileOrFolder")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteFileOrFolderInputSet
      ####
      def new_input_set()
        return DeleteFileOrFolderInputSet.new()
      end

      def make_result_set()
        return DeleteFileOrFolderResultSet.new()
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
        results = DeleteFileOrFolderResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteFileOrFolder
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteFileOrFolderInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the Path input for this Choreo. 
        # 
        # @param String - (required, string) The path to the file or folder you want to delete (i.e. RootFolder/SubFolder/FileToDelete.txt).
        ###

        def set_Path(value)
          set_input("Path", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteFileOrFolder Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteFileOrFolderResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteFileOrFolder



    ##############################################################################
    #
    # GetDataStream
    #
    # Gets a file from your Dropbox account, returns the file content as Base64 encoded data.
    #
    ##############################################################################

    class GetDataStream < Choreography

      ####
      #  Create a new instance of the GetDataStream Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FileOperations/GetDataStream")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetDataStreamInputSet
      ####
      def new_input_set()
        return GetDataStreamInputSet.new()
      end

      def make_result_set()
        return GetDataStreamResultSet.new()
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
        results = GetDataStreamResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetDataStream
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetDataStreamInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the Path input for this Choreo. 
        # 
        # @param String - (required, string) The path to file you want to retrieve (i.e. RootFolder/SubFolder/MyFile.txt). Only the file name is necessary when the file is at the root level.
        ###

        def set_Path(value)
          set_input("Path", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetDataStream Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetDataStreamResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) The response from Dropbox. The response will contain the contents of the file you are retrieving as Base64 encoded data.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetDataStream



    ##############################################################################
    #
    # MoveFileOrFolder
    #
    # Moves a file or folder to a new location in the Dropbox tree.
    #
    ##############################################################################

    class MoveFileOrFolder < Choreography

      ####
      #  Create a new instance of the MoveFileOrFolder Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FileOperations/MoveFileOrFolder")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MoveFileOrFolderInputSet
      ####
      def new_input_set()
        return MoveFileOrFolderInputSet.new()
      end

      def make_result_set()
        return MoveFileOrFolderResultSet.new()
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
        results = MoveFileOrFolderResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MoveFileOrFolder
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MoveFileOrFolderInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the FromPath input for this Choreo. 
        # 
        # @param String - (required, string) Specifies the file or folder to be copied.
        ###

        def set_FromPath(value)
          set_input("FromPath", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end
        #### 
        # Set the value of the ToPath input for this Choreo. 
        # 
        # @param String - (required, string) Specifies the destination path, including the new name for the file or folder.
        ###

        def set_ToPath(value)
          set_input("ToPath", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MoveFileOrFolder Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MoveFileOrFolderResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class MoveFileOrFolder



    ##############################################################################
    #
    # ZipFile
    #
    # Creates a zipped version of the specified Dropbox file and returns a shareable link to the new compressed file.
    #
    ##############################################################################

    class ZipFile < Choreography

      ####
      #  Create a new instance of the ZipFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FileOperations/ZipFile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ZipFileInputSet
      ####
      def new_input_set()
        return ZipFileInputSet.new()
      end

      def make_result_set()
        return ZipFileResultSet.new()
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
        results = ZipFileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ZipFile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ZipFileInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the FileName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the Dropbox file you want to zip.
        ###

        def set_FileName(value)
          set_input("FileName", value)
        end
        #### 
        # Set the value of the Folder input for this Choreo. 
        # 
        # @param String - (conditional, string) The name of the folder that contains the file you want to zip. A path to a sub-folder is also valid (i.e. RootFolder/SubFolder). Not required if the file is at the root level.
        ###

        def set_Folder(value)
          set_input("Folder", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which the path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end
        #### 
        # Set the value of the ZipFileLocation input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the folder to put the new zip file in.A path to a sub-folder is also valid (i.e. RootFolder/SubFolder).  When not specified, the zip file will be put in the root folder.
        ###

        def set_ZipFileLocation(value)
          set_input("ZipFileLocation", value)
        end
        #### 
        # Set the value of the ZipFileName input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the zip file that will be created. If not specified, the original file name will be used with a .zip extension.
        ###

        def set_ZipFileName(value)
          set_input("ZipFileName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ZipFile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ZipFileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "URL" output from this Choreo execution
      	#
      	# @return String - (string) The shared link for the new zip file.
      	####
      	def get_URL()
      	  return @outputs["URL"]
      	end
      end

    end # class ZipFile



    ##############################################################################
    #
    # ZipFolder
    #
    # Creates a zip file containing all files within the specified folder and returns a shareable link to the new compressed file.
    #
    ##############################################################################

    class ZipFolder < Choreography

      ####
      #  Create a new instance of the ZipFolder Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FileOperations/ZipFolder")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ZipFolderInputSet
      ####
      def new_input_set()
        return ZipFolderInputSet.new()
      end

      def make_result_set()
        return ZipFolderResultSet.new()
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
        results = ZipFolderResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ZipFolder
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ZipFolderInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the Folder input for this Choreo. 
        # 
        # @param String - (required, string) The name of the folder that contains the files you want to retrieve and zip. A path to a sub-folder is also valid (i.e. RootFolder/SubFolder).
        ###

        def set_Folder(value)
          set_input("Folder", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which the path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end
        #### 
        # Set the value of the ZipFileLocation input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the folder to put the new zip file in. A path to a sub-folder is also valid (i.e. RootFolder/SubFolder). When not specified, the zip file will be put in the root folder.
        ###

        def set_ZipFileLocation(value)
          set_input("ZipFileLocation", value)
        end
        #### 
        # Set the value of the ZipFileName input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the zip file that will be created. If not specified, the original folder name containing the files to zip will be used with a .zip extension.
        ###

        def set_ZipFileName(value)
          set_input("ZipFileName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ZipFolder Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ZipFolderResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "URL" output from this Choreo execution
      	#
      	# @return String - 
      	####
      	def get_URL()
      	  return @outputs["URL"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ZipFolder




  end # module FileOperations

  module FilesAndMetadata



    ##############################################################################
    #
    # CreateCopyRef
    #
    # Allows you to create a copy reference (copy_ref) that you can later reference to copy files or folders to another user's Dropbox using the CopyFileOrFolder choreo. 
    #
    ##############################################################################

    class CreateCopyRef < Choreography

      ####
      #  Create a new instance of the CreateCopyRef Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FilesAndMetadata/CreateCopyRef")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateCopyRefInputSet
      ####
      def new_input_set()
        return CreateCopyRefInputSet.new()
      end

      def make_result_set()
        return CreateCopyRefResultSet.new()
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
        results = CreateCopyRefResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateCopyRef
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateCopyRefInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the Path input for this Choreo. 
        # 
        # @param String - (required, string) The path to the file you want to make available as a copy reference, i.e.  "testfile.txt" or "Folder/testfile.txt".
        ###

        def set_Path(value)
          set_input("Path", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateCopyRef Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateCopyRefResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateCopyRef



    ##############################################################################
    #
    # Delta
    #
    # Allows you keep up with changes to files and folders in a user's Dropbox.
    #
    ##############################################################################

    class Delta < Choreography

      ####
      #  Create a new instance of the Delta Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FilesAndMetadata/Delta")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeltaInputSet
      ####
      def new_input_set()
        return DeltaInputSet.new()
      end

      def make_result_set()
        return DeltaResultSet.new()
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
        results = DeltaResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Delta
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeltaInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) A string that is used to keep track of your current state. On the next call pass in this value to return delta entries that have been recorded since the cursor was returned.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the Locale input for this Choreo. 
        # 
        # @param String - (optional, string) The metadata returned will have its size field translated based on the given locale.
        ###

        def set_Locale(value)
          set_input("Locale", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Delta Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeltaResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Delta



    ##############################################################################
    #
    # GetFile
    #
    # Gets a file from your Dropbox account, returns the file content as Base64 encoded data.
    #
    ##############################################################################

    class GetFile < Choreography

      ####
      #  Create a new instance of the GetFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FilesAndMetadata/GetFile")
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
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the Path input for this Choreo. 
        # 
        # @param String - (required, string) The path to file you want to retrieve (i.e. RootFolder/SubFolder/MyFile.txt). Only the file name is necessary when the file is at the root level.
        ###

        def set_Path(value)
          set_input("Path", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
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
      	# @return String - (string) The response from Dropbox. The response will contain the contents of the file you are retrieving as Base64 encoded data.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFile



    ##############################################################################
    #
    # GetFileRevisions
    #
    # Retrieves metadata for the previous revisions of a file
    #
    ##############################################################################

    class GetFileRevisions < Choreography

      ####
      #  Create a new instance of the GetFileRevisions Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FilesAndMetadata/GetFileRevisions")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFileRevisionsInputSet
      ####
      def new_input_set()
        return GetFileRevisionsInputSet.new()
      end

      def make_result_set()
        return GetFileRevisionsResultSet.new()
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
        results = GetFileRevisionsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFileRevisions
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFileRevisionsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the Path input for this Choreo. 
        # 
        # @param String - (required, string) The path to the file that you want to return revisions for (i.e. RootFolder/SubFolder/MyFile.txt).
        ###

        def set_Path(value)
          set_input("Path", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the RevisionLimit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Default is 10. Max is 1,000. When listing a file, the service will not report listings containing more than the amount specified here.
        ###

        def set_RevisionLimit(value)
          set_input("RevisionLimit", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFileRevisions Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFileRevisionsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFileRevisions



    ##############################################################################
    #
    # GetShareableLink
    #
    # Retrieves a shareable link to files or folders.
    #
    ##############################################################################

    class GetShareableLink < Choreography

      ####
      #  Create a new instance of the GetShareableLink Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FilesAndMetadata/GetShareableLink")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetShareableLinkInputSet
      ####
      def new_input_set()
        return GetShareableLinkInputSet.new()
      end

      def make_result_set()
        return GetShareableLinkResultSet.new()
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
        results = GetShareableLinkResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetShareableLink
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetShareableLinkInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the Path input for this Choreo. 
        # 
        # @param String - (required, string) The path to the file or folder you want to return a shareable link for (i.e. RootFolder/SubFolder/MyFile.txt).
        ###

        def set_Path(value)
          set_input("Path", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetShareableLink Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetShareableLinkResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetShareableLink



    ##############################################################################
    #
    # GetThumbnail
    #
    # Retrieves a thumbnail for a specified image.
    #
    ##############################################################################

    class GetThumbnail < Choreography

      ####
      #  Create a new instance of the GetThumbnail Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FilesAndMetadata/GetThumbnail")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetThumbnailInputSet
      ####
      def new_input_set()
        return GetThumbnailInputSet.new()
      end

      def make_result_set()
        return GetThumbnailResultSet.new()
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
        results = GetThumbnailResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetThumbnail
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetThumbnailInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the ImageFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The thumbnail format to return for the specified image. Accepted values are: jpeg (default) or png.
        ###

        def set_ImageFormat(value)
          set_input("ImageFormat", value)
        end
        #### 
        # Set the value of the Path input for this Choreo. 
        # 
        # @param String - (required, string) The path to the file that you want to generate a thumbnail for (i.e. RootFolder/SubFolder/MyFile.txt).
        ###

        def set_Path(value)
          set_input("Path", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end
        #### 
        # Set the value of the Size input for this Choreo. 
        # 
        # @param String - (optional, string) The size of the thumbnail to generate. Accepted values are: small, medium, s, m, l, xl. See Choreo documentation for exact dimensions. Defaults to "small".
        ###

        def set_Size(value)
          set_input("Size", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetThumbnail Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetThumbnailResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) The base64 encoded image content of the thumbnail.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetThumbnail



    ##############################################################################
    #
    # ListFolderContents
    #
    # Lists contents of a given Dropbox folder.
    #
    ##############################################################################

    class ListFolderContents < Choreography

      ####
      #  Create a new instance of the ListFolderContents Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FilesAndMetadata/ListFolderContents")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListFolderContentsInputSet
      ####
      def new_input_set()
        return ListFolderContentsInputSet.new()
      end

      def make_result_set()
        return ListFolderContentsResultSet.new()
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
        results = ListFolderContentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListFolderContents
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListFolderContentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the FileLimit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Dropbox will not return a list that exceeds this specified limit. Defaults to 10,000.
        ###

        def set_FileLimit(value)
          set_input("FileLimit", value)
        end
        #### 
        # Set the value of the Folder input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the folder that contains the listing you want to retrieve. A path to a sub-folder is also valid (i.e. RootFolder/SubFolder).
        ###

        def set_Folder(value)
          set_input("Folder", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListFolderContents Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListFolderContentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListFolderContents



    ##############################################################################
    #
    # RestoreFileToRevision
    #
    # Restores a specified file to a previous revision.
    #
    ##############################################################################

    class RestoreFileToRevision < Choreography

      ####
      #  Create a new instance of the RestoreFileToRevision Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FilesAndMetadata/RestoreFileToRevision")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RestoreFileToRevisionInputSet
      ####
      def new_input_set()
        return RestoreFileToRevisionInputSet.new()
      end

      def make_result_set()
        return RestoreFileToRevisionResultSet.new()
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
        results = RestoreFileToRevisionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RestoreFileToRevision
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RestoreFileToRevisionInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the Path input for this Choreo. 
        # 
        # @param String - (required, string) The path to the file that you want to return revisions for (i.e. RootFolder/SubFolder/MyFile.txt).
        ###

        def set_Path(value)
          set_input("Path", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Revision input for this Choreo. 
        # 
        # @param String - (required, string) The revision of the file to restore. The revision ID can be retrieved by running the GetFileRevision Choreo.
        ###

        def set_Revision(value)
          set_input("Revision", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RestoreFileToRevision Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RestoreFileToRevisionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RestoreFileToRevision



    ##############################################################################
    #
    # SearchFilesAndFolders
    #
    # Allows you to search Dropbox for files or folders by a keyword search.
    #
    ##############################################################################

    class SearchFilesAndFolders < Choreography

      ####
      #  Create a new instance of the SearchFilesAndFolders Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FilesAndMetadata/SearchFilesAndFolders")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchFilesAndFoldersInputSet
      ####
      def new_input_set()
        return SearchFilesAndFoldersInputSet.new()
      end

      def make_result_set()
        return SearchFilesAndFoldersResultSet.new()
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
        results = SearchFilesAndFoldersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchFilesAndFolders
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchFilesAndFoldersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the FileLimit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Dropbox will not return a list that exceeds this specified limit. Defaults to 10,000.
        ###

        def set_FileLimit(value)
          set_input("FileLimit", value)
        end
        #### 
        # Set the value of the Path input for this Choreo. 
        # 
        # @param String - (optional, string) The path to the folder you want to search from (i.e. RootFolder/SubFolder). Leave blank to search ALL.
        ###

        def set_Path(value)
          set_input("Path", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (required, string) The search string. Must be at least three characters long.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchFilesAndFolders Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchFilesAndFoldersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchFilesAndFolders



    ##############################################################################
    #
    # URLFileDownloaderHelper
    #
    # 
    #
    ##############################################################################

    class URLFileDownloaderHelper < Choreography

      ####
      #  Create a new instance of the URLFileDownloaderHelper Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FilesAndMetadata/URLFileDownloaderHelper")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return URLFileDownloaderHelperInputSet
      ####
      def new_input_set()
        return URLFileDownloaderHelperInputSet.new()
      end

      def make_result_set()
        return URLFileDownloaderHelperResultSet.new()
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
        results = URLFileDownloaderHelperResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the URLFileDownloaderHelper
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class URLFileDownloaderHelperInputSet < Choreography::InputSet

        #### 
        # Set the value of the FileContentsFromURL input for this Choreo. 
        # 
        # @param String - (required, string) URL for file you want to upload. Alternative to uploading Base64Encoded data. If specifiying URL, leave FileContents blank. Valid URLs: http(s) requests only.
        ###

        def set_FileContentsFromURL(value)
          set_input("FileContentsFromURL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the URLFileDownloaderHelper Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class URLFileDownloaderHelperResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "DataStream" output from this Choreo execution
      	#
      	# @return String - Binary Data stream output. 
      	####
      	def get_DataStream()
      	  return @outputs["DataStream"]
      	end
      end

    end # class URLFileDownloaderHelper



    ##############################################################################
    #
    # UploadFile
    #
    # Uploads a file to your Dropbox account.
    #
    ##############################################################################

    class UploadFile < Choreography

      ####
      #  Create a new instance of the UploadFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/FilesAndMetadata/UploadFile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UploadFileInputSet
      ####
      def new_input_set()
        return UploadFileInputSet.new()
      end

      def make_result_set()
        return UploadFileResultSet.new()
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
        results = UploadFileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UploadFile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UploadFileInputSet < Choreography::InputSet

        #### 
        # Set the value of the FileContents input for this Choreo. 
        # 
        # @param String - (conditional, string) The Base64-encoded contents of the file you want to upload. Required UNLESS uploading a file from a URL using the FileContentsFromURL input variable.
        ###

        def set_FileContents(value)
          set_input("FileContents", value)
        end
        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the FileContentsFromURL input for this Choreo. 
        # 
        # @param String - (conditional, string) URL for file you want to upload. Alternative to uploading Base64Encoded data. If specifiying URL, leave FileContents blank. Valid URLs: http(s) requests only.
        ###

        def set_FileContentsFromURL(value)
          set_input("FileContentsFromURL", value)
        end
        #### 
        # Set the value of the FileName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the file you are uploading to Dropbox.
        ###

        def set_FileName(value)
          set_input("FileName", value)
        end
        #### 
        # Set the value of the Folder input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the folder that that you want to upload a file to. A path to a sub-folder is also valid (i.e. RootFolder/SubFolder).
        ###

        def set_Folder(value)
          set_input("Folder", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Root input for this Choreo. 
        # 
        # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
        ###

        def set_Root(value)
          set_input("Root", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - (optional, vault file) The path to a vault file you want to upload. Required unless using the FileContents input.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UploadFile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UploadFileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UploadFile




  end # module FilesAndMetadata
  ##############################################################################
  #
  # GetFileRevisions
  #
  # Retrieves metadata for the previous revisions of a file
  #
  ##############################################################################

  class GetFileRevisions < Choreography

    ####
    #  Create a new instance of the GetFileRevisions Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Dropbox/GetFileRevisions")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetFileRevisionsInputSet
    ####
    def new_input_set()
      return GetFileRevisionsInputSet.new()
    end

    def make_result_set()
      return GetFileRevisionsResultSet.new()
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
      results = GetFileRevisionsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetFileRevisions
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetFileRevisionsInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the AppKey input for this Choreo. 
      # 
      # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
      ###

      def set_AppKey(value)
        set_input("AppKey", value)
      end
      #### 
      # Set the value of the AppSecret input for this Choreo. 
      # 
      # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
      ###

      def set_AppSecret(value)
        set_input("AppSecret", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) The path to the file that you want to return revisions for (i.e. RootFolder/SubFolder/MyFile.txt).
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the RevisionLimit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Default is 10. Max is 1,000. When listing a file, the service will not report listings containing more than the amount specified here.
      ###

      def set_RevisionLimit(value)
        set_input("RevisionLimit", value)
      end
      #### 
      # Set the value of the Root input for this Choreo. 
      # 
      # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
      ###

      def set_Root(value)
        set_input("Root", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetFileRevisions Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetFileRevisionsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetFileRevisions



  ##############################################################################
  #
  # GetShareableLink
  #
  # Retrieves a shareable link to files or folders.
  #
  ##############################################################################

  class GetShareableLink < Choreography

    ####
    #  Create a new instance of the GetShareableLink Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Dropbox/GetShareableLink")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetShareableLinkInputSet
    ####
    def new_input_set()
      return GetShareableLinkInputSet.new()
    end

    def make_result_set()
      return GetShareableLinkResultSet.new()
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
      results = GetShareableLinkResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetShareableLink
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetShareableLinkInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the AppKey input for this Choreo. 
      # 
      # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
      ###

      def set_AppKey(value)
        set_input("AppKey", value)
      end
      #### 
      # Set the value of the AppSecret input for this Choreo. 
      # 
      # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
      ###

      def set_AppSecret(value)
        set_input("AppSecret", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) The path to the file or folder you want to return a shareable link for (i.e. RootFolder/SubFolder/MyFile.txt).
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Root input for this Choreo. 
      # 
      # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
      ###

      def set_Root(value)
        set_input("Root", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetShareableLink Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetShareableLinkResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetShareableLink



  ##############################################################################
  #
  # GetThumbnail
  #
  # Retrieves a thumbnail for a specified image.
  #
  ##############################################################################

  class GetThumbnail < Choreography

    ####
    #  Create a new instance of the GetThumbnail Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Dropbox/GetThumbnail")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetThumbnailInputSet
    ####
    def new_input_set()
      return GetThumbnailInputSet.new()
    end

    def make_result_set()
      return GetThumbnailResultSet.new()
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
      results = GetThumbnailResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetThumbnail
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetThumbnailInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the AppKey input for this Choreo. 
      # 
      # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
      ###

      def set_AppKey(value)
        set_input("AppKey", value)
      end
      #### 
      # Set the value of the AppSecret input for this Choreo. 
      # 
      # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
      ###

      def set_AppSecret(value)
        set_input("AppSecret", value)
      end
      #### 
      # Set the value of the ImageFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The thumbnail format to return for the specified image. Accepted values are: jpeg (default) or png.
      ###

      def set_ImageFormat(value)
        set_input("ImageFormat", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) The path to the file that you want to generate a thumbnail for (i.e. RootFolder/SubFolder/MyFile.txt).
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the Root input for this Choreo. 
      # 
      # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
      ###

      def set_Root(value)
        set_input("Root", value)
      end
      #### 
      # Set the value of the Size input for this Choreo. 
      # 
      # @param String - (optional, string) The size of the thumbnail to generate. Accepted values are: small, medium, s, m, l, xl. See Choreo documentation for exact dimensions. Defaults to "small".
      ###

      def set_Size(value)
        set_input("Size", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetThumbnail Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetThumbnailResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The base64 encoded image content of the thumbnail.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetThumbnail



  ##############################################################################
  #
  # ListFolderContents
  #
  # Lists contents of a given Dropbox folder.
  #
  ##############################################################################

  class ListFolderContents < Choreography

    ####
    #  Create a new instance of the ListFolderContents Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Dropbox/ListFolderContents")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListFolderContentsInputSet
    ####
    def new_input_set()
      return ListFolderContentsInputSet.new()
    end

    def make_result_set()
      return ListFolderContentsResultSet.new()
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
      results = ListFolderContentsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListFolderContents
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListFolderContentsInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the AppKey input for this Choreo. 
      # 
      # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
      ###

      def set_AppKey(value)
        set_input("AppKey", value)
      end
      #### 
      # Set the value of the AppSecret input for this Choreo. 
      # 
      # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
      ###

      def set_AppSecret(value)
        set_input("AppSecret", value)
      end
      #### 
      # Set the value of the FileLimit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Dropbox will not return a list that exceeds this specified limit. Defaults to 10,000.
      ###

      def set_FileLimit(value)
        set_input("FileLimit", value)
      end
      #### 
      # Set the value of the Folder input for this Choreo. 
      # 
      # @param String - (optional, string) The name of the folder that contains the listing you want to retrieve. A path to a sub-folder is also valid (i.e. RootFolder/SubFolder).
      ###

      def set_Folder(value)
        set_input("Folder", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Root input for this Choreo. 
      # 
      # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
      ###

      def set_Root(value)
        set_input("Root", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListFolderContents Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListFolderContentsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListFolderContents



  ##############################################################################
  #
  # MoveFileOrFolder
  #
  # Moves a file or folder to a new location in the Dropbox tree.
  #
  ##############################################################################

  class MoveFileOrFolder < Choreography

    ####
    #  Create a new instance of the MoveFileOrFolder Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Dropbox/MoveFileOrFolder")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return MoveFileOrFolderInputSet
    ####
    def new_input_set()
      return MoveFileOrFolderInputSet.new()
    end

    def make_result_set()
      return MoveFileOrFolderResultSet.new()
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
      results = MoveFileOrFolderResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the MoveFileOrFolder
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class MoveFileOrFolderInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the AppKey input for this Choreo. 
      # 
      # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
      ###

      def set_AppKey(value)
        set_input("AppKey", value)
      end
      #### 
      # Set the value of the AppSecret input for this Choreo. 
      # 
      # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
      ###

      def set_AppSecret(value)
        set_input("AppSecret", value)
      end
      #### 
      # Set the value of the FromPath input for this Choreo. 
      # 
      # @param String - (required, string) Specifies the file or folder to be copied.
      ###

      def set_FromPath(value)
        set_input("FromPath", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Root input for this Choreo. 
      # 
      # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
      ###

      def set_Root(value)
        set_input("Root", value)
      end
      #### 
      # Set the value of the ToPath input for this Choreo. 
      # 
      # @param String - (required, string) Specifies the destination path, including the new name for the file or folder.
      ###

      def set_ToPath(value)
        set_input("ToPath", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the MoveFileOrFolder Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class MoveFileOrFolderResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class MoveFileOrFolder




  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a Dropbox access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/OAuth/FinalizeOAuth")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FinalizeOAuthInputSet
      ####
      def new_input_set()
        return FinalizeOAuthInputSet.new()
      end

      def make_result_set()
        return FinalizeOAuthResultSet.new()
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
        results = FinalizeOAuthResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FinalizeOAuth
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FinalizeOAuthInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the AppKeyName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyName(value)
          set_input("AppKeyName", value)
        end
        #### 
        # Set the value of the AppKeyValue input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyValue(value)
          set_input("AppKeyValue", value)
        end
        #### 
        # Set the value of the CallbackID input for this Choreo. 
        # 
        # @param String - (required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the callback data after the user authorizes.
        ###

        def set_CallbackID(value)
          set_input("CallbackID", value)
        end
        #### 
        # Set the value of the DropboxAppKey input for this Choreo. 
        # 
        # @param String - (required, string) The APP Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_DropboxAppKey(value)
          set_input("DropboxAppKey", value)
        end
        #### 
        # Set the value of the DropboxAppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_DropboxAppSecret(value)
          set_input("DropboxAppSecret", value)
        end
        #### 
        # Set the value of the OAuthTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuthTokenSecret returned by the InitializeOAuth Choreo.
        ###

        def set_OAuthTokenSecret(value)
          set_input("OAuthTokenSecret", value)
        end
        #### 
        # Set the value of the Timeout input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The amount of time (in seconds) to poll your Temboo callback URL to see if your app's user has allowed or denied the request for access. Defaults to 20. Max is 60.
        ###

        def set_Timeout(value)
          set_input("Timeout", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FinalizeOAuth Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FinalizeOAuthResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "AccessTokenSecret" output from this Choreo execution
      	#
      	# @return String - (string) The Access Token Secret retrieved during the OAuth process.
      	####
      	def get_AccessTokenSecret()
      	  return @outputs["AccessTokenSecret"]
      	end
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The Access Token retrieved during the OAuth process.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      	####
      	# Retrieve the value for the "UserID" output from this Choreo execution
      	#
      	# @return String - (integer) The Dropbox user ID associated with the access token and secret returned.
      	####
      	def get_UserID()
      	  return @outputs["UserID"]
      	end
      end

    end # class FinalizeOAuth



    ##############################################################################
    #
    # InitializeOAuth
    #
    # Generates an authorization URL that an application can use to complete the first step in the OAuth process.
    #
    ##############################################################################

    class InitializeOAuth < Choreography

      ####
      #  Create a new instance of the InitializeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dropbox/OAuth/InitializeOAuth")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return InitializeOAuthInputSet
      ####
      def new_input_set()
        return InitializeOAuthInputSet.new()
      end

      def make_result_set()
        return InitializeOAuthResultSet.new()
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
        results = InitializeOAuthResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the InitializeOAuth
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class InitializeOAuthInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the AppKeyName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyName(value)
          set_input("AppKeyName", value)
        end
        #### 
        # Set the value of the AppKeyValue input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyValue(value)
          set_input("AppKeyValue", value)
        end
        #### 
        # Set the value of the DropboxAppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
        ###

        def set_DropboxAppKey(value)
          set_input("DropboxAppKey", value)
        end
        #### 
        # Set the value of the DropboxAppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The AppSecret provided by Dropbox (AKA the OAuth Consumer Secret).
        ###

        def set_DropboxAppSecret(value)
          set_input("DropboxAppSecret", value)
        end
        #### 
        # Set the value of the ForwardingURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Temboo will redirect your users to after they grant access to your application. This should include the "https://" or "http://" prefix and be a fully qualified URL.
        ###

        def set_ForwardingURL(value)
          set_input("ForwardingURL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the InitializeOAuth Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class InitializeOAuthResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "AuthorizationURL" output from this Choreo execution
      	#
      	# @return String - (string) The authorization URL that the application's user needs to go to in order to grant access to your application.
      	####
      	def get_AuthorizationURL()
      	  return @outputs["AuthorizationURL"]
      	end
      	####
      	# Retrieve the value for the "OAuthTokenSecret" output from this Choreo execution
      	#
      	# @return String - (string) The temporary OAuth Token Secret that can be exchanged for a final token secret using the FinalizeOAuth Choreo.
      	####
      	def get_OAuthTokenSecret()
      	  return @outputs["OAuthTokenSecret"]
      	end
      	####
      	# Retrieve the value for the "CallbackID" output from this Choreo execution
      	#
      	# @return String - (string) An ID used to retrieve the callback data that Temboo stores once your application's user authorizes.
      	####
      	def get_CallbackID()
      	  return @outputs["CallbackID"]
      	end
      end

    end # class InitializeOAuth




  end # module OAuth
  ##############################################################################
  #
  # RestoreFileToRevision
  #
  # Restores a specified file to a previous revision.
  #
  ##############################################################################

  class RestoreFileToRevision < Choreography

    ####
    #  Create a new instance of the RestoreFileToRevision Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Dropbox/RestoreFileToRevision")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RestoreFileToRevisionInputSet
    ####
    def new_input_set()
      return RestoreFileToRevisionInputSet.new()
    end

    def make_result_set()
      return RestoreFileToRevisionResultSet.new()
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
      results = RestoreFileToRevisionResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RestoreFileToRevision
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RestoreFileToRevisionInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the AppKey input for this Choreo. 
      # 
      # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
      ###

      def set_AppKey(value)
        set_input("AppKey", value)
      end
      #### 
      # Set the value of the AppSecret input for this Choreo. 
      # 
      # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
      ###

      def set_AppSecret(value)
        set_input("AppSecret", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) The path to the file that you want to return revisions for (i.e. RootFolder/SubFolder/MyFile.txt).
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Revision input for this Choreo. 
      # 
      # @param String - (required, string) The revision of the file to restore. The revision ID can be retrieved by running the GetFileRevision Choreo.
      ###

      def set_Revision(value)
        set_input("Revision", value)
      end
      #### 
      # Set the value of the Root input for this Choreo. 
      # 
      # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
      ###

      def set_Root(value)
        set_input("Root", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RestoreFileToRevision Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RestoreFileToRevisionResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RestoreFileToRevision



  ##############################################################################
  #
  # RetrieveBase64EncodedFile
  #
  # Retrieves a file to your Dropbox account, and returns the file content as Base64 encoded data.
  #
  ##############################################################################

  class RetrieveBase64EncodedFile < Choreography

    ####
    #  Create a new instance of the RetrieveBase64EncodedFile Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Dropbox/RetrieveBase64EncodedFile")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveBase64EncodedFileInputSet
    ####
    def new_input_set()
      return RetrieveBase64EncodedFileInputSet.new()
    end

    def make_result_set()
      return RetrieveBase64EncodedFileResultSet.new()
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
      results = RetrieveBase64EncodedFileResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveBase64EncodedFile
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveBase64EncodedFileInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the AppKey input for this Choreo. 
      # 
      # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
      ###

      def set_AppKey(value)
        set_input("AppKey", value)
      end
      #### 
      # Set the value of the AppSecret input for this Choreo. 
      # 
      # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
      ###

      def set_AppSecret(value)
        set_input("AppSecret", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) The path to file you want to retrieve (i.e. RootFolder/SubFolder/MyFile.txt). Only the file name is necessary when the file is at the root level.
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the Root input for this Choreo. 
      # 
      # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
      ###

      def set_Root(value)
        set_input("Root", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveBase64EncodedFile Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveBase64EncodedFileResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from Dropbox. The response will contain the contents of the file you are retrieving as Base64 encoded data.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveBase64EncodedFile



  ##############################################################################
  #
  # SearchFilesAndFolders
  #
  # Allows you to search Dropbox for files or folders by a keyword search.
  #
  ##############################################################################

  class SearchFilesAndFolders < Choreography

    ####
    #  Create a new instance of the SearchFilesAndFolders Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Dropbox/SearchFilesAndFolders")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchFilesAndFoldersInputSet
    ####
    def new_input_set()
      return SearchFilesAndFoldersInputSet.new()
    end

    def make_result_set()
      return SearchFilesAndFoldersResultSet.new()
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
      results = SearchFilesAndFoldersResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchFilesAndFolders
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchFilesAndFoldersInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the AppKey input for this Choreo. 
      # 
      # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
      ###

      def set_AppKey(value)
        set_input("AppKey", value)
      end
      #### 
      # Set the value of the AppSecret input for this Choreo. 
      # 
      # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
      ###

      def set_AppSecret(value)
        set_input("AppSecret", value)
      end
      #### 
      # Set the value of the FileLimit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Dropbox will not return a list that exceeds this specified limit. Defaults to 10,000.
      ###

      def set_FileLimit(value)
        set_input("FileLimit", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (optional, string) The path to the folder you want to search from (i.e. RootFolder/SubFolder). Leave blank to search ALL.
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (required, string) The search string. Must be at least three characters long.
      ###

      def set_Query(value)
        set_input("Query", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Root input for this Choreo. 
      # 
      # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
      ###

      def set_Root(value)
        set_input("Root", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchFilesAndFolders Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchFilesAndFoldersResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchFilesAndFolders



  ##############################################################################
  #
  # UploadFile
  #
  # Uploads a file to your Dropbox account.
  #
  ##############################################################################

  class UploadFile < Choreography

    ####
    #  Create a new instance of the UploadFile Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Dropbox/UploadFile")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return UploadFileInputSet
    ####
    def new_input_set()
      return UploadFileInputSet.new()
    end

    def make_result_set()
      return UploadFileResultSet.new()
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
      results = UploadFileResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the UploadFile
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class UploadFileInputSet < Choreography::InputSet

      #### 
      # Set the value of the FileContents input for this Choreo. 
      # 
      # @param String - (conditional, string) The Base64-encoded contents of the file you want to upload. Required unless using the VaultFile alias instead (an advanced option used when running Choreos in the Temboo Designer).
      ###

      def set_FileContents(value)
        set_input("FileContents", value)
      end
      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the AppKey input for this Choreo. 
      # 
      # @param String - (required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
      ###

      def set_AppKey(value)
        set_input("AppKey", value)
      end
      #### 
      # Set the value of the AppSecret input for this Choreo. 
      # 
      # @param String - (required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
      ###

      def set_AppSecret(value)
        set_input("AppSecret", value)
      end
      #### 
      # Set the value of the FileName input for this Choreo. 
      # 
      # @param String - (required, string) The name of the file you are uploading to Dropbox.
      ###

      def set_FileName(value)
        set_input("FileName", value)
      end
      #### 
      # Set the value of the Folder input for this Choreo. 
      # 
      # @param String - (optional, string) The name of the folder that that you want to upload a file to. A path to a sub-folder is also valid (i.e. RootFolder/SubFolder).
      ###

      def set_Folder(value)
        set_input("Folder", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Root input for this Choreo. 
      # 
      # @param String - (conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
      ###

      def set_Root(value)
        set_input("Root", value)
      end
      #### 
      # Set the value of the VaultFile input for this Choreo. 
      # 
      # @param TembooPath - (optional, vault file) The path to a vault file you want to upload. Required unless using the FileContents input.
      ###

      def set_VaultFile(value)
        set_alias("VaultFile", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the UploadFile Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class UploadFileResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class UploadFile




end # module Dropbox