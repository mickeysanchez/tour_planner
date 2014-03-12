require "temboo"

module MongoHQ




  module Collections



    ##############################################################################
    #
    # CreateCollection
    #
    # Creates a new collection within a database.
    #
    ##############################################################################

    class CreateCollection < Choreography

      ####
      #  Create a new instance of the CreateCollection Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Collections/CreateCollection")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateCollectionInputSet
      ####
      def new_input_set()
        return CreateCollectionInputSet.new()
      end

      def make_result_set()
        return CreateCollectionResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateCollectionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateCollection
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateCollectionInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the CollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the collection to create.
        ###

        def set_CollectionName(value)
          set_input("CollectionName", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database to create the collection under.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateCollection Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateCollectionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateCollection



    ##############################################################################
    #
    # DeleteCollection
    #
    # Deletes a specific collection within a database.
    #
    ##############################################################################

    class DeleteCollection < Choreography

      ####
      #  Create a new instance of the DeleteCollection Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Collections/DeleteCollection")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteCollectionInputSet
      ####
      def new_input_set()
        return DeleteCollectionInputSet.new()
      end

      def make_result_set()
        return DeleteCollectionResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteCollectionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteCollection
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteCollectionInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the CollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the collection to delete.
        ###

        def set_CollectionName(value)
          set_input("CollectionName", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database that contains the collection to delete.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteCollection Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteCollectionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteCollection



    ##############################################################################
    #
    # GetCollection
    #
    # Retrieves a specific collection within a database.
    #
    ##############################################################################

    class GetCollection < Choreography

      ####
      #  Create a new instance of the GetCollection Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Collections/GetCollection")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCollectionInputSet
      ####
      def new_input_set()
        return GetCollectionInputSet.new()
      end

      def make_result_set()
        return GetCollectionResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetCollectionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCollection
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCollectionInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the CollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the collection to retrieve.
        ###

        def set_CollectionName(value)
          set_input("CollectionName", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database that contains the collection to retrieve.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCollection Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCollectionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCollection



    ##############################################################################
    #
    # ListCollections
    #
    # Retrieves a list of all collections within a database.
    #
    ##############################################################################

    class ListCollections < Choreography

      ####
      #  Create a new instance of the ListCollections Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Collections/ListCollections")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListCollectionsInputSet
      ####
      def new_input_set()
        return ListCollectionsInputSet.new()
      end

      def make_result_set()
        return ListCollectionsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListCollectionsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListCollections
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListCollectionsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database that contains the collections to list.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListCollections Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListCollectionsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListCollections



    ##############################################################################
    #
    # UpdateCollection
    #
    # Renames a collection within a specified database.
    #
    ##############################################################################

    class UpdateCollection < Choreography

      ####
      #  Create a new instance of the UpdateCollection Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Collections/UpdateCollection")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateCollectionInputSet
      ####
      def new_input_set()
        return UpdateCollectionInputSet.new()
      end

      def make_result_set()
        return UpdateCollectionResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateCollectionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateCollection
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateCollectionInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the CollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the collection to update.
        ###

        def set_CollectionName(value)
          set_input("CollectionName", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database to create the collection under.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end
        #### 
        # Set the value of the NewCollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The new name of the collection.
        ###

        def set_NewCollectionName(value)
          set_input("NewCollectionName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateCollection Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateCollectionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateCollection




  end # module Collections

  module Databases



    ##############################################################################
    #
    # CreateDatabase
    #
    # Creates a new database in your account.
    #
    ##############################################################################

    class CreateDatabase < Choreography

      ####
      #  Create a new instance of the CreateDatabase Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Databases/CreateDatabase")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateDatabaseInputSet
      ####
      def new_input_set()
        return CreateDatabaseInputSet.new()
      end

      def make_result_set()
        return CreateDatabaseResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateDatabaseResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateDatabase
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateDatabaseInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database to create.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (required, string) The type of database to create (e.g., sandbox, small, large). A full list of database types are returned by the ListPlans Choreo and are represented in the "slug" property of each plan object.
        ###

        def set_Type(value)
          set_input("Type", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateDatabase Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateDatabaseResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateDatabase



    ##############################################################################
    #
    # DeleteDatabase
    #
    # Deletes a specified database.
    #
    ##############################################################################

    class DeleteDatabase < Choreography

      ####
      #  Create a new instance of the DeleteDatabase Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Databases/DeleteDatabase")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteDatabaseInputSet
      ####
      def new_input_set()
        return DeleteDatabaseInputSet.new()
      end

      def make_result_set()
        return DeleteDatabaseResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteDatabaseResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteDatabase
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteDatabaseInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database to delete.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteDatabase Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteDatabaseResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteDatabase



    ##############################################################################
    #
    # GetDatabase
    #
    # Retrieves information about a specified database.
    #
    ##############################################################################

    class GetDatabase < Choreography

      ####
      #  Create a new instance of the GetDatabase Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Databases/GetDatabase")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetDatabaseInputSet
      ####
      def new_input_set()
        return GetDatabaseInputSet.new()
      end

      def make_result_set()
        return GetDatabaseResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetDatabaseResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetDatabase
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetDatabaseInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database to retrieve.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetDatabase Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetDatabaseResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetDatabase



    ##############################################################################
    #
    # ListDatabases
    #
    # Retrieves a list of all databases in your account.
    #
    ##############################################################################

    class ListDatabases < Choreography

      ####
      #  Create a new instance of the ListDatabases Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Databases/ListDatabases")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListDatabasesInputSet
      ####
      def new_input_set()
        return ListDatabasesInputSet.new()
      end

      def make_result_set()
        return ListDatabasesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListDatabasesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListDatabases
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListDatabasesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListDatabases Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListDatabasesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListDatabases




  end # module Databases

  module Deployments



    ##############################################################################
    #
    # GetDeployment
    #
    # Retrieves details about a particular deployment in your account.
    #
    ##############################################################################

    class GetDeployment < Choreography

      ####
      #  Create a new instance of the GetDeployment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Deployments/GetDeployment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetDeploymentInputSet
      ####
      def new_input_set()
        return GetDeploymentInputSet.new()
      end

      def make_result_set()
        return GetDeploymentResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetDeploymentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetDeployment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetDeploymentInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the DeploymentName input for this Choreo. 
        # 
        # @param String - (required, string) The domain and port of the server (e.g., rose.mongohq.com:9000).
        ###

        def set_DeploymentName(value)
          set_input("DeploymentName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetDeployment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetDeploymentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetDeployment



    ##############################################################################
    #
    # GetLogs
    #
    # Retrieves logs from a particular deployment in your account.
    #
    ##############################################################################

    class GetLogs < Choreography

      ####
      #  Create a new instance of the GetLogs Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Deployments/GetLogs")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLogsInputSet
      ####
      def new_input_set()
        return GetLogsInputSet.new()
      end

      def make_result_set()
        return GetLogsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetLogsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLogs
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLogsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the DeploymentName input for this Choreo. 
        # 
        # @param String - (required, string) The domain and port of the server (e.g., rose.mongohq.com:9000).
        ###

        def set_DeploymentName(value)
          set_input("DeploymentName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLogs Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLogsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLogs



    ##############################################################################
    #
    # ListDeployments
    #
    # Retrieves a list of all deployments in your account.
    #
    ##############################################################################

    class ListDeployments < Choreography

      ####
      #  Create a new instance of the ListDeployments Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Deployments/ListDeployments")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListDeploymentsInputSet
      ####
      def new_input_set()
        return ListDeploymentsInputSet.new()
      end

      def make_result_set()
        return ListDeploymentsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListDeploymentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListDeployments
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListDeploymentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListDeployments Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListDeploymentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListDeployments




  end # module Deployments

  module Documents



    ##############################################################################
    #
    # BulkUpdate
    #
    # Updates multiple documents by criteria.
    #
    ##############################################################################

    class BulkUpdate < Choreography

      ####
      #  Create a new instance of the BulkUpdate Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Documents/BulkUpdate")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return BulkUpdateInputSet
      ####
      def new_input_set()
        return BulkUpdateInputSet.new()
      end

      def make_result_set()
        return BulkUpdateResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = BulkUpdateResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the BulkUpdate
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class BulkUpdateInputSet < Choreography::InputSet

        #### 
        # Set the value of the Object input for this Choreo. 
        # 
        # @param String - (required, json) The JSON document update command. This accepts standard MongoDB syntax such as $set or $inc.
        ###

        def set_Object(value)
          set_input("Object", value)
        end
        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the CollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the collection associated with the document being updated.
        ###

        def set_CollectionName(value)
          set_input("CollectionName", value)
        end
        #### 
        # Set the value of the Criteria input for this Choreo. 
        # 
        # @param String - (required, json) The JSON criteria used to match which documents will be updated.
        ###

        def set_Criteria(value)
          set_input("Criteria", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database associated with the document being updated.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end
        #### 
        # Set the value of the Multiple input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that all documents matching the criteria should be updated. Setting to false (the default) will update just one.
        ###

        def set_Multiple(value)
          set_input("Multiple", value)
        end
        #### 
        # Set the value of the Safe input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, the operation will wait until the document is saved before returning. When set to false (the default) documents are saved asynchronously.
        ###

        def set_Safe(value)
          set_input("Safe", value)
        end
        #### 
        # Set the value of the Upsert input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the operation will create records that do not already exist. Set to true to enable this feature. Defaults to false.
        ###

        def set_Upsert(value)
          set_input("Upsert", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the BulkUpdate Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class BulkUpdateResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class BulkUpdate



    ##############################################################################
    #
    # CreateDocument
    #
    # Creates a new document within a collection.
    #
    ##############################################################################

    class CreateDocument < Choreography

      ####
      #  Create a new instance of the CreateDocument Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Documents/CreateDocument")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateDocumentInputSet
      ####
      def new_input_set()
        return CreateDocumentInputSet.new()
      end

      def make_result_set()
        return CreateDocumentResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateDocumentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateDocument
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateDocumentInputSet < Choreography::InputSet

        #### 
        # Set the value of the Document input for this Choreo. 
        # 
        # @param String - (required, json) The JSON document to be created under the collection.
        ###

        def set_Document(value)
          set_input("Document", value)
        end
        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the CollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the collection associated with the new document.
        ###

        def set_CollectionName(value)
          set_input("CollectionName", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database associated with the new document.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end
        #### 
        # Set the value of the Safe input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, the operation will wait until the document is saved before returning. When set to false (the default) documents are saved asynchronously.
        ###

        def set_Safe(value)
          set_input("Safe", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateDocument Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateDocumentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateDocument



    ##############################################################################
    #
    # DeleteDocument
    #
    # Deletes a specific document within a collection.
    #
    ##############################################################################

    class DeleteDocument < Choreography

      ####
      #  Create a new instance of the DeleteDocument Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Documents/DeleteDocument")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteDocumentInputSet
      ####
      def new_input_set()
        return DeleteDocumentInputSet.new()
      end

      def make_result_set()
        return DeleteDocumentResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteDocumentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteDocument
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteDocumentInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the CollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the collection associated with the document to delete.
        ###

        def set_CollectionName(value)
          set_input("CollectionName", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database associated with the document to delete.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end
        #### 
        # Set the value of the DocumentID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the document to delete.
        ###

        def set_DocumentID(value)
          set_input("DocumentID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteDocument Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteDocumentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteDocument



    ##############################################################################
    #
    # GetDocument
    #
    # Retrieves a specific document within a collection.
    #
    ##############################################################################

    class GetDocument < Choreography

      ####
      #  Create a new instance of the GetDocument Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Documents/GetDocument")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetDocumentInputSet
      ####
      def new_input_set()
        return GetDocumentInputSet.new()
      end

      def make_result_set()
        return GetDocumentResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetDocumentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetDocument
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetDocumentInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the CollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the collection associated with the document to retrieve.
        ###

        def set_CollectionName(value)
          set_input("CollectionName", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database associated with the document to retrieve.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end
        #### 
        # Set the value of the DocumentID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the document to return.
        ###

        def set_DocumentID(value)
          set_input("DocumentID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetDocument Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetDocumentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetDocument



    ##############################################################################
    #
    # ListDocuments
    #
    # Lists or queries documents within a collection.
    #
    ##############################################################################

    class ListDocuments < Choreography

      ####
      #  Create a new instance of the ListDocuments Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Documents/ListDocuments")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListDocumentsInputSet
      ####
      def new_input_set()
        return ListDocumentsInputSet.new()
      end

      def make_result_set()
        return ListDocumentsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListDocumentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListDocuments
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListDocumentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the CollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the collection associated with the documents to list.
        ###

        def set_CollectionName(value)
          set_input("CollectionName", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database associated with the documents to list.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON array of fields to return.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of documents to return. Used with the Skip parameter to paginate through a large set of results.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON string used to query documents.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the Skip input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of documents to skip. Used with Limit parameter to paginate through a large set of results.
        ###

        def set_Skip(value)
          set_input("Skip", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON string describing how the results should be sorted.
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListDocuments Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListDocumentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "DocumentCount" output from this Choreo execution
      	#
      	# @return String - (integer) The total number of documents that match the query or list.
      	####
      	def get_DocumentCount()
      	  return @outputs["DocumentCount"]
      	end
      end

    end # class ListDocuments



    ##############################################################################
    #
    # UpdateDocument
    #
    # Updates a specific document within a collection.
    #
    ##############################################################################

    class UpdateDocument < Choreography

      ####
      #  Create a new instance of the UpdateDocument Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Documents/UpdateDocument")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateDocumentInputSet
      ####
      def new_input_set()
        return UpdateDocumentInputSet.new()
      end

      def make_result_set()
        return UpdateDocumentResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateDocumentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateDocument
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateDocumentInputSet < Choreography::InputSet

        #### 
        # Set the value of the Document input for this Choreo. 
        # 
        # @param String - (required, json) The JSON document update command. This accepts standard MongoDB syntax such as $set or $inc.
        ###

        def set_Document(value)
          set_input("Document", value)
        end
        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the CollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the collection associated with the document being updated.
        ###

        def set_CollectionName(value)
          set_input("CollectionName", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database associated with the document being updated.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end
        #### 
        # Set the value of the DocumentID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the document being updated.
        ###

        def set_DocumentID(value)
          set_input("DocumentID", value)
        end
        #### 
        # Set the value of the Safe input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, the operation will wait until the document is saved before returning. When set to false (the default) documents are saved asynchronously.
        ###

        def set_Safe(value)
          set_input("Safe", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateDocument Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateDocumentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateDocument




  end # module Documents

  module Indexes



    ##############################################################################
    #
    # CreateIndex
    #
    # Create a new index within a collection.
    #
    ##############################################################################

    class CreateIndex < Choreography

      ####
      #  Create a new instance of the CreateIndex Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Indexes/CreateIndex")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateIndexInputSet
      ####
      def new_input_set()
        return CreateIndexInputSet.new()
      end

      def make_result_set()
        return CreateIndexResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateIndexResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateIndex
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateIndexInputSet < Choreography::InputSet

        #### 
        # Set the value of the Specification input for this Choreo. 
        # 
        # @param String - (required, json) The index specification to be created (e.g., {"key":1}).
        ###

        def set_Specification(value)
          set_input("Specification", value)
        end
        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the Background input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the index will be built in the background. Defaults to true.
        ###

        def set_Background(value)
          set_input("Background", value)
        end
        #### 
        # Set the value of the CollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the collection associated with the indexes to list.
        ###

        def set_CollectionName(value)
          set_input("CollectionName", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database associated with the indexes to list.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end
        #### 
        # Set the value of the DropDuplicates input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When creating a unique index on a collection with pre-existing records, this flag will keep the first document the database indexes and drop all subsequent with duplicate values. Defaults to false.
        ###

        def set_DropDuplicates(value)
          set_input("DropDuplicates", value)
        end
        #### 
        # Set the value of the Maximum input for this Choreo. 
        # 
        # @param String - (optional, string) The maximum longitude and latitude for a geo index.
        ###

        def set_Maximum(value)
          set_input("Maximum", value)
        end
        #### 
        # Set the value of the Minimum input for this Choreo. 
        # 
        # @param String - (optional, string) The minimum longitude and latitude for a geo index.
        ###

        def set_Minimum(value)
          set_input("Minimum", value)
        end
        #### 
        # Set the value of the Unique input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the index should enforce a uniqueness constraint. Defaults to false.
        ###

        def set_Unique(value)
          set_input("Unique", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateIndex Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateIndexResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateIndex



    ##############################################################################
    #
    # DeleteAllIndexes
    #
    # Deletes all indexes within a collection.
    #
    ##############################################################################

    class DeleteAllIndexes < Choreography

      ####
      #  Create a new instance of the DeleteAllIndexes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Indexes/DeleteAllIndexes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteAllIndexesInputSet
      ####
      def new_input_set()
        return DeleteAllIndexesInputSet.new()
      end

      def make_result_set()
        return DeleteAllIndexesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteAllIndexesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteAllIndexes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteAllIndexesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the CollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the collection associated with the indexes to delete.
        ###

        def set_CollectionName(value)
          set_input("CollectionName", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database associated with the indexes to delete.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteAllIndexes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteAllIndexesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteAllIndexes



    ##############################################################################
    #
    # DeleteIndex
    #
    # Deletes a specified index within a collection.
    #
    ##############################################################################

    class DeleteIndex < Choreography

      ####
      #  Create a new instance of the DeleteIndex Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Indexes/DeleteIndex")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteIndexInputSet
      ####
      def new_input_set()
        return DeleteIndexInputSet.new()
      end

      def make_result_set()
        return DeleteIndexResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteIndexResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteIndex
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteIndexInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the CollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the collection associated with the index being deleted.
        ###

        def set_CollectionName(value)
          set_input("CollectionName", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database associated with the index being deleted.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end
        #### 
        # Set the value of the IndexName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the index to delete.
        ###

        def set_IndexName(value)
          set_input("IndexName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteIndex Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteIndexResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteIndex



    ##############################################################################
    #
    # ListIndexes
    #
    # Retrieve a list of indexes within a collection.
    #
    ##############################################################################

    class ListIndexes < Choreography

      ####
      #  Create a new instance of the ListIndexes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Indexes/ListIndexes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListIndexesInputSet
      ####
      def new_input_set()
        return ListIndexesInputSet.new()
      end

      def make_result_set()
        return ListIndexesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListIndexesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListIndexes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListIndexesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the CollectionName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the collection associated with the indexes to list.
        ###

        def set_CollectionName(value)
          set_input("CollectionName", value)
        end
        #### 
        # Set the value of the DatabaseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the database associated with the indexes to list.
        ###

        def set_DatabaseName(value)
          set_input("DatabaseName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListIndexes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListIndexesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListIndexes




  end # module Indexes

  module Invoices



    ##############################################################################
    #
    # GetInvoice
    #
    # Retrieves a specific invoice by ID.
    #
    ##############################################################################

    class GetInvoice < Choreography

      ####
      #  Create a new instance of the GetInvoice Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Invoices/GetInvoice")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetInvoiceInputSet
      ####
      def new_input_set()
        return GetInvoiceInputSet.new()
      end

      def make_result_set()
        return GetInvoiceResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetInvoiceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetInvoice
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetInvoiceInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the invoice to retrieve.
        ###

        def set_ID(value)
          set_input("ID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetInvoice Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetInvoiceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetInvoice



    ##############################################################################
    #
    # ListInvoices
    #
    # Lists previous invoices for your MongoHQ account.
    #
    ##############################################################################

    class ListInvoices < Choreography

      ####
      #  Create a new instance of the ListInvoices Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Invoices/ListInvoices")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListInvoicesInputSet
      ####
      def new_input_set()
        return ListInvoicesInputSet.new()
      end

      def make_result_set()
        return ListInvoicesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListInvoicesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListInvoices
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListInvoicesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListInvoices Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListInvoicesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListInvoices




  end # module Invoices

  module Plans



    ##############################################################################
    #
    # ListPlans
    #
    # Returns a list of the shared plans and custom deploys.
    #
    ##############################################################################

    class ListPlans < Choreography

      ####
      #  Create a new instance of the ListPlans Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Plans/ListPlans")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPlansInputSet
      ####
      def new_input_set()
        return ListPlansInputSet.new()
      end

      def make_result_set()
        return ListPlansResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListPlansResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPlans
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPlansInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIToken input for this Choreo. 
        # 
        # @param String - (required, string) The API Token provided by MongoHQ.
        ###

        def set_APIToken(value)
          set_input("APIToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPlans Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPlansResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from MongoHQ.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListPlans




  end # module Plans

  module Util



    ##############################################################################
    #
    # ErrorHander
    #
    # 
    #
    ##############################################################################

    class ErrorHander < Choreography

      ####
      #  Create a new instance of the ErrorHander Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MongoHQ/Util/ErrorHander")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ErrorHanderInputSet
      ####
      def new_input_set()
        return ErrorHanderInputSet.new()
      end

      def make_result_set()
        return ErrorHanderResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ErrorHanderResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ErrorHander
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ErrorHanderInputSet < Choreography::InputSet

        #### 
        # Set the value of the Response input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_Response(value)
          set_input("Response", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ErrorHander Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ErrorHanderResultSet < Choreography::ResultSet
      end

    end # class ErrorHander




  end # module Util

end # module MongoHQ