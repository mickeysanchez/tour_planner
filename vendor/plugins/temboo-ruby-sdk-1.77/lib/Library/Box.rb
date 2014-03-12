require "temboo"

module Box



  ##############################################################################
  #
  # AcceptCollaboration
  #
  # Accepts a collaboration invitation for a Box.net file or folder.
  #
  ##############################################################################

  class AcceptCollaboration < Choreography

    ####
    #  Create a new instance of the AcceptCollaboration Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/AcceptCollaboration")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AcceptCollaborationInputSet
    ####
    def new_input_set()
      return AcceptCollaborationInputSet.new()
    end

    def make_result_set()
      return AcceptCollaborationResultSet.new()
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
      results = AcceptCollaborationResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AcceptCollaboration
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AcceptCollaborationInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Accept input for this Choreo. 
      # 
      # @param Boolean - (required, boolean) Enter "1" (the default) to accept a collaboration invitation, or "0" to not accept.
      ###

      def set_Accept(value)
        set_input("Accept", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the CollaborationID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The Box.net ID of the collaboration to accept.
      ###

      def set_CollaborationID(value)
        set_input("CollaborationID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AcceptCollaboration Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AcceptCollaborationResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AcceptCollaboration




  module Collaborations



    ##############################################################################
    #
    # AddCollaboration
    #
    # Adds a collaboration for a single user to a specific folder.
    #
    ##############################################################################

    class AddCollaboration < Choreography

      ####
      #  Create a new instance of the AddCollaboration Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Collaborations/AddCollaboration")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddCollaborationInputSet
      ####
      def new_input_set()
        return AddCollaborationInputSet.new()
      end

      def make_result_set()
        return AddCollaborationResultSet.new()
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
        results = AddCollaborationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddCollaboration
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddCollaborationInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the FolderID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the folder that you want to create a collaboration for.
        ###

        def set_FolderID(value)
          set_input("FolderID", value)
        end
        #### 
        # Set the value of the Login input for this Choreo. 
        # 
        # @param String - (conditional, string) The email address of someone who this collaboration applies to. Required unless providing the UserID. Note, this does not need to be a Box user.
        ###

        def set_Login(value)
          set_input("Login", value)
        end
        #### 
        # Set the value of the Role input for this Choreo. 
        # 
        # @param String - (optional, string) The access level of the collaboration. Valid values are "viewer" or "editor". Defaults to "viewer".
        ###

        def set_Role(value)
          set_input("Role", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The id of a Box user who this collaboration applies to. Required unless providing the EmailAddress.
        ###

        def set_UserID(value)
          set_input("UserID", value)
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
      # A ResultSet with methods tailored to the values returned by the AddCollaboration Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddCollaborationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddCollaboration



    ##############################################################################
    #
    # DeleteCollaboration
    #
    # Deletes a single collaboration.
    #
    ##############################################################################

    class DeleteCollaboration < Choreography

      ####
      #  Create a new instance of the DeleteCollaboration Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Collaborations/DeleteCollaboration")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteCollaborationInputSet
      ####
      def new_input_set()
        return DeleteCollaborationInputSet.new()
      end

      def make_result_set()
        return DeleteCollaborationResultSet.new()
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
        results = DeleteCollaborationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteCollaboration
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteCollaborationInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the CollaborationID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the collaboration to remove from a folder.
        ###

        def set_CollaborationID(value)
          set_input("CollaborationID", value)
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
      # A ResultSet with methods tailored to the values returned by the DeleteCollaboration Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteCollaborationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteCollaboration



    ##############################################################################
    #
    # GetCollaboration
    #
    # Retrieves an existing collaboration.
    #
    ##############################################################################

    class GetCollaboration < Choreography

      ####
      #  Create a new instance of the GetCollaboration Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Collaborations/GetCollaboration")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCollaborationInputSet
      ####
      def new_input_set()
        return GetCollaborationInputSet.new()
      end

      def make_result_set()
        return GetCollaborationResultSet.new()
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
        results = GetCollaborationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCollaboration
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCollaborationInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the CollaborationID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the collaboration to retrieve.
        ###

        def set_CollaborationID(value)
          set_input("CollaborationID", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
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
      # A ResultSet with methods tailored to the values returned by the GetCollaboration Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCollaborationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCollaboration



    ##############################################################################
    #
    # GetPendingCollaborations
    #
    # Retrieves all pending collaboration invites for a user.
    #
    ##############################################################################

    class GetPendingCollaborations < Choreography

      ####
      #  Create a new instance of the GetPendingCollaborations Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Collaborations/GetPendingCollaborations")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPendingCollaborationsInputSet
      ####
      def new_input_set()
        return GetPendingCollaborationsInputSet.new()
      end

      def make_result_set()
        return GetPendingCollaborationsResultSet.new()
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
        results = GetPendingCollaborationsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPendingCollaborations
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPendingCollaborationsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
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
      # A ResultSet with methods tailored to the values returned by the GetPendingCollaborations Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPendingCollaborationsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPendingCollaborations



    ##############################################################################
    #
    # UpdateCollaboration
    #
    # Edits an existing collaboration.
    #
    ##############################################################################

    class UpdateCollaboration < Choreography

      ####
      #  Create a new instance of the UpdateCollaboration Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Collaborations/UpdateCollaboration")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateCollaborationInputSet
      ####
      def new_input_set()
        return UpdateCollaborationInputSet.new()
      end

      def make_result_set()
        return UpdateCollaborationResultSet.new()
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
        results = UpdateCollaborationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateCollaboration
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateCollaborationInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the CollaborationID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the collaboration to edit.
        ###

        def set_CollaborationID(value)
          set_input("CollaborationID", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Role input for this Choreo. 
        # 
        # @param String - (conditional, string) The access level of the collaboration. Valid values are "viewer" or "editor". Defaults to "viewer". This value can only be updated by the owner of the folder.
        ###

        def set_Role(value)
          set_input("Role", value)
        end
        #### 
        # Set the value of the Status input for this Choreo. 
        # 
        # @param String - (conditional, string) Whether this collaboration has been accepted. Valid values are: "accepted" or "rejected". This value can only be updated by the user who has been invited to the collaboration.
        ###

        def set_Status(value)
          set_input("Status", value)
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
      # A ResultSet with methods tailored to the values returned by the UpdateCollaboration Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateCollaborationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateCollaboration




  end # module Collaborations

  module Comments



    ##############################################################################
    #
    # AddComment
    #
    # Adds a comment to a specific file.
    #
    ##############################################################################

    class AddComment < Choreography

      ####
      #  Create a new instance of the AddComment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Comments/AddComment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddCommentInputSet
      ####
      def new_input_set()
        return AddCommentInputSet.new()
      end

      def make_result_set()
        return AddCommentResultSet.new()
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
        results = AddCommentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddComment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddCommentInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the FileID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the file that you want to view comments for.
        ###

        def set_FileID(value)
          set_input("FileID", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (required, string) The text of the comment to be posted.
        ###

        def set_Message(value)
          set_input("Message", value)
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
      # A ResultSet with methods tailored to the values returned by the AddComment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddCommentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddComment



    ##############################################################################
    #
    # DeleteComment
    #
    # Deletes a specific comment.
    #
    ##############################################################################

    class DeleteComment < Choreography

      ####
      #  Create a new instance of the DeleteComment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Comments/DeleteComment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteCommentInputSet
      ####
      def new_input_set()
        return DeleteCommentInputSet.new()
      end

      def make_result_set()
        return DeleteCommentResultSet.new()
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
        results = DeleteCommentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteComment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteCommentInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the CommentID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the comment to update.
        ###

        def set_CommentID(value)
          set_input("CommentID", value)
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
      # A ResultSet with methods tailored to the values returned by the DeleteComment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteCommentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteComment



    ##############################################################################
    #
    # GetComment
    #
    # Retrieves the message and metadata for a specific comment.
    #
    ##############################################################################

    class GetComment < Choreography

      ####
      #  Create a new instance of the GetComment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Comments/GetComment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCommentInputSet
      ####
      def new_input_set()
        return GetCommentInputSet.new()
      end

      def make_result_set()
        return GetCommentResultSet.new()
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
        results = GetCommentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetComment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCommentInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the CommentID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the comment to retrieve.
        ###

        def set_CommentID(value)
          set_input("CommentID", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
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
      # A ResultSet with methods tailored to the values returned by the GetComment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCommentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetComment



    ##############################################################################
    #
    # UpdateComment
    #
    # Updates an existing comment.
    #
    ##############################################################################

    class UpdateComment < Choreography

      ####
      #  Create a new instance of the UpdateComment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Comments/UpdateComment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateCommentInputSet
      ####
      def new_input_set()
        return UpdateCommentInputSet.new()
      end

      def make_result_set()
        return UpdateCommentResultSet.new()
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
        results = UpdateCommentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateComment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateCommentInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the CommentID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the comment to update.
        ###

        def set_CommentID(value)
          set_input("CommentID", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (required, string) The text of the comment to be posted.
        ###

        def set_Message(value)
          set_input("Message", value)
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
      # A ResultSet with methods tailored to the values returned by the UpdateComment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateCommentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateComment




  end # module Comments
  ##############################################################################
  #
  # CopyAndRenameFile
  #
  # Copies and renames a file into a specified Box.net folder.
  #
  ##############################################################################

  class CopyAndRenameFile < Choreography

    ####
    #  Create a new instance of the CopyAndRenameFile Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/CopyAndRenameFile")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CopyAndRenameFileInputSet
    ####
    def new_input_set()
      return CopyAndRenameFileInputSet.new()
    end

    def make_result_set()
      return CopyAndRenameFileResultSet.new()
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
      results = CopyAndRenameFileResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CopyAndRenameFile
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CopyAndRenameFileInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the DestinationID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net folder ID into which you're copying the file. Defaults to "0", which is the root folder.
      ###

      def set_DestinationID(value)
        set_input("DestinationID", value)
      end
      #### 
      # Set the value of the FileID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the file you want to copy and rename.
      ###

      def set_FileID(value)
        set_input("FileID", value)
      end
      #### 
      # Set the value of the NewName input for this Choreo. 
      # 
      # @param String - (required, string) The new name for Box.net file you're copying.
      ###

      def set_NewName(value)
        set_input("NewName", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CopyAndRenameFile Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CopyAndRenameFileResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CopyAndRenameFile



  ##############################################################################
  #
  # CopyFile
  #
  # Copies a specified file into a Box.net folder.
  #
  ##############################################################################

  class CopyFile < Choreography

    ####
    #  Create a new instance of the CopyFile Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/CopyFile")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CopyFileInputSet
    ####
    def new_input_set()
      return CopyFileInputSet.new()
    end

    def make_result_set()
      return CopyFileResultSet.new()
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
      results = CopyFileResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CopyFile
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CopyFileInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the DestinationID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net folder ID into which you're copying the file. Note that you can't copy a file into the same folder as the original file.
      ###

      def set_DestinationID(value)
        set_input("DestinationID", value)
      end
      #### 
      # Set the value of the FileID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the file you want to copy.
      ###

      def set_FileID(value)
        set_input("FileID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CopyFile Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CopyFileResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CopyFile



  ##############################################################################
  #
  # CreateEmbedLink
  #
  # Creates a previewer embed link for a Box.net file you specify.
  #
  ##############################################################################

  class CreateEmbedLink < Choreography

    ####
    #  Create a new instance of the CreateEmbedLink Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/CreateEmbedLink")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateEmbedLinkInputSet
    ####
    def new_input_set()
      return CreateEmbedLinkInputSet.new()
    end

    def make_result_set()
      return CreateEmbedLinkResultSet.new()
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
      results = CreateEmbedLinkResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateEmbedLink
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateEmbedLinkInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AllowDownload input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Enter "1" to add a direct download button to the preview, or "0" (the default) to not add a button.
      ###

      def set_AllowDownload(value)
        set_input("AllowDownload", value)
      end
      #### 
      # Set the value of the AllowPrint input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Enter "1" to add a print button to the preview, or "0" (the default) to not add a print button.
      ###

      def set_AllowPrint(value)
        set_input("AllowPrint", value)
      end
      #### 
      # Set the value of the AllowShare input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Enter "1" to add a button to generate a shared link to the file in the preview, or "0" (the default) to not add a button.
      ###

      def set_AllowShare(value)
        set_input("AllowShare", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the Color input for this Choreo. 
      # 
      # @param String - (optional, string) The hexidecimal value of the previewer background color. The default is 9E9E9E (grey).
      ###

      def set_Color(value)
        set_input("Color", value)
      end
      #### 
      # Set the value of the FileID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the file for which you want to create an embedded preview link.
      ###

      def set_FileID(value)
        set_input("FileID", value)
      end
      #### 
      # Set the value of the Height input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The height in pixels of the previewer. The default is 600.
      ###

      def set_Height(value)
        set_input("Height", value)
      end
      #### 
      # Set the value of the Width input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The width in pixels of the previewer. The default is 600.
      ###

      def set_Width(value)
        set_input("Width", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateEmbedLink Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateEmbedLinkResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "EmbedLink" output from this Choreo execution
    	#
    	# @return String - (string) The embed link returned by Box.net.
    	####
    	def get_EmbedLink()
    	  return @outputs["EmbedLink"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateEmbedLink



  ##############################################################################
  #
  # CreateFolder
  #
  # Creates a new folder in the parent folder you specify.
  #
  ##############################################################################

  class CreateFolder < Choreography

    ####
    #  Create a new instance of the CreateFolder Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/CreateFolder")
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
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the Name input for this Choreo. 
      # 
      # @param String - (required, string) The name of the folder to create.
      ###

      def set_Name(value)
        set_input("Name", value)
      end
      #### 
      # Set the value of the ParentID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the folder in which you want to put the new folder.  Defaults to "0", which is the root folder of the account.
      ###

      def set_ParentID(value)
        set_input("ParentID", value)
      end
      #### 
      # Set the value of the Share input for this Choreo. 
      # 
      # @param Boolean - (required, boolean) Enter "1" to allow the new folder to be shared, or "0" (the default) to keep it private.
      ###

      def set_Share(value)
        set_input("Share", value)
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
    	# @return String - (xml) The response from Box.net.
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
  # Deletes a specified Box.net file or folder.
  #
  ##############################################################################

  class DeleteFileOrFolder < Choreography

    ####
    #  Create a new instance of the DeleteFileOrFolder Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/DeleteFileOrFolder")
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
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the TargetID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the file or folder you want to delete.
      ###

      def set_TargetID(value)
        set_input("TargetID", value)
      end
      #### 
      # Set the value of the Target input for this Choreo. 
      # 
      # @param String - (required, string) The type of item to delete, either "file" (the default) or "folder".
      ###

      def set_Target(value)
        set_input("Target", value)
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
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteFileOrFolder




  module Discussions



    ##############################################################################
    #
    # AddComment
    #
    # Adds a comment to a specific discussion.
    #
    ##############################################################################

    class AddComment < Choreography

      ####
      #  Create a new instance of the AddComment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Discussions/AddComment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddCommentInputSet
      ####
      def new_input_set()
        return AddCommentInputSet.new()
      end

      def make_result_set()
        return AddCommentResultSet.new()
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
        results = AddCommentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddComment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddCommentInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the DiscussionID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the file that you want to view comments for.
        ###

        def set_DiscussionID(value)
          set_input("DiscussionID", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (required, string) The text of the comment to added to the discussion.
        ###

        def set_Message(value)
          set_input("Message", value)
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
      # A ResultSet with methods tailored to the values returned by the AddComment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddCommentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddComment



    ##############################################################################
    #
    # CreateDiscussion
    #
    # Creates a new discussion for a particular folder.
    #
    ##############################################################################

    class CreateDiscussion < Choreography

      ####
      #  Create a new instance of the CreateDiscussion Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Discussions/CreateDiscussion")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateDiscussionInputSet
      ####
      def new_input_set()
        return CreateDiscussionInputSet.new()
      end

      def make_result_set()
        return CreateDiscussionResultSet.new()
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
        results = CreateDiscussionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateDiscussion
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateDiscussionInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) The description of the discussion.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the FolderID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the folder to create a discussion for.
        ###

        def set_FolderID(value)
          set_input("FolderID", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) The name of the discussion.
        ###

        def set_Name(value)
          set_input("Name", value)
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
      # A ResultSet with methods tailored to the values returned by the CreateDiscussion Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateDiscussionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateDiscussion



    ##############################################################################
    #
    # GetComments
    #
    # Retrieves comments for a specific discussion.
    #
    ##############################################################################

    class GetComments < Choreography

      ####
      #  Create a new instance of the GetComments Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Discussions/GetComments")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCommentsInputSet
      ####
      def new_input_set()
        return GetCommentsInputSet.new()
      end

      def make_result_set()
        return GetCommentsResultSet.new()
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
        results = GetCommentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetComments
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCommentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the DiscussionID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the discussion to retrieve.
        ###

        def set_DiscussionID(value)
          set_input("DiscussionID", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
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
      # A ResultSet with methods tailored to the values returned by the GetComments Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCommentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetComments



    ##############################################################################
    #
    # GetDiscussion
    #
    # Retrieves the metadata for a specific discussion.
    #
    ##############################################################################

    class GetDiscussion < Choreography

      ####
      #  Create a new instance of the GetDiscussion Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Discussions/GetDiscussion")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetDiscussionInputSet
      ####
      def new_input_set()
        return GetDiscussionInputSet.new()
      end

      def make_result_set()
        return GetDiscussionResultSet.new()
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
        results = GetDiscussionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetDiscussion
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetDiscussionInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the DiscussionID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the discussion to retrieve.
        ###

        def set_DiscussionID(value)
          set_input("DiscussionID", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
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
      # A ResultSet with methods tailored to the values returned by the GetDiscussion Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetDiscussionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetDiscussion




  end # module Discussions
  ##############################################################################
  #
  # DownloadBase64EncodedFile
  #
  # Retrieves the content of a specified file from your Box.net account, and returns it as Base64 encoded data.
  #
  ##############################################################################

  class DownloadBase64EncodedFile < Choreography

    ####
    #  Create a new instance of the DownloadBase64EncodedFile Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/DownloadBase64EncodedFile")
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
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the FileID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the file to download from Box.net.
      ###

      def set_FileID(value)
        set_input("FileID", value)
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
    	# @return String - (string) The response from Box.net. The response will contain the file content as Base64 encoded data.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DownloadBase64EncodedFile



  ##############################################################################
  #
  # ExportTags
  #
  # Retrieves all tags used in a user's Box.net account.
  #
  ##############################################################################

  class ExportTags < Choreography

    ####
    #  Create a new instance of the ExportTags Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/ExportTags")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ExportTagsInputSet
    ####
    def new_input_set()
      return ExportTagsInputSet.new()
    end

    def make_result_set()
      return ExportTagsResultSet.new()
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
      results = ExportTagsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ExportTags
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ExportTagsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ExportTags Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ExportTagsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ExportTags




  module Files



    ##############################################################################
    #
    # CopyFile
    #
    # Creates a copy of a file in another folder.
    #
    ##############################################################################

    class CopyFile < Choreography

      ####
      #  Create a new instance of the CopyFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Files/CopyFile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CopyFileInputSet
      ####
      def new_input_set()
        return CopyFileInputSet.new()
      end

      def make_result_set()
        return CopyFileResultSet.new()
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
        results = CopyFileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CopyFile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CopyFileInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the FileID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the file to copy.
        ###

        def set_FileID(value)
          set_input("FileID", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) An optional new name for the file.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the ParentID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the destination folder to copy the file into.
        ###

        def set_ParentID(value)
          set_input("ParentID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CopyFile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CopyFileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CopyFile



    ##############################################################################
    #
    # CreateSharedLink
    #
    # Creates a shared link for the specified file.
    #
    ##############################################################################

    class CreateSharedLink < Choreography

      ####
      #  Create a new instance of the CreateSharedLink Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Files/CreateSharedLink")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateSharedLinkInputSet
      ####
      def new_input_set()
        return CreateSharedLinkInputSet.new()
      end

      def make_result_set()
        return CreateSharedLinkResultSet.new()
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
        results = CreateSharedLinkResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateSharedLink
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateSharedLinkInputSet < Choreography::InputSet

        #### 
        # Set the value of the SharedLink input for this Choreo. 
        # 
        # @param String - (required, json) A JSON object representing the shared link settings. See documentation for formatting examples.
        ###

        def set_SharedLink(value)
          set_input("SharedLink", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the FileID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the file to update.
        ###

        def set_FileID(value)
          set_input("FileID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateSharedLink Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateSharedLinkResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateSharedLink



    ##############################################################################
    #
    # DeleteFile
    #
    # Moves a file to the trash.
    #
    ##############################################################################

    class DeleteFile < Choreography

      ####
      #  Create a new instance of the DeleteFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Files/DeleteFile")
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
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the FileID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the file that you want to delete.
        ###

        def set_FileID(value)
          set_input("FileID", value)
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
      # A ResultSet with methods tailored to the values returned by the DeleteFile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteFileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteFile



    ##############################################################################
    #
    # DownloadFile
    #
    # Retrieves the contents of a specified file.
    #
    ##############################################################################

    class DownloadFile < Choreography

      ####
      #  Create a new instance of the DownloadFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Files/DownloadFile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DownloadFileInputSet
      ####
      def new_input_set()
        return DownloadFileInputSet.new()
      end

      def make_result_set()
        return DownloadFileResultSet.new()
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
        results = DownloadFileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DownloadFile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DownloadFileInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the FileID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the file to download.
        ###

        def set_FileID(value)
          set_input("FileID", value)
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
      # A ResultSet with methods tailored to the values returned by the DownloadFile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DownloadFileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) The Base64 encoded contents of the downloaded file.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DownloadFile



    ##############################################################################
    #
    # GetComments
    #
    # Retrieves comments for a specified file.
    #
    ##############################################################################

    class GetComments < Choreography

      ####
      #  Create a new instance of the GetComments Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Files/GetComments")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCommentsInputSet
      ####
      def new_input_set()
        return GetCommentsInputSet.new()
      end

      def make_result_set()
        return GetCommentsResultSet.new()
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
        results = GetCommentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetComments
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCommentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the FileID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the file that you want to view comments for.
        ###

        def set_FileID(value)
          set_input("FileID", value)
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
      # A ResultSet with methods tailored to the values returned by the GetComments Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCommentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetComments



    ##############################################################################
    #
    # GetDataStream
    #
    # Retrieves the contents of a specified file.
    #
    ##############################################################################

    class GetDataStream < Choreography

      ####
      #  Create a new instance of the GetDataStream Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Files/GetDataStream")
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
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the FileID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the file to download.
        ###

        def set_FileID(value)
          set_input("FileID", value)
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
      # A ResultSet with methods tailored to the values returned by the GetDataStream Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetDataStreamResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "File" output from this Choreo execution
      	#
      	# @return String - 
      	####
      	def get_File()
      	  return @outputs["File"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) The Base64 encoded contents of the downloaded file.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetDataStream



    ##############################################################################
    #
    # GetFileInformation
    #
    # Retrieves information for a specified file.
    #
    ##############################################################################

    class GetFileInformation < Choreography

      ####
      #  Create a new instance of the GetFileInformation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Files/GetFileInformation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFileInformationInputSet
      ####
      def new_input_set()
        return GetFileInformationInputSet.new()
      end

      def make_result_set()
        return GetFileInformationResultSet.new()
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
        results = GetFileInformationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFileInformation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFileInformationInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the FileID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the file that you want to retrieve information for.
        ###

        def set_FileID(value)
          set_input("FileID", value)
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
      # A ResultSet with methods tailored to the values returned by the GetFileInformation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFileInformationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFileInformation



    ##############################################################################
    #
    # UpdateFile
    #
    # Updates individual or multiple fields in the file object.
    #
    ##############################################################################

    class UpdateFile < Choreography

      ####
      #  Create a new instance of the UpdateFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Files/UpdateFile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateFileInputSet
      ####
      def new_input_set()
        return UpdateFileInputSet.new()
      end

      def make_result_set()
        return UpdateFileResultSet.new()
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
        results = UpdateFileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateFile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateFileInputSet < Choreography::InputSet

        #### 
        # Set the value of the FileObject input for this Choreo. 
        # 
        # @param String - (required, json) A JSON object representing the new file information. See documentation for formatting examples.
        ###

        def set_FileObject(value)
          set_input("FileObject", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the FileID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the file to update.
        ###

        def set_FileID(value)
          set_input("FileID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateFile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateFileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateFile



    ##############################################################################
    #
    # UploadFile
    #
    # Uploads a new file to a user's account. This can also be used when updating the contents of an existing file.
    #
    ##############################################################################

    class UploadFile < Choreography

      ####
      #  Create a new instance of the UploadFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Files/UploadFile")
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
        # @param String - (conditional, string) The Base64 encoded contents of the file you want to upload.
        ###

        def set_FileContents(value)
          set_input("FileContents", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the FileID input for this Choreo. 
        # 
        # @param String - (optional, string) When providing the id of an existing file, the content of the file will be updated.
        ###

        def set_FileID(value)
          set_input("FileID", value)
        end
        #### 
        # Set the value of the FileName input for this Choreo. 
        # 
        # @param String - (conditional, string) The name of the new file to upload. Note that when providing the FileID in order to perform an update to a file, it is not necessary to provide the FileName.
        ###

        def set_FileName(value)
          set_input("FileName", value)
        end
        #### 
        # Set the value of the FolderID input for this Choreo. 
        # 
        # @param String - (optional, string) The ID of the target folder to upload the file to. Defaults to 0 indicating the root folder.
        ###

        def set_FolderID(value)
          set_input("FolderID", value)
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
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UploadFile



    ##############################################################################
    #
    # ZipFile
    #
    # Creates a zipped version of the specified Box file and returns a link to the new compressed file.
    #
    ##############################################################################

    class ZipFile < Choreography

      ####
      #  Create a new instance of the ZipFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Files/ZipFile")
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
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the FileID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the file to zip.
        ###

        def set_FileID(value)
          set_input("FileID", value)
        end
        #### 
        # Set the value of the SharedLink input for this Choreo. 
        # 
        # @param String - (conditional, json) A JSON object  representing the item’s shared link and associated permissions. See documentation for formatting examples.
        ###

        def set_SharedLink(value)
          set_input("SharedLink", value)
        end
        #### 
        # Set the value of the ZipFileLocation input for this Choreo. 
        # 
        # @param String - (conditional, string) The id of the folder to put the new zip file in. When not specified, the zip file will be put in the root folder.
        ###

        def set_ZipFileLocation(value)
          set_input("ZipFileLocation", value)
        end
        #### 
        # Set the value of the ZipFileName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the zip file that will be created.
        ###

        def set_ZipFileName(value)
          set_input("ZipFileName", value)
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
      # A ResultSet with methods tailored to the values returned by the ZipFile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ZipFileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "URL" output from this Choreo execution
      	#
      	# @return String - (string) The url for the newly created zip file.
      	####
      	def get_URL()
      	  return @outputs["URL"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) The response from Box. This contains the newly created zip file metadata.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ZipFile




  end # module Files

  module Folders



    ##############################################################################
    #
    # CopyFolder
    #
    # Creates a copy of a folder in another folder.
    #
    ##############################################################################

    class CopyFolder < Choreography

      ####
      #  Create a new instance of the CopyFolder Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Folders/CopyFolder")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CopyFolderInputSet
      ####
      def new_input_set()
        return CopyFolderInputSet.new()
      end

      def make_result_set()
        return CopyFolderResultSet.new()
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
        results = CopyFolderResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CopyFolder
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CopyFolderInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the FolderID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the folder to copy.
        ###

        def set_FolderID(value)
          set_input("FolderID", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) An optional new name for the folder.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the ParentID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the destination folder to copy the folder to.
        ###

        def set_ParentID(value)
          set_input("ParentID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CopyFolder Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CopyFolderResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CopyFolder



    ##############################################################################
    #
    # CreateFolder
    #
    # Creates a new folder in the parent folder you specify.
    #
    ##############################################################################

    class CreateFolder < Choreography

      ####
      #  Create a new instance of the CreateFolder Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Folders/CreateFolder")
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
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) The name of the folder to create.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the ParentID input for this Choreo. 
        # 
        # @param String - (optional, string) The ID of the parent folder in which to create the new folder. Defaults to 0 indicating the "root" folder.
        ###

        def set_ParentID(value)
          set_input("ParentID", value)
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
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateFolder



    ##############################################################################
    #
    # CreateSharedLink
    #
    # Creates a shared link for a particular folder.
    #
    ##############################################################################

    class CreateSharedLink < Choreography

      ####
      #  Create a new instance of the CreateSharedLink Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Folders/CreateSharedLink")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateSharedLinkInputSet
      ####
      def new_input_set()
        return CreateSharedLinkInputSet.new()
      end

      def make_result_set()
        return CreateSharedLinkResultSet.new()
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
        results = CreateSharedLinkResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateSharedLink
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateSharedLinkInputSet < Choreography::InputSet

        #### 
        # Set the value of the SharedLink input for this Choreo. 
        # 
        # @param String - (required, json) A JSON object  representing the item’s shared link and associated permissions. See documentation for formatting examples.
        ###

        def set_SharedLink(value)
          set_input("SharedLink", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the FolderID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the folder to get a shared link for.
        ###

        def set_FolderID(value)
          set_input("FolderID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateSharedLink Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateSharedLinkResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateSharedLink



    ##############################################################################
    #
    # DeleteFolder
    #
    # Deletes a specified folder.
    #
    ##############################################################################

    class DeleteFolder < Choreography

      ####
      #  Create a new instance of the DeleteFolder Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Folders/DeleteFolder")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteFolderInputSet
      ####
      def new_input_set()
        return DeleteFolderInputSet.new()
      end

      def make_result_set()
        return DeleteFolderResultSet.new()
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
        results = DeleteFolderResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteFolder
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteFolderInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the FolderID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the folder that you want to delete.
        ###

        def set_FolderID(value)
          set_input("FolderID", value)
        end
        #### 
        # Set the value of the Recursive input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Whether or not to delete this folder if it has items within in. Defaults to true.
        ###

        def set_Recursive(value)
          set_input("Recursive", value)
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
      # A ResultSet with methods tailored to the values returned by the DeleteFolder Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteFolderResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteFolder



    ##############################################################################
    #
    # GetFolderInformation
    #
    # Retrieves information for a specified folder.
    #
    ##############################################################################

    class GetFolderInformation < Choreography

      ####
      #  Create a new instance of the GetFolderInformation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Folders/GetFolderInformation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFolderInformationInputSet
      ####
      def new_input_set()
        return GetFolderInformationInputSet.new()
      end

      def make_result_set()
        return GetFolderInformationResultSet.new()
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
        results = GetFolderInformationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFolderInformation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFolderInformationInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the FolderID input for this Choreo. 
        # 
        # @param String - (conditional, string) The id of the folder that you want to retrieve information for. Defaults to 0 indicating the "root" folder.
        ###

        def set_FolderID(value)
          set_input("FolderID", value)
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
      # A ResultSet with methods tailored to the values returned by the GetFolderInformation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFolderInformationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFolderInformation



    ##############################################################################
    #
    # RetrieveFolderItems
    #
    # Retrieves only the files and/or folders contained within the specified folder.
    #
    ##############################################################################

    class RetrieveFolderItems < Choreography

      ####
      #  Create a new instance of the RetrieveFolderItems Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Folders/RetrieveFolderItems")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveFolderItemsInputSet
      ####
      def new_input_set()
        return RetrieveFolderItemsInputSet.new()
      end

      def make_result_set()
        return RetrieveFolderItemsResultSet.new()
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
        results = RetrieveFolderItemsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveFolderItems
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveFolderItemsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the FolderID input for this Choreo. 
        # 
        # @param String - (conditional, string) The id of the folder that you want to retrieve items for. Defaults to 0 indicating the "root" folder.
        ###

        def set_FolderID(value)
          set_input("FolderID", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of items to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The item at which to begin the response.
        ###

        def set_Offset(value)
          set_input("Offset", value)
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
      # A ResultSet with methods tailored to the values returned by the RetrieveFolderItems Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveFolderItemsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveFolderItems



    ##############################################################################
    #
    # UpdateFolder
    #
    # Updates the information about a folder.
    #
    ##############################################################################

    class UpdateFolder < Choreography

      ####
      #  Create a new instance of the UpdateFolder Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Folders/UpdateFolder")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateFolderInputSet
      ####
      def new_input_set()
        return UpdateFolderInputSet.new()
      end

      def make_result_set()
        return UpdateFolderResultSet.new()
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
        results = UpdateFolderResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateFolder
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateFolderInputSet < Choreography::InputSet

        #### 
        # Set the value of the FolderObject input for this Choreo. 
        # 
        # @param String - (required, json) A JSON object representing the new folder information. See documentation for formatting examples.
        ###

        def set_FolderObject(value)
          set_input("FolderObject", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the FolderID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the folder to update.
        ###

        def set_FolderID(value)
          set_input("FolderID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateFolder Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateFolderResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateFolder



    ##############################################################################
    #
    # ZipFolder
    #
    # Creates a zip file containing all files within the specified folder and returns a link to the new compressed file.
    #
    ##############################################################################

    class ZipFolder < Choreography

      ####
      #  Create a new instance of the ZipFolder Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Folders/ZipFolder")
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
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the FolderID input for this Choreo. 
        # 
        # @param String - (conditional, string) The id of the folder that you want to retrieve items for to zip. To indicate the root folder, specify 0.
        ###

        def set_FolderID(value)
          set_input("FolderID", value)
        end
        #### 
        # Set the value of the SharedLink input for this Choreo. 
        # 
        # @param String - (conditional, json) A JSON object  representing the item’s shared link and associated permissions. See documentation for formatting examples.
        ###

        def set_SharedLink(value)
          set_input("SharedLink", value)
        end
        #### 
        # Set the value of the ZipFileLocation input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the folder to put the new zip file in. When not specified, the zip file will be put in the root folder.
        ###

        def set_ZipFileLocation(value)
          set_input("ZipFileLocation", value)
        end
        #### 
        # Set the value of the ZipFileName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the zip file that will be created.
        ###

        def set_ZipFileName(value)
          set_input("ZipFileName", value)
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
      # A ResultSet with methods tailored to the values returned by the ZipFolder Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ZipFolderResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "URL" output from this Choreo execution
      	#
      	# @return String - (string) The url for the newly created zip file.
      	####
      	def get_URL()
      	  return @outputs["URL"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box. This contains the newly created zip file metadata.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ZipFolder




  end # module Folders
  ##############################################################################
  #
  # GetAccountTree
  #
  # Retrieves the tree information that represents a user's box.net account.
  #
  ##############################################################################

  class GetAccountTree < Choreography

    ####
    #  Create a new instance of the GetAccountTree Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/GetAccountTree")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetAccountTreeInputSet
    ####
    def new_input_set()
      return GetAccountTreeInputSet.new()
    end

    def make_result_set()
      return GetAccountTreeResultSet.new()
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
      results = GetAccountTreeResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetAccountTree
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetAccountTreeInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the FolderID input for this Choreo. 
      # 
      # @param String - (optional, string) The folder id that corresponds to the top level of the tree to return. Defaults to zero for the root level.
      ###

      def set_FolderID(value)
        set_input("FolderID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetAccountTree Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetAccountTreeResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetAccountTree



  ##############################################################################
  #
  # GetComments
  #
  # Retrieves comments for a specified object stored in a Box.net account.
  #
  ##############################################################################

  class GetComments < Choreography

    ####
    #  Create a new instance of the GetComments Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/GetComments")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetCommentsInputSet
    ####
    def new_input_set()
      return GetCommentsInputSet.new()
    end

    def make_result_set()
      return GetCommentsResultSet.new()
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
      results = GetCommentsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetComments
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetCommentsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the TargetID input for this Choreo. 
      # 
      # @param String - (required, string) The id of the file that you want to retrieve the comments for.
      ###

      def set_TargetID(value)
        set_input("TargetID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetComments Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetCommentsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetComments



  ##############################################################################
  #
  # GetFileInfo
  #
  # Retrieves information on a specified file in a user's Box.net account.
  #
  ##############################################################################

  class GetFileInfo < Choreography

    ####
    #  Create a new instance of the GetFileInfo Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/GetFileInfo")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetFileInfoInputSet
    ####
    def new_input_set()
      return GetFileInfoInputSet.new()
    end

    def make_result_set()
      return GetFileInfoResultSet.new()
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
      results = GetFileInfoResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetFileInfo
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetFileInfoInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the FileID input for this Choreo. 
      # 
      # @param String - (required, string) The id of the file that you want to retrieve info for. This id is returned in various API calls such as GetAccountTree. It is also viewable in your browser's URL bar when viewing the doc at box.com
      ###

      def set_FileID(value)
        set_input("FileID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetFileInfo Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetFileInfoResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetFileInfo



  ##############################################################################
  #
  # GetTicket
  #
  # Retrieves a ticket from Box.net that is used during authentication to obtain a permanent authorization token.
  #
  ##############################################################################

  class GetTicket < Choreography

    ####
    #  Create a new instance of the GetTicket Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/GetTicket")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetTicketInputSet
    ####
    def new_input_set()
      return GetTicketInputSet.new()
    end

    def make_result_set()
      return GetTicketResultSet.new()
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
      results = GetTicketResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetTicket
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetTicketInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetTicket Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetTicketResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Ticket" output from this Choreo execution
    	#
    	# @return String - (string) The authentication ticket retrieved from Box.net which is used in the authentication process for retrieving an auth token.
    	####
    	def get_Ticket()
    	  return @outputs["Ticket"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetTicket



  ##############################################################################
  #
  # GetVersions
  #
  # Retrieve the version history for a particular file stored in your Box.net account.
  #
  ##############################################################################

  class GetVersions < Choreography

    ####
    #  Create a new instance of the GetVersions Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/GetVersions")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetVersionsInputSet
    ####
    def new_input_set()
      return GetVersionsInputSet.new()
    end

    def make_result_set()
      return GetVersionsResultSet.new()
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
      results = GetVersionsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetVersions
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetVersionsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the TargetID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the file to retrieve version information for.
      ###

      def set_TargetID(value)
        set_input("TargetID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetVersions Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetVersionsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetVersions



  ##############################################################################
  #
  # InviteCollaborators
  #
  # Invites users to collaborate on a specified Box.net file or folder.
  #
  ##############################################################################

  class InviteCollaborators < Choreography

    ####
    #  Create a new instance of the InviteCollaborators Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/InviteCollaborators")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return InviteCollaboratorsInputSet
    ####
    def new_input_set()
      return InviteCollaboratorsInputSet.new()
    end

    def make_result_set()
      return InviteCollaboratorsResultSet.new()
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
      results = InviteCollaboratorsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the InviteCollaborators
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class InviteCollaboratorsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Addresses input for this Choreo. 
      # 
      # @param String - (optional, string) The email addresses for the collaborators you want to invite. Separate multiple addresses with commas (no spaces).
      ###

      def set_Addresses(value)
        set_input("Addresses", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) The authorization token provided by Box.net.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the Notify input for this Choreo. 
      # 
      # @param Boolean - (required, boolean) Enter "1" (the default) to send a notification email to the invited collaborators. Enter "0" to not send a notification.
      ###

      def set_Notify(value)
        set_input("Notify", value)
      end
      #### 
      # Set the value of the Resend input for this Choreo. 
      # 
      # @param Boolean - (required, boolean) Enter "1" to resend a notification email to the invited collaborators. Enter "0" (the default) to not resend a notification.
      ###

      def set_Resend(value)
        set_input("Resend", value)
      end
      #### 
      # Set the value of the Role input for this Choreo. 
      # 
      # @param String - (required, string) The role to assign to the invited collaborators, either "editor" or "viewer" (the default).
      ###

      def set_Role(value)
        set_input("Role", value)
      end
      #### 
      # Set the value of the TargetID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the file or folder to invite collaborators for.
      ###

      def set_TargetID(value)
        set_input("TargetID", value)
      end
      #### 
      # Set the value of the Target input for this Choreo. 
      # 
      # @param String - (required, string) The type of item to invite collaborators for. Box.net currently only allows collaborators for folders; "file" will eventually be supported, but for now the default value is "folder".
      ###

      def set_Target(value)
        set_input("Target", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the InviteCollaborators Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class InviteCollaboratorsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class InviteCollaborators



  ##############################################################################
  #
  # ListCollaborators
  #
  # Retrieves a list of collaborators on a specified Box.net folder.
  #
  ##############################################################################

  class ListCollaborators < Choreography

    ####
    #  Create a new instance of the ListCollaborators Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/ListCollaborators")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListCollaboratorsInputSet
    ####
    def new_input_set()
      return ListCollaboratorsInputSet.new()
    end

    def make_result_set()
      return ListCollaboratorsResultSet.new()
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
      results = ListCollaboratorsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListCollaborators
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListCollaboratorsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the TargetID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the file or folder for which you want to list collaborators.
      ###

      def set_TargetID(value)
        set_input("TargetID", value)
      end
      #### 
      # Set the value of the Target input for this Choreo. 
      # 
      # @param String - (required, string) The type of item to list collaborators for, either "file" (the default) or "folder".
      ###

      def set_Target(value)
        set_input("Target", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListCollaborators Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListCollaboratorsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListCollaborators



  ##############################################################################
  #
  # MoveFileOrFolder
  #
  # Moves a file or folder into another Box.net folder.
  #
  ##############################################################################

  class MoveFileOrFolder < Choreography

    ####
    #  Create a new instance of the MoveFileOrFolder Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/MoveFileOrFolder")
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
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the DestinationID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net folder ID into which you're moving the item.
      ###

      def set_DestinationID(value)
        set_input("DestinationID", value)
      end
      #### 
      # Set the value of the TargetID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the file or folder you want to move.
      ###

      def set_TargetID(value)
        set_input("TargetID", value)
      end
      #### 
      # Set the value of the Target input for this Choreo. 
      # 
      # @param String - (required, string) They type of item to move, either "file" (the default) or "folder".
      ###

      def set_Target(value)
        set_input("Target", value)
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
    	# @return String - (xml) The response from Box.net.
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
    # Completes the OAuth process by retrieving a Box access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/OAuth/FinalizeOAuth")
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
        # @param String - (required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the authorization code after the user authorizes.
        ###

        def set_CallbackID(value)
          set_input("CallbackID", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by Box after registering your application.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by Box after registering your application.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
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
      	# Retrieve the value for the "RefreshToken" output from this Choreo execution
      	#
      	# @return String - (string) A token that may be used to obtain a new access token when the short-lived access token expires.
      	####
      	def get_RefreshToken()
      	  return @outputs["RefreshToken"]
      	end
      	####
      	# Retrieve the value for the "Expires" output from this Choreo execution
      	#
      	# @return String - (integer) The expiration time of the access_token retrieved.
      	####
      	def get_Expires()
      	  return @outputs["Expires"]
      	end
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The access token for the user that has granted access to your application.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
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
        super(session, "/Library/Box/OAuth/InitializeOAuth")
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
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by Box after registering your application.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the CustomCallbackID input for this Choreo. 
        # 
        # @param String - (optional, string) A unique identifier that you can pass to eliminate the need to wait for a Temboo generated CallbackID. Callback identifiers may only contain numbers, letters, periods, and hyphens.
        ###

        def set_CustomCallbackID(value)
          set_input("CustomCallbackID", value)
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
      	# Retrieve the value for the "AuthorizeURL" output from this Choreo execution
      	#
      	# @return String - (string) Deprecated (retained for backward compatibility only).
      	####
      	def get_AuthorizeURL()
      	  return @outputs["AuthorizeURL"]
      	end
      	####
      	# Retrieve the value for the "AuthorizationURL" output from this Choreo execution
      	#
      	# @return String - (string) The authorization URL that the application's user needs to go to in order to grant access to your application.
      	####
      	def get_AuthorizationURL()
      	  return @outputs["AuthorizationURL"]
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



    ##############################################################################
    #
    # RefreshToken
    #
    # Generates a new access token with a given valid refresh token.
    #
    ##############################################################################

    class RefreshToken < Choreography

      ####
      #  Create a new instance of the RefreshToken Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/OAuth/RefreshToken")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RefreshTokenInputSet
      ####
      def new_input_set()
        return RefreshTokenInputSet.new()
      end

      def make_result_set()
        return RefreshTokenResultSet.new()
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
        results = RefreshTokenResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RefreshToken
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RefreshTokenInputSet < Choreography::InputSet

        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by Box after registering your application.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by Box after registering your application.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid refresh token used to generate a new access token.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RefreshToken Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RefreshTokenResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The access token for the user that has granted access to your application.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      	####
      	# Retrieve the value for the "Expires" output from this Choreo execution
      	#
      	# @return String - (integer) The expiration time of the access_token retrieved.
      	####
      	def get_Expires()
      	  return @outputs["Expires"]
      	end
      	####
      	# Retrieve the value for the "NewRefreshToken" output from this Choreo execution
      	#
      	# @return String - (string) The new refresh token which can be used the next time your app needs to get a new access token.
      	####
      	def get_NewRefreshToken()
      	  return @outputs["NewRefreshToken"]
      	end
      end

    end # class RefreshToken




  end # module OAuth
  ##############################################################################
  #
  # RemoveCollaborator
  #
  # Removes a collaborator from a Box.net file or folder.
  #
  ##############################################################################

  class RemoveCollaborator < Choreography

    ####
    #  Create a new instance of the RemoveCollaborator Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/RemoveCollaborator")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RemoveCollaboratorInputSet
    ####
    def new_input_set()
      return RemoveCollaboratorInputSet.new()
    end

    def make_result_set()
      return RemoveCollaboratorResultSet.new()
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
      results = RemoveCollaboratorResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RemoveCollaborator
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RemoveCollaboratorInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the CollaborationID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the collaboration to remove.
      ###

      def set_CollaborationID(value)
        set_input("CollaborationID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RemoveCollaborator Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RemoveCollaboratorResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RemoveCollaborator



  ##############################################################################
  #
  # RenameFileOrFolder
  #
  # Renames a specified Box.net file or folder.
  #
  ##############################################################################

  class RenameFileOrFolder < Choreography

    ####
    #  Create a new instance of the RenameFileOrFolder Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/RenameFileOrFolder")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RenameFileOrFolderInputSet
    ####
    def new_input_set()
      return RenameFileOrFolderInputSet.new()
    end

    def make_result_set()
      return RenameFileOrFolderResultSet.new()
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
      results = RenameFileOrFolderResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RenameFileOrFolder
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RenameFileOrFolderInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the NewName input for this Choreo. 
      # 
      # @param String - (required, string) The new name for Box.net file or folder.
      ###

      def set_NewName(value)
        set_input("NewName", value)
      end
      #### 
      # Set the value of the TargetID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the file or folder you want to rename.
      ###

      def set_TargetID(value)
        set_input("TargetID", value)
      end
      #### 
      # Set the value of the Target input for this Choreo. 
      # 
      # @param String - (required, string) They type of item to rename, either "file" (the default) or "folder".
      ###

      def set_Target(value)
        set_input("Target", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RenameFileOrFolder Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RenameFileOrFolderResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RenameFileOrFolder



  ##############################################################################
  #
  # RetrieveFolderItems
  #
  # Retrieves only the files and/or folders contained within the specified folder.
  #
  ##############################################################################

  class RetrieveFolderItems < Choreography

    ####
    #  Create a new instance of the RetrieveFolderItems Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/RetrieveFolderItems")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveFolderItemsInputSet
    ####
    def new_input_set()
      return RetrieveFolderItemsInputSet.new()
    end

    def make_result_set()
      return RetrieveFolderItemsResultSet.new()
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
      results = RetrieveFolderItemsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveFolderItems
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveFolderItemsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The APIKey provided by Box when registering for a developer account.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the FolderID input for this Choreo. 
      # 
      # @param String - (optional, string) The id of the folder that you want to retrieve items for. This id is returned in various API calls such as GetAccountTree. It is also viewable in your browser's URL bar when viewing the folder at box.
      ###

      def set_FolderID(value)
        set_input("FolderID", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
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
    # A ResultSet with methods tailored to the values returned by the RetrieveFolderItems Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveFolderItemsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Box.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveFolderItems




  module Search



    ##############################################################################
    #
    # Query
    #
    # Searches a user's Box account for items that match a specified keyword.
    #
    ##############################################################################

    class Query < Choreography

      ####
      #  Create a new instance of the Query Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Search/Query")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return QueryInputSet
      ####
      def new_input_set()
        return QueryInputSet.new()
      end

      def make_result_set()
        return QueryResultSet.new()
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
        results = QueryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Query
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class QueryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of search results to return. Defaults to 30.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The search result at which to start the response. Defaults to 0.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (required, string) The string to search for; can be matched against item names, descriptions, text content of a file, and other fields of the different item types.
        ###

        def set_Query(value)
          set_input("Query", value)
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
      # A ResultSet with methods tailored to the values returned by the Query Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class QueryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Query




  end # module Search
  ##############################################################################
  #
  # SetDescription
  #
  # Sets a description for a specified Box.net file or folder.
  #
  ##############################################################################

  class SetDescription < Choreography

    ####
    #  Create a new instance of the SetDescription Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/SetDescription")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SetDescriptionInputSet
    ####
    def new_input_set()
      return SetDescriptionInputSet.new()
    end

    def make_result_set()
      return SetDescriptionResultSet.new()
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
      results = SetDescriptionResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SetDescription
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SetDescriptionInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the Description input for this Choreo. 
      # 
      # @param String - (required, string) The description for Box.net file or folder.
      ###

      def set_Description(value)
        set_input("Description", value)
      end
      #### 
      # Set the value of the TargetID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the file or folder you want to set a description for.
      ###

      def set_TargetID(value)
        set_input("TargetID", value)
      end
      #### 
      # Set the value of the Target input for this Choreo. 
      # 
      # @param String - (required, string) They type of item to set a description for, either "file" (the default) or "folder".
      ###

      def set_Target(value)
        set_input("Target", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SetDescription Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SetDescriptionResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SetDescription



  ##############################################################################
  #
  # SharePrivate
  #
  # Share a specified Box.net file or folder privately.
  #
  ##############################################################################

  class SharePrivate < Choreography

    ####
    #  Create a new instance of the SharePrivate Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/SharePrivate")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SharePrivateInputSet
    ####
    def new_input_set()
      return SharePrivateInputSet.new()
    end

    def make_result_set()
      return SharePrivateResultSet.new()
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
      results = SharePrivateResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SharePrivate
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SharePrivateInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Addresses input for this Choreo. 
      # 
      # @param String - (required, string) The email addresses for the users you want to notify of the shared item. Separate multiple addresses with commas (no spaces).
      ###

      def set_Addresses(value)
        set_input("Addresses", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) The authorization token provided by Box.net.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the Message input for this Choreo. 
      # 
      # @param String - (required, string) The text of the email message sent to users about the newly shared file or folder.
      ###

      def set_Message(value)
        set_input("Message", value)
      end
      #### 
      # Set the value of the Notify input for this Choreo. 
      # 
      # @param Boolean - (required, boolean) Enter "1" to send a notification email to the users the item is shared with. Enter "0" (the default) to not send a notification.
      ###

      def set_Notify(value)
        set_input("Notify", value)
      end
      #### 
      # Set the value of the TargetID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the file or folder to share.
      ###

      def set_TargetID(value)
        set_input("TargetID", value)
      end
      #### 
      # Set the value of the Target input for this Choreo. 
      # 
      # @param String - (required, string) They type of item to share, either "file" (the default) or "folder".
      ###

      def set_Target(value)
        set_input("Target", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SharePrivate Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SharePrivateResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SharePrivate



  ##############################################################################
  #
  # SharePublic
  #
  # Share a specified Box.net file or folder publicly.
  #
  ##############################################################################

  class SharePublic < Choreography

    ####
    #  Create a new instance of the SharePublic Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/SharePublic")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SharePublicInputSet
    ####
    def new_input_set()
      return SharePublicInputSet.new()
    end

    def make_result_set()
      return SharePublicResultSet.new()
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
      results = SharePublicResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SharePublic
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SharePublicInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Addresses input for this Choreo. 
      # 
      # @param String - (optional, string) The email addresses for the users you want to notify of the shared item. Separate multiple addresses with commas (no spaces).
      ###

      def set_Addresses(value)
        set_input("Addresses", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) The authorization token provided by Box.net.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the Message input for this Choreo. 
      # 
      # @param String - (optional, string) The text of the email message sent to users about the newly shared file or folder.
      ###

      def set_Message(value)
        set_input("Message", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (optional, string) A password to protect the shared file or folder.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the TargetID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the file or folder to share.
      ###

      def set_TargetID(value)
        set_input("TargetID", value)
      end
      #### 
      # Set the value of the Target input for this Choreo. 
      # 
      # @param String - (required, string) They type of item to share, either "file" (the default) or "folder".
      ###

      def set_Target(value)
        set_input("Target", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SharePublic Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SharePublicResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SharePublic



  ##############################################################################
  #
  # ToggleFolderEmail
  #
  # Enables or disables the upload email address for a folder.
  #
  ##############################################################################

  class ToggleFolderEmail < Choreography

    ####
    #  Create a new instance of the ToggleFolderEmail Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/ToggleFolderEmail")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ToggleFolderEmailInputSet
    ####
    def new_input_set()
      return ToggleFolderEmailInputSet.new()
    end

    def make_result_set()
      return ToggleFolderEmailResultSet.new()
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
      results = ToggleFolderEmailResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ToggleFolderEmail
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ToggleFolderEmailInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the Enable input for this Choreo. 
      # 
      # @param Boolean - (required, boolean) Enter "1" (the default) to enable email uploads to the specified folder, or "0" to disable email uploads.
      ###

      def set_Enable(value)
        set_input("Enable", value)
      end
      #### 
      # Set the value of the FolderID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the folder in which you want to put the new folder.  Defaults to "0", which is the root folder of the account.
      ###

      def set_FolderID(value)
        set_input("FolderID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ToggleFolderEmail Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ToggleFolderEmailResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ToggleFolderEmail



  ##############################################################################
  #
  # UnsharePublic
  #
  # Unshares a publicly shared Box.net file or folder.
  #
  ##############################################################################

  class UnsharePublic < Choreography

    ####
    #  Create a new instance of the UnsharePublic Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/UnsharePublic")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return UnsharePublicInputSet
    ####
    def new_input_set()
      return UnsharePublicInputSet.new()
    end

    def make_result_set()
      return UnsharePublicResultSet.new()
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
      results = UnsharePublicResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the UnsharePublic
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class UnsharePublicInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API key provided by Box.net.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the TargetID input for this Choreo. 
      # 
      # @param String - (required, string) The Box.net ID of the publicly shared file or folder to unshare.
      ###

      def set_TargetID(value)
        set_input("TargetID", value)
      end
      #### 
      # Set the value of the Target input for this Choreo. 
      # 
      # @param String - (required, string) They type of item to unshare, either "file" (the default) or "folder".
      ###

      def set_Target(value)
        set_input("Target", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the UnsharePublic Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class UnsharePublicResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class UnsharePublic



  ##############################################################################
  #
  # UploadFile
  #
  # Uploads files to your Box.net account.
  #
  ##############################################################################

  class UploadFile < Choreography

    ####
    #  Create a new instance of the UploadFile Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/UploadFile")
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
      # @param String - (conditional, string) The base64 encoded file contents of the file you want to upload. Required unless using the VaultFile alias (an advanced option available when executing Choreos in the Temboo Designer).
      ###

      def set_FileContents(value)
        set_input("FileContents", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the ContentType input for this Choreo. 
      # 
      # @param String - (required, string) The Content-Type of the file you're uploading (i.e. applcation/pdf, image/jpeg, text/plain, etc.).
      ###

      def set_ContentType(value)
        set_input("ContentType", value)
      end
      #### 
      # Set the value of the FileName input for this Choreo. 
      # 
      # @param String - (required, string) The name of the file to upload to Box.net.
      ###

      def set_FileName(value)
        set_input("FileName", value)
      end
      #### 
      # Set the value of the FolderID input for this Choreo. 
      # 
      # @param String - (optional, string) The ID of the target folder to upload the file to. Defaults to 0 which is the root folder.
      ###

      def set_FolderID(value)
        set_input("FolderID", value)
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
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Box.net.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class UploadFile



  ##############################################################################
  #
  # UploadNewVersionOfFile
  #
  # Uploads a new version of an existing file in a user’s account.
  #
  ##############################################################################

  class UploadNewVersionOfFile < Choreography

    ####
    #  Create a new instance of the UploadNewVersionOfFile Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Box/UploadNewVersionOfFile")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return UploadNewVersionOfFileInputSet
    ####
    def new_input_set()
      return UploadNewVersionOfFileInputSet.new()
    end

    def make_result_set()
      return UploadNewVersionOfFileResultSet.new()
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
      results = UploadNewVersionOfFileResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the UploadNewVersionOfFile
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class UploadNewVersionOfFileInputSet < Choreography::InputSet

      #### 
      # Set the value of the FileContents input for this Choreo. 
      # 
      # @param String - (conditional, string) The base64 encoded file contents of the file you want to upload. Required unless using the VaultFile alias (an advanced option available when executing Choreos in the Temboo Designer).
      ###

      def set_FileContents(value)
        set_input("FileContents", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The APIKey provided by Box when registering for a developer account.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) Authorization Token retrieved by following the Oauth process described in Box.net API documentation.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the ContentType input for this Choreo. 
      # 
      # @param String - (required, string) The Content-Type of the file you're uploading (i.e. applcation/pdf, image/jpeg, text/plain, etc.).
      ###

      def set_ContentType(value)
        set_input("ContentType", value)
      end
      #### 
      # Set the value of the FileID input for this Choreo. 
      # 
      # @param String - (required, string) The unique id of the file that you want to update. This id is returned in various API calls such as GetAccountTree. It is also viewable in your browser's URL bar when viewing the doc at box.com.
      ###

      def set_FileID(value)
        set_input("FileID", value)
      end
      #### 
      # Set the value of the FileName input for this Choreo. 
      # 
      # @param String - (required, string) The name of the file to upload to Box.net.
      ###

      def set_FileName(value)
        set_input("FileName", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
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
    # A ResultSet with methods tailored to the values returned by the UploadNewVersionOfFile Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class UploadNewVersionOfFileResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Box.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class UploadNewVersionOfFile




  module Users



    ##############################################################################
    #
    # CreateUser
    #
    # Creates a new user in an enterprise.
    #
    ##############################################################################

    class CreateUser < Choreography

      ####
      #  Create a new instance of the CreateUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Users/CreateUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateUserInputSet
      ####
      def new_input_set()
        return CreateUserInputSet.new()
      end

      def make_result_set()
        return CreateUserResultSet.new()
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
        results = CreateUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the UserObject input for this Choreo. 
        # 
        # @param String - (required, json) A JSON object representing the new user. See documentation for formatting examples.
        ###

        def set_UserObject(value)
          set_input("UserObject", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateUser



    ##############################################################################
    #
    # DeleteUser
    #
    # Deletes a specified user.
    #
    ##############################################################################

    class DeleteUser < Choreography

      ####
      #  Create a new instance of the DeleteUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Users/DeleteUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteUserInputSet
      ####
      def new_input_set()
        return DeleteUserInputSet.new()
      end

      def make_result_set()
        return DeleteUserResultSet.new()
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
        results = DeleteUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Force input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Whether or not the user should be deleted even when they still own files.
        ###

        def set_Force(value)
          set_input("Force", value)
        end
        #### 
        # Set the value of the Notify input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the user should receive an email notification of the transfer.
        ###

        def set_Notify(value)
          set_input("Notify", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the user whose information should be updated.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteUser



    ##############################################################################
    #
    # GetCurrentUser
    #
    # Retrieves information about the authenticated user.
    #
    ##############################################################################

    class GetCurrentUser < Choreography

      ####
      #  Create a new instance of the GetCurrentUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Users/GetCurrentUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCurrentUserInputSet
      ####
      def new_input_set()
        return GetCurrentUserInputSet.new()
      end

      def make_result_set()
        return GetCurrentUserResultSet.new()
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
        results = GetCurrentUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCurrentUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCurrentUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
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
      # A ResultSet with methods tailored to the values returned by the GetCurrentUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCurrentUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCurrentUser



    ##############################################################################
    #
    # UpdateUser
    #
    # Updates information for an existing user.
    #
    ##############################################################################

    class UpdateUser < Choreography

      ####
      #  Create a new instance of the UpdateUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Box/Users/UpdateUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateUserInputSet
      ####
      def new_input_set()
        return UpdateUserInputSet.new()
      end

      def make_result_set()
        return UpdateUserResultSet.new()
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
        results = UpdateUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the UserObject input for this Choreo. 
        # 
        # @param String - (required, json) A JSON object representing the user's information that should be updated. See documentation for formatting examples.
        ###

        def set_UserObject(value)
          set_input("UserObject", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved during the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the user whose information should be updated.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Box.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateUser




  end # module Users

end # module Box