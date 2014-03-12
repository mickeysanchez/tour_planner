require "temboo"

module Delicious



  ##############################################################################
  #
  # AddBookmark
  #
  # Adds a link bookmark to a Delicious account.
  #
  ##############################################################################

  class AddBookmark < Choreography

    ####
    #  Create a new instance of the AddBookmark Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Delicious/AddBookmark")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AddBookmarkInputSet
    ####
    def new_input_set()
      return AddBookmarkInputSet.new()
    end

    def make_result_set()
      return AddBookmarkResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = AddBookmarkResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AddBookmark
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AddBookmarkInputSet < Choreography::InputSet

      #### 
      # Set the value of the Description input for this Choreo. 
      # 
      # @param String - (required, string) A description for the link to post.
      ###

      def set_Description(value)
        set_input("Description", value)
      end
      #### 
      # Set the value of the Notes input for this Choreo. 
      # 
      # @param String - (optional, string) Descriptive notes for the posted link.
      ###

      def set_Notes(value)
        set_input("Notes", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The password that corresponds to the specified Delicious account username.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Replace input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify "1" to replace the post if the URL has already been posted. Set to "0" (don't replace) by default.
      ###

      def set_Replace(value)
        set_input("Replace", value)
      end
      #### 
      # Set the value of the Shared input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify "1" to make the posted link private. Set to "0" (shared) by default.
      ###

      def set_Shared(value)
        set_input("Shared", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Add keyword tags to the posted link. Separate multiple tags with commas.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the URL input for this Choreo. 
      # 
      # @param String - (required, string) The URL for the link to post.
      ###

      def set_URL(value)
        set_input("URL", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) A valid Delicious account username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AddBookmark Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AddBookmarkResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response returned from Delicious.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AddBookmark



  ##############################################################################
  #
  # DeleteBookmark
  #
  # Deletes a bookmarked link from a Delicious account.
  #
  ##############################################################################

  class DeleteBookmark < Choreography

    ####
    #  Create a new instance of the DeleteBookmark Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Delicious/DeleteBookmark")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteBookmarkInputSet
    ####
    def new_input_set()
      return DeleteBookmarkInputSet.new()
    end

    def make_result_set()
      return DeleteBookmarkResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = DeleteBookmarkResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteBookmark
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteBookmarkInputSet < Choreography::InputSet

      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The password that corresponds to the specified Delicious account username.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the URL input for this Choreo. 
      # 
      # @param String - (required, string) The URL for the posted link to delete.
      ###

      def set_URL(value)
        set_input("URL", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) A valid Delicious account username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteBookmark Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteBookmarkResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response returned from Delicious.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteBookmark



  ##############################################################################
  #
  # DeleteTag
  #
  # Deletes a specified tag.
  #
  ##############################################################################

  class DeleteTag < Choreography

    ####
    #  Create a new instance of the DeleteTag Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Delicious/DeleteTag")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteTagInputSet
    ####
    def new_input_set()
      return DeleteTagInputSet.new()
    end

    def make_result_set()
      return DeleteTagResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = DeleteTagResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteTag
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteTagInputSet < Choreography::InputSet

      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The password that corresponds to the specified Delicious account username.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Tag input for this Choreo. 
      # 
      # @param String - (required, string) The tag to delete.
      ###

      def set_Tag(value)
        set_input("Tag", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) A valid Delicious account username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteTag Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteTagResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response returned from Delicious.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteTag



  ##############################################################################
  #
  # GetAllBookmarks
  #
  # Returns all links posted to a Delicious account.
  #
  ##############################################################################

  class GetAllBookmarks < Choreography

    ####
    #  Create a new instance of the GetAllBookmarks Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Delicious/GetAllBookmarks")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetAllBookmarksInputSet
    ####
    def new_input_set()
      return GetAllBookmarksInputSet.new()
    end

    def make_result_set()
      return GetAllBookmarksResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetAllBookmarksResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetAllBookmarks
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetAllBookmarksInputSet < Choreography::InputSet

      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of bookmarks to return. Defaults to 15.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the FromDate input for this Choreo. 
      # 
      # @param String - (optional, date) Return only bookmarks posted on this date and later. Enter in YYYY-MM-DDThh:mm:ssZ format.
      ###

      def set_FromDate(value)
        set_input("FromDate", value)
      end
      #### 
      # Set the value of the Meta input for this Choreo. 
      # 
      # @param String - (optional, string) Specify "1" to include a change-detection signature for each item returned. Defaults to "0", or no meta attributes retained.
      ###

      def set_Meta(value)
        set_input("Meta", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The password that corresponds to the specified Delicious account username.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Tag input for this Choreo. 
      # 
      # @param String - (optional, string) Return only bookmrks tagged with this keyword.
      ###

      def set_Tag(value)
        set_input("Tag", value)
      end
      #### 
      # Set the value of the ToDate input for this Choreo. 
      # 
      # @param String - (optional, date) Return only bookmarks posted on this date and earlier. Enter in YYYY-MM-DDThh:mm:ssZ format.
      ###

      def set_ToDate(value)
        set_input("ToDate", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) A valid Delicious account username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetAllBookmarks Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetAllBookmarksResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response returned from Delicious.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetAllBookmarks



  ##############################################################################
  #
  # GetBookmark
  #
  # Retrieves one or more bookmarked links posted on a single day.
  #
  ##############################################################################

  class GetBookmark < Choreography

    ####
    #  Create a new instance of the GetBookmark Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Delicious/GetBookmark")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetBookmarkInputSet
    ####
    def new_input_set()
      return GetBookmarkInputSet.new()
    end

    def make_result_set()
      return GetBookmarkResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetBookmarkResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetBookmark
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetBookmarkInputSet < Choreography::InputSet

      #### 
      # Set the value of the ChangeSignature input for this Choreo. 
      # 
      # @param String - (optional, string) Return only bookmarks with the URL MD5 signatures you enter, regardless of posting date. Separate multiple signatures with spaces.
      ###

      def set_ChangeSignature(value)
        set_input("ChangeSignature", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) Return only bookmarks posted on a date specified here. Enter in YYYY-MM-DDThh:mm:ssZ format. Defaults to the most recent date.
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Meta input for this Choreo. 
      # 
      # @param String - (optional, string) Specify "1" to include a change-detection signature for each item returned. Defaults to "0", or no meta attributes retained.
      ###

      def set_Meta(value)
        set_input("Meta", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The password that corresponds to the specified Delicious account username.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Tag input for this Choreo. 
      # 
      # @param String - (optional, string) Return only items tagged with the specified keyword. Separate multiple tags with spaces.
      ###

      def set_Tag(value)
        set_input("Tag", value)
      end
      #### 
      # Set the value of the URL input for this Choreo. 
      # 
      # @param String - (optional, string) Return only items with the specified URL, regardless of posting date.
      ###

      def set_URL(value)
        set_input("URL", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) A valid Delicious account username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetBookmark Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetBookmarkResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response returned from Delicious.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetBookmark



  ##############################################################################
  #
  # GetBookmarkDates
  #
  # Retrieve a list of dates, with the number of bookmarks posted for each date.
  #
  ##############################################################################

  class GetBookmarkDates < Choreography

    ####
    #  Create a new instance of the GetBookmarkDates Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Delicious/GetBookmarkDates")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetBookmarkDatesInputSet
    ####
    def new_input_set()
      return GetBookmarkDatesInputSet.new()
    end

    def make_result_set()
      return GetBookmarkDatesResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetBookmarkDatesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetBookmarkDates
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetBookmarkDatesInputSet < Choreography::InputSet

      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The password that corresponds to the specified Delicious account username.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Return only items tagged with the specified keyword.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) A valid Delicious account username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetBookmarkDates Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetBookmarkDatesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response returned from Delicious.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetBookmarkDates



  ##############################################################################
  #
  # GetChangeSignatures
  #
  # Retrieves a list of all bookmarks' change detection signatures.
  #
  ##############################################################################

  class GetChangeSignatures < Choreography

    ####
    #  Create a new instance of the GetChangeSignatures Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Delicious/GetChangeSignatures")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetChangeSignaturesInputSet
    ####
    def new_input_set()
      return GetChangeSignaturesInputSet.new()
    end

    def make_result_set()
      return GetChangeSignaturesResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetChangeSignaturesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetChangeSignatures
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetChangeSignaturesInputSet < Choreography::InputSet

      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The password that corresponds to the specified Delicious account username.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) A valid Delicious account username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetChangeSignatures Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetChangeSignaturesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response returned from Delicious.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetChangeSignatures



  ##############################################################################
  #
  # GetRecentBookmarks
  #
  # Retrieve a list of the most recently posted bookmarks.
  #
  ##############################################################################

  class GetRecentBookmarks < Choreography

    ####
    #  Create a new instance of the GetRecentBookmarks Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Delicious/GetRecentBookmarks")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetRecentBookmarksInputSet
    ####
    def new_input_set()
      return GetRecentBookmarksInputSet.new()
    end

    def make_result_set()
      return GetRecentBookmarksResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetRecentBookmarksResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetRecentBookmarks
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetRecentBookmarksInputSet < Choreography::InputSet

      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the number of bookmarks to retrieve, up the maximum of 100. The default is 15.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The password that corresponds to the specified Delicious account username.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Return only items tagged with the specified keyword.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) A valid Delicious account username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetRecentBookmarks Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetRecentBookmarksResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response returned from Delicious.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetRecentBookmarks



  ##############################################################################
  #
  # GetTags
  #
  # Retrieves a list of all tags and the number of bookmarks that use them.
  #
  ##############################################################################

  class GetTags < Choreography

    ####
    #  Create a new instance of the GetTags Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Delicious/GetTags")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetTagsInputSet
    ####
    def new_input_set()
      return GetTagsInputSet.new()
    end

    def make_result_set()
      return GetTagsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetTagsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetTags
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetTagsInputSet < Choreography::InputSet

      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The password that corresponds to the specified Delicious account username.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) A valid Delicious account username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetTags Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetTagsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response returned from Delicious.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetTags



  ##############################################################################
  #
  # RenameTag
  #
  # Renames a specified tag.
  #
  ##############################################################################

  class RenameTag < Choreography

    ####
    #  Create a new instance of the RenameTag Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Delicious/RenameTag")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RenameTagInputSet
    ####
    def new_input_set()
      return RenameTagInputSet.new()
    end

    def make_result_set()
      return RenameTagResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = RenameTagResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RenameTag
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RenameTagInputSet < Choreography::InputSet

      #### 
      # Set the value of the NewTag input for this Choreo. 
      # 
      # @param String - (required, string) The new tag name.
      ###

      def set_NewTag(value)
        set_input("NewTag", value)
      end
      #### 
      # Set the value of the OldTag input for this Choreo. 
      # 
      # @param String - (required, string) The existing tag to rename.
      ###

      def set_OldTag(value)
        set_input("OldTag", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The password that corresponds to the specified Delicious account username.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) A valid Delicious account username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RenameTag Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RenameTagResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response returned from Delicious.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RenameTag



  ##############################################################################
  #
  # SuggestTags
  #
  # Retrieves a list of suggested tags for a specifed URL.
  #
  ##############################################################################

  class SuggestTags < Choreography

    ####
    #  Create a new instance of the SuggestTags Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Delicious/SuggestTags")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SuggestTagsInputSet
    ####
    def new_input_set()
      return SuggestTagsInputSet.new()
    end

    def make_result_set()
      return SuggestTagsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = SuggestTagsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SuggestTags
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SuggestTagsInputSet < Choreography::InputSet

      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The password that corresponds to the specified Delicious account username.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the URL input for this Choreo. 
      # 
      # @param String - (required, string) The URL for which to provide tagging suggestions.
      ###

      def set_URL(value)
        set_input("URL", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) A valid Delicious account username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SuggestTags Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SuggestTagsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response returned from Delicious.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SuggestTags




end # module Delicious