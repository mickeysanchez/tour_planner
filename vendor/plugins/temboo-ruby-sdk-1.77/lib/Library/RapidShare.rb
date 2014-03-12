require "temboo"

module RapidShare



  ##############################################################################
  #
  # AddRealFolder
  #
  # Creates a new folder in RapidShare.
  #
  ##############################################################################

  class AddRealFolder < Choreography

    ####
    #  Create a new instance of the AddRealFolder Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RapidShare/AddRealFolder")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AddRealFolderInputSet
    ####
    def new_input_set()
      return AddRealFolderInputSet.new()
    end

    def make_result_set()
      return AddRealFolderResultSet.new()
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
      results = AddRealFolderResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AddRealFolder
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AddRealFolderInputSet < Choreography::InputSet

      #### 
      # Set the value of the Login input for this Choreo. 
      # 
      # @param String - (required, string) Your RapidShare username
      ###

      def set_Login(value)
        set_input("Login", value)
      end
      #### 
      # Set the value of the Name input for this Choreo. 
      # 
      # @param String - (required, string) The name of the folder (Max character length is 250 bytes)
      ###

      def set_Name(value)
        set_input("Name", value)
      end
      #### 
      # Set the value of the Parent input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The ID of the parent folder. Defaults to 0 for 'root'.
      ###

      def set_Parent(value)
        set_input("Parent", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your RapidShare password
      ###

      def set_Password(value)
        set_input("Password", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AddRealFolder Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AddRealFolderResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from RapidShare. The id of the newly created folder should be returned in the response upon a successful execution.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AddRealFolder



  ##############################################################################
  #
  # DeleteFiles
  #
  # Delete one or more files from RapidShare.
  #
  ##############################################################################

  class DeleteFiles < Choreography

    ####
    #  Create a new instance of the DeleteFiles Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RapidShare/DeleteFiles")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteFilesInputSet
    ####
    def new_input_set()
      return DeleteFilesInputSet.new()
    end

    def make_result_set()
      return DeleteFilesResultSet.new()
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
      results = DeleteFilesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteFiles
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteFilesInputSet < Choreography::InputSet

      #### 
      # Set the value of the File input for this Choreo. 
      # 
      # @param Integer - (required, integer) The id of the file to delete. Can be a commas separated list of ids.
      ###

      def set_File(value)
        set_input("File", value)
      end
      #### 
      # Set the value of the Login input for this Choreo. 
      # 
      # @param String - (required, string) Your RapidShare username
      ###

      def set_Login(value)
        set_input("Login", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your RapidShare password
      ###

      def set_Password(value)
        set_input("Password", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteFiles Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteFilesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from RapidShare
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteFiles



  ##############################################################################
  #
  # DeleteRealFolder
  #
  # Delete a folder(s) from a RapidShare account.
  #
  ##############################################################################

  class DeleteRealFolder < Choreography

    ####
    #  Create a new instance of the DeleteRealFolder Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RapidShare/DeleteRealFolder")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteRealFolderInputSet
    ####
    def new_input_set()
      return DeleteRealFolderInputSet.new()
    end

    def make_result_set()
      return DeleteRealFolderResultSet.new()
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
      results = DeleteRealFolderResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteRealFolder
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteRealFolderInputSet < Choreography::InputSet

      #### 
      # Set the value of the Login input for this Choreo. 
      # 
      # @param String - (required, string) Your RapidShare username
      ###

      def set_Login(value)
        set_input("Login", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your RapidShare password
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the RealFolder input for this Choreo. 
      # 
      # @param Integer - (required, integer) The id of the folder to delete. Can be a commas separated list of ids.
      ###

      def set_RealFolder(value)
        set_input("RealFolder", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteRealFolder Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteRealFolderResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from RapidShare
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteRealFolder



  ##############################################################################
  #
  # GetAccountDetails
  #
  # Returns details about a RapidShare account in key-value pairs.
  #
  ##############################################################################

  class GetAccountDetails < Choreography

    ####
    #  Create a new instance of the GetAccountDetails Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RapidShare/GetAccountDetails")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetAccountDetailsInputSet
    ####
    def new_input_set()
      return GetAccountDetailsInputSet.new()
    end

    def make_result_set()
      return GetAccountDetailsResultSet.new()
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
      results = GetAccountDetailsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetAccountDetails
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetAccountDetailsInputSet < Choreography::InputSet

      #### 
      # Set the value of the Login input for this Choreo. 
      # 
      # @param String - (required, string) Your RapidShare username
      ###

      def set_Login(value)
        set_input("Login", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your RapidShare password
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the WithCookie input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) If value "1" is specified, a cookie is returned in the response
      ###

      def set_WithCookie(value)
        set_input("WithCookie", value)
      end
      #### 
      # Set the value of the WithPublicId input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) If value "1" is specified, the public id is returned in the response
      ###

      def set_WithPublicId(value)
        set_input("WithPublicId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetAccountDetails Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetAccountDetailsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from RapidShare formatted in key / value pairs.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetAccountDetails



  ##############################################################################
  #
  # ListFiles
  #
  # Lists the files in all folders (or in a specified folder) and allows you to control the database columns returned in the result.
  #
  ##############################################################################

  class ListFiles < Choreography

    ####
    #  Create a new instance of the ListFiles Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RapidShare/ListFiles")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListFilesInputSet
    ####
    def new_input_set()
      return ListFilesInputSet.new()
    end

    def make_result_set()
      return ListFilesResultSet.new()
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
      results = ListFilesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListFiles
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListFilesInputSet < Choreography::InputSet

      #### 
      # Set the value of the Fields input for this Choreo. 
      # 
      # @param String - (optional, string) The database columns to return separated by commas. (i.e. downloads,lastdownload,filename,size, etc)
      ###

      def set_Fields(value)
        set_input("Fields", value)
      end
      #### 
      # Set the value of the FileIDs input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The id of the file to list. Multiple IDs can be entered separated by commas.
      ###

      def set_FileIDs(value)
        set_input("FileIDs", value)
      end
      #### 
      # Set the value of the FileName input for this Choreo. 
      # 
      # @param String - (optional, string) The name of the file to list
      ###

      def set_FileName(value)
        set_input("FileName", value)
      end
      #### 
      # Set the value of the FolderID input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The id of the folder that contains the file you want to list. Defaults to 'all'.
      ###

      def set_FolderID(value)
        set_input("FolderID", value)
      end
      #### 
      # Set the value of the Login input for this Choreo. 
      # 
      # @param String - (required, string) Your RapidShare username
      ###

      def set_Login(value)
        set_input("Login", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your RapidShare password
      ###

      def set_Password(value)
        set_input("Password", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListFiles Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListFilesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from RapidShare formatted in commas separated values.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListFiles



  ##############################################################################
  #
  # ListRealFolders
  #
  # Returns all existing RealFolders
  #
  ##############################################################################

  class ListRealFolders < Choreography

    ####
    #  Create a new instance of the ListRealFolders Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RapidShare/ListRealFolders")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListRealFoldersInputSet
    ####
    def new_input_set()
      return ListRealFoldersInputSet.new()
    end

    def make_result_set()
      return ListRealFoldersResultSet.new()
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
      results = ListRealFoldersResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListRealFolders
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListRealFoldersInputSet < Choreography::InputSet

      #### 
      # Set the value of the Login input for this Choreo. 
      # 
      # @param String - (required, string) Your RapidShare username
      ###

      def set_Login(value)
        set_input("Login", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your RapidShare password
      ###

      def set_Password(value)
        set_input("Password", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListRealFolders Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListRealFoldersResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from RapidShare formatted in commas separated values.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListRealFolders



  ##############################################################################
  #
  # MoveFilesToRealFolder
  #
  # Move an existing file to a new folder in RapidShare.
  #
  ##############################################################################

  class MoveFilesToRealFolder < Choreography

    ####
    #  Create a new instance of the MoveFilesToRealFolder Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RapidShare/MoveFilesToRealFolder")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return MoveFilesToRealFolderInputSet
    ####
    def new_input_set()
      return MoveFilesToRealFolderInputSet.new()
    end

    def make_result_set()
      return MoveFilesToRealFolderResultSet.new()
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
      results = MoveFilesToRealFolderResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the MoveFilesToRealFolder
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class MoveFilesToRealFolderInputSet < Choreography::InputSet

      #### 
      # Set the value of the Files input for this Choreo. 
      # 
      # @param Integer - (required, integer) The id of the file to move. Can be a commas separated list of ids.
      ###

      def set_Files(value)
        set_input("Files", value)
      end
      #### 
      # Set the value of the Login input for this Choreo. 
      # 
      # @param String - (required, string) Your RapidShare username
      ###

      def set_Login(value)
        set_input("Login", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your RapidShare password
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the RealFolder input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The ID of the parent folder. Defaults to 0 for 'root'.
      ###

      def set_RealFolder(value)
        set_input("RealFolder", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the MoveFilesToRealFolder Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class MoveFilesToRealFolderResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from RapidShare. The id of the newly created folder should be returned in the response upon a successful execution.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class MoveFilesToRealFolder



  ##############################################################################
  #
  # MoveRealFolder
  #
  # Changes the parent ID of existing RealFolders, enabling the location of the folder to be moved within a RapidShare account file hierarchy.
  #
  ##############################################################################

  class MoveRealFolder < Choreography

    ####
    #  Create a new instance of the MoveRealFolder Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RapidShare/MoveRealFolder")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return MoveRealFolderInputSet
    ####
    def new_input_set()
      return MoveRealFolderInputSet.new()
    end

    def make_result_set()
      return MoveRealFolderResultSet.new()
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
      results = MoveRealFolderResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the MoveRealFolder
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class MoveRealFolderInputSet < Choreography::InputSet

      #### 
      # Set the value of the FolderId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The id of the folder(s) to be moved. Can be a commas separated list of ids.
      ###

      def set_FolderId(value)
        set_input("FolderId", value)
      end
      #### 
      # Set the value of the Login input for this Choreo. 
      # 
      # @param String - (required, string) Your RapidShare username
      ###

      def set_Login(value)
        set_input("Login", value)
      end
      #### 
      # Set the value of the NewParent input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter the ID of new parent folder
      ###

      def set_NewParent(value)
        set_input("NewParent", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your RapidShare password
      ###

      def set_Password(value)
        set_input("Password", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the MoveRealFolder Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class MoveRealFolderResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from RapidShare. The id of the newly created folder should be returned in the response upon a successful execution.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class MoveRealFolder



  ##############################################################################
  #
  # NextUploadServer
  #
  # 
  #
  ##############################################################################

  class NextUploadServer < Choreography

    ####
    #  Create a new instance of the NextUploadServer Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RapidShare/NextUploadServer")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return NextUploadServerInputSet
    ####
    def new_input_set()
      return NextUploadServerInputSet.new()
    end

    def make_result_set()
      return NextUploadServerResultSet.new()
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
      results = NextUploadServerResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the NextUploadServer
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class NextUploadServerInputSet < Choreography::InputSet


    end

    ####
    # A ResultSet with methods tailored to the values returned by the NextUploadServer Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class NextUploadServerResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - 
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class NextUploadServer



  ##############################################################################
  #
  # RenameFile
  #
  # Renames a file to something else.
  #
  ##############################################################################

  class RenameFile < Choreography

    ####
    #  Create a new instance of the RenameFile Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RapidShare/RenameFile")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RenameFileInputSet
    ####
    def new_input_set()
      return RenameFileInputSet.new()
    end

    def make_result_set()
      return RenameFileResultSet.new()
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
      results = RenameFileResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RenameFile
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RenameFileInputSet < Choreography::InputSet

      #### 
      # Set the value of the FileId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of the file to be renamed. Can be a commas separated list of ids.
      ###

      def set_FileId(value)
        set_input("FileId", value)
      end
      #### 
      # Set the value of the Login input for this Choreo. 
      # 
      # @param String - (required, string) Your RapidShare username
      ###

      def set_Login(value)
        set_input("Login", value)
      end
      #### 
      # Set the value of the NewFileName input for this Choreo. 
      # 
      # @param String - (required, string) The new file name.
      ###

      def set_NewFileName(value)
        set_input("NewFileName", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your RapidShare password
      ###

      def set_Password(value)
        set_input("Password", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RenameFile Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RenameFileResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from RapidShare. The ID of the newly created folder should be returned in the response upon a successful execution.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RenameFile



  ##############################################################################
  #
  # SendMail
  #
  # Send an email that contains a link to a file available on RapidShare.
  #
  ##############################################################################

  class SendMail < Choreography

    ####
    #  Create a new instance of the SendMail Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RapidShare/SendMail")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SendMailInputSet
    ####
    def new_input_set()
      return SendMailInputSet.new()
    end

    def make_result_set()
      return SendMailResultSet.new()
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
      results = SendMailResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SendMail
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SendMailInputSet < Choreography::InputSet

      #### 
      # Set the value of the Comment input for this Choreo. 
      # 
      # @param String - (required, string) A comment that you want to send with the email
      ###

      def set_Comment(value)
        set_input("Comment", value)
      end
      #### 
      # Set the value of the Email1 input for this Choreo. 
      # 
      # @param String - (required, string) The first email address to send to
      ###

      def set_Email1(value)
        set_input("Email1", value)
      end
      #### 
      # Set the value of the Email2 input for this Choreo. 
      # 
      # @param String - (optional, string) The second email address to send to
      ###

      def set_Email2(value)
        set_input("Email2", value)
      end
      #### 
      # Set the value of the Email3 input for this Choreo. 
      # 
      # @param String - (optional, string) The third email address to send to
      ###

      def set_Email3(value)
        set_input("Email3", value)
      end
      #### 
      # Set the value of the FileID1 input for this Choreo. 
      # 
      # @param Integer - (required, integer) The id for the file to inform the email recipient about
      ###

      def set_FileID1(value)
        set_input("FileID1", value)
      end
      #### 
      # Set the value of the FileName1 input for this Choreo. 
      # 
      # @param String - (required, string) The name of the file to inform the email recipient about
      ###

      def set_FileName1(value)
        set_input("FileName1", value)
      end
      #### 
      # Set the value of the Login input for this Choreo. 
      # 
      # @param String - (required, string) Your RapidShare username
      ###

      def set_Login(value)
        set_input("Login", value)
      end
      #### 
      # Set the value of the Name input for this Choreo. 
      # 
      # @param String - (required, string) The senders name
      ###

      def set_Name(value)
        set_input("Name", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your RapidShare password
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ReplyEmail input for this Choreo. 
      # 
      # @param String - (required, string) The sender reply email address
      ###

      def set_ReplyEmail(value)
        set_input("ReplyEmail", value)
      end
      #### 
      # Set the value of the Subject input for this Choreo. 
      # 
      # @param String - (required, string) The subject line for the email
      ###

      def set_Subject(value)
        set_input("Subject", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SendMail Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SendMailResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from RapidShare
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SendMail



  ##############################################################################
  #
  # Upload
  #
  # Upload a file to RapidShare.
  #
  ##############################################################################

  class Upload < Choreography

    ####
    #  Create a new instance of the Upload Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RapidShare/Upload")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return UploadInputSet
    ####
    def new_input_set()
      return UploadInputSet.new()
    end

    def make_result_set()
      return UploadResultSet.new()
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
      results = UploadResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Upload
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class UploadInputSet < Choreography::InputSet

      #### 
      # Set the value of the FileContents input for this Choreo. 
      # 
      # @param String - (conditional, string) The base64 encoded contents of the file you want to upload. Required unless using the VaultFile alias (an advanced option used when running Choreos in the Temboo Designer).
      ###

      def set_FileContents(value)
        set_input("FileContents", value)
      end
      #### 
      # Set the value of the FileName input for this Choreo. 
      # 
      # @param String - (required, string) The name of the file you want to upload
      ###

      def set_FileName(value)
        set_input("FileName", value)
      end
      #### 
      # Set the value of the Folder input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The id of the folder you want to upload the file to
      ###

      def set_Folder(value)
        set_input("Folder", value)
      end
      #### 
      # Set the value of the Login input for this Choreo. 
      # 
      # @param String - (required, string) Your RapidShare username
      ###

      def set_Login(value)
        set_input("Login", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your RapidShare password
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the VaultFile input for this Choreo. 
      # 
      # @param TembooPath - The path to a file in your vault to upload. Required if FileContents input variable is not specified.
      ###

      def set_VaultFile(value)
        set_alias("VaultFile", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Upload Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class UploadResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from RapidShare formatted in commas separated values.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Upload




end # module RapidShare