require "temboo"

module TMB_37Signals




  module Basecamp



    ##############################################################################
    #
    # CompleteEntry
    #
    # Marks a specific calendar entry as completed.
    #
    ##############################################################################

    class CompleteEntry < Choreography

      ####
      #  Create a new instance of the CompleteEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/CompleteEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CompleteEntryInputSet
      ####
      def new_input_set()
        return CompleteEntryInputSet.new()
      end

      def make_result_set()
        return CompleteEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CompleteEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CompleteEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CompleteEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the calendar entry to mark as completed.
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project with the calendar entry to mark as completed.
        ###

        def set_ProjectID(value)
          set_input("ProjectID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CompleteEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CompleteEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response returned from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CompleteEntry



    ##############################################################################
    #
    # CompleteItem
    #
    # Marks a single, specified item in a To-do list as complete.
    #
    ##############################################################################

    class CompleteItem < Choreography

      ####
      #  Create a new instance of the CompleteItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/CompleteItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CompleteItemInputSet
      ####
      def new_input_set()
        return CompleteItemInputSet.new()
      end

      def make_result_set()
        return CompleteItemResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CompleteItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CompleteItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CompleteItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the item to mark as complete.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CompleteItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CompleteItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - There is no structrued response from complete item requests.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CompleteItem



    ##############################################################################
    #
    # CreateEntry
    #
    # Creates a new calendar entry in a specified project.
    #
    ##############################################################################

    class CreateEntry < Choreography

      ####
      #  Create a new instance of the CreateEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/CreateEntry")
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
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (required, date) The date the entry ends, in YYYY-MM-DD format. This is the same as StartDate for one-day entries.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project in which to create the new entry.
        ###

        def set_ProjectID(value)
          set_input("ProjectID", value)
        end
        #### 
        # Set the value of the ResponsibleParty input for this Choreo. 
        # 
        # @param String - (optional, any) The user ID or company ID (preceded by a “c”, as in "c1234") to assign the entry to. Applies only to "Milestone" entry types.
        ###

        def set_ResponsibleParty(value)
          set_input("ResponsibleParty", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (required, date) The date the entry starts, in YYYY-MM-DD format.
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (required, string) The title for the calendar entry to create.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (required, string) The type of calendar entry to create, either "Milestone" or "CalendarEvent" (the default).
        ###

        def set_Type(value)
          set_input("Type", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
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
      	# @return String - (xml) The response returned from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateEntry



    ##############################################################################
    #
    # CreateItem
    #
    # Creates a new item for a specified To-do list.
    #
    ##############################################################################

    class CreateItem < Choreography

      ####
      #  Create a new instance of the CreateItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/CreateItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateItemInputSet
      ####
      def new_input_set()
        return CreateItemInputSet.new()
      end

      def make_result_set()
        return CreateItemResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Content input for this Choreo. 
        # 
        # @param String - (required, string) The text of the item to create.
        ###

        def set_Content(value)
          set_input("Content", value)
        end
        #### 
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the list in which to create the new item.
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ResponsibleParty input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The user ID or company ID  (preceded by a “c”, as in "c1234") to assign the item to. Defaults to unassigned If left blank.
        ###

        def set_ResponsibleParty(value)
          set_input("ResponsibleParty", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - No structured response is returned from Basecamp for new item requests.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateItem



    ##############################################################################
    #
    # CreateList
    #
    # Creates a new To-do list for a specified project.
    #
    ##############################################################################

    class CreateList < Choreography

      ####
      #  Create a new instance of the CreateList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/CreateList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateListInputSet
      ####
      def new_input_set()
        return CreateListInputSet.new()
      end

      def make_result_set()
        return CreateListResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateListInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) The description of the list to create.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the MilestoneID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The ID of an existing milestone to include with the new list.
        ###

        def set_MilestoneID(value)
          set_input("MilestoneID", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the list to create.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project in which you're creating the new list.
        ###

        def set_ProjectID(value)
          set_input("ProjectID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - No response is returned from Basecamp for update requests.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateList



    ##############################################################################
    #
    # CreateMessage
    #
    # Creates a new message under a specified project.
    #
    ##############################################################################

    class CreateMessage < Choreography

      ####
      #  Create a new instance of the CreateMessage Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/CreateMessage")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateMessageInputSet
      ####
      def new_input_set()
        return CreateMessageInputSet.new()
      end

      def make_result_set()
        return CreateMessageResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateMessageResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateMessage
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateMessageInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Body input for this Choreo. 
        # 
        # @param String - (required, string) The body of the message you're creating.
        ###

        def set_Body(value)
          set_input("Body", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the project that the message will be created under.
        ###

        def set_ProjectId(value)
          set_input("ProjectId", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (required, string) The title of the message you'e creating.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) Your Basecamp username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateMessage Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateMessageResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Basecamp. Note that a successful request returns a null result in this output variable.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateMessage



    ##############################################################################
    #
    # CreateProject
    #
    # Creates a new Basecamp project.
    #
    ##############################################################################

    class CreateProject < Choreography

      ####
      #  Create a new instance of the CreateProject Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/CreateProject")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateProjectInputSet
      ####
      def new_input_set()
        return CreateProjectInputSet.new()
      end

      def make_result_set()
        return CreateProjectResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateProjectResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateProject
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateProjectInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Basecamp password. You can use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectName input for this Choreo. 
        # 
        # @param String - (required, string) The name for the project you want to create.
        ###

        def set_ProjectName(value)
          set_input("ProjectName", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) Your Basecamp username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateProject Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateProjectResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Basecamp. Note that a successful request returns a null result in this output variable.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateProject



    ##############################################################################
    #
    # CurrentPerson
    #
    # Retrieves information on the person who's credentials are specified.
    #
    ##############################################################################

    class CurrentPerson < Choreography

      ####
      #  Create a new instance of the CurrentPerson Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/CurrentPerson")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CurrentPersonInputSet
      ####
      def new_input_set()
        return CurrentPersonInputSet.new()
      end

      def make_result_set()
        return CurrentPersonResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CurrentPersonResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CurrentPerson
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CurrentPersonInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) Your Basecamp username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CurrentPerson Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CurrentPersonResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CurrentPerson



    ##############################################################################
    #
    # DeleteEntry
    #
    # Deletes a specific calendar entry in a project you specify.
    #
    ##############################################################################

    class DeleteEntry < Choreography

      ####
      #  Create a new instance of the DeleteEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/DeleteEntry")
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
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the calendar entry to delete.
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project from which to delete the calendar entry.
        ###

        def set_ProjectID(value)
          set_input("ProjectID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
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
      	# @return String - Basecamp returns no content for delete entry requests.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteEntry



    ##############################################################################
    #
    # DeleteItem
    #
    # Deletes a specified item from a To-do list.
    #
    ##############################################################################

    class DeleteItem < Choreography

      ####
      #  Create a new instance of the DeleteItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/DeleteItem")
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
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the list item to delete.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
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
      	# @return String - No structured response is returned for delete item requests.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteItem



    ##############################################################################
    #
    # DeleteList
    #
    # Deletes a specified To-do list from a project
    #
    ##############################################################################

    class DeleteList < Choreography

      ####
      #  Create a new instance of the DeleteList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/DeleteList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteListInputSet
      ####
      def new_input_set()
        return DeleteListInputSet.new()
      end

      def make_result_set()
        return DeleteListResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteListInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the To-Do list to delete.
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - No structured response is returned for delete list requests.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteList



    ##############################################################################
    #
    # GetAllEntries
    #
    # Retrieves all calendar entries from a specified project.
    #
    ##############################################################################

    class GetAllEntries < Choreography

      ####
      #  Create a new instance of the GetAllEntries Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetAllEntries")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetAllEntriesInputSet
      ####
      def new_input_set()
        return GetAllEntriesInputSet.new()
      end

      def make_result_set()
        return GetAllEntriesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetAllEntriesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetAllEntries
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetAllEntriesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project from which to retrieve all calendar entries.
        ###

        def set_ProjectID(value)
          set_input("ProjectID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetAllEntries Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetAllEntriesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response returned from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetAllEntries



    ##############################################################################
    #
    # GetAllEvents
    #
    # Retrieves all calendar events from a specified project.
    #
    ##############################################################################

    class GetAllEvents < Choreography

      ####
      #  Create a new instance of the GetAllEvents Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetAllEvents")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetAllEventsInputSet
      ####
      def new_input_set()
        return GetAllEventsInputSet.new()
      end

      def make_result_set()
        return GetAllEventsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetAllEventsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetAllEvents
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetAllEventsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project from which to retrieve all calendar events.
        ###

        def set_ProjectID(value)
          set_input("ProjectID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetAllEvents Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetAllEventsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response returned from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetAllEvents



    ##############################################################################
    #
    # GetAllListItems
    #
    # Retrieves all items in a specified To-do list.
    #
    ##############################################################################

    class GetAllListItems < Choreography

      ####
      #  Create a new instance of the GetAllListItems Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetAllListItems")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetAllListItemsInputSet
      ####
      def new_input_set()
        return GetAllListItemsInputSet.new()
      end

      def make_result_set()
        return GetAllListItemsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetAllListItemsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetAllListItems
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetAllListItemsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the list for which you're returning items.
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetAllListItems Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetAllListItemsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response returned from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetAllListItems



    ##############################################################################
    #
    # GetAllLists
    #
    # Retrieves all To-do lists assigned to a specified user or company.
    #
    ##############################################################################

    class GetAllLists < Choreography

      ####
      #  Create a new instance of the GetAllLists Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetAllLists")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetAllListsInputSet
      ####
      def new_input_set()
        return GetAllListsInputSet.new()
      end

      def make_result_set()
        return GetAllListsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetAllListsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetAllLists
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetAllListsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ResponsibleParty input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The user ID or company ID  (preceded by a “c”, as in "c1234") the To-Do lists are assigned to. Defaults to unassigned To-Dos If left blank.
        ###

        def set_ResponsibleParty(value)
          set_input("ResponsibleParty", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetAllLists Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetAllListsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response returned from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetAllLists



    ##############################################################################
    #
    # GetAllMilestones
    #
    # Retrieves all milestones for a specified project.
    #
    ##############################################################################

    class GetAllMilestones < Choreography

      ####
      #  Create a new instance of the GetAllMilestones Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetAllMilestones")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetAllMilestonesInputSet
      ####
      def new_input_set()
        return GetAllMilestonesInputSet.new()
      end

      def make_result_set()
        return GetAllMilestonesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetAllMilestonesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetAllMilestones
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetAllMilestonesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project from which to retrieve all milestones.
        ###

        def set_ProjectID(value)
          set_input("ProjectID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetAllMilestones Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetAllMilestonesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response returned from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetAllMilestones



    ##############################################################################
    #
    # GetEntry
    #
    # Retrieves a single calendar entry in a specified project.
    #
    ##############################################################################

    class GetEntry < Choreography

      ####
      #  Create a new instance of the GetEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetEntryInputSet
      ####
      def new_input_set()
        return GetEntryInputSet.new()
      end

      def make_result_set()
        return GetEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the calendar entry to retrieve.
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project from which to retrieve the calendar entry.
        ###

        def set_ProjectID(value)
          set_input("ProjectID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response returned from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetEntry



    ##############################################################################
    #
    # GetFiles
    #
    # Retrieves a list of files (attachments) in a specified project.
    #
    ##############################################################################

    class GetFiles < Choreography

      ####
      #  Create a new instance of the GetFiles Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetFiles")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFilesInputSet
      ####
      def new_input_set()
        return GetFilesInputSet.new()
      end

      def make_result_set()
        return GetFilesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetFilesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFiles
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFilesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project that contains the attachments to retrieve.
        ###

        def set_ProjectID(value)
          set_input("ProjectID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFiles Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFilesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response returned from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFiles



    ##############################################################################
    #
    # GetItem
    #
    # Retrieves a single, specified item in a To-do list.
    #
    ##############################################################################

    class GetItem < Choreography

      ####
      #  Create a new instance of the GetItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetItemInputSet
      ####
      def new_input_set()
        return GetItemInputSet.new()
      end

      def make_result_set()
        return GetItemResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the item to return.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response returned from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetItem



    ##############################################################################
    #
    # GetList
    #
    # Retrieves a single To-do list specified by its ID.
    #
    ##############################################################################

    class GetList < Choreography

      ####
      #  Create a new instance of the GetList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetListInputSet
      ####
      def new_input_set()
        return GetListInputSet.new()
      end

      def make_result_set()
        return GetListResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetListInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the To-Do list to return.
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response returned from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetList



    ##############################################################################
    #
    # GetListsInProject
    #
    # Retrieves a list of To-do records that are in the given project.
    #
    ##############################################################################

    class GetListsInProject < Choreography

      ####
      #  Create a new instance of the GetListsInProject Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetListsInProject")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetListsInProjectInputSet
      ####
      def new_input_set()
        return GetListsInProjectInputSet.new()
      end

      def make_result_set()
        return GetListsInProjectResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetListsInProjectResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetListsInProject
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetListsInProjectInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Filter input for this Choreo. 
        # 
        # @param String - (optional, string) Specify “pending” to return To-Dos with uncompleted items, or “finished” to return To-Dos with no uncompleted items. Defaults to all lists.
        ###

        def set_Filter(value)
          set_input("Filter", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project that contains the To-Dos to retrieve.
        ###

        def set_ProjectID(value)
          set_input("ProjectID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetListsInProject Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetListsInProjectResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response returned from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetListsInProject



    ##############################################################################
    #
    # GetMessages
    #
    # Retrieves a list of messages associated with a specified project.
    #
    ##############################################################################

    class GetMessages < Choreography

      ####
      #  Create a new instance of the GetMessages Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetMessages")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMessagesInputSet
      ####
      def new_input_set()
        return GetMessagesInputSet.new()
      end

      def make_result_set()
        return GetMessagesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetMessagesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMessages
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMessagesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project associated with the messages you want to retrieve.
        ###

        def set_ProjectID(value)
          set_input("ProjectID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) Your Basecamp username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMessages Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMessagesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetMessages



    ##############################################################################
    #
    # GetPeopleAcrossProjects
    #
    # Retrieves all people that the logged in user has permission to see.
    #
    ##############################################################################

    class GetPeopleAcrossProjects < Choreography

      ####
      #  Create a new instance of the GetPeopleAcrossProjects Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetPeopleAcrossProjects")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPeopleAcrossProjectsInputSet
      ####
      def new_input_set()
        return GetPeopleAcrossProjectsInputSet.new()
      end

      def make_result_set()
        return GetPeopleAcrossProjectsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetPeopleAcrossProjectsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPeopleAcrossProjects
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPeopleAcrossProjectsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) Your Basecamp username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPeopleAcrossProjects Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPeopleAcrossProjectsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPeopleAcrossProjects



    ##############################################################################
    #
    # GetPeopleWithinProject
    #
    # Retrieves all people that have access to a specified project.
    #
    ##############################################################################

    class GetPeopleWithinProject < Choreography

      ####
      #  Create a new instance of the GetPeopleWithinProject Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetPeopleWithinProject")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPeopleWithinProjectInputSet
      ####
      def new_input_set()
        return GetPeopleWithinProjectInputSet.new()
      end

      def make_result_set()
        return GetPeopleWithinProjectResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetPeopleWithinProjectResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPeopleWithinProject
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPeopleWithinProjectInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project associated with the people you want to retrieve.
        ###

        def set_ProjectId(value)
          set_input("ProjectId", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) Your Basecamp username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPeopleWithinProject Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPeopleWithinProjectResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPeopleWithinProject



    ##############################################################################
    #
    # GetProject
    #
    # Retrieves an individual project using a project id that you specify.
    #
    ##############################################################################

    class GetProject < Choreography

      ####
      #  Create a new instance of the GetProject Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetProject")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetProjectInputSet
      ####
      def new_input_set()
        return GetProjectInputSet.new()
      end

      def make_result_set()
        return GetProjectResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetProjectResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetProject
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetProjectInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project you want to retrieve.
        ###

        def set_ProjectId(value)
          set_input("ProjectId", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) Your Basecamp username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetProject Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetProjectResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetProject



    ##############################################################################
    #
    # GetProjects
    #
    # Retrieves active, inactive, and archived projects.
    #
    ##############################################################################

    class GetProjects < Choreography

      ####
      #  Create a new instance of the GetProjects Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/GetProjects")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetProjectsInputSet
      ####
      def new_input_set()
        return GetProjectsInputSet.new()
      end

      def make_result_set()
        return GetProjectsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetProjectsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetProjects
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetProjectsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) Your Basecamp username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetProjects Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetProjectsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetProjects



    ##############################################################################
    #
    # ProjectCounts
    #
    # Retrieves a count of all projects sorted by project status.
    #
    ##############################################################################

    class ProjectCounts < Choreography

      ####
      #  Create a new instance of the ProjectCounts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/ProjectCounts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ProjectCountsInputSet
      ####
      def new_input_set()
        return ProjectCountsInputSet.new()
      end

      def make_result_set()
        return ProjectCountsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ProjectCountsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ProjectCounts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ProjectCountsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) The Basecamp account name for you or your company. This is the first part of your account URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) Your Basecamp password.  You can use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) Your Basecamp username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ProjectCounts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ProjectCountsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ProjectCounts



    ##############################################################################
    #
    # ReorderItems
    #
    # Reorders the items in a specified To-do list.
    #
    ##############################################################################

    class ReorderItems < Choreography

      ####
      #  Create a new instance of the ReorderItems Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/ReorderItems")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ReorderItemsInputSet
      ####
      def new_input_set()
        return ReorderItemsInputSet.new()
      end

      def make_result_set()
        return ReorderItemsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ReorderItemsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ReorderItems
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ReorderItemsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the FirstItemID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID number for the first item in the list.
        ###

        def set_FirstItemID(value)
          set_input("FirstItemID", value)
        end
        #### 
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the To-do list the items of which you're reordering.
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the SecondItemID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The ID number for the second item in the list.
        ###

        def set_SecondItemID(value)
          set_input("SecondItemID", value)
        end
        #### 
        # Set the value of the ThirdItemID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The ID number for the third item in the list.
        ###

        def set_ThirdItemID(value)
          set_input("ThirdItemID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ReorderItems Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ReorderItemsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - No response is returned from Basecamp for reorder items requests.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ReorderItems



    ##############################################################################
    #
    # ReorderLists
    #
    # Allows you to reorder To-do lists in a specified project.
    #
    ##############################################################################

    class ReorderLists < Choreography

      ####
      #  Create a new instance of the ReorderLists Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/ReorderLists")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ReorderListsInputSet
      ####
      def new_input_set()
        return ReorderListsInputSet.new()
      end

      def make_result_set()
        return ReorderListsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ReorderListsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ReorderLists
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ReorderListsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the FirstListID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID number for the project's first To-Do list.
        ###

        def set_FirstListID(value)
          set_input("FirstListID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project associated with the to-do lists that you are reordering.
        ###

        def set_ProjectID(value)
          set_input("ProjectID", value)
        end
        #### 
        # Set the value of the SecondListID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The ID number for the project's second To-Do list.
        ###

        def set_SecondListID(value)
          set_input("SecondListID", value)
        end
        #### 
        # Set the value of the ThirdListID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The ID number for the project's third To-Do list.
        ###

        def set_ThirdListID(value)
          set_input("ThirdListID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ReorderLists Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ReorderListsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - No response is returned from Basecamp for update requests.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ReorderLists



    ##############################################################################
    #
    # UncompleteEntry
    #
    # Marks a specific calendar entry as uncompleted.
    #
    ##############################################################################

    class UncompleteEntry < Choreography

      ####
      #  Create a new instance of the UncompleteEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/UncompleteEntry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UncompleteEntryInputSet
      ####
      def new_input_set()
        return UncompleteEntryInputSet.new()
      end

      def make_result_set()
        return UncompleteEntryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UncompleteEntryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UncompleteEntry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UncompleteEntryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the calendar entry to mark as uncompleted.
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the project with the calendar entry to mark as uncompleted.
        ###

        def set_ProjectID(value)
          set_input("ProjectID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UncompleteEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UncompleteEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response returned from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UncompleteEntry



    ##############################################################################
    #
    # UncompleteItem
    #
    # Marks a single, specified item in a To-do list as incomplete.
    #
    ##############################################################################

    class UncompleteItem < Choreography

      ####
      #  Create a new instance of the UncompleteItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/UncompleteItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UncompleteItemInputSet
      ####
      def new_input_set()
        return UncompleteItemInputSet.new()
      end

      def make_result_set()
        return UncompleteItemResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UncompleteItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UncompleteItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UncompleteItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the item to mark as complete.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UncompleteItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UncompleteItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - There is no structrued response from uncomplete item requests.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UncompleteItem



    ##############################################################################
    #
    # UpdateEntry
    #
    # Updates a calendar event or milestone in a project you specify. 
    #
    ##############################################################################

    class UpdateEntry < Choreography

      ####
      #  Create a new instance of the UpdateEntry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/UpdateEntry")
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
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (required, date) The new end date for the updated entry, in the format YYYY-MM-DD.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the EntryID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the calendar entry to update.
        ###

        def set_EntryID(value)
          set_input("EntryID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProjectID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the project with the calendar entry to update.
        ###

        def set_ProjectID(value)
          set_input("ProjectID", value)
        end
        #### 
        # Set the value of the ResponsibleParty input for this Choreo. 
        # 
        # @param String - (optional, any) The user ID or company ID (preceded by a “c”, as in "c1234") to reassign the entry to. Applies only to "Milestone" entry types.
        ###

        def set_ResponsibleParty(value)
          set_input("ResponsibleParty", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (optional, date) The new start date for the updated entry, in the format YYYY-MM-DD.
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (optional, string) The new title for the updated entry.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (optional, string) The new type for the updated entry, either "CalendarEvent" (the default) or "Milestone".
        ###

        def set_Type(value)
          set_input("Type", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateEntry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateEntryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "TemplateOutput" output from this Choreo execution
      	#
      	# @return String - The request created from the input template.
      	####
      	def get_TemplateOutput()
      	  return @outputs["TemplateOutput"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response returned from Basecamp.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateEntry



    ##############################################################################
    #
    # UpdateItem
    #
    # Creates a new item for a specified To-do list.
    #
    ##############################################################################

    class UpdateItem < Choreography

      ####
      #  Create a new instance of the UpdateItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/UpdateItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateItemInputSet
      ####
      def new_input_set()
        return UpdateItemInputSet.new()
      end

      def make_result_set()
        return UpdateItemResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Content input for this Choreo. 
        # 
        # @param String - (required, string) The text of the updated item.
        ###

        def set_Content(value)
          set_input("Content", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the item to update.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ResponsibleParty input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The user ID or company ID  (preceded by a “c”, as in "c1234") to re-assign the item to when updated. Defaults to unassigned If left blank.
        ###

        def set_ResponsibleParty(value)
          set_input("ResponsibleParty", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - No structured response is returned from Basecamp for new item requests.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateItem



    ##############################################################################
    #
    # UpdateList
    #
    # Updates a specified To-do list record 
    #
    ##############################################################################

    class UpdateList < Choreography

      ####
      #  Create a new instance of the UpdateList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Basecamp/UpdateList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateListInputSet
      ####
      def new_input_set()
        return UpdateListInputSet.new()
      end

      def make_result_set()
        return UpdateListResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateListInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Basecamp account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) The new description for the list.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID for the list to update.
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the MilestoneID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The ID of an existing milestone to add to the To-Do list.
        ###

        def set_MilestoneID(value)
          set_input("MilestoneID", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (optional, string) The new name for the list.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Basecamp account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Basecamp account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - No response is returned from Basecamp for update requests.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateList




  end # module Basecamp

  module Highrise



    ##############################################################################
    #
    # CreatePeople
    #
    # Creates a new contact record in your Highrise CRM.
    #
    ##############################################################################

    class CreatePeople < Choreography

      ####
      #  Create a new instance of the CreatePeople Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Highrise/CreatePeople")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreatePeopleInputSet
      ####
      def new_input_set()
        return CreatePeopleInputSet.new()
      end

      def make_result_set()
        return CreatePeopleResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreatePeopleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreatePeople
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreatePeopleInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Highrise account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Background input for this Choreo. 
        # 
        # @param String - (optional, string) Corresponds to the background field in Highrise
        ###

        def set_Background(value)
          set_input("Background", value)
        end
        #### 
        # Set the value of the CompanyName input for this Choreo. 
        # 
        # @param String - (optional, string) Corresponds to the company name field in Highrise.
        ###

        def set_CompanyName(value)
          set_input("CompanyName", value)
        end
        #### 
        # Set the value of the EmailAddress input for this Choreo. 
        # 
        # @param String - (optional, string) Corresponds to the email address field in Highrise.
        ###

        def set_EmailAddress(value)
          set_input("EmailAddress", value)
        end
        #### 
        # Set the value of the FirstName input for this Choreo. 
        # 
        # @param String - (required, string) Corresponds to the first name field in Highrise.
        ###

        def set_FirstName(value)
          set_input("FirstName", value)
        end
        #### 
        # Set the value of the HomePhone input for this Choreo. 
        # 
        # @param String - (optional, string) Corresponds to the home phone field in Highrise.
        ###

        def set_HomePhone(value)
          set_input("HomePhone", value)
        end
        #### 
        # Set the value of the LastName input for this Choreo. 
        # 
        # @param String - (optional, string) Corresponds to the last name field in Highrise.
        ###

        def set_LastName(value)
          set_input("LastName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Highrise account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (optional, string) Corresponds to the title field in Highrise.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Highrise account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end
        #### 
        # Set the value of the WorkPhone input for this Choreo. 
        # 
        # @param String - (optional, string) Corresponds to the work phone field in Highrise.
        ###

        def set_WorkPhone(value)
          set_input("WorkPhone", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreatePeople Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreatePeopleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Highrise.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreatePeople



    ##############################################################################
    #
    # DeletePeople
    #
    # Deletes a specified contact from your Highrise CRM.
    #
    ##############################################################################

    class DeletePeople < Choreography

      ####
      #  Create a new instance of the DeletePeople Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Highrise/DeletePeople")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeletePeopleInputSet
      ####
      def new_input_set()
        return DeletePeopleInputSet.new()
      end

      def make_result_set()
        return DeletePeopleResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeletePeopleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeletePeople
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeletePeopleInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Highrise account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the ContactID input for this Choreo. 
        # 
        # @param String - (required, string) The ID number of the contact you want to delete. This is used to contruct the URL for the request.
        ###

        def set_ContactID(value)
          set_input("ContactID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Highrise account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Highrise account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeletePeople Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeletePeopleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Highrise. The delete people API method returns no XML, so this variable will contain no data.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeletePeople



    ##############################################################################
    #
    # ListAllPeople
    #
    # Retrieves contacts from your Highrise CRM.
    #
    ##############################################################################

    class ListAllPeople < Choreography

      ####
      #  Create a new instance of the ListAllPeople Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Highrise/ListAllPeople")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllPeopleInputSet
      ####
      def new_input_set()
        return ListAllPeopleInputSet.new()
      end

      def make_result_set()
        return ListAllPeopleResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListAllPeopleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllPeople
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllPeopleInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Highrise account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Highrise account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Highrise account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllPeople Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllPeopleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Highrise.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAllPeople



    ##############################################################################
    #
    # SearchPeople
    #
    # Lets you search your Highrise CRM by specifying an email search criteria.
    #
    ##############################################################################

    class SearchPeople < Choreography

      ####
      #  Create a new instance of the SearchPeople Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Highrise/SearchPeople")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchPeopleInputSet
      ####
      def new_input_set()
        return SearchPeopleInputSet.new()
      end

      def make_result_set()
        return SearchPeopleResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SearchPeopleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchPeople
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchPeopleInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A valid Highrise account name. This is the first part of the account's URL.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the City input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to search by the city field in Highrise.
        ###

        def set_City(value)
          set_input("City", value)
        end
        #### 
        # Set the value of the Country input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to search by the country field in Highrise.
        ###

        def set_Country(value)
          set_input("Country", value)
        end
        #### 
        # Set the value of the EmailAddress input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to search by the email address field in Highrise.
        ###

        def set_EmailAddress(value)
          set_input("EmailAddress", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Highrise account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Phone input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to search by the phone field in Highrise.
        ###

        def set_Phone(value)
          set_input("Phone", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to search by the state field in Highrise.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Highrise account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end
        #### 
        # Set the value of the Zip input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to search by the ZIP field in Highrise.
        ###

        def set_Zip(value)
          set_input("Zip", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchPeople Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchPeopleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Highrise.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchPeople



    ##############################################################################
    #
    # ShowPeople
    #
    # Retrieves contacts from your Highrise CRM.
    #
    ##############################################################################

    class ShowPeople < Choreography

      ####
      #  Create a new instance of the ShowPeople Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/37Signals/Highrise/ShowPeople")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowPeopleInputSet
      ####
      def new_input_set()
        return ShowPeopleInputSet.new()
      end

      def make_result_set()
        return ShowPeopleResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ShowPeopleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowPeople
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowPeopleInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) A Highrise account username or API Key.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the ConactID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the contact you want to retrieve. This is used to construct the URL for the request.
        ###

        def set_ConactID(value)
          set_input("ConactID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The Highrise account password. Use the value 'X' when specifying an API Key for the Username input.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) A Highrise account username or API Key.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowPeople Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowPeopleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Highrise.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShowPeople




  end # module Highrise

end # module TMB_37Signals