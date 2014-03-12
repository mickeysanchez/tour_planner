require "temboo"

module Bugzilla



  ##############################################################################
  #
  # ListAttachmentsForBug
  #
  # List attachments associated with a specifig Bug ID.
  #
  ##############################################################################

  class ListAttachmentsForBug < Choreography

    ####
    #  Create a new instance of the ListAttachmentsForBug Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Bugzilla/ListAttachmentsForBug")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListAttachmentsForBugInputSet
    ####
    def new_input_set()
      return ListAttachmentsForBugInputSet.new()
    end

    def make_result_set()
      return ListAttachmentsForBugResultSet.new()
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
      results = ListAttachmentsForBugResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListAttachmentsForBug
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListAttachmentsForBugInputSet < Choreography::InputSet

      #### 
      # Set the value of the AttachmentsWithData input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Enter 1 to obtain full bug attachments data.  If null, only attachments fields will be returned with no associated data.
      ###

      def set_AttachmentsWithData(value)
        set_input("AttachmentsWithData", value)
      end
      #### 
      # Set the value of the BugID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter a Bug ID, for which information will be retrieved.
      ###

      def set_BugID(value)
        set_input("BugID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (optional, password) Your Bugzilla password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Server input for this Choreo. 
      # 
      # @param String - (optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
      ###

      def set_Server(value)
        set_input("Server", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (optional, string) Your Bugzilla username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListAttachmentsForBug Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListAttachmentsForBugResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Bugzilla.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListAttachmentsForBug



  ##############################################################################
  #
  # ListBugComments
  #
  # Retrieve comments for a specifed Bug ID.
  #
  ##############################################################################

  class ListBugComments < Choreography

    ####
    #  Create a new instance of the ListBugComments Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Bugzilla/ListBugComments")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListBugCommentsInputSet
    ####
    def new_input_set()
      return ListBugCommentsInputSet.new()
    end

    def make_result_set()
      return ListBugCommentsResultSet.new()
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
      results = ListBugCommentsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListBugComments
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListBugCommentsInputSet < Choreography::InputSet

      #### 
      # Set the value of the BugID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter a Bug ID, for which information will be retrieved.
      ###

      def set_BugID(value)
        set_input("BugID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (optional, password) Your Bugzilla password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Server input for this Choreo. 
      # 
      # @param String - (optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
      ###

      def set_Server(value)
        set_input("Server", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (optional, string) Your Bugzilla username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListBugComments Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListBugCommentsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Bugzilla.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListBugComments



  ##############################################################################
  #
  # ListBugHistory
  #
  # Retrieve detailed bug history.
  #
  ##############################################################################

  class ListBugHistory < Choreography

    ####
    #  Create a new instance of the ListBugHistory Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Bugzilla/ListBugHistory")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListBugHistoryInputSet
    ####
    def new_input_set()
      return ListBugHistoryInputSet.new()
    end

    def make_result_set()
      return ListBugHistoryResultSet.new()
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
      results = ListBugHistoryResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListBugHistory
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListBugHistoryInputSet < Choreography::InputSet

      #### 
      # Set the value of the BugID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter a Bug ID, for which information will be retrieved.
      ###

      def set_BugID(value)
        set_input("BugID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (optional, password) Your Bugzilla password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Server input for this Choreo. 
      # 
      # @param String - (optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
      ###

      def set_Server(value)
        set_input("Server", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (optional, string) Your Bugzilla username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListBugHistory Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListBugHistoryResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Bugzilla.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListBugHistory



  ##############################################################################
  #
  # RetrieveAttachment
  #
  # Retrieve attachments associated with a specifig Bug ID.
  #
  ##############################################################################

  class RetrieveAttachment < Choreography

    ####
    #  Create a new instance of the RetrieveAttachment Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Bugzilla/RetrieveAttachment")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveAttachmentInputSet
    ####
    def new_input_set()
      return RetrieveAttachmentInputSet.new()
    end

    def make_result_set()
      return RetrieveAttachmentResultSet.new()
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
      results = RetrieveAttachmentResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveAttachment
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveAttachmentInputSet < Choreography::InputSet

      #### 
      # Set the value of the AttachmentID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter an attachment ID, for which information will be retrieved.
      ###

      def set_AttachmentID(value)
        set_input("AttachmentID", value)
      end
      #### 
      # Set the value of the AttachmentsWithData input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Enter 1 to obtain full bug attachments data.  If null, only attachments fields will be returned with no associated data.
      ###

      def set_AttachmentsWithData(value)
        set_input("AttachmentsWithData", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (optional, password) Your Bugzilla password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Server input for this Choreo. 
      # 
      # @param String - (optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
      ###

      def set_Server(value)
        set_input("Server", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (optional, string) Your Bugzilla username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveAttachment Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveAttachmentResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Bugzilla.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveAttachment



  ##############################################################################
  #
  # RetrieveBug
  #
  # Retrieve detailed information for a specifed Bug ID.
  #
  ##############################################################################

  class RetrieveBug < Choreography

    ####
    #  Create a new instance of the RetrieveBug Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Bugzilla/RetrieveBug")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveBugInputSet
    ####
    def new_input_set()
      return RetrieveBugInputSet.new()
    end

    def make_result_set()
      return RetrieveBugResultSet.new()
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
      results = RetrieveBugResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveBug
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveBugInputSet < Choreography::InputSet

      #### 
      # Set the value of the BugID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter a Bug ID, for which information will be retrieved.
      ###

      def set_BugID(value)
        set_input("BugID", value)
      end
      #### 
      # Set the value of the IncludeFields input for this Choreo. 
      # 
      # @param String - (optional, string) Enter additional parameters to expand the scope of information returned.  For full bug fetch: _all; Or, a comma-separated list: _default, comments, history, attachments.data
      ###

      def set_IncludeFields(value)
        set_input("IncludeFields", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (optional, password) Your Bugzilla password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Server input for this Choreo. 
      # 
      # @param String - (optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
      ###

      def set_Server(value)
        set_input("Server", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (optional, string) Your Bugzilla username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveBug Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveBugResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Bugzilla.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveBug



  ##############################################################################
  #
  # RetrieveUser
  #
  # Retrieve user info.
  #
  ##############################################################################

  class RetrieveUser < Choreography

    ####
    #  Create a new instance of the RetrieveUser Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Bugzilla/RetrieveUser")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveUserInputSet
    ####
    def new_input_set()
      return RetrieveUserInputSet.new()
    end

    def make_result_set()
      return RetrieveUserResultSet.new()
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
      results = RetrieveUserResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveUser
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveUserInputSet < Choreography::InputSet

      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (optional, password) Your Bugzilla password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the QueryUserID input for this Choreo. 
      # 
      # @param String - (required, string) Enter the user ID for which information is to be returned. Valid input formats include: email address, or numeric user ID.  If searching by numeric ID, authentication is requred.
      ###

      def set_QueryUserID(value)
        set_input("QueryUserID", value)
      end
      #### 
      # Set the value of the Server input for this Choreo. 
      # 
      # @param String - (optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
      ###

      def set_Server(value)
        set_input("Server", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (optional, string) Your Bugzilla username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveUser Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveUserResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Bugzilla.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveUser



  ##############################################################################
  #
  # SearchForBugs
  #
  # Search for bugs listed by Mozilla product name.
  #
  ##############################################################################

  class SearchForBugs < Choreography

    ####
    #  Create a new instance of the SearchForBugs Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Bugzilla/SearchForBugs")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchForBugsInputSet
    ####
    def new_input_set()
      return SearchForBugsInputSet.new()
    end

    def make_result_set()
      return SearchForBugsResultSet.new()
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
      results = SearchForBugsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchForBugs
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchForBugsInputSet < Choreography::InputSet

      #### 
      # Set the value of the BugChangeDate input for this Choreo. 
      # 
      # @param String - (optional, string) Retrieve bugs that were changed within a certain date range. For example: 25d will return all bugs changed from 25 days ago untill today.  Or: 3h, to return all bugs entered with 3 hours.
      ###

      def set_BugChangeDate(value)
        set_input("BugChangeDate", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (optional, password) Your Bugzilla password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Priority input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Filter results by priority: For example: enter P1, to get Priority 1 bugs assoicated with a Product.
      ###

      def set_Priority(value)
        set_input("Priority", value)
      end
      #### 
      # Set the value of the Product input for this Choreo. 
      # 
      # @param String - (required, string) Enter the Mozilla product for which bugs will be retrieved. For example: Bugzilla
      ###

      def set_Product(value)
        set_input("Product", value)
      end
      #### 
      # Set the value of the Server input for this Choreo. 
      # 
      # @param String - (optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
      ###

      def set_Server(value)
        set_input("Server", value)
      end
      #### 
      # Set the value of the Severity input for this Choreo. 
      # 
      # @param String - (optional, string) Filter results by severity. For example: blocker
      ###

      def set_Severity(value)
        set_input("Severity", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) Your Bugzilla username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchForBugs Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchForBugsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Bugzilla.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchForBugs



  ##############################################################################
  #
  # SearchForUsers
  #
  # Search for a specified Bugzilla user.
  #
  ##############################################################################

  class SearchForUsers < Choreography

    ####
    #  Create a new instance of the SearchForUsers Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Bugzilla/SearchForUsers")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchForUsersInputSet
    ####
    def new_input_set()
      return SearchForUsersInputSet.new()
    end

    def make_result_set()
      return SearchForUsersResultSet.new()
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
      results = SearchForUsersResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchForUsers
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchForUsersInputSet < Choreography::InputSet

      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your Bugzilla password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the SearchForUser input for this Choreo. 
      # 
      # @param String - (required, string) Enter the usename to be querried.
      ###

      def set_SearchForUser(value)
        set_input("SearchForUser", value)
      end
      #### 
      # Set the value of the Server input for this Choreo. 
      # 
      # @param String - (optional, string) The base URL for the Bugzilla server to access. Defaults to https://api-dev.bugzilla.mozilla.org/latest. To access the test server, set to https://api-dev.bugzilla.mozilla.org/test/latest.
      ###

      def set_Server(value)
        set_input("Server", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) Your Bugzilla username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchForUsers Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchForUsersResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Bugzilla.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchForUsers




end # module Bugzilla