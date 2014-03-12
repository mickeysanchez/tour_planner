require "temboo"

module RunKeeper




  module BackgroundActivities



    ##############################################################################
    #
    # DeleteActivity
    #
    # Removes an individual background activity from a user’s feed.
    #
    ##############################################################################

    class DeleteActivity < Choreography

      ####
      #  Create a new instance of the DeleteActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/BackgroundActivities/DeleteActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteActivityInputSet
      ####
      def new_input_set()
        return DeleteActivityInputSet.new()
      end

      def make_result_set()
        return DeleteActivityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ActivityID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from the RetrieveActivities Choreo (i.e. /backgroundActivities/-12985593-1347998400000).
        ###

        def set_ActivityID(value)
          set_input("ActivityID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string "true" when activities are successfully deleted.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteActivity



    ##############################################################################
    #
    # RecordActivity
    #
    # Records a newly-completed background activity, or begins recording an activity still in progress.
    #
    ##############################################################################

    class RecordActivity < Choreography

      ####
      #  Create a new instance of the RecordActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/BackgroundActivities/RecordActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RecordActivityInputSet
      ####
      def new_input_set()
        return RecordActivityInputSet.new()
      end

      def make_result_set()
        return RecordActivityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RecordActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RecordActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RecordActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the Activity input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the activity to create. See documentation for formatting examples.
        ###

        def set_Activity(value)
          set_input("Activity", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RecordActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RecordActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string 'true" when a new activity is created successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "URI" output from this Choreo execution
      	#
      	# @return String - (string) The activity uri that was created.
      	####
      	def get_URI()
      	  return @outputs["URI"]
      	end
      end

    end # class RecordActivity



    ##############################################################################
    #
    # RetrieveActivities
    #
    # Returns the feed for a user's background activities.
    #
    ##############################################################################

    class RetrieveActivities < Choreography

      ####
      #  Create a new instance of the RetrieveActivities Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/BackgroundActivities/RetrieveActivities")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveActivitiesInputSet
      ####
      def new_input_set()
        return RetrieveActivitiesInputSet.new()
      end

      def make_result_set()
        return RetrieveActivitiesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveActivitiesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveActivities
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveActivitiesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number entries to return per page. Defaults to 25.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveActivities Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveActivitiesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Next" output from this Choreo execution
      	#
      	# @return String - (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Next()
      	  return @outputs["Next"]
      	end
      	####
      	# Retrieve the value for the "Previous" output from this Choreo execution
      	#
      	# @return String - (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Previous()
      	  return @outputs["Previous"]
      	end
      end

    end # class RetrieveActivities



    ##############################################################################
    #
    # RetrieveActivity
    #
    # Retrieves a page from a user’s background activity feed.
    #
    ##############################################################################

    class RetrieveActivity < Choreography

      ####
      #  Create a new instance of the RetrieveActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/BackgroundActivities/RetrieveActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveActivityInputSet
      ####
      def new_input_set()
        return RetrieveActivityInputSet.new()
      end

      def make_result_set()
        return RetrieveActivityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ActivityID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from the RetrieveActivities Choreo (i.e. /backgroundActivities/-12985593-1347998400000).
        ###

        def set_ActivityID(value)
          set_input("ActivityID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveActivity



    ##############################################################################
    #
    # UpdateActivity
    #
    # Updates a background activity in a user's feed.
    #
    ##############################################################################

    class UpdateActivity < Choreography

      ####
      #  Create a new instance of the UpdateActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/BackgroundActivities/UpdateActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateActivityInputSet
      ####
      def new_input_set()
        return UpdateActivityInputSet.new()
      end

      def make_result_set()
        return UpdateActivityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the Activity input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the activity to update. See documentation for formatting examples.
        ###

        def set_Activity(value)
          set_input("Activity", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ActivityID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from the RetrieveActivities Choreo (i.e. /backgroundActivities/-12985593-1351022400000).
        ###

        def set_ActivityID(value)
          set_input("ActivityID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateActivity




  end # module BackgroundActivities

  module DiabetesMeasurements



    ##############################################################################
    #
    # CreateEntry
    #
    # Adds a diabetes measurement entry to a user's feed.
    #
    ##############################################################################

    class CreateEntry < Choreography

      ####
      #  Create a new instance of the CreateEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/DiabetesMeasurements/CreateEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateEntryInputSet
      ####
      def new_input_set()
        return CreateEntryInputSet.new()
      end

      def make_result_set()
        return CreateEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the Entry input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the diabetes measurement entry to create. See documentation for formatting examples.
        ###

        def set_Entry(value)
          set_input("Entry", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string 'true" when a new entry is created successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "URI" output from this Choreo execution
      	#
      	# @return String - (string) The entry uri that was created.
      	####
      	def get_URI()
      	  return @outputs["URI"]
      	end
      end

    end # class CreateEntry



    ##############################################################################
    #
    # DeleteEntry
    #
    # Removes an individual diabetes measurement entry from a user’s feed.
    #
    ##############################################################################

    class DeleteEntry < Choreography

      ####
      #  Create a new instance of the DeleteEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/DiabetesMeasurements/DeleteEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteEntryInputSet
      ####
      def new_input_set()
        return DeleteEntryInputSet.new()
      end

      def make_result_set()
        return DeleteEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the diabetes measurement entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /diabetes/12985593).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string "true" when an entry is deleted successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteEntry



    ##############################################################################
    #
    # RetrieveEntries
    #
    # Returns the feed for a user's diabetes measurements.
    #
    ##############################################################################

    class RetrieveEntries < Choreography

      ####
      #  Create a new instance of the RetrieveEntries Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/DiabetesMeasurements/RetrieveEntries")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveEntriesInputSet
      ####
      def new_input_set()
        return RetrieveEntriesInputSet.new()
      end

      def make_result_set()
        return RetrieveEntriesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveEntriesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveEntries
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveEntriesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number entries to return per page. Defaults to 25.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveEntries Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveEntriesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Next" output from this Choreo execution
      	#
      	# @return String - (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Next()
      	  return @outputs["Next"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Previous" output from this Choreo execution
      	#
      	# @return String - (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Previous()
      	  return @outputs["Previous"]
      	end
      end

    end # class RetrieveEntries



    ##############################################################################
    #
    # RetrieveEntry
    #
    # Retrieves a diabetes measurement entry from a user’s feed.
    #
    ##############################################################################

    class RetrieveEntry < Choreography

      ####
      #  Create a new instance of the RetrieveEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/DiabetesMeasurements/RetrieveEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveEntryInputSet
      ####
      def new_input_set()
        return RetrieveEntryInputSet.new()
      end

      def make_result_set()
        return RetrieveEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the diabetes measurement entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /diabetes/24220709).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveEntry



    ##############################################################################
    #
    # UpdateEntry
    #
    # Updates a diabetes measurement entry in a user’s feed.
    #
    ##############################################################################

    class UpdateEntry < Choreography

      ####
      #  Create a new instance of the UpdateEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/DiabetesMeasurements/UpdateEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateEntryInputSet
      ####
      def new_input_set()
        return UpdateEntryInputSet.new()
      end

      def make_result_set()
        return UpdateEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the Entry input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the fields to be updated in the diabetes entry. See documentation for formatting examples.
        ###

        def set_Entry(value)
          set_input("Entry", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the diabetes entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /diabetes/24085455).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateEntry




  end # module DiabetesMeasurements

  module FitnessActivities



    ##############################################################################
    #
    # DeleteActivity
    #
    # Removes an individual activity from a user’s feed.
    #
    ##############################################################################

    class DeleteActivity < Choreography

      ####
      #  Create a new instance of the DeleteActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/FitnessActivities/DeleteActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteActivityInputSet
      ####
      def new_input_set()
        return DeleteActivityInputSet.new()
      end

      def make_result_set()
        return DeleteActivityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ActivityID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from the RetrieveActivites Choreo (i.e. /fitnessActivities/125927913).
        ###

        def set_ActivityID(value)
          set_input("ActivityID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string "true" when an activity is deleted successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteActivity



    ##############################################################################
    #
    # RecordActivity
    #
    # Records a newly-completed activity, or begins recording an activity still in progress.
    #
    ##############################################################################

    class RecordActivity < Choreography

      ####
      #  Create a new instance of the RecordActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/FitnessActivities/RecordActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RecordActivityInputSet
      ####
      def new_input_set()
        return RecordActivityInputSet.new()
      end

      def make_result_set()
        return RecordActivityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RecordActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RecordActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RecordActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the Activity input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the activity to create. See documentation for formatting examples.
        ###

        def set_Activity(value)
          set_input("Activity", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RecordActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RecordActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "URI" output from this Choreo execution
      	#
      	# @return String - (string) The activity uri that was created.
      	####
      	def get_URI()
      	  return @outputs["URI"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string "true" when an activity is created successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RecordActivity



    ##############################################################################
    #
    # RetrieveActivites
    #
    # Returns a feed of a user's fitness activities.
    #
    ##############################################################################

    class RetrieveActivites < Choreography

      ####
      #  Create a new instance of the RetrieveActivites Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/FitnessActivities/RetrieveActivites")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveActivitesInputSet
      ####
      def new_input_set()
        return RetrieveActivitesInputSet.new()
      end

      def make_result_set()
        return RetrieveActivitesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveActivitesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveActivites
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveActivitesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number entries to return per page. Defaults to 25.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveActivites Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveActivitesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Next" output from this Choreo execution
      	#
      	# @return String - (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Next()
      	  return @outputs["Next"]
      	end
      	####
      	# Retrieve the value for the "Previous" output from this Choreo execution
      	#
      	# @return String - (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Previous()
      	  return @outputs["Previous"]
      	end
      end

    end # class RetrieveActivites



    ##############################################################################
    #
    # RetrieveActivity
    #
    # Retrieves a page of a user’s activity history or information for a past activity.
    #
    ##############################################################################

    class RetrieveActivity < Choreography

      ####
      #  Create a new instance of the RetrieveActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/FitnessActivities/RetrieveActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveActivityInputSet
      ####
      def new_input_set()
        return RetrieveActivityInputSet.new()
      end

      def make_result_set()
        return RetrieveActivityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ActivityID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from the RetrieveActivites Choreo (i.e. /fitnessActivities/125927913).
        ###

        def set_ActivityID(value)
          set_input("ActivityID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveActivity



    ##############################################################################
    #
    # UpdateActivity
    #
    # Updates a past activity.
    #
    ##############################################################################

    class UpdateActivity < Choreography

      ####
      #  Create a new instance of the UpdateActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/FitnessActivities/UpdateActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateActivityInputSet
      ####
      def new_input_set()
        return UpdateActivityInputSet.new()
      end

      def make_result_set()
        return UpdateActivityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the Activity input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the activity to update. See documentation for formatting examples.
        ###

        def set_Activity(value)
          set_input("Activity", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ActivityID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from the RetrieveActivites Choreo (i.e. /fitnessActivities/125927913).
        ###

        def set_ActivityID(value)
          set_input("ActivityID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateActivity




  end # module FitnessActivities

  module Friends



    ##############################################################################
    #
    # RetrieveFriends
    #
    # Returns the friends in a user's network.
    #
    ##############################################################################

    class RetrieveFriends < Choreography

      ####
      #  Create a new instance of the RetrieveFriends Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Friends/RetrieveFriends")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveFriendsInputSet
      ####
      def new_input_set()
        return RetrieveFriendsInputSet.new()
      end

      def make_result_set()
        return RetrieveFriendsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveFriendsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveFriends
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveFriendsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number entries to return per page. Defaults to 25.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveFriends Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveFriendsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Previous" output from this Choreo execution
      	#
      	# @return String - (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Previous()
      	  return @outputs["Previous"]
      	end
      	####
      	# Retrieve the value for the "Next" output from this Choreo execution
      	#
      	# @return String - (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Next()
      	  return @outputs["Next"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveFriends




  end # module Friends

  module GeneralMeasurements



    ##############################################################################
    #
    # CreateEntry
    #
    # Adds a body measurement entry to a user's feed.
    #
    ##############################################################################

    class CreateEntry < Choreography

      ####
      #  Create a new instance of the CreateEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/GeneralMeasurements/CreateEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateEntryInputSet
      ####
      def new_input_set()
        return CreateEntryInputSet.new()
      end

      def make_result_set()
        return CreateEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the Entry input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the body measurement entry to create. See documentation for formatting examples.
        ###

        def set_Entry(value)
          set_input("Entry", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string 'true" when a new entry is created successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "URI" output from this Choreo execution
      	#
      	# @return String - (string) The entry uri that was created.
      	####
      	def get_URI()
      	  return @outputs["URI"]
      	end
      end

    end # class CreateEntry



    ##############################################################################
    #
    # DeleteEntry
    #
    # Removes an individual body measurement entry from a user’s feed.
    #
    ##############################################################################

    class DeleteEntry < Choreography

      ####
      #  Create a new instance of the DeleteEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/GeneralMeasurements/DeleteEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteEntryInputSet
      ####
      def new_input_set()
        return DeleteEntryInputSet.new()
      end

      def make_result_set()
        return DeleteEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the body measurement entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /generalMeasurements/-12985593-1351036800000).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string "true" when an entry is deleted successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteEntry



    ##############################################################################
    #
    # RetrieveEntries
    #
    # Returns the feed for a user's general body measurements.
    #
    ##############################################################################

    class RetrieveEntries < Choreography

      ####
      #  Create a new instance of the RetrieveEntries Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/GeneralMeasurements/RetrieveEntries")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveEntriesInputSet
      ####
      def new_input_set()
        return RetrieveEntriesInputSet.new()
      end

      def make_result_set()
        return RetrieveEntriesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveEntriesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveEntries
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveEntriesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number entries to return per page. Defaults to 25.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveEntries Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveEntriesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Previous" output from this Choreo execution
      	#
      	# @return String - (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Previous()
      	  return @outputs["Previous"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Next" output from this Choreo execution
      	#
      	# @return String - (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Next()
      	  return @outputs["Next"]
      	end
      end

    end # class RetrieveEntries



    ##############################################################################
    #
    # RetrieveEntry
    #
    # Retrieves a body measurement entry from a user’s feed.
    #
    ##############################################################################

    class RetrieveEntry < Choreography

      ####
      #  Create a new instance of the RetrieveEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/GeneralMeasurements/RetrieveEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveEntryInputSet
      ####
      def new_input_set()
        return RetrieveEntryInputSet.new()
      end

      def make_result_set()
        return RetrieveEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the body measurement entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /generalMeasurements/24220709).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveEntry



    ##############################################################################
    #
    # UpdateEntry
    #
    # Updates a body measurement entry in a user’s feed.
    #
    ##############################################################################

    class UpdateEntry < Choreography

      ####
      #  Create a new instance of the UpdateEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/GeneralMeasurements/UpdateEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateEntryInputSet
      ####
      def new_input_set()
        return UpdateEntryInputSet.new()
      end

      def make_result_set()
        return UpdateEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the Entry input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the fields to be updated in the body measurement entry. See documentation for formatting examples.
        ###

        def set_Entry(value)
          set_input("Entry", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the body measurement entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /generalMeasurements/24085455).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateEntry




  end # module GeneralMeasurements

  module Nutrition



    ##############################################################################
    #
    # CreateEntry
    #
    # Adds a nutrition entry to a user's feed.
    #
    ##############################################################################

    class CreateEntry < Choreography

      ####
      #  Create a new instance of the CreateEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Nutrition/CreateEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateEntryInputSet
      ####
      def new_input_set()
        return CreateEntryInputSet.new()
      end

      def make_result_set()
        return CreateEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the Entry input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the entry to create. See documentation for formatting examples.
        ###

        def set_Entry(value)
          set_input("Entry", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "URI" output from this Choreo execution
      	#
      	# @return String - (string) The entry uri that was created.
      	####
      	def get_URI()
      	  return @outputs["URI"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string 'true" when a new entry is created successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateEntry



    ##############################################################################
    #
    # DeleteEntry
    #
    # Removes an individual nutrition entry from a user’s feed.
    #
    ##############################################################################

    class DeleteEntry < Choreography

      ####
      #  Create a new instance of the DeleteEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Nutrition/DeleteEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteEntryInputSet
      ####
      def new_input_set()
        return DeleteEntryInputSet.new()
      end

      def make_result_set()
        return DeleteEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the nutrition entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /nutrition/-12985593-1350864000000).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string "true" when an entry is deleted successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteEntry



    ##############################################################################
    #
    # RetrieveEntries
    #
    # Returns the feed for a user's nutrition entries.
    #
    ##############################################################################

    class RetrieveEntries < Choreography

      ####
      #  Create a new instance of the RetrieveEntries Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Nutrition/RetrieveEntries")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveEntriesInputSet
      ####
      def new_input_set()
        return RetrieveEntriesInputSet.new()
      end

      def make_result_set()
        return RetrieveEntriesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveEntriesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveEntries
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveEntriesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number entries to return per page. Defaults to 25.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveEntries Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveEntriesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Next" output from this Choreo execution
      	#
      	# @return String - (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Next()
      	  return @outputs["Next"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Previous" output from this Choreo execution
      	#
      	# @return String - (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Previous()
      	  return @outputs["Previous"]
      	end
      end

    end # class RetrieveEntries



    ##############################################################################
    #
    # RetrieveEntry
    #
    # Retrieves a nutrition entry from a user’s feed.
    #
    ##############################################################################

    class RetrieveEntry < Choreography

      ####
      #  Create a new instance of the RetrieveEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Nutrition/RetrieveEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveEntryInputSet
      ####
      def new_input_set()
        return RetrieveEntryInputSet.new()
      end

      def make_result_set()
        return RetrieveEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the nutrition entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /nutrition/-12985593-1350950400000).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveEntry



    ##############################################################################
    #
    # UpdateEntry
    #
    # Updates a nutrition entry in a user’s feed.
    #
    ##############################################################################

    class UpdateEntry < Choreography

      ####
      #  Create a new instance of the UpdateEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Nutrition/UpdateEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateEntryInputSet
      ####
      def new_input_set()
        return UpdateEntryInputSet.new()
      end

      def make_result_set()
        return UpdateEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the Entry input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the fields to be updated in the sleep entry. See documentation for formatting examples.
        ###

        def set_Entry(value)
          set_input("Entry", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the nutrition entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /nutrition/-12985593-1350950400000).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateEntry




  end # module Nutrition

  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a RunKeeper access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/OAuth/FinalizeOAuth")
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
        # @param String - (required, string) The Client ID provided by RunKeeper after registering your application.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by RunKeeper after registering your application.
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
        super(session, "/Library/RunKeeper/OAuth/InitializeOAuth")
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
        # @param String - (required, string) The Client ID provided by RunKeeper after registering your application.
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
      	# Retrieve the value for the "CallbackID" output from this Choreo execution
      	#
      	# @return String - (string) An ID used to retrieve the callback data that Temboo stores once your application's user authorizes.
      	####
      	def get_CallbackID()
      	  return @outputs["CallbackID"]
      	end
      	####
      	# Retrieve the value for the "AuthorizationURL" output from this Choreo execution
      	#
      	# @return String - (string) The authorization URL that the application's user needs to go to in order to grant access to your application.
      	####
      	def get_AuthorizationURL()
      	  return @outputs["AuthorizationURL"]
      	end
      end

    end # class InitializeOAuth




  end # module OAuth

  module PersonalRecords



    ##############################################################################
    #
    # RetrieveRecords
    #
    # Returns the feed for a user's personal records.
    #
    ##############################################################################

    class RetrieveRecords < Choreography

      ####
      #  Create a new instance of the RetrieveRecords Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/PersonalRecords/RetrieveRecords")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveRecordsInputSet
      ####
      def new_input_set()
        return RetrieveRecordsInputSet.new()
      end

      def make_result_set()
        return RetrieveRecordsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveRecordsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveRecords
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveRecordsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveRecords Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveRecordsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveRecords




  end # module PersonalRecords

  module Profile



    ##############################################################################
    #
    # RetrieveProfile
    #
    # Returns a user's profile information including the user’s identity, geographical location, and fitness goals.
    #
    ##############################################################################

    class RetrieveProfile < Choreography

      ####
      #  Create a new instance of the RetrieveProfile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Profile/RetrieveProfile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveProfileInputSet
      ####
      def new_input_set()
        return RetrieveProfileInputSet.new()
      end

      def make_result_set()
        return RetrieveProfileResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveProfileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveProfile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveProfileInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveProfile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveProfileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveProfile



    ##############################################################################
    #
    # UpdateProfile
    #
    # Update's a user's profile.
    #
    ##############################################################################

    class UpdateProfile < Choreography

      ####
      #  Create a new instance of the UpdateProfile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Profile/UpdateProfile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateProfileInputSet
      ####
      def new_input_set()
        return UpdateProfileInputSet.new()
      end

      def make_result_set()
        return UpdateProfileResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateProfileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateProfile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateProfileInputSet < Choreography::InputSet

        #### 
        # Set the value of the Profile input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the profile fields to update. See documentation for formatting examples.
        ###

        def set_Profile(value)
          set_input("Profile", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateProfile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateProfileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateProfile




  end # module Profile

  module Settings



    ##############################################################################
    #
    # RetrieveSettings
    #
    # Retrieves a user’s settings including a user's sharing and display preferences.
    #
    ##############################################################################

    class RetrieveSettings < Choreography

      ####
      #  Create a new instance of the RetrieveSettings Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Settings/RetrieveSettings")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveSettingsInputSet
      ####
      def new_input_set()
        return RetrieveSettingsInputSet.new()
      end

      def make_result_set()
        return RetrieveSettingsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveSettingsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveSettings
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveSettingsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveSettings Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveSettingsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveSettings



    ##############################################################################
    #
    # UpdateSettings
    #
    # Updates a user’s settings.
    #
    ##############################################################################

    class UpdateSettings < Choreography

      ####
      #  Create a new instance of the UpdateSettings Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Settings/UpdateSettings")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateSettingsInputSet
      ####
      def new_input_set()
        return UpdateSettingsInputSet.new()
      end

      def make_result_set()
        return UpdateSettingsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateSettingsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateSettings
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateSettingsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Settings input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the settings to update. See documentation for formatting examples.
        ###

        def set_Settings(value)
          set_input("Settings", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateSettings Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateSettingsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateSettings




  end # module Settings

  module Sleep



    ##############################################################################
    #
    # CreateEntry
    #
    # Adds a new sleep activity to a user's feed.
    #
    ##############################################################################

    class CreateEntry < Choreography

      ####
      #  Create a new instance of the CreateEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Sleep/CreateEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateEntryInputSet
      ####
      def new_input_set()
        return CreateEntryInputSet.new()
      end

      def make_result_set()
        return CreateEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the Entry input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the entry to create. See documentation for formatting examples.
        ###

        def set_Entry(value)
          set_input("Entry", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "URI" output from this Choreo execution
      	#
      	# @return String - (string) The entry uri that was created.
      	####
      	def get_URI()
      	  return @outputs["URI"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string 'true" when a new entry is created successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateEntry



    ##############################################################################
    #
    # DeleteEntry
    #
    # Removes an individual sleep entry from a user’s feed.
    #
    ##############################################################################

    class DeleteEntry < Choreography

      ####
      #  Create a new instance of the DeleteEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Sleep/DeleteEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteEntryInputSet
      ####
      def new_input_set()
        return DeleteEntryInputSet.new()
      end

      def make_result_set()
        return DeleteEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the sleep entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /sleep/-12985593-1351022400000).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string "true" when an entry is deleted successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteEntry



    ##############################################################################
    #
    # RetrieveEntries
    #
    # Returns the feed for a user's sleep entries.
    #
    ##############################################################################

    class RetrieveEntries < Choreography

      ####
      #  Create a new instance of the RetrieveEntries Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Sleep/RetrieveEntries")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveEntriesInputSet
      ####
      def new_input_set()
        return RetrieveEntriesInputSet.new()
      end

      def make_result_set()
        return RetrieveEntriesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveEntriesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveEntries
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveEntriesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number entries to return per page. Defaults to 25.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveEntries Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveEntriesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Next" output from this Choreo execution
      	#
      	# @return String - (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Next()
      	  return @outputs["Next"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Previous" output from this Choreo execution
      	#
      	# @return String - (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Previous()
      	  return @outputs["Previous"]
      	end
      end

    end # class RetrieveEntries



    ##############################################################################
    #
    # RetrieveEntry
    #
    # Retrieves a sleep entry from a user’s feed.
    #
    ##############################################################################

    class RetrieveEntry < Choreography

      ####
      #  Create a new instance of the RetrieveEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Sleep/RetrieveEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveEntryInputSet
      ####
      def new_input_set()
        return RetrieveEntryInputSet.new()
      end

      def make_result_set()
        return RetrieveEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the sleep entry, or you can pass the full uri for the entry as returned from the RetrieveEntries response (i.e. /sleep/-12985593-1347998400000).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveEntry



    ##############################################################################
    #
    # UpdateEntry
    #
    # Updates a sleep entry in a user’s feed.
    #
    ##############################################################################

    class UpdateEntry < Choreography

      ####
      #  Create a new instance of the UpdateEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Sleep/UpdateEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateEntryInputSet
      ####
      def new_input_set()
        return UpdateEntryInputSet.new()
      end

      def make_result_set()
        return UpdateEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the Entry input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the fields to be updated in the sleep entry. See documentation for formatting examples.
        ###

        def set_Entry(value)
          set_input("Entry", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the sleep entry, or you can pass the full uri for the entry as returned from the RetrieveEntries response (i.e. /sleep/-12985593-1347998400000).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateEntry




  end # module Sleep

  module StrengthTrainingActivities



    ##############################################################################
    #
    # DeleteActivity
    #
    # Removes an individual strength training activity from a user’s feed.
    #
    ##############################################################################

    class DeleteActivity < Choreography

      ####
      #  Create a new instance of the DeleteActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/StrengthTrainingActivities/DeleteActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteActivityInputSet
      ####
      def new_input_set()
        return DeleteActivityInputSet.new()
      end

      def make_result_set()
        return DeleteActivityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ActivityID input for this Choreo. 
        # 
        # @param Integer - (required, integer) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from RetrieveActivities response (i.e. /strengthTrainingActivities/125927913).
        ###

        def set_ActivityID(value)
          set_input("ActivityID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string "true" when an activity is deleted successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteActivity



    ##############################################################################
    #
    # RecordActivity
    #
    # Records a newly-completed strength training activity, or begins recording an activity still in progress.
    #
    ##############################################################################

    class RecordActivity < Choreography

      ####
      #  Create a new instance of the RecordActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/StrengthTrainingActivities/RecordActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RecordActivityInputSet
      ####
      def new_input_set()
        return RecordActivityInputSet.new()
      end

      def make_result_set()
        return RecordActivityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RecordActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RecordActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RecordActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the Activity input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the activity to create. See documentation for formatting examples.
        ###

        def set_Activity(value)
          set_input("Activity", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RecordActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RecordActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "URI" output from this Choreo execution
      	#
      	# @return String - (string) The activity uri that was created.
      	####
      	def get_URI()
      	  return @outputs["URI"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string "true" when an activity is created successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RecordActivity



    ##############################################################################
    #
    # RetrieveActivities
    #
    # Returns the feed for a user's strength training activities.
    #
    ##############################################################################

    class RetrieveActivities < Choreography

      ####
      #  Create a new instance of the RetrieveActivities Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/StrengthTrainingActivities/RetrieveActivities")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveActivitiesInputSet
      ####
      def new_input_set()
        return RetrieveActivitiesInputSet.new()
      end

      def make_result_set()
        return RetrieveActivitiesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveActivitiesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveActivities
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveActivitiesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number entries to return per page. Defaults to 25.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveActivities Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveActivitiesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Previous" output from this Choreo execution
      	#
      	# @return String - (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Previous()
      	  return @outputs["Previous"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Next" output from this Choreo execution
      	#
      	# @return String - (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Next()
      	  return @outputs["Next"]
      	end
      end

    end # class RetrieveActivities



    ##############################################################################
    #
    # RetrieveActivity
    #
    # Retrieves a page from a user’s strength training activity history.
    #
    ##############################################################################

    class RetrieveActivity < Choreography

      ####
      #  Create a new instance of the RetrieveActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/StrengthTrainingActivities/RetrieveActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveActivityInputSet
      ####
      def new_input_set()
        return RetrieveActivityInputSet.new()
      end

      def make_result_set()
        return RetrieveActivityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ActivityID input for this Choreo. 
        # 
        # @param Integer - (required, integer) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from RetrieveActivities response (i.e. /strengthTrainingActivities/125927913).
        ###

        def set_ActivityID(value)
          set_input("ActivityID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveActivity



    ##############################################################################
    #
    # UpdateActivity
    #
    # Updates a past strength training activity.
    #
    ##############################################################################

    class UpdateActivity < Choreography

      ####
      #  Create a new instance of the UpdateActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/StrengthTrainingActivities/UpdateActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateActivityInputSet
      ####
      def new_input_set()
        return UpdateActivityInputSet.new()
      end

      def make_result_set()
        return UpdateActivityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the Activity input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the activity to update. See documentation for formatting examples.
        ###

        def set_Activity(value)
          set_input("Activity", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ActivityID input for this Choreo. 
        # 
        # @param Integer - (required, integer) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from RetrieveActivities response (i.e. /strengthTrainingActivities/125927913).
        ###

        def set_ActivityID(value)
          set_input("ActivityID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateActivity




  end # module StrengthTrainingActivities

  module Users



    ##############################################################################
    #
    # RetrieveUserInfo
    #
    # Returns the available resources for a specific user and the URIs for accessing them. 
    #
    ##############################################################################

    class RetrieveUserInfo < Choreography

      ####
      #  Create a new instance of the RetrieveUserInfo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Users/RetrieveUserInfo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveUserInfoInputSet
      ####
      def new_input_set()
        return RetrieveUserInfoInputSet.new()
      end

      def make_result_set()
        return RetrieveUserInfoResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveUserInfoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveUserInfo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveUserInfoInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveUserInfo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveUserInfoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveUserInfo




  end # module Users

  module Weight



    ##############################################################################
    #
    # CreateEntry
    #
    # Adds a weight entry to a user's feed.
    #
    ##############################################################################

    class CreateEntry < Choreography

      ####
      #  Create a new instance of the CreateEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Weight/CreateEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateEntryInputSet
      ####
      def new_input_set()
        return CreateEntryInputSet.new()
      end

      def make_result_set()
        return CreateEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the Entry input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the entry to create. See documentation for formatting examples.
        ###

        def set_Entry(value)
          set_input("Entry", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string 'true" when a new entry is created successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "URI" output from this Choreo execution
      	#
      	# @return String - (string) The entry uri that was created.
      	####
      	def get_URI()
      	  return @outputs["URI"]
      	end
      end

    end # class CreateEntry



    ##############################################################################
    #
    # DeleteEntry
    #
    # Removes an individual weight entry from a user’s feed.
    #
    ##############################################################################

    class DeleteEntry < Choreography

      ####
      #  Create a new instance of the DeleteEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Weight/DeleteEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteEntryInputSet
      ####
      def new_input_set()
        return DeleteEntryInputSet.new()
      end

      def make_result_set()
        return DeleteEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the weight entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /weight/20775350).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) Contains the string "true" when an entry is deleted successfully.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteEntry



    ##############################################################################
    #
    # RetrieveEntries
    #
    # Returns the feed for a user's weight entries.
    #
    ##############################################################################

    class RetrieveEntries < Choreography

      ####
      #  Create a new instance of the RetrieveEntries Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Weight/RetrieveEntries")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveEntriesInputSet
      ####
      def new_input_set()
        return RetrieveEntriesInputSet.new()
      end

      def make_result_set()
        return RetrieveEntriesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveEntriesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveEntries
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveEntriesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number entries to return per page. Defaults to 25.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveEntries Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveEntriesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Previous" output from this Choreo execution
      	#
      	# @return String - (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Previous()
      	  return @outputs["Previous"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Next" output from this Choreo execution
      	#
      	# @return String - (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
      	####
      	def get_Next()
      	  return @outputs["Next"]
      	end
      end

    end # class RetrieveEntries



    ##############################################################################
    #
    # RetrieveEntry
    #
    # Retrieves a weight entry from a user’s feed.
    #
    ##############################################################################

    class RetrieveEntry < Choreography

      ####
      #  Create a new instance of the RetrieveEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Weight/RetrieveEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveEntryInputSet
      ####
      def new_input_set()
        return RetrieveEntryInputSet.new()
      end

      def make_result_set()
        return RetrieveEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the weight entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /weight/24085455).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveEntry



    ##############################################################################
    #
    # UpdateEntry
    #
    # Updates a weight entry in a user’s feed.
    #
    ##############################################################################

    class UpdateEntry < Choreography

      ####
      #  Create a new instance of the UpdateEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/RunKeeper/Weight/UpdateEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateEntryInputSet
      ####
      def new_input_set()
        return UpdateEntryInputSet.new()
      end

      def make_result_set()
        return UpdateEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the Entry input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the key/value pairs for the fields to be updated in the weight entry. See documentation for formatting examples.
        ###

        def set_Entry(value)
          set_input("Entry", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved after the final step in the OAuth2 process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param String - (required, string) This can be the individual id of the weight entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /weight/24085455).
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from RunKeeper.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateEntry




  end # module Weight

end # module RunKeeper