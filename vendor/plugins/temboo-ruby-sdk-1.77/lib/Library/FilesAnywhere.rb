require "temboo"

module FilesAnywhere



  ##############################################################################
  #
  # AccountLogin
  #
  # Retrieves an authentication token from FilesAnywhere.
  #
  ##############################################################################

  class AccountLogin < Choreography

    ####
    #  Create a new instance of the AccountLogin Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FilesAnywhere/AccountLogin")
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
      # @param String - (required, string) The API Key provided by FilesAnywhere.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AllowedIPList input for this Choreo. 
      # 
      # @param String - (optional, string) List of allowed IP addresses.  Multiple IP addresses can be separated by commas.
      ###

      def set_AllowedIPList(value)
        set_input("AllowedIPList", value)
      end
      #### 
      # Set the value of the ClientEncryptParam input for this Choreo. 
      # 
      # @param String - (optional, string) Used to return an encrypted password to use for subsequent logins.
      ###

      def set_ClientEncryptParam(value)
        set_input("ClientEncryptParam", value)
      end
      #### 
      # Set the value of the OrgID input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Defaults to 0 for a FilesAnywhere Web account.  Use 50 for a FilesAnywhere WebAdvanced account.
      ###

      def set_OrgID(value)
        set_input("OrgID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your FilesAnywhere password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) Your FilesAnywhere username.
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
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (string) The token value parsed from the FilesAnywhere response.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FilesAnywhere.
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
  # Logout a user.
  #
  ##############################################################################

  class AccountLogout < Choreography

    ####
    #  Create a new instance of the AccountLogout Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FilesAnywhere/AccountLogout")
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
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (required, string) The token retrieved from authentication.  Can be passed from the AccountLogin Choreo.
      ###

      def set_Token(value)
        set_input("Token", value)
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
    	# @return String - (xml) The response from FilesAnywhere.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AccountLogout



  ##############################################################################
  #
  # AddItemComment
  #
  # Add a comment to an item.
  #
  ##############################################################################

  class AddItemComment < Choreography

    ####
    #  Create a new instance of the AddItemComment Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FilesAnywhere/AddItemComment")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AddItemCommentInputSet
    ####
    def new_input_set()
      return AddItemCommentInputSet.new()
    end

    def make_result_set()
      return AddItemCommentResultSet.new()
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
      results = AddItemCommentResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AddItemComment
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AddItemCommentInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Comment input for this Choreo. 
      # 
      # @param String - (required, string) Enter item comment.
      ###

      def set_Comment(value)
        set_input("Comment", value)
      end
      #### 
      # Set the value of the FullName input for this Choreo. 
      # 
      # @param String - (required, string) Provide the full name of the user entering the comment.
      ###

      def set_FullName(value)
        set_input("FullName", value)
      end
      #### 
      # Set the value of the ParentID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Specify the ID of the parent comment.
      ###

      def set_ParentID(value)
        set_input("ParentID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) Enter the path to the item in the following format: \USERNAME\file.txt
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AddItemComment Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AddItemCommentResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FilesAnywhere.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AddItemComment



  ##############################################################################
  #
  # CreateFolder
  #
  # Create a new folder.
  #
  ##############################################################################

  class CreateFolder < Choreography

    ####
    #  Create a new instance of the CreateFolder Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FilesAnywhere/CreateFolder")
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
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the NewFolderName input for this Choreo. 
      # 
      # @param String - (required, string) Enter a name for the new folder.
      ###

      def set_NewFolderName(value)
        set_input("NewFolderName", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) The path to the folder you want to create (i.e. \JOHNSMITH\MyFolder).
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateFolder Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateFolderResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FilesAnywhere.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateFolder



  ##############################################################################
  #
  # DeleteItem
  #
  # Deletes a file from a specified directory in your FilesAnywhere account.
  #
  ##############################################################################

  class DeleteItem < Choreography

    ####
    #  Create a new instance of the DeleteItem Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FilesAnywhere/DeleteItem")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteItemInputSet
    ####
    def new_input_set()
      return DeleteItemInputSet.new()
    end

    def make_result_set()
      return DeleteItemResultSet.new()
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
      results = DeleteItemResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteItem
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteItemInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) The path to the file you want to delete (i.e. \JOHNSMITH\MyFolder\MyFile.txt).
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) The type of item you are deleting. Can be set to 'file' or 'folder'. Defaults to 'file'.
      ###

      def set_Type(value)
        set_input("Type", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteItem Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteItemResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FilesAnywhere.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    end

  end # class DeleteItem



  ##############################################################################
  #
  # DownloadBase64EncodedFile
  #
  # Downloads a file from a specified directory in your FilesAnywhere account, and returns the content as Base64 encoded data.
  #
  ##############################################################################

  class DownloadBase64EncodedFile < Choreography

    ####
    #  Create a new instance of the DownloadBase64EncodedFile Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FilesAnywhere/DownloadBase64EncodedFile")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DownloadBase64EncodedFileInputSet
    ####
    def new_input_set()
      return DownloadBase64EncodedFileInputSet.new()
    end

    def make_result_set()
      return DownloadBase64EncodedFileResultSet.new()
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
      results = DownloadBase64EncodedFileResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DownloadBase64EncodedFile
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DownloadBase64EncodedFileInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) The path to the file you want to download (i.e. \JOHNSMITH\MyFolder\MyFile.txt).
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DownloadBase64EncodedFile Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DownloadBase64EncodedFileResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from FilesAnywhere. The response contains the Base64 encoded content of the file you are downloading.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    end

  end # class DownloadBase64EncodedFile



  ##############################################################################
  #
  # FileProperties
  #
  # Lists file property information.
  #
  ##############################################################################

  class FileProperties < Choreography

    ####
    #  Create a new instance of the FileProperties Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FilesAnywhere/FileProperties")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FilePropertiesInputSet
    ####
    def new_input_set()
      return FilePropertiesInputSet.new()
    end

    def make_result_set()
      return FilePropertiesResultSet.new()
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
      results = FilePropertiesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FileProperties
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FilePropertiesInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) The path to the file you want to retrieve properties for (i.e. \JOHNSMITH\MyFolder\MyFile.txt).
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FileProperties Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FilePropertiesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FilesAnywhere.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FileProperties



  ##############################################################################
  #
  # ItemCommentsList
  #
  # Get the comments list of an item.
  #
  ##############################################################################

  class ItemCommentsList < Choreography

    ####
    #  Create a new instance of the ItemCommentsList Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FilesAnywhere/ItemCommentsList")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ItemCommentsListInputSet
    ####
    def new_input_set()
      return ItemCommentsListInputSet.new()
    end

    def make_result_set()
      return ItemCommentsListResultSet.new()
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
      results = ItemCommentsListResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ItemCommentsList
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ItemCommentsListInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ItemPath input for this Choreo. 
      # 
      # @param String - (required, string) Enter the path to the item in the following format: \USERNAME\file.txt
      ###

      def set_ItemPath(value)
        set_input("ItemPath", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ItemCommentsList Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ItemCommentsListResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FilesAnywhere.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    end

  end # class ItemCommentsList



  ##############################################################################
  #
  # ListItems
  #
  # Lists files within a specified directory in your FilesAnywhere account.
  #
  ##############################################################################

  class ListItems < Choreography

    ####
    #  Create a new instance of the ListItems Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FilesAnywhere/ListItems")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListItemsInputSet
    ####
    def new_input_set()
      return ListItemsInputSet.new()
    end

    def make_result_set()
      return ListItemsResultSet.new()
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
      results = ListItemsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListItems
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListItemsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the PageNum input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The page number to return. Can be used to page through large result sets. Defaults to 1.
      ###

      def set_PageNum(value)
        set_input("PageNum", value)
      end
      #### 
      # Set the value of the PageSize input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of results to return per page. Defaults to 10.
      ###

      def set_PageSize(value)
        set_input("PageSize", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) The path to the folder that you want to list items for (i.e. \JOHNSMITH\MyFolder).
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListItems Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListItemsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FilesAnywhere.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListItems



  ##############################################################################
  #
  # ListUserVolumes
  #
  # List user volumes.
  #
  ##############################################################################

  class ListUserVolumes < Choreography

    ####
    #  Create a new instance of the ListUserVolumes Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FilesAnywhere/ListUserVolumes")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListUserVolumesInputSet
    ####
    def new_input_set()
      return ListUserVolumesInputSet.new()
    end

    def make_result_set()
      return ListUserVolumesResultSet.new()
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
      results = ListUserVolumesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListUserVolumes
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListUserVolumesInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
      ###

      def set_Username(value)
        set_input("Username", value)
      end
      #### 
      # Set the value of the VaultFile input for this Choreo. 
      # 
      # @param TembooPath - (optional, vault file) The path to a vault file that you want to upload. Required unless using the FileContents input.
      ###

      def set_VaultFile(value)
        set_alias("VaultFile", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListUserVolumes Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListUserVolumesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FilesAnywhere.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    end

  end # class ListUserVolumes



  ##############################################################################
  #
  # RenameItem
  #
  # Rename an item.
  #
  ##############################################################################

  class RenameItem < Choreography

    ####
    #  Create a new instance of the RenameItem Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FilesAnywhere/RenameItem")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RenameItemInputSet
    ####
    def new_input_set()
      return RenameItemInputSet.new()
    end

    def make_result_set()
      return RenameItemResultSet.new()
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
      results = RenameItemResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RenameItem
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RenameItemInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the NewName input for this Choreo. 
      # 
      # @param String - (required, string) Enter the new name for the item.
      ###

      def set_NewName(value)
        set_input("NewName", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) The path to the file you want to rename (i.e. \JOHNSMITH\MyFolder\MyFile.txt).
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (required, string) Specify the type of file being renamed by entering: folder, OR, file.
      ###

      def set_Type(value)
        set_input("Type", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RenameItem Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RenameItemResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FilesAnywhere.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    end

  end # class RenameItem



  ##############################################################################
  #
  # UploadFile
  #
  # Uploads a file to a specified directory in your FilesAnywhere account.
  #
  ##############################################################################

  class UploadFile < Choreography

    ####
    #  Create a new instance of the UploadFile Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FilesAnywhere/UploadFile")
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
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the FileContents input for this Choreo. 
      # 
      # @param String - (optional, string) The base64 encoded file contents of the file you want to upload. Required unless using the VaultFile alias (an advanced option used when running Choreos in the Temboo Designer).
      ###

      def set_FileContents(value)
        set_input("FileContents", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) The file path that you want to use for the upload (i.e. \JOHNSMITH\MyFolder\MyFile.txt)
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
      ###

      def set_Username(value)
        set_input("Username", value)
      end
      #### 
      # Set the value of the VaultFile input for this Choreo. 
      # 
      # @param TembooPath - (optional, vault file) The path to a vault file that you want to upload. Required unless using the FileContents input.
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
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FilesAnywhere
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class UploadFile



  ##############################################################################
  #
  # ViewFile
  #
  # Generate a URL from which a file can be viewed.
  #
  ##############################################################################

  class ViewFile < Choreography

    ####
    #  Create a new instance of the ViewFile Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FilesAnywhere/ViewFile")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ViewFileInputSet
    ####
    def new_input_set()
      return ViewFileInputSet.new()
    end

    def make_result_set()
      return ViewFileResultSet.new()
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
      results = ViewFileResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ViewFile
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ViewFileInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Path input for this Choreo. 
      # 
      # @param String - (required, string) Enter the path to the item being viewed in the following format: \USERNAME\file.txt
      ###

      def set_Path(value)
        set_input("Path", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ViewFile Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ViewFileResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FilesAnywhere.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    end

  end # class ViewFile




end # module FilesAnywhere