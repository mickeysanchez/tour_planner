require "temboo"

module Zendesk




  module ActivityStream



    ##############################################################################
    #
    # ListActivity
    #
    # Returns a list of activities for the authenticating user.
    #
    ##############################################################################

    class ListActivity < Choreography

      ####
      #  Create a new instance of the ListActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/ActivityStream/ListActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListActivityInputSet
      ####
      def new_input_set()
        return ListActivityInputSet.new()
      end

      def make_result_set()
        return ListActivityResultSet.new()
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
        results = ListActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListActivity



    ##############################################################################
    #
    # ShowActivity
    #
    # Returns detailed information about a particular activity.
    #
    ##############################################################################

    class ShowActivity < Choreography

      ####
      #  Create a new instance of the ShowActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/ActivityStream/ShowActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowActivityInputSet
      ####
      def new_input_set()
        return ShowActivityInputSet.new()
      end

      def make_result_set()
        return ShowActivityResultSet.new()
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
        results = ShowActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the activity to retrieve.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShowActivity




  end # module ActivityStream

  module Attachments



    ##############################################################################
    #
    # UploadAttachment
    #
    # Uploads a file to be used as an attachment to a ticket.
    #
    ##############################################################################

    class UploadAttachment < Choreography

      ####
      #  Create a new instance of the UploadAttachment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Attachments/UploadAttachment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UploadAttachmentInputSet
      ####
      def new_input_set()
        return UploadAttachmentInputSet.new()
      end

      def make_result_set()
        return UploadAttachmentResultSet.new()
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
        results = UploadAttachmentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UploadAttachment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UploadAttachmentInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ExistingToken input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to pass in an existing token when uploading multiple attachments to associate with a ticket.
        ###

        def set_ExistingToken(value)
          set_input("ExistingToken", value)
        end
        #### 
        # Set the value of the FileContents input for this Choreo. 
        # 
        # @param String - (required, string) The Base64 encoded file contents of the attachment you want to upload.
        ###

        def set_FileContents(value)
          set_input("FileContents", value)
        end
        #### 
        # Set the value of the FileName input for this Choreo. 
        # 
        # @param String - (required, string) The file name of the attachment.
        ###

        def set_FileName(value)
          set_input("FileName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - The path to a vault file to upload. Can be used as an alternative to the FileContents input.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UploadAttachment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UploadAttachmentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Token" output from this Choreo execution
      	#
      	# @return String - (string) The token returned from Zendesk for the upload. This can be passed to the ExistingToken input when associating  multiple attachments to the same upload token.
      	####
      	def get_Token()
      	  return @outputs["Token"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UploadAttachment




  end # module Attachments

  module Groups



    ##############################################################################
    #
    # CreateGroup
    #
    # Creates a new group.
    #
    ##############################################################################

    class CreateGroup < Choreography

      ####
      #  Create a new instance of the CreateGroup Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Groups/CreateGroup")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateGroupInputSet
      ####
      def new_input_set()
        return CreateGroupInputSet.new()
      end

      def make_result_set()
        return CreateGroupResultSet.new()
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
        results = CreateGroupResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateGroup
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateGroupInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the GroupName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the group to create.
        ###

        def set_GroupName(value)
          set_input("GroupName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateGroup Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateGroupResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateGroup



    ##############################################################################
    #
    # DeleteGroup
    #
    # Deletes an existing group.
    #
    ##############################################################################

    class DeleteGroup < Choreography

      ####
      #  Create a new instance of the DeleteGroup Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Groups/DeleteGroup")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteGroupInputSet
      ####
      def new_input_set()
        return DeleteGroupInputSet.new()
      end

      def make_result_set()
        return DeleteGroupResultSet.new()
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
        results = DeleteGroupResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteGroup
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteGroupInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the GroupID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of group to delete.
        ###

        def set_GroupID(value)
          set_input("GroupID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteGroup Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteGroupResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Zendesk.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class DeleteGroup



    ##############################################################################
    #
    # ListGroups
    #
    # List available groups.
    #
    ##############################################################################

    class ListGroups < Choreography

      ####
      #  Create a new instance of the ListGroups Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Groups/ListGroups")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListGroupsInputSet
      ####
      def new_input_set()
        return ListGroupsInputSet.new()
      end

      def make_result_set()
        return ListGroupsResultSet.new()
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
        results = ListGroupsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListGroups
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListGroupsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListGroups Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListGroupsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListGroups



    ##############################################################################
    #
    # ShowAssignableGroups
    #
    # Show assignable groups.
    #
    ##############################################################################

    class ShowAssignableGroups < Choreography

      ####
      #  Create a new instance of the ShowAssignableGroups Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Groups/ShowAssignableGroups")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowAssignableGroupsInputSet
      ####
      def new_input_set()
        return ShowAssignableGroupsInputSet.new()
      end

      def make_result_set()
        return ShowAssignableGroupsResultSet.new()
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
        results = ShowAssignableGroupsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowAssignableGroups
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowAssignableGroupsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowAssignableGroups Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowAssignableGroupsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShowAssignableGroups



    ##############################################################################
    #
    # ShowGroup
    #
    # Shows information for an existing group.
    #
    ##############################################################################

    class ShowGroup < Choreography

      ####
      #  Create a new instance of the ShowGroup Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Groups/ShowGroup")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowGroupInputSet
      ####
      def new_input_set()
        return ShowGroupInputSet.new()
      end

      def make_result_set()
        return ShowGroupResultSet.new()
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
        results = ShowGroupResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowGroup
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowGroupInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the GroupID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the group to show.
        ###

        def set_GroupID(value)
          set_input("GroupID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowGroup Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowGroupResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShowGroup



    ##############################################################################
    #
    # UpdateGroup
    #
    # Updates an existing group.
    #
    ##############################################################################

    class UpdateGroup < Choreography

      ####
      #  Create a new instance of the UpdateGroup Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Groups/UpdateGroup")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateGroupInputSet
      ####
      def new_input_set()
        return UpdateGroupInputSet.new()
      end

      def make_result_set()
        return UpdateGroupResultSet.new()
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
        results = UpdateGroupResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateGroup
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateGroupInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the GroupID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the Group to be updated.
        ###

        def set_GroupID(value)
          set_input("GroupID", value)
        end
        #### 
        # Set the value of the GroupName input for this Choreo. 
        # 
        # @param String - (required, string) New name to update the Group with.
        ###

        def set_GroupName(value)
          set_input("GroupName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateGroup Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateGroupResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateGroup




  end # module Groups

  module IncrementalTickets



    ##############################################################################
    #
    # ExportIncrementalTickets
    #
    # Returns a lightweight representation of what changed in the ticket "since you last asked".
    #
    ##############################################################################

    class ExportIncrementalTickets < Choreography

      ####
      #  Create a new instance of the ExportIncrementalTickets Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/IncrementalTickets/ExportIncrementalTickets")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ExportIncrementalTicketsInputSet
      ####
      def new_input_set()
        return ExportIncrementalTicketsInputSet.new()
      end

      def make_result_set()
        return ExportIncrementalTicketsResultSet.new()
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
        results = ExportIncrementalTicketsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ExportIncrementalTickets
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ExportIncrementalTicketsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the StartTime input for this Choreo. 
        # 
        # @param String - (required, string) Return a list of tickets created after this timestamp (in seconds since Epoch UTC).  Tickets less than 5 minutes old are not included in the response.
        ###

        def set_StartTime(value)
          set_input("StartTime", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ExportIncrementalTickets Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ExportIncrementalTicketsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ExportIncrementalTickets




  end # module IncrementalTickets

  module Macros



    ##############################################################################
    #
    # ApplyMacroToAllTickets
    #
    # Applies a given macro to all applicable tickets.
    #
    ##############################################################################

    class ApplyMacroToAllTickets < Choreography

      ####
      #  Create a new instance of the ApplyMacroToAllTickets Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Macros/ApplyMacroToAllTickets")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ApplyMacroToAllTicketsInputSet
      ####
      def new_input_set()
        return ApplyMacroToAllTicketsInputSet.new()
      end

      def make_result_set()
        return ApplyMacroToAllTicketsResultSet.new()
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
        results = ApplyMacroToAllTicketsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ApplyMacroToAllTickets
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ApplyMacroToAllTicketsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the MacroID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the macro to apply.
        ###

        def set_MacroID(value)
          set_input("MacroID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ApplyMacroToAllTickets Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ApplyMacroToAllTicketsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ApplyMacroToAllTickets



    ##############################################################################
    #
    # ApplyMacroToTicket
    #
    # Applies a macro to a given ticket.
    #
    ##############################################################################

    class ApplyMacroToTicket < Choreography

      ####
      #  Create a new instance of the ApplyMacroToTicket Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Macros/ApplyMacroToTicket")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ApplyMacroToTicketInputSet
      ####
      def new_input_set()
        return ApplyMacroToTicketInputSet.new()
      end

      def make_result_set()
        return ApplyMacroToTicketResultSet.new()
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
        results = ApplyMacroToTicketResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ApplyMacroToTicket
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ApplyMacroToTicketInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the MacroID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the macro to apply.
        ###

        def set_MacroID(value)
          set_input("MacroID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the TicketID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the ticket.
        ###

        def set_TicketID(value)
          set_input("TicketID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ApplyMacroToTicket Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ApplyMacroToTicketResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ApplyMacroToTicket



    ##############################################################################
    #
    # ListMacros
    #
    # Retrieves a list of all active macros available to the current user.
    #
    ##############################################################################

    class ListMacros < Choreography

      ####
      #  Create a new instance of the ListMacros Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Macros/ListMacros")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListMacrosInputSet
      ####
      def new_input_set()
        return ListMacrosInputSet.new()
      end

      def make_result_set()
        return ListMacrosResultSet.new()
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
        results = ListMacrosResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListMacros
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListMacrosInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListMacros Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListMacrosResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListMacros




  end # module Macros

  module MonitoredTwitterHandles



    ##############################################################################
    #
    # GetMonitoredTwitterHandle
    #
    #  Retrieves detailed information on a specified monitored Twitter account. 
    #
    ##############################################################################

    class GetMonitoredTwitterHandle < Choreography

      ####
      #  Create a new instance of the GetMonitoredTwitterHandle Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/MonitoredTwitterHandles/GetMonitoredTwitterHandle")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMonitoredTwitterHandleInputSet
      ####
      def new_input_set()
        return GetMonitoredTwitterHandleInputSet.new()
      end

      def make_result_set()
        return GetMonitoredTwitterHandleResultSet.new()
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
        results = GetMonitoredTwitterHandleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMonitoredTwitterHandle
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMonitoredTwitterHandleInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) ID of the monitored Twitter handle.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMonitoredTwitterHandle Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMonitoredTwitterHandleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetMonitoredTwitterHandle



    ##############################################################################
    #
    # ListMonitoredTwitterHandles
    #
    # Retrieves a list of monitored Twitter accounts that you have configured in your Zendesk account.  
    #
    ##############################################################################

    class ListMonitoredTwitterHandles < Choreography

      ####
      #  Create a new instance of the ListMonitoredTwitterHandles Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/MonitoredTwitterHandles/ListMonitoredTwitterHandles")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListMonitoredTwitterHandlesInputSet
      ####
      def new_input_set()
        return ListMonitoredTwitterHandlesInputSet.new()
      end

      def make_result_set()
        return ListMonitoredTwitterHandlesResultSet.new()
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
        results = ListMonitoredTwitterHandlesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListMonitoredTwitterHandles
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListMonitoredTwitterHandlesInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListMonitoredTwitterHandles Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListMonitoredTwitterHandlesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      end

    end # class ListMonitoredTwitterHandles




  end # module MonitoredTwitterHandles

  module Organizations



    ##############################################################################
    #
    # AutocompleteOrganizationName
    #
    # Returns an array of organizations whose name starts with the value specified in the name parameter.
    #
    ##############################################################################

    class AutocompleteOrganizationName < Choreography

      ####
      #  Create a new instance of the AutocompleteOrganizationName Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Organizations/AutocompleteOrganizationName")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AutocompleteOrganizationNameInputSet
      ####
      def new_input_set()
        return AutocompleteOrganizationNameInputSet.new()
      end

      def make_result_set()
        return AutocompleteOrganizationNameResultSet.new()
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
        results = AutocompleteOrganizationNameResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AutocompleteOrganizationName
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AutocompleteOrganizationNameInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) Prefix used to generate a list of Organization names. Must be at least 2 characters long.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AutocompleteOrganizationName Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AutocompleteOrganizationNameResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AutocompleteOrganizationName



    ##############################################################################
    #
    # CreateManyOrganizations
    #
    # Create multiple organizations with a single request. 
    #
    ##############################################################################

    class CreateManyOrganizations < Choreography

      ####
      #  Create a new instance of the CreateManyOrganizations Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Organizations/CreateManyOrganizations")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateManyOrganizationsInputSet
      ####
      def new_input_set()
        return CreateManyOrganizationsInputSet.new()
      end

      def make_result_set()
        return CreateManyOrganizationsResultSet.new()
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
        results = CreateManyOrganizationsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateManyOrganizations
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateManyOrganizationsInputSet < Choreography::InputSet

        #### 
        # Set the value of the OrganizationData input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON-formatted string containing an array of organization properties you wish to set. This can used when you need to set multiple properties.
        ###

        def set_OrganizationData(value)
          set_input("OrganizationData", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Names input for this Choreo. 
        # 
        # @param String - (conditional, string) Comma-seperated list of up to 10  organization names to create.
        ###

        def set_Names(value)
          set_input("Names", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateManyOrganizations Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateManyOrganizationsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateManyOrganizations



    ##############################################################################
    #
    # CreateOrganization
    #
    # Create an organization.
    #
    ##############################################################################

    class CreateOrganization < Choreography

      ####
      #  Create a new instance of the CreateOrganization Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Organizations/CreateOrganization")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateOrganizationInputSet
      ####
      def new_input_set()
        return CreateOrganizationInputSet.new()
      end

      def make_result_set()
        return CreateOrganizationResultSet.new()
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
        results = CreateOrganizationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateOrganization
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateOrganizationInputSet < Choreography::InputSet

        #### 
        # Set the value of the OrganizationData input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON-formatted string containing the organization properties you wish to set. This can used when you need to set multiple properties.
        ###

        def set_OrganizationData(value)
          set_input("OrganizationData", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (conditional, string) Name of the organization to create.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateOrganization Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateOrganizationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateOrganization



    ##############################################################################
    #
    # DeleteOrganization
    #
    # Deletes an existing organization.
    #
    ##############################################################################

    class DeleteOrganization < Choreography

      ####
      #  Create a new instance of the DeleteOrganization Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Organizations/DeleteOrganization")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteOrganizationInputSet
      ####
      def new_input_set()
        return DeleteOrganizationInputSet.new()
      end

      def make_result_set()
        return DeleteOrganizationResultSet.new()
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
        results = DeleteOrganizationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteOrganization
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteOrganizationInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) ID of the organization to delete.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteOrganization Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteOrganizationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Zendesk.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class DeleteOrganization



    ##############################################################################
    #
    # GetOrganization
    #
    # Get detailed info for a given organization.
    #
    ##############################################################################

    class GetOrganization < Choreography

      ####
      #  Create a new instance of the GetOrganization Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Organizations/GetOrganization")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetOrganizationInputSet
      ####
      def new_input_set()
        return GetOrganizationInputSet.new()
      end

      def make_result_set()
        return GetOrganizationResultSet.new()
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
        results = GetOrganizationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetOrganization
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetOrganizationInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) ID of the organization to get.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetOrganization Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetOrganizationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetOrganization



    ##############################################################################
    #
    # ListOrganizations
    #
    # Lists all organizations.
    #
    ##############################################################################

    class ListOrganizations < Choreography

      ####
      #  Create a new instance of the ListOrganizations Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Organizations/ListOrganizations")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListOrganizationsInputSet
      ####
      def new_input_set()
        return ListOrganizationsInputSet.new()
      end

      def make_result_set()
        return ListOrganizationsResultSet.new()
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
        results = ListOrganizationsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListOrganizations
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListOrganizationsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListOrganizations Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListOrganizationsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListOrganizations



    ##############################################################################
    #
    # ListOrganizationsByUser
    #
    # Lists all organizations by user.
    #
    ##############################################################################

    class ListOrganizationsByUser < Choreography

      ####
      #  Create a new instance of the ListOrganizationsByUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Organizations/ListOrganizationsByUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListOrganizationsByUserInputSet
      ####
      def new_input_set()
        return ListOrganizationsByUserInputSet.new()
      end

      def make_result_set()
        return ListOrganizationsByUserResultSet.new()
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
        results = ListOrganizationsByUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListOrganizationsByUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListOrganizationsByUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) ID of the user.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the Number parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListOrganizationsByUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListOrganizationsByUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      end

    end # class ListOrganizationsByUser



    ##############################################################################
    #
    # UpdateOrganization
    #
    # Update an existing organization.
    #
    ##############################################################################

    class UpdateOrganization < Choreography

      ####
      #  Create a new instance of the UpdateOrganization Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Organizations/UpdateOrganization")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateOrganizationInputSet
      ####
      def new_input_set()
        return UpdateOrganizationInputSet.new()
      end

      def make_result_set()
        return UpdateOrganizationResultSet.new()
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
        results = UpdateOrganizationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateOrganization
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateOrganizationInputSet < Choreography::InputSet

        #### 
        # Set the value of the OrganizationData input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON-formatted string containing the organization properties you wish to set. This can used when you need to set multiple properties.
        ###

        def set_OrganizationData(value)
          set_input("OrganizationData", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) ID of the organization to update.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Notes input for this Choreo. 
        # 
        # @param String - (conditional, string) Notes on the organization.
        ###

        def set_Notes(value)
          set_input("Notes", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateOrganization Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateOrganizationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateOrganization




  end # module Organizations

  module Requests



    ##############################################################################
    #
    # CreateRequest
    #
    # Creates a new end-user request.
    #
    ##############################################################################

    class CreateRequest < Choreography

      ####
      #  Create a new instance of the CreateRequest Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Requests/CreateRequest")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateRequestInputSet
      ####
      def new_input_set()
        return CreateRequestInputSet.new()
      end

      def make_result_set()
        return CreateRequestResultSet.new()
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
        results = CreateRequestResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateRequest
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateRequestInputSet < Choreography::InputSet

        #### 
        # Set the value of the RequestData input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON-formatted string containing the request properties you wish to set. This can be used as an alternative to setting individual inputs representing request properties.
        ###

        def set_RequestData(value)
          set_input("RequestData", value)
        end
        #### 
        # Set the value of the Comment input for this Choreo. 
        # 
        # @param String - (conditional, string) A comment associated with the request.
        ###

        def set_Comment(value)
          set_input("Comment", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Priority input for this Choreo. 
        # 
        # @param String - (conditional, string) Priority (e.g. low, normal, high, urgent). Defaults to normal.
        ###

        def set_Priority(value)
          set_input("Priority", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the Subject input for this Choreo. 
        # 
        # @param String - (conditional, string) The subject of the request.
        ###

        def set_Subject(value)
          set_input("Subject", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (conditional, string) Type of request (e.g.question, incident, problem, task). Defaults to incident.
        ###

        def set_Type(value)
          set_input("Type", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateRequest Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateRequestResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateRequest



    ##############################################################################
    #
    # GetComment
    #
    # Retrieves the specified comment from a request.
    #
    ##############################################################################

    class GetComment < Choreography

      ####
      #  Create a new instance of the GetComment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Requests/GetComment")
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
        # Set the value of the CommentID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the comment to retrieve.
        ###

        def set_CommentID(value)
          set_input("CommentID", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the RequestID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the request that has been commented on.
        ###

        def set_RequestID(value)
          set_input("RequestID", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
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
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetComment



    ##############################################################################
    #
    # GetRequest
    #
    # Retrieves the request for the specified ID.
    #
    ##############################################################################

    class GetRequest < Choreography

      ####
      #  Create a new instance of the GetRequest Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Requests/GetRequest")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRequestInputSet
      ####
      def new_input_set()
        return GetRequestInputSet.new()
      end

      def make_result_set()
        return GetRequestResultSet.new()
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
        results = GetRequestResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRequest
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRequestInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the request to retrieve.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the Status input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-seperated list of request statuses to match (e.g. hold, open, solved, ccd)
        ###

        def set_Status(value)
          set_input("Status", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRequest Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRequestResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRequest



    ##############################################################################
    #
    # ListAllRequests
    #
    # List all existing requests for your account.
    #
    ##############################################################################

    class ListAllRequests < Choreography

      ####
      #  Create a new instance of the ListAllRequests Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Requests/ListAllRequests")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllRequestsInputSet
      ####
      def new_input_set()
        return ListAllRequestsInputSet.new()
      end

      def make_result_set()
        return ListAllRequestsResultSet.new()
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
        results = ListAllRequestsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllRequests
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllRequestsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the Status input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-seperated list of request statuses to match (e.g. hold, open, solved, ccd)
        ###

        def set_Status(value)
          set_input("Status", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllRequests Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllRequestsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      end

    end # class ListAllRequests



    ##############################################################################
    #
    # ListComments
    #
    # Lists all comments for the specifed request.
    #
    ##############################################################################

    class ListComments < Choreography

      ####
      #  Create a new instance of the ListComments Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Requests/ListComments")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListCommentsInputSet
      ####
      def new_input_set()
        return ListCommentsInputSet.new()
      end

      def make_result_set()
        return ListCommentsResultSet.new()
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
        results = ListCommentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListComments
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListCommentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the request to retrieve comments for.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListComments Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListCommentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListComments



    ##############################################################################
    #
    # ListOrganizationRequests
    #
    # List all requests for the specified organization.
    #
    ##############################################################################

    class ListOrganizationRequests < Choreography

      ####
      #  Create a new instance of the ListOrganizationRequests Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Requests/ListOrganizationRequests")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListOrganizationRequestsInputSet
      ####
      def new_input_set()
        return ListOrganizationRequestsInputSet.new()
      end

      def make_result_set()
        return ListOrganizationRequestsResultSet.new()
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
        results = ListOrganizationRequestsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListOrganizationRequests
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListOrganizationRequestsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the organization to list requests for.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the Status input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-seperated list of request statuses to match (e.g. hold, open, solved, ccd)
        ###

        def set_Status(value)
          set_input("Status", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListOrganizationRequests Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListOrganizationRequestsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      end

    end # class ListOrganizationRequests



    ##############################################################################
    #
    # ListUserRequests
    #
    # List all requests that are tied to a specified user.
    #
    ##############################################################################

    class ListUserRequests < Choreography

      ####
      #  Create a new instance of the ListUserRequests Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Requests/ListUserRequests")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListUserRequestsInputSet
      ####
      def new_input_set()
        return ListUserRequestsInputSet.new()
      end

      def make_result_set()
        return ListUserRequestsResultSet.new()
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
        results = ListUserRequestsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListUserRequests
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListUserRequestsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user to list requests for.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the Status input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-seperated list of request statuses to match (e.g. hold, open, solved, ccd)
        ###

        def set_Status(value)
          set_input("Status", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListUserRequests Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListUserRequestsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListUserRequests



    ##############################################################################
    #
    # UpdateRequest
    #
    # Updates an existing request.
    #
    ##############################################################################

    class UpdateRequest < Choreography

      ####
      #  Create a new instance of the UpdateRequest Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Requests/UpdateRequest")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateRequestInputSet
      ####
      def new_input_set()
        return UpdateRequestInputSet.new()
      end

      def make_result_set()
        return UpdateRequestResultSet.new()
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
        results = UpdateRequestResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateRequest
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateRequestInputSet < Choreography::InputSet

        #### 
        # Set the value of the RequestData input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON-formatted string containing the request properties you wish to set. This can be used as an alternative to setting individual inputs representing request properties.
        ###

        def set_RequestData(value)
          set_input("RequestData", value)
        end
        #### 
        # Set the value of the Comment input for this Choreo. 
        # 
        # @param String - (conditional, string) A comment associated with the request.
        ###

        def set_Comment(value)
          set_input("Comment", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the request to update.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Priority input for this Choreo. 
        # 
        # @param String - (conditional, string) Priority (e.g. low, normal, high, urgent). Defaults to normal.
        ###

        def set_Priority(value)
          set_input("Priority", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the Subject input for this Choreo. 
        # 
        # @param String - (conditional, string) The subject of the request.
        ###

        def set_Subject(value)
          set_input("Subject", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (conditional, string) Type of request (e.g.question, incident, problem, task). Defaults to incident.
        ###

        def set_Type(value)
          set_input("Type", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateRequest Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateRequestResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateRequest




  end # module Requests

  module Search



    ##############################################################################
    #
    # SearchAll
    #
    # Returns search results across all ticket fields.
    #
    ##############################################################################

    class SearchAll < Choreography

      ####
      #  Create a new instance of the SearchAll Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Search/SearchAll")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchAllInputSet
      ####
      def new_input_set()
        return SearchAllInputSet.new()
      end

      def make_result_set()
        return SearchAllResultSet.new()
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
        results = SearchAllResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchAll
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchAllInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (required, string) The search text to be matched.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) Acceptable values: updated_at, created_at, priority, status, ticket_type.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Indicate either: relevance, asc (for ascending), desc (for descending). Defaults to relevance.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchAll Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchAllResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchAll



    ##############################################################################
    #
    # SearchAnonymous
    #
    # Allows anonymous users to search public forums.
    #
    ##############################################################################

    class SearchAnonymous < Choreography

      ####
      #  Create a new instance of the SearchAnonymous Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Search/SearchAnonymous")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchAnonymousInputSet
      ####
      def new_input_set()
        return SearchAnonymousInputSet.new()
      end

      def make_result_set()
        return SearchAnonymousResultSet.new()
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
        results = SearchAnonymousResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchAnonymous
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchAnonymousInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (required, string) The search text to be matched.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) Acceptable values: updated_at, created_at, priority, status, ticket_type.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Indicate either: relevance, asc (for ascending), desc (for descending). Defaults to relevance.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchAnonymous Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchAnonymousResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      end

    end # class SearchAnonymous




  end # module Search

  module Tags



    ##############################################################################
    #
    # ListTags
    #
    # Retrieves the most popular recent tags in decreasing popularity.
    #
    ##############################################################################

    class ListTags < Choreography

      ####
      #  Create a new instance of the ListTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Tags/ListTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListTagsInputSet
      ####
      def new_input_set()
        return ListTagsInputSet.new()
      end

      def make_result_set()
        return ListTagsResultSet.new()
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
        results = ListTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListTags




  end # module Tags

  module TicketAudits



    ##############################################################################
    #
    # ChangeCommentFromPublicToPrivate
    #
    # Changes a comment from public to private.
    #
    ##############################################################################

    class ChangeCommentFromPublicToPrivate < Choreography

      ####
      #  Create a new instance of the ChangeCommentFromPublicToPrivate Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/TicketAudits/ChangeCommentFromPublicToPrivate")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ChangeCommentFromPublicToPrivateInputSet
      ####
      def new_input_set()
        return ChangeCommentFromPublicToPrivateInputSet.new()
      end

      def make_result_set()
        return ChangeCommentFromPublicToPrivateResultSet.new()
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
        results = ChangeCommentFromPublicToPrivateResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ChangeCommentFromPublicToPrivate
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ChangeCommentFromPublicToPrivateInputSet < Choreography::InputSet

        #### 
        # Set the value of the AuditID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the audit to make private.
        ###

        def set_AuditID(value)
          set_input("AuditID", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the TicketID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the ticket associated with the audit.
        ###

        def set_TicketID(value)
          set_input("TicketID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ChangeCommentFromPublicToPrivate Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ChangeCommentFromPublicToPrivateResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Zendesk.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ChangeCommentFromPublicToPrivate



    ##############################################################################
    #
    # ListAudits
    #
    # Lists all the audits made for the specifed ticket.
    #
    ##############################################################################

    class ListAudits < Choreography

      ####
      #  Create a new instance of the ListAudits Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/TicketAudits/ListAudits")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAuditsInputSet
      ####
      def new_input_set()
        return ListAuditsInputSet.new()
      end

      def make_result_set()
        return ListAuditsResultSet.new()
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
        results = ListAuditsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAudits
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAuditsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the ticket you wish to show audits for.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAudits Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAuditsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAudits



    ##############################################################################
    #
    # MarkAuditAsTrusted
    #
    # Marks the specified audit as trusted. 
    #
    ##############################################################################

    class MarkAuditAsTrusted < Choreography

      ####
      #  Create a new instance of the MarkAuditAsTrusted Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/TicketAudits/MarkAuditAsTrusted")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MarkAuditAsTrustedInputSet
      ####
      def new_input_set()
        return MarkAuditAsTrustedInputSet.new()
      end

      def make_result_set()
        return MarkAuditAsTrustedResultSet.new()
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
        results = MarkAuditAsTrustedResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MarkAuditAsTrusted
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MarkAuditAsTrustedInputSet < Choreography::InputSet

        #### 
        # Set the value of the AuditID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the audit that you want to mark as trusted.
        ###

        def set_AuditID(value)
          set_input("AuditID", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the TicketID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the ticket associated with the audit.
        ###

        def set_TicketID(value)
          set_input("TicketID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MarkAuditAsTrusted Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MarkAuditAsTrustedResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Zendesk.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class MarkAuditAsTrusted



    ##############################################################################
    #
    # ShowAudit
    #
    # Returns detailed information on the specified audit.
    #
    ##############################################################################

    class ShowAudit < Choreography

      ####
      #  Create a new instance of the ShowAudit Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/TicketAudits/ShowAudit")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowAuditInputSet
      ####
      def new_input_set()
        return ShowAuditInputSet.new()
      end

      def make_result_set()
        return ShowAuditResultSet.new()
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
        results = ShowAuditResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowAudit
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowAuditInputSet < Choreography::InputSet

        #### 
        # Set the value of the AuditID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the audit to show.
        ###

        def set_AuditID(value)
          set_input("AuditID", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the TicketID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the ticket associated with the audit.
        ###

        def set_TicketID(value)
          set_input("TicketID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowAudit Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowAuditResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShowAudit




  end # module TicketAudits

  module TicketMetrics



    ##############################################################################
    #
    # GetTicketMetrics
    #
    # Retrieves a specific ticket metric.
    #
    ##############################################################################

    class GetTicketMetrics < Choreography

      ####
      #  Create a new instance of the GetTicketMetrics Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/TicketMetrics/GetTicketMetrics")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTicketMetricsInputSet
      ####
      def new_input_set()
        return GetTicketMetricsInputSet.new()
      end

      def make_result_set()
        return GetTicketMetricsResultSet.new()
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
        results = GetTicketMetricsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTicketMetrics
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTicketMetricsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the ticket metric to retrieve.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTicketMetrics Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTicketMetricsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTicketMetrics



    ##############################################################################
    #
    # ListTicketMetrics
    #
    # Retrieves a list of metrics for all available tickets.
    #
    ##############################################################################

    class ListTicketMetrics < Choreography

      ####
      #  Create a new instance of the ListTicketMetrics Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/TicketMetrics/ListTicketMetrics")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListTicketMetricsInputSet
      ####
      def new_input_set()
        return ListTicketMetricsInputSet.new()
      end

      def make_result_set()
        return ListTicketMetricsResultSet.new()
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
        results = ListTicketMetricsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListTicketMetrics
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListTicketMetricsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListTicketMetrics Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListTicketMetricsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListTicketMetrics




  end # module TicketMetrics

  module Tickets



    ##############################################################################
    #
    # CreateTicket
    #
    # Creates a new ticket.
    #
    ##############################################################################

    class CreateTicket < Choreography

      ####
      #  Create a new instance of the CreateTicket Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Tickets/CreateTicket")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateTicketInputSet
      ####
      def new_input_set()
        return CreateTicketInputSet.new()
      end

      def make_result_set()
        return CreateTicketResultSet.new()
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
        results = CreateTicketResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateTicket
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateTicketInputSet < Choreography::InputSet

        #### 
        # Set the value of the Comment input for this Choreo. 
        # 
        # @param String - (conditional, string) The comment for the ticket that is being created.
        ###

        def set_Comment(value)
          set_input("Comment", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (i.e. temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the Subject input for this Choreo. 
        # 
        # @param String - (conditional, string) The subject for the ticket that is being created.
        ###

        def set_Subject(value)
          set_input("Subject", value)
        end
        #### 
        # Set the value of the TicketData input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON-formatted string containing the ticket properties you wish to set. This can be used as an alternative to setting individual inputs representing ticket properties.
        ###

        def set_TicketData(value)
          set_input("TicketData", value)
        end
        #### 
        # Set the value of the Token input for this Choreo. 
        # 
        # @param String - (optional, string) The token associated with an upload to attach to this ticket. Note that tokens can be retrieved by running the UploadFile Choreo.
        ###

        def set_Token(value)
          set_input("Token", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateTicket Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateTicketResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateTicket



    ##############################################################################
    #
    # CreateTicketNewRequester
    #
    # Creates a new ticket as well as a new requester account.
    #
    ##############################################################################

    class CreateTicketNewRequester < Choreography

      ####
      #  Create a new instance of the CreateTicketNewRequester Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Tickets/CreateTicketNewRequester")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateTicketNewRequesterInputSet
      ####
      def new_input_set()
        return CreateTicketNewRequesterInputSet.new()
      end

      def make_result_set()
        return CreateTicketNewRequesterResultSet.new()
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
        results = CreateTicketNewRequesterResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateTicketNewRequester
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateTicketNewRequesterInputSet < Choreography::InputSet

        #### 
        # Set the value of the Comment input for this Choreo. 
        # 
        # @param String - (required, string) The comment for the ticket that is being created.
        ###

        def set_Comment(value)
          set_input("Comment", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the LocaleID input for this Choreo. 
        # 
        # @param Integer - (required, integer) LocaleID for the new requester. Indicate 1 for English, 8 for Deutsch, etc.
        ###

        def set_LocaleID(value)
          set_input("LocaleID", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) Name of new requester.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the RequesterEmail input for this Choreo. 
        # 
        # @param String - (required, string) Email of new requester.
        ###

        def set_RequesterEmail(value)
          set_input("RequesterEmail", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the Subject input for this Choreo. 
        # 
        # @param String - (required, string) The subject for the ticket that is being created.
        ###

        def set_Subject(value)
          set_input("Subject", value)
        end
        #### 
        # Set the value of the Token input for this Choreo. 
        # 
        # @param String - (optional, string) The token associated with an upload to attach to this ticket. Note that tokens can be retrieved by running the UploadFile Choreo.
        ###

        def set_Token(value)
          set_input("Token", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateTicketNewRequester Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateTicketNewRequesterResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateTicketNewRequester



    ##############################################################################
    #
    # DeleteTicket
    #
    # Deletes an existing ticket.
    #
    ##############################################################################

    class DeleteTicket < Choreography

      ####
      #  Create a new instance of the DeleteTicket Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Tickets/DeleteTicket")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteTicketInputSet
      ####
      def new_input_set()
        return DeleteTicketInputSet.new()
      end

      def make_result_set()
        return DeleteTicketResultSet.new()
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
        results = DeleteTicketResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteTicket
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteTicketInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID number of a ticket.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteTicket Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteTicketResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Zendesk.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteTicket



    ##############################################################################
    #
    # GetTicket
    #
    # Returns information about a ticket using its ID.
    #
    ##############################################################################

    class GetTicket < Choreography

      ####
      #  Create a new instance of the GetTicket Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Tickets/GetTicket")
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
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID number of a ticket.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTicket Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTicketResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTicket



    ##############################################################################
    #
    # ListAllTickets
    #
    # Retrieves a list of all existing tickets.
    #
    ##############################################################################

    class ListAllTickets < Choreography

      ####
      #  Create a new instance of the ListAllTickets Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Tickets/ListAllTickets")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllTicketsInputSet
      ####
      def new_input_set()
        return ListAllTicketsInputSet.new()
      end

      def make_result_set()
        return ListAllTicketsResultSet.new()
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
        results = ListAllTicketsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllTickets
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllTicketsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllTickets Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllTicketsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      end

    end # class ListAllTickets



    ##############################################################################
    #
    # ListRecent
    #
    # Retrieves a list of all recent tickets.
    #
    ##############################################################################

    class ListRecent < Choreography

      ####
      #  Create a new instance of the ListRecent Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Tickets/ListRecent")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListRecentInputSet
      ####
      def new_input_set()
        return ListRecentInputSet.new()
      end

      def make_result_set()
        return ListRecentResultSet.new()
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
        results = ListRecentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListRecent
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListRecentInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListRecent Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListRecentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListRecent



    ##############################################################################
    #
    # ListTicketCollaborators
    #
    # Retrieves all the collaborators associated with a given ticket.
    #
    ##############################################################################

    class ListTicketCollaborators < Choreography

      ####
      #  Create a new instance of the ListTicketCollaborators Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Tickets/ListTicketCollaborators")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListTicketCollaboratorsInputSet
      ####
      def new_input_set()
        return ListTicketCollaboratorsInputSet.new()
      end

      def make_result_set()
        return ListTicketCollaboratorsResultSet.new()
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
        results = ListTicketCollaboratorsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListTicketCollaborators
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListTicketCollaboratorsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID number of a ticket.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListTicketCollaborators Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListTicketCollaboratorsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListTicketCollaborators



    ##############################################################################
    #
    # ListTicketIncidents
    #
    # Retrieves all the incidents associated with a given ticket.
    #
    ##############################################################################

    class ListTicketIncidents < Choreography

      ####
      #  Create a new instance of the ListTicketIncidents Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Tickets/ListTicketIncidents")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListTicketIncidentsInputSet
      ####
      def new_input_set()
        return ListTicketIncidentsInputSet.new()
      end

      def make_result_set()
        return ListTicketIncidentsResultSet.new()
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
        results = ListTicketIncidentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListTicketIncidents
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListTicketIncidentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID number of a ticket.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListTicketIncidents Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListTicketIncidentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListTicketIncidents



    ##############################################################################
    #
    # ListTicketsByOrganization
    #
    # Retrieves a list of all tickets involving a specified organization.
    #
    ##############################################################################

    class ListTicketsByOrganization < Choreography

      ####
      #  Create a new instance of the ListTicketsByOrganization Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Tickets/ListTicketsByOrganization")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListTicketsByOrganizationInputSet
      ####
      def new_input_set()
        return ListTicketsByOrganizationInputSet.new()
      end

      def make_result_set()
        return ListTicketsByOrganizationResultSet.new()
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
        results = ListTicketsByOrganizationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListTicketsByOrganization
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListTicketsByOrganizationInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the OrganizationID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID number of the organization.
        ###

        def set_OrganizationID(value)
          set_input("OrganizationID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListTicketsByOrganization Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListTicketsByOrganizationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListTicketsByOrganization



    ##############################################################################
    #
    # ListTicketsByUser
    #
    # Retrieves a list of all tickets involving a specified user.
    #
    ##############################################################################

    class ListTicketsByUser < Choreography

      ####
      #  Create a new instance of the ListTicketsByUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Tickets/ListTicketsByUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListTicketsByUserInputSet
      ####
      def new_input_set()
        return ListTicketsByUserInputSet.new()
      end

      def make_result_set()
        return ListTicketsByUserResultSet.new()
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
        results = ListTicketsByUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListTicketsByUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListTicketsByUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID number of the user.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the UserType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify "requested" to find tickets that the given user requested and "ccd" to find tickets on which a given user was CC'd. Defaults to searching for tickets that the user requested.
        ###

        def set_UserType(value)
          set_input("UserType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListTicketsByUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListTicketsByUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListTicketsByUser



    ##############################################################################
    #
    # UpdateTicket
    #
    # Updates an existing ticket.
    #
    ##############################################################################

    class UpdateTicket < Choreography

      ####
      #  Create a new instance of the UpdateTicket Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Tickets/UpdateTicket")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateTicketInputSet
      ####
      def new_input_set()
        return UpdateTicketInputSet.new()
      end

      def make_result_set()
        return UpdateTicketResultSet.new()
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
        results = UpdateTicketResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateTicket
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateTicketInputSet < Choreography::InputSet

        #### 
        # Set the value of the Comment input for this Choreo. 
        # 
        # @param String - (conditional, string) The text for a ticket comment.
        ###

        def set_Comment(value)
          set_input("Comment", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Metadata input for this Choreo. 
        # 
        # @param String - (optional, json) Ticket metadata formatted in JSON. See below for more information on the input format.
        ###

        def set_Metadata(value)
          set_input("Metadata", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Public input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A flag indicating if this update is public or not. Defaults to "true"
        ###

        def set_Public(value)
          set_input("Public", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the Status input for this Choreo. 
        # 
        # @param String - (conditional, string) The status of the ticket (i.e. solved, pending, open).
        ###

        def set_Status(value)
          set_input("Status", value)
        end
        #### 
        # Set the value of the TicketData input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON-formatted string containing the ticket properties you wish to set. This can be used as an alternative to setting individual inputs representing ticket properties.
        ###

        def set_TicketData(value)
          set_input("TicketData", value)
        end
        #### 
        # Set the value of the TicketID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the ticket being updated.
        ###

        def set_TicketID(value)
          set_input("TicketID", value)
        end
        #### 
        # Set the value of the Token input for this Choreo. 
        # 
        # @param String - (optional, string) The token associated with an upload to attach to this ticket. Note that tokens can be retrieved by running the UploadFile Choreo.
        ###

        def set_Token(value)
          set_input("Token", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateTicket Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateTicketResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateTicket




  end # module Tickets

  module UserIdentities



    ##############################################################################
    #
    # AddUserIdentity
    #
    # Allows an agent to add new identities for a given user ID. 
    #
    ##############################################################################

    class AddUserIdentity < Choreography

      ####
      #  Create a new instance of the AddUserIdentity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/UserIdentities/AddUserIdentity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddUserIdentityInputSet
      ####
      def new_input_set()
        return AddUserIdentityInputSet.new()
      end

      def make_result_set()
        return AddUserIdentityResultSet.new()
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
        results = AddUserIdentityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddUserIdentity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddUserIdentityInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Identity input for this Choreo. 
        # 
        # @param String - (required, string) The unique idenity (e.g.  test@test.com, test@gmail.com, screen_name)
        ###

        def set_Identity(value)
          set_input("Identity", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (conditional, string) Type of identity to add (e.g. email, facebook, twitter, google)
        ###

        def set_Type(value)
          set_input("Type", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddUserIdentity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddUserIdentityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddUserIdentity



    ##############################################################################
    #
    # AddUserIdentityByEndUser
    #
    #  Allows an end-user  to add new identities for a given user ID.
    #
    ##############################################################################

    class AddUserIdentityByEndUser < Choreography

      ####
      #  Create a new instance of the AddUserIdentityByEndUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/UserIdentities/AddUserIdentityByEndUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddUserIdentityByEndUserInputSet
      ####
      def new_input_set()
        return AddUserIdentityByEndUserInputSet.new()
      end

      def make_result_set()
        return AddUserIdentityByEndUserResultSet.new()
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
        results = AddUserIdentityByEndUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddUserIdentityByEndUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddUserIdentityByEndUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Identity input for this Choreo. 
        # 
        # @param String - (required, string) The unique idenity (e.g.  test@test.com, test@gmail.com, screen_name)
        ###

        def set_Identity(value)
          set_input("Identity", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (conditional, string) Type of identity to add (e.g. email, facebook, twitter, google)
        ###

        def set_Type(value)
          set_input("Type", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddUserIdentityByEndUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddUserIdentityByEndUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddUserIdentityByEndUser



    ##############################################################################
    #
    # DeleteUserIdentity
    #
    #  Deletes the user identity for a user/
    #
    ##############################################################################

    class DeleteUserIdentity < Choreography

      ####
      #  Create a new instance of the DeleteUserIdentity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/UserIdentities/DeleteUserIdentity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteUserIdentityInputSet
      ####
      def new_input_set()
        return DeleteUserIdentityInputSet.new()
      end

      def make_result_set()
        return DeleteUserIdentityResultSet.new()
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
        results = DeleteUserIdentityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteUserIdentity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteUserIdentityInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the IdentityID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the Identity to delete.
        ###

        def set_IdentityID(value)
          set_input("IdentityID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteUserIdentity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteUserIdentityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteUserIdentity



    ##############################################################################
    #
    # ListUserIdentities
    #
    # Lists all User Identities for a given User
    #
    ##############################################################################

    class ListUserIdentities < Choreography

      ####
      #  Create a new instance of the ListUserIdentities Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/UserIdentities/ListUserIdentities")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListUserIdentitiesInputSet
      ####
      def new_input_set()
        return ListUserIdentitiesInputSet.new()
      end

      def make_result_set()
        return ListUserIdentitiesResultSet.new()
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
        results = ListUserIdentitiesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListUserIdentities
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListUserIdentitiesInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListUserIdentities Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListUserIdentitiesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      end

    end # class ListUserIdentities



    ##############################################################################
    #
    # MakeUserIdentityThePrimary
    #
    # Sets the given user identity to primary.
    #
    ##############################################################################

    class MakeUserIdentityThePrimary < Choreography

      ####
      #  Create a new instance of the MakeUserIdentityThePrimary Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/UserIdentities/MakeUserIdentityThePrimary")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MakeUserIdentityThePrimaryInputSet
      ####
      def new_input_set()
        return MakeUserIdentityThePrimaryInputSet.new()
      end

      def make_result_set()
        return MakeUserIdentityThePrimaryResultSet.new()
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
        results = MakeUserIdentityThePrimaryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MakeUserIdentityThePrimary
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MakeUserIdentityThePrimaryInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the IdentityID input for this Choreo. 
        # 
        # @param String - (conditional, string) ID of the Identity to be updated.
        ###

        def set_IdentityID(value)
          set_input("IdentityID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MakeUserIdentityThePrimary Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MakeUserIdentityThePrimaryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class MakeUserIdentityThePrimary



    ##############################################################################
    #
    # RequestUserVerification
    #
    # This sends a verification email to the user, asking him to click a link in order to verify ownership of the email address.
    #
    ##############################################################################

    class RequestUserVerification < Choreography

      ####
      #  Create a new instance of the RequestUserVerification Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/UserIdentities/RequestUserVerification")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RequestUserVerificationInputSet
      ####
      def new_input_set()
        return RequestUserVerificationInputSet.new()
      end

      def make_result_set()
        return RequestUserVerificationResultSet.new()
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
        results = RequestUserVerificationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RequestUserVerification
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RequestUserVerificationInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the IdentityID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the Identity to be verified.
        ###

        def set_IdentityID(value)
          set_input("IdentityID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RequestUserVerification Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RequestUserVerificationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RequestUserVerification



    ##############################################################################
    #
    # ShowUserIdentity
    #
    # Shows the identity with the given ID.
    #
    ##############################################################################

    class ShowUserIdentity < Choreography

      ####
      #  Create a new instance of the ShowUserIdentity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/UserIdentities/ShowUserIdentity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowUserIdentityInputSet
      ####
      def new_input_set()
        return ShowUserIdentityInputSet.new()
      end

      def make_result_set()
        return ShowUserIdentityResultSet.new()
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
        results = ShowUserIdentityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowUserIdentity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowUserIdentityInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the IdentityID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the Identity.
        ###

        def set_IdentityID(value)
          set_input("IdentityID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowUserIdentity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowUserIdentityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShowUserIdentity



    ##############################################################################
    #
    # UpdateUserIdentity
    #
    # Updates the User Identity.    This API method only allows you to set an identity as verified.
    #
    ##############################################################################

    class UpdateUserIdentity < Choreography

      ####
      #  Create a new instance of the UpdateUserIdentity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/UserIdentities/UpdateUserIdentity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateUserIdentityInputSet
      ####
      def new_input_set()
        return UpdateUserIdentityInputSet.new()
      end

      def make_result_set()
        return UpdateUserIdentityResultSet.new()
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
        results = UpdateUserIdentityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateUserIdentity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateUserIdentityInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the IdentityID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the Identity to be updated.
        ###

        def set_IdentityID(value)
          set_input("IdentityID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the Verified input for this Choreo. 
        # 
        # @param String - (required, string) Specifies whether the identity has been verified (true or false).
        ###

        def set_Verified(value)
          set_input("Verified", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateUserIdentity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateUserIdentityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateUserIdentity



    ##############################################################################
    #
    # VerifyUserIdentity
    #
    # Verifies the User Identity.   
    #
    ##############################################################################

    class VerifyUserIdentity < Choreography

      ####
      #  Create a new instance of the VerifyUserIdentity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/UserIdentities/VerifyUserIdentity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return VerifyUserIdentityInputSet
      ####
      def new_input_set()
        return VerifyUserIdentityInputSet.new()
      end

      def make_result_set()
        return VerifyUserIdentityResultSet.new()
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
        results = VerifyUserIdentityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the VerifyUserIdentity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class VerifyUserIdentityInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the IdentityID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the Identity to verify.
        ###

        def set_IdentityID(value)
          set_input("IdentityID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the VerifyUserIdentity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class VerifyUserIdentityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class VerifyUserIdentity




  end # module UserIdentities

  module Users



    ##############################################################################
    #
    # CreateManyUsers
    #
    # Creates many new users at one time.
    #
    ##############################################################################

    class CreateManyUsers < Choreography

      ####
      #  Create a new instance of the CreateManyUsers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Users/CreateManyUsers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateManyUsersInputSet
      ####
      def new_input_set()
        return CreateManyUsersInputSet.new()
      end

      def make_result_set()
        return CreateManyUsersResultSet.new()
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
        results = CreateManyUsersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateManyUsers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateManyUsersInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the Users input for this Choreo. 
        # 
        # @param String - (required, json) A JSON-formatted string containing an array of user properties you wish to set.
        ###

        def set_Users(value)
          set_input("Users", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateManyUsers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateManyUsersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) 
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateManyUsers



    ##############################################################################
    #
    # CreateUser
    #
    # Creates a new user.
    #
    ##############################################################################

    class CreateUser < Choreography

      ####
      #  Create a new instance of the CreateUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Users/CreateUser")
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
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the UserData input for this Choreo. 
        # 
        # @param String - (required, json) A JSON-formatted string containing the user properties you wish to set.
        ###

        def set_UserData(value)
          set_input("UserData", value)
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
      	# @return String - (json) 
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
    # Deletes a given user.
    #
    ##############################################################################

    class DeleteUser < Choreography

      ####
      #  Create a new instance of the DeleteUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Users/DeleteUser")
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
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the user to delete.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Zendesk.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteUser



    ##############################################################################
    #
    # ListAllUsers
    #
    # Retrieves a list of all existing users.
    #
    ##############################################################################

    class ListAllUsers < Choreography

      ####
      #  Create a new instance of the ListAllUsers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Users/ListAllUsers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllUsersInputSet
      ####
      def new_input_set()
        return ListAllUsersInputSet.new()
      end

      def make_result_set()
        return ListAllUsersResultSet.new()
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
        results = ListAllUsersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllUsers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllUsersInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllUsers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllUsersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAllUsers



    ##############################################################################
    #
    # ListUsersByGroup
    #
    # Retrieves a list of all users in a specified group.
    #
    ##############################################################################

    class ListUsersByGroup < Choreography

      ####
      #  Create a new instance of the ListUsersByGroup Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Users/ListUsersByGroup")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListUsersByGroupInputSet
      ####
      def new_input_set()
        return ListUsersByGroupInputSet.new()
      end

      def make_result_set()
        return ListUsersByGroupResultSet.new()
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
        results = ListUsersByGroupResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListUsersByGroup
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListUsersByGroupInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the GroupID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID number of the group.
        ###

        def set_GroupID(value)
          set_input("GroupID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListUsersByGroup Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListUsersByGroupResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListUsersByGroup



    ##############################################################################
    #
    # ListUsersByOrganization
    #
    # Retrieves a list of users involving a specified organization.
    #
    ##############################################################################

    class ListUsersByOrganization < Choreography

      ####
      #  Create a new instance of the ListUsersByOrganization Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Users/ListUsersByOrganization")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListUsersByOrganizationInputSet
      ####
      def new_input_set()
        return ListUsersByOrganizationInputSet.new()
      end

      def make_result_set()
        return ListUsersByOrganizationResultSet.new()
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
        results = ListUsersByOrganizationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListUsersByOrganization
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListUsersByOrganizationInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the OrganizationID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID number of the organization.
        ###

        def set_OrganizationID(value)
          set_input("OrganizationID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListUsersByOrganization Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListUsersByOrganizationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      end

    end # class ListUsersByOrganization



    ##############################################################################
    #
    # SearchUsers
    #
    # Returns a list of users who match the search parameters.
    #
    ##############################################################################

    class SearchUsers < Choreography

      ####
      #  Create a new instance of the SearchUsers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Users/SearchUsers")
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
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (required, string) Perform a search across usernames or email addresses.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
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
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      end

    end # class SearchUsers



    ##############################################################################
    #
    # ShowCurrentUser
    #
    # Returns information about the currently authenticated user.
    #
    ##############################################################################

    class ShowCurrentUser < Choreography

      ####
      #  Create a new instance of the ShowCurrentUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Users/ShowCurrentUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowCurrentUserInputSet
      ####
      def new_input_set()
        return ShowCurrentUserInputSet.new()
      end

      def make_result_set()
        return ShowCurrentUserResultSet.new()
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
        results = ShowCurrentUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowCurrentUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowCurrentUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowCurrentUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowCurrentUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShowCurrentUser



    ##############################################################################
    #
    # ShowUser
    #
    # Returns information about given user.
    #
    ##############################################################################

    class ShowUser < Choreography

      ####
      #  Create a new instance of the ShowUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Users/ShowUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowUserInputSet
      ####
      def new_input_set()
        return ShowUserInputSet.new()
      end

      def make_result_set()
        return ShowUserResultSet.new()
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
        results = ShowUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID number of a user.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShowUser



    ##############################################################################
    #
    # SuspendUser
    #
    # Suspends an existing user.
    #
    ##############################################################################

    class SuspendUser < Choreography

      ####
      #  Create a new instance of the SuspendUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Users/SuspendUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SuspendUserInputSet
      ####
      def new_input_set()
        return SuspendUserInputSet.new()
      end

      def make_result_set()
        return SuspendUserResultSet.new()
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
        results = SuspendUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SuspendUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SuspendUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the user being updated.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SuspendUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SuspendUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SuspendUser



    ##############################################################################
    #
    # UpdateUser
    #
    # Updates an existing user.
    #
    ##############################################################################

    class UpdateUser < Choreography

      ####
      #  Create a new instance of the UpdateUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Users/UpdateUser")
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
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the UserData input for this Choreo. 
        # 
        # @param String - (required, json) A JSON-formatted string containing the user properties you wish to set.
        ###

        def set_UserData(value)
          set_input("UserData", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the user being updated.
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
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateUser



    ##############################################################################
    #
    # UpdateUserImage
    #
    # Updates a user's profile image.
    #
    ##############################################################################

    class UpdateUserImage < Choreography

      ####
      #  Create a new instance of the UpdateUserImage Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Users/UpdateUserImage")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateUserImageInputSet
      ####
      def new_input_set()
        return UpdateUserImageInputSet.new()
      end

      def make_result_set()
        return UpdateUserImageResultSet.new()
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
        results = UpdateUserImageResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateUserImage
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateUserImageInputSet < Choreography::InputSet

        #### 
        # Set the value of the Response input for this Choreo. 
        # 
        # @param String - (required, json) The response from Zendesk.
        ###

        def set_Response(value)
          set_input("Response", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ImageURL input for this Choreo. 
        # 
        # @param String - (required, string) The URL of the profile image.
        ###

        def set_ImageURL(value)
          set_input("ImageURL", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the user being updated.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateUserImage Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateUserImageResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (required, json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateUserImage




  end # module Users

  module Views



    ##############################################################################
    #
    # CreateView
    #
    # Creates a new view.
    #
    ##############################################################################

    class CreateView < Choreography

      ####
      #  Create a new instance of the CreateView Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Views/CreateView")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateViewInputSet
      ####
      def new_input_set()
        return CreateViewInputSet.new()
      end

      def make_result_set()
        return CreateViewResultSet.new()
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
        results = CreateViewResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateView
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateViewInputSet < Choreography::InputSet

        #### 
        # Set the value of the AllConditions input for this Choreo. 
        # 
        # @param String - (conditional, json) JSON Array of conditions.  Tickets must fulfill all of the conditions to be considered matching.
        ###

        def set_AllConditions(value)
          set_input("AllConditions", value)
        end
        #### 
        # Set the value of the AnyConditions input for this Choreo. 
        # 
        # @param String - (conditional, json) JSON Array of conditions.  Tickets may fulfill any of the conditions to be considered matching.
        ###

        def set_AnyConditions(value)
          set_input("AnyConditions", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (required, string) Title of the view to be created.
        ###

        def set_Title(value)
          set_input("Title", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateView Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateViewResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateView



    ##############################################################################
    #
    # DeleteView
    #
    # Deletes the specified view.
    #
    ##############################################################################

    class DeleteView < Choreography

      ####
      #  Create a new instance of the DeleteView Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Views/DeleteView")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteViewInputSet
      ####
      def new_input_set()
        return DeleteViewInputSet.new()
      end

      def make_result_set()
        return DeleteViewResultSet.new()
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
        results = DeleteViewResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteView
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteViewInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (conditional, string) ID of the view to delete.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteView Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteViewResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Zendesk.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class DeleteView



    ##############################################################################
    #
    # ExecuteViews
    #
    # Execute a view and retrieve tickets that fulfill the conditions of the view.
    #
    ##############################################################################

    class ExecuteViews < Choreography

      ####
      #  Create a new instance of the ExecuteViews Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Views/ExecuteViews")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ExecuteViewsInputSet
      ####
      def new_input_set()
        return ExecuteViewsInputSet.new()
      end

      def make_result_set()
        return ExecuteViewsResultSet.new()
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
        results = ExecuteViewsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ExecuteViews
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ExecuteViewsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (conditional, string) ID of the view to execute.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ExecuteViews Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ExecuteViewsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ExecuteViews



    ##############################################################################
    #
    # ExportViews
    #
    # Returns the CSV attachment of the current view if possible.
    #
    ##############################################################################

    class ExportViews < Choreography

      ####
      #  Create a new instance of the ExportViews Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Views/ExportViews")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ExportViewsInputSet
      ####
      def new_input_set()
        return ExportViewsInputSet.new()
      end

      def make_result_set()
        return ExportViewsResultSet.new()
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
        results = ExportViewsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ExportViews
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ExportViewsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (conditional, string) ID of the view to export.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ExportViews Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ExportViewsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ExportViews



    ##############################################################################
    #
    # GetTicketsFromAView
    #
    # Retrieve tickets from a view.
    #
    ##############################################################################

    class GetTicketsFromAView < Choreography

      ####
      #  Create a new instance of the GetTicketsFromAView Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Views/GetTicketsFromAView")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTicketsFromAViewInputSet
      ####
      def new_input_set()
        return GetTicketsFromAViewInputSet.new()
      end

      def make_result_set()
        return GetTicketsFromAViewResultSet.new()
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
        results = GetTicketsFromAViewResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTicketsFromAView
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTicketsFromAViewInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (conditional, string) ID of the view to get tickets from.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTicketsFromAView Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTicketsFromAViewResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTicketsFromAView



    ##############################################################################
    #
    # GetViewCount
    #
    # Returns the ticket count for a single view.
    #
    ##############################################################################

    class GetViewCount < Choreography

      ####
      #  Create a new instance of the GetViewCount Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Views/GetViewCount")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetViewCountInputSet
      ####
      def new_input_set()
        return GetViewCountInputSet.new()
      end

      def make_result_set()
        return GetViewCountResultSet.new()
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
        results = GetViewCountResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetViewCount
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetViewCountInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (conditional, string) Retrieve a view count for the ID of the specified view.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetViewCount Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetViewCountResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetViewCount



    ##############################################################################
    #
    # GetViewCounts
    #
    # Calculates the size of the view in terms of number of tickets the view will return.
    #
    ##############################################################################

    class GetViewCounts < Choreography

      ####
      #  Create a new instance of the GetViewCounts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Views/GetViewCounts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetViewCountsInputSet
      ####
      def new_input_set()
        return GetViewCountsInputSet.new()
      end

      def make_result_set()
        return GetViewCountsResultSet.new()
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
        results = GetViewCountsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetViewCounts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetViewCountsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the IDs input for this Choreo. 
        # 
        # @param String - (conditional, string) Comma-seperated list of view IDs to retrieve counts for.
        ###

        def set_IDs(value)
          set_input("IDs", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetViewCounts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetViewCountsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetViewCounts



    ##############################################################################
    #
    # ListActiveViews
    #
    # Lists active shared and personal views available to the current user.
    #
    ##############################################################################

    class ListActiveViews < Choreography

      ####
      #  Create a new instance of the ListActiveViews Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Views/ListActiveViews")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListActiveViewsInputSet
      ####
      def new_input_set()
        return ListActiveViewsInputSet.new()
      end

      def make_result_set()
        return ListActiveViewsResultSet.new()
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
        results = ListActiveViewsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListActiveViews
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListActiveViewsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListActiveViews Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListActiveViewsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      end

    end # class ListActiveViews



    ##############################################################################
    #
    # ListCompactViews
    #
    # Retrieves a compacted list of shared and personal views available to the current user.
    #
    ##############################################################################

    class ListCompactViews < Choreography

      ####
      #  Create a new instance of the ListCompactViews Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Views/ListCompactViews")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListCompactViewsInputSet
      ####
      def new_input_set()
        return ListCompactViewsInputSet.new()
      end

      def make_result_set()
        return ListCompactViewsResultSet.new()
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
        results = ListCompactViewsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListCompactViews
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListCompactViewsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListCompactViews Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListCompactViewsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      end

    end # class ListCompactViews



    ##############################################################################
    #
    # ListViews
    #
    # Lists shared and personal views available to the current user.
    #
    ##############################################################################

    class ListViews < Choreography

      ####
      #  Create a new instance of the ListViews Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Zendesk/Views/ListViews")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListViewsInputSet
      ####
      def new_input_set()
        return ListViewsInputSet.new()
      end

      def make_result_set()
        return ListViewsResultSet.new()
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
        results = ListViewsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListViews
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListViewsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address you use to login to your Zendesk account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number of the results to be returned. Used together with the PerPage parameter to paginate a large set of results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Zendesk password.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) Your Zendesk domain and subdomain (e.g., temboocare.zendesk.com).
        ###

        def set_Server(value)
          set_input("Server", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListViews Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListViewsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Zendesk.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "PreviousPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the previous page of results.
      	####
      	def get_PreviousPage()
      	  return @outputs["PreviousPage"]
      	end
      	####
      	# Retrieve the value for the "NextPage" output from this Choreo execution
      	#
      	# @return String - (integer) The index for the next page of results.
      	####
      	def get_NextPage()
      	  return @outputs["NextPage"]
      	end
      end

    end # class ListViews




  end # module Views

end # module Zendesk