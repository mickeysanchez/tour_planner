require "temboo"

module OneLogin




  module Accounts



    ##############################################################################
    #
    # CreateAccount
    #
    # Creates a new account.
    #
    ##############################################################################

    class CreateAccount < Choreography

      ####
      #  Create a new instance of the CreateAccount Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/OneLogin/Accounts/CreateAccount")
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
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) The account name.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Address input for this Choreo. 
        # 
        # @param String - (optional, string) The street address for the new account.
        ###

        def set_Address(value)
          set_input("Address", value)
        end
        #### 
        # Set the value of the City input for this Choreo. 
        # 
        # @param String - (optional, string) The city associated with the address.
        ###

        def set_City(value)
          set_input("City", value)
        end
        #### 
        # Set the value of the Country input for this Choreo. 
        # 
        # @param String - (optional, string) The country associated with the address of the new account.
        ###

        def set_Country(value)
          set_input("Country", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address for the new account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the FirstName input for this Choreo. 
        # 
        # @param String - (required, string) The first name on the new account.
        ###

        def set_FirstName(value)
          set_input("FirstName", value)
        end
        #### 
        # Set the value of the LastName input for this Choreo. 
        # 
        # @param String - (required, string) The last name on the new account.
        ###

        def set_LastName(value)
          set_input("LastName", value)
        end
        #### 
        # Set the value of the Phone input for this Choreo. 
        # 
        # @param String - (optional, string) The phone number for the new account.
        ###

        def set_Phone(value)
          set_input("Phone", value)
        end
        #### 
        # Set the value of the Plan input for this Choreo. 
        # 
        # @param String - (required, string) Indicates which plan the new account has (i.e. enterprise).
        ###

        def set_Plan(value)
          set_input("Plan", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state associated with the address of the new account.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Zip input for this Choreo. 
        # 
        # @param String - (optional, string) The postal code associated with the address of the new account.
        ###

        def set_Zip(value)
          set_input("Zip", value)
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
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateAccount



    ##############################################################################
    #
    # ListAll
    #
    # Retrieves a list of all accounts.
    #
    ##############################################################################

    class ListAll < Choreography

      ####
      #  Create a new instance of the ListAll Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/OneLogin/Accounts/ListAll")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllInputSet
      ####
      def new_input_set()
        return ListAllInputSet.new()
      end

      def make_result_set()
        return ListAllResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListAllResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAll
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAll Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAll



    ##############################################################################
    #
    # ShowAccount
    #
    # Retrieves information for a single account.
    #
    ##############################################################################

    class ShowAccount < Choreography

      ####
      #  Create a new instance of the ShowAccount Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/OneLogin/Accounts/ShowAccount")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowAccountInputSet
      ####
      def new_input_set()
        return ShowAccountInputSet.new()
      end

      def make_result_set()
        return ShowAccountResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ShowAccountResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowAccount
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowAccountInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id the account you want to return.
        ###

        def set_ID(value)
          set_input("ID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowAccount Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowAccountResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShowAccount



    ##############################################################################
    #
    # UpdateAccount
    #
    # Updates an existing account.
    #
    ##############################################################################

    class UpdateAccount < Choreography

      ####
      #  Create a new instance of the UpdateAccount Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/OneLogin/Accounts/UpdateAccount")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateAccountInputSet
      ####
      def new_input_set()
        return UpdateAccountInputSet.new()
      end

      def make_result_set()
        return UpdateAccountResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateAccountResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateAccount
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateAccountInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (required, string) The account name.
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the Address input for this Choreo. 
        # 
        # @param String - (optional, string) The street address for the new account.
        ###

        def set_Address(value)
          set_input("Address", value)
        end
        #### 
        # Set the value of the City input for this Choreo. 
        # 
        # @param String - (optional, string) The city associated with the address.
        ###

        def set_City(value)
          set_input("City", value)
        end
        #### 
        # Set the value of the Country input for this Choreo. 
        # 
        # @param String - (optional, string) The country associated with the address of the new account.
        ###

        def set_Country(value)
          set_input("Country", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address for the new account.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the FirstName input for this Choreo. 
        # 
        # @param String - (required, string) The first name on the new account.
        ###

        def set_FirstName(value)
          set_input("FirstName", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the account to update.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the LastName input for this Choreo. 
        # 
        # @param String - (required, string) The last name on the new account.
        ###

        def set_LastName(value)
          set_input("LastName", value)
        end
        #### 
        # Set the value of the Phone input for this Choreo. 
        # 
        # @param String - (optional, string) The phone number for the new account.
        ###

        def set_Phone(value)
          set_input("Phone", value)
        end
        #### 
        # Set the value of the Plan input for this Choreo. 
        # 
        # @param String - (required, string) Indicates which plan the new account has (i.e. enterprise).
        ###

        def set_Plan(value)
          set_input("Plan", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state associated with the address of the new account.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Zip input for this Choreo. 
        # 
        # @param String - (optional, string) The postal code associated with the address of the new account.
        ###

        def set_Zip(value)
          set_input("Zip", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateAccount Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateAccountResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateAccount




  end # module Accounts

  module Events



    ##############################################################################
    #
    # CreateEvent
    #
    # Creates a new event.
    #
    ##############################################################################

    class CreateEvent < Choreography

      ####
      #  Create a new instance of the CreateEvent Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/OneLogin/Events/CreateEvent")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateEventInputSet
      ####
      def new_input_set()
        return CreateEventInputSet.new()
      end

      def make_result_set()
        return CreateEventResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateEventResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateEvent
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateEventInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the EventTypeID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id for the type of event you want to create. Note that depending on the event type id specified, you may need to provide the ObjectName and ObjectID that is being affected.
        ###

        def set_EventTypeID(value)
          set_input("EventTypeID", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The object id that is being affected. Required for certain event types. When specified, ObjectName must also be provided.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the ObjectName input for this Choreo. 
        # 
        # @param String - (conditional, string) The object name that is being affected (i.e. user-id). Required for certain event types. When specified, ObjectID must also be provided.
        ###

        def set_ObjectName(value)
          set_input("ObjectName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateEvent Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateEventResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateEvent



    ##############################################################################
    #
    # ListAll
    #
    # Retrieves a list of all events (aka activities).
    #
    ##############################################################################

    class ListAll < Choreography

      ####
      #  Create a new instance of the ListAll Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/OneLogin/Events/ListAll")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllInputSet
      ####
      def new_input_set()
        return ListAllInputSet.new()
      end

      def make_result_set()
        return ListAllResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListAllResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAll
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAll Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAll



    ##############################################################################
    #
    # ShowEvent
    #
    # Retrieves information for a single event.
    #
    ##############################################################################

    class ShowEvent < Choreography

      ####
      #  Create a new instance of the ShowEvent Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/OneLogin/Events/ShowEvent")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowEventInputSet
      ####
      def new_input_set()
        return ShowEventInputSet.new()
      end

      def make_result_set()
        return ShowEventResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ShowEventResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowEvent
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowEventInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id the event you want to return.
        ###

        def set_ID(value)
          set_input("ID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowEvent Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowEventResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShowEvent




  end # module Events

  module Groups



    ##############################################################################
    #
    # ListAll
    #
    # Retrieves a list of all groups.
    #
    ##############################################################################

    class ListAll < Choreography

      ####
      #  Create a new instance of the ListAll Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/OneLogin/Groups/ListAll")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllInputSet
      ####
      def new_input_set()
        return ListAllInputSet.new()
      end

      def make_result_set()
        return ListAllResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListAllResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAll
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAll Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAll



    ##############################################################################
    #
    # ShowGroup
    #
    # Retrieves information for a single group.
    #
    ##############################################################################

    class ShowGroup < Choreography

      ####
      #  Create a new instance of the ShowGroup Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/OneLogin/Groups/ShowGroup")
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
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id the group you want to return.
        ###

        def set_ID(value)
          set_input("ID", value)
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
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShowGroup




  end # module Groups

  module Roles



    ##############################################################################
    #
    # ListAll
    #
    # Retrieves a list of all roles.
    #
    ##############################################################################

    class ListAll < Choreography

      ####
      #  Create a new instance of the ListAll Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/OneLogin/Roles/ListAll")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllInputSet
      ####
      def new_input_set()
        return ListAllInputSet.new()
      end

      def make_result_set()
        return ListAllResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListAllResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAll
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAll Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAll



    ##############################################################################
    #
    # ShowRole
    #
    # Retrieves information for a single role.
    #
    ##############################################################################

    class ShowRole < Choreography

      ####
      #  Create a new instance of the ShowRole Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/OneLogin/Roles/ShowRole")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowRoleInputSet
      ####
      def new_input_set()
        return ShowRoleInputSet.new()
      end

      def make_result_set()
        return ShowRoleResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ShowRoleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowRole
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowRoleInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id the role you want to return.
        ###

        def set_ID(value)
          set_input("ID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowRole Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowRoleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShowRole




  end # module Roles

  module Users



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
        super(session, "/Library/OneLogin/Users/CreateUser")
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
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Address input for this Choreo. 
        # 
        # @param String - (conditional, string) The street address for the new account.
        ###

        def set_Address(value)
          set_input("Address", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (conditional, string) The email address for the new user.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the FirstName input for this Choreo. 
        # 
        # @param String - (conditional, string) The first name of the new user.
        ###

        def set_FirstName(value)
          set_input("FirstName", value)
        end
        #### 
        # Set the value of the GroupID input for this Choreo. 
        # 
        # @param String - (optional, string) The group id associated with the new user.
        ###

        def set_GroupID(value)
          set_input("GroupID", value)
        end
        #### 
        # Set the value of the LastName input for this Choreo. 
        # 
        # @param String - (conditional, string) The last name of the new user.
        ###

        def set_LastName(value)
          set_input("LastName", value)
        end
        #### 
        # Set the value of the OpenIDName input for this Choreo. 
        # 
        # @param String - (conditional, string) The open id name.
        ###

        def set_OpenIDName(value)
          set_input("OpenIDName", value)
        end
        #### 
        # Set the value of the Phone input for this Choreo. 
        # 
        # @param String - (conditional, string) The phone number of the new user.
        ###

        def set_Phone(value)
          set_input("Phone", value)
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
      	# @return String - (xml) The response from OneLogin.
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
    # Deletes an existing user.
    #
    ##############################################################################

    class DeleteUser < Choreography

      ####
      #  Create a new instance of the DeleteUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/OneLogin/Users/DeleteUser")
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
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id the user you want to delete.
        ###

        def set_ID(value)
          set_input("ID", value)
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
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteUser



    ##############################################################################
    #
    # ListAll
    #
    # Retrieves a list of all users.
    #
    ##############################################################################

    class ListAll < Choreography

      ####
      #  Create a new instance of the ListAll Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/OneLogin/Users/ListAll")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllInputSet
      ####
      def new_input_set()
        return ListAllInputSet.new()
      end

      def make_result_set()
        return ListAllResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListAllResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAll
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAll Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAll



    ##############################################################################
    #
    # ShowUser
    #
    # Retrieves information for a single user.
    #
    ##############################################################################

    class ShowUser < Choreography

      ####
      #  Create a new instance of the ShowUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/OneLogin/Users/ShowUser")
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
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id the user you want to return.
        ###

        def set_ID(value)
          set_input("ID", value)
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
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShowUser



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
        super(session, "/Library/OneLogin/Users/UpdateUser")
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
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by OneLogin.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Address input for this Choreo. 
        # 
        # @param String - (conditional, string) The street address for the new account.
        ###

        def set_Address(value)
          set_input("Address", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (conditional, string) The email address for the new user.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the FirstName input for this Choreo. 
        # 
        # @param String - (conditional, string) The first name of the new user.
        ###

        def set_FirstName(value)
          set_input("FirstName", value)
        end
        #### 
        # Set the value of the GroupID input for this Choreo. 
        # 
        # @param String - (optional, string) The group id associated with the new user.
        ###

        def set_GroupID(value)
          set_input("GroupID", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the user you want to update.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the LastName input for this Choreo. 
        # 
        # @param String - (conditional, string) The last name of the new user.
        ###

        def set_LastName(value)
          set_input("LastName", value)
        end
        #### 
        # Set the value of the OpenIDName input for this Choreo. 
        # 
        # @param String - (conditional, string) The open id name.
        ###

        def set_OpenIDName(value)
          set_input("OpenIDName", value)
        end
        #### 
        # Set the value of the Phone input for this Choreo. 
        # 
        # @param String - (conditional, string) The phone number of the new user.
        ###

        def set_Phone(value)
          set_input("Phone", value)
        end
        #### 
        # Set the value of the Role input for this Choreo. 
        # 
        # @param String - (optional, string) Updates a user's role.
        ###

        def set_Role(value)
          set_input("Role", value)
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
      	# @return String - (xml) The response from OneLogin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateUser




  end # module Users

end # module OneLogin