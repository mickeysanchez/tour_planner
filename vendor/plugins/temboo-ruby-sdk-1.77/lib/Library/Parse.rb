require "temboo"

module Parse




  module Files



    ##############################################################################
    #
    # AssociateWithObject
    #
    # Allows you to associate a previously uploaded file with Parse objects.
    #
    ##############################################################################

    class AssociateWithObject < Choreography

      ####
      #  Create a new instance of the AssociateWithObject Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Files/AssociateWithObject")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AssociateWithObjectInputSet
      ####
      def new_input_set()
        return AssociateWithObjectInputSet.new()
      end

      def make_result_set()
        return AssociateWithObjectResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = AssociateWithObjectResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AssociateWithObject
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AssociateWithObjectInputSet < Choreography::InputSet

        #### 
        # Set the value of the Association input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the file information that is to be associated with the Parse object. See documentation for formatting examples.
        ###

        def set_Association(value)
          set_input("Association", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ClassName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the class that a file is being associated with.
        ###

        def set_ClassName(value)
          set_input("ClassName", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AssociateWithObject Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AssociateWithObjectResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AssociateWithObject



    ##############################################################################
    #
    # DeleteFile
    #
    # Deletes a file stored on Parse.
    #
    ##############################################################################

    class DeleteFile < Choreography

      ####
      #  Create a new instance of the DeleteFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Files/DeleteFile")
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
        # Set the value of the FileName input for this Choreo. 
        # 
        # @param String - (required, json) The name of the file to delete. Note that this is the name generated and returned by Parse after uploading the file.
        ###

        def set_FileName(value)
          set_input("FileName", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the MasterKey input for this Choreo. 
        # 
        # @param String - (required, string) The Master Key provided by Parse.
        ###

        def set_MasterKey(value)
          set_input("MasterKey", value)
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
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteFile



    ##############################################################################
    #
    # UploadFile
    #
    # Uploads a file to Parse.
    #
    ##############################################################################

    class UploadFile < Choreography

      ####
      #  Create a new instance of the UploadFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Files/UploadFile")
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
        # @param String - (conditional, string) The Base64-encoded contents of the file you want to upload.
        ###

        def set_FileContents(value)
          set_input("FileContents", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ContentType input for this Choreo. 
        # 
        # @param String - (required, string) The content type of the file that is being uploaded (i.e. text/plain, image/jpeg, etc).
        ###

        def set_ContentType(value)
          set_input("ContentType", value)
        end
        #### 
        # Set the value of the FileName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the file you are uploading to Parse.
        ###

        def set_FileName(value)
          set_input("FileName", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - A path to a vault file to upload. Can be used as an alternative to the FileContents input.
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
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UploadFile




  end # module Files

  module GeoPoints



    ##############################################################################
    #
    # GeoPoint
    #
    # Associates a Geo point with an existing object.
    #
    ##############################################################################

    class GeoPoint < Choreography

      ####
      #  Create a new instance of the GeoPoint Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/GeoPoints/GeoPoint")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GeoPointInputSet
      ####
      def new_input_set()
        return GeoPointInputSet.new()
      end

      def make_result_set()
        return GeoPointResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GeoPointResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GeoPoint
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GeoPointInputSet < Choreography::InputSet

        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ClassName input for this Choreo. 
        # 
        # @param String - (required, string) The class name for the object being created.
        ###

        def set_ClassName(value)
          set_input("ClassName", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude coordinate of the Geo Point.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude coordinate of the Geo Point.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GeoPoint Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GeoPointResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GeoPoint



    ##############################################################################
    #
    # Query
    #
    # Returns objects associated with Geo points near a specified set of coordinates.
    #
    ##############################################################################

    class Query < Choreography

      ####
      #  Create a new instance of the Query Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/GeoPoints/Query")
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
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ClassName input for this Choreo. 
        # 
        # @param String - (required, string) The class name for the object being created.
        ###

        def set_ClassName(value)
          set_input("ClassName", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A flag indicating to include a count of objects in the response. Set to 1 to include a count. Defaults to 0.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Include input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a field to return multiple types of related objects in this query.  For example, enter: post.author, to retrieve posts and their authors related to this class.
        ###

        def set_Include(value)
          set_input("Include", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude coordinate of the Geo Point.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude coordinate of the Geo Point.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end
        #### 
        # Set the value of the Skip input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only records after this number. Used in combination with the Limit input to page through many results.
        ###

        def set_Skip(value)
          set_input("Skip", value)
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
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Query




  end # module GeoPoints

  module Objects



    ##############################################################################
    #
    # CreateObject
    #
    # Creates a new object on Parse.
    #
    ##############################################################################

    class CreateObject < Choreography

      ####
      #  Create a new instance of the CreateObject Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Objects/CreateObject")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateObjectInputSet
      ####
      def new_input_set()
        return CreateObjectInputSet.new()
      end

      def make_result_set()
        return CreateObjectResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateObjectResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateObject
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateObjectInputSet < Choreography::InputSet

        #### 
        # Set the value of the ObjectContents input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the object contents.
        ###

        def set_ObjectContents(value)
          set_input("ObjectContents", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ClassName input for this Choreo. 
        # 
        # @param String - (required, string) The class name for the object being created.
        ###

        def set_ClassName(value)
          set_input("ClassName", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateObject Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateObjectResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateObject



    ##############################################################################
    #
    # DeleteObject
    #
    # Deletes a given object.
    #
    ##############################################################################

    class DeleteObject < Choreography

      ####
      #  Create a new instance of the DeleteObject Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Objects/DeleteObject")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteObjectInputSet
      ####
      def new_input_set()
        return DeleteObjectInputSet.new()
      end

      def make_result_set()
        return DeleteObjectResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteObjectResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteObject
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteObjectInputSet < Choreography::InputSet

        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ClassName input for this Choreo. 
        # 
        # @param String - (required, string) The class name for the object being deleted.
        ###

        def set_ClassName(value)
          set_input("ClassName", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the object to delete.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteObject Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteObjectResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteObject



    ##############################################################################
    #
    # RetrieveObject
    #
    # Retrieves a given object.
    #
    ##############################################################################

    class RetrieveObject < Choreography

      ####
      #  Create a new instance of the RetrieveObject Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Objects/RetrieveObject")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveObjectInputSet
      ####
      def new_input_set()
        return RetrieveObjectInputSet.new()
      end

      def make_result_set()
        return RetrieveObjectResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveObjectResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveObject
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveObjectInputSet < Choreography::InputSet

        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ClassName input for this Choreo. 
        # 
        # @param String - (required, string) The class name for the object being retrieved.
        ###

        def set_ClassName(value)
          set_input("ClassName", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the object to retrieve.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveObject Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveObjectResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveObject



    ##############################################################################
    #
    # UpdateObject
    #
    # Updates an existing object.
    #
    ##############################################################################

    class UpdateObject < Choreography

      ####
      #  Create a new instance of the UpdateObject Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Objects/UpdateObject")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateObjectInputSet
      ####
      def new_input_set()
        return UpdateObjectInputSet.new()
      end

      def make_result_set()
        return UpdateObjectResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateObjectResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateObject
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateObjectInputSet < Choreography::InputSet

        #### 
        # Set the value of the ObjectContents input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the object contents.
        ###

        def set_ObjectContents(value)
          set_input("ObjectContents", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ClassName input for this Choreo. 
        # 
        # @param String - (required, string) The class name for the object being updated.
        ###

        def set_ClassName(value)
          set_input("ClassName", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the object to update.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateObject Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateObjectResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateObject




  end # module Objects

  module PushNotifications



    ##############################################################################
    #
    # DeleteInstallation
    #
    # Deletes an installation object.
    #
    ##############################################################################

    class DeleteInstallation < Choreography

      ####
      #  Create a new instance of the DeleteInstallation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/PushNotifications/DeleteInstallation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteInstallationInputSet
      ####
      def new_input_set()
        return DeleteInstallationInputSet.new()
      end

      def make_result_set()
        return DeleteInstallationResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteInstallationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteInstallation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteInstallationInputSet < Choreography::InputSet

        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the installation to retrieve.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the MasterKey input for this Choreo. 
        # 
        # @param String - (required, string) The Master Key provided by Parse.
        ###

        def set_MasterKey(value)
          set_input("MasterKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteInstallation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteInstallationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteInstallation



    ##############################################################################
    #
    # Query
    #
    # Retrieves multiple installations at once and allows you to narrow results by specifying query constraints.
    #
    ##############################################################################

    class Query < Choreography

      ####
      #  Create a new instance of the Query Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/PushNotifications/Query")
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
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A flag indicating to include a count of objects in the response. Set to 1 to include a count. Defaults to 0.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Include input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a field to return multiple types of related objects in this query.  For example, enter: post.author, to retrieve posts and their authors related to this class.
        ###

        def set_Include(value)
          set_input("Include", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of objects to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MasterKey input for this Choreo. 
        # 
        # @param String - (required, string) The Master Key provided by Parse.
        ###

        def set_MasterKey(value)
          set_input("MasterKey", value)
        end
        #### 
        # Set the value of the Skip input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only records after this number. Used in combination with the Limit input to page through many results.
        ###

        def set_Skip(value)
          set_input("Skip", value)
        end
        #### 
        # Set the value of the Where input for this Choreo. 
        # 
        # @param String - (optional, json) A valid query constraint formatted as a JSON-encoded string. See documentation for syntax rules.
        ###

        def set_Where(value)
          set_input("Where", value)
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
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Query



    ##############################################################################
    #
    # RetrieveInstallation
    #
    # Retrieves the contents of an installation object.
    #
    ##############################################################################

    class RetrieveInstallation < Choreography

      ####
      #  Create a new instance of the RetrieveInstallation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/PushNotifications/RetrieveInstallation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveInstallationInputSet
      ####
      def new_input_set()
        return RetrieveInstallationInputSet.new()
      end

      def make_result_set()
        return RetrieveInstallationResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveInstallationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveInstallation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveInstallationInputSet < Choreography::InputSet

        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the installation to retrieve.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveInstallation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveInstallationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveInstallation



    ##############################################################################
    #
    # SendNotification
    #
    # Sends a push notification.
    #
    ##############################################################################

    class SendNotification < Choreography

      ####
      #  Create a new instance of the SendNotification Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/PushNotifications/SendNotification")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SendNotificationInputSet
      ####
      def new_input_set()
        return SendNotificationInputSet.new()
      end

      def make_result_set()
        return SendNotificationResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SendNotificationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SendNotification
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SendNotificationInputSet < Choreography::InputSet

        #### 
        # Set the value of the Notifcation input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the push notification data. See documentation for syntax examples.
        ###

        def set_Notifcation(value)
          set_input("Notifcation", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SendNotification Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SendNotificationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SendNotification



    ##############################################################################
    #
    # UpdateInstallation
    #
    # Updates an existing installation object on Parse.
    #
    ##############################################################################

    class UpdateInstallation < Choreography

      ####
      #  Create a new instance of the UpdateInstallation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/PushNotifications/UpdateInstallation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateInstallationInputSet
      ####
      def new_input_set()
        return UpdateInstallationInputSet.new()
      end

      def make_result_set()
        return UpdateInstallationResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateInstallationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateInstallation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateInstallationInputSet < Choreography::InputSet

        #### 
        # Set the value of the Installation input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the installation data. See documentation for syntax examples.
        ###

        def set_Installation(value)
          set_input("Installation", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the installation to update.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateInstallation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateInstallationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateInstallation



    ##############################################################################
    #
    # UploadInstallationData
    #
    # Creates an installation object on Parse.
    #
    ##############################################################################

    class UploadInstallationData < Choreography

      ####
      #  Create a new instance of the UploadInstallationData Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/PushNotifications/UploadInstallationData")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UploadInstallationDataInputSet
      ####
      def new_input_set()
        return UploadInstallationDataInputSet.new()
      end

      def make_result_set()
        return UploadInstallationDataResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UploadInstallationDataResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UploadInstallationData
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UploadInstallationDataInputSet < Choreography::InputSet

        #### 
        # Set the value of the Installation input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the installation data. See documentation for syntax examples.
        ###

        def set_Installation(value)
          set_input("Installation", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UploadInstallationData Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UploadInstallationDataResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UploadInstallationData




  end # module PushNotifications

  module Queries



    ##############################################################################
    #
    # Query
    #
    # Queries Parse and retrieves objects based on given constraints.
    #
    ##############################################################################

    class Query < Choreography

      ####
      #  Create a new instance of the Query Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Queries/Query")
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
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ClassName input for this Choreo. 
        # 
        # @param String - (required, string) The class name for the object being created.
        ###

        def set_ClassName(value)
          set_input("ClassName", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A flag indicating to include a count of objects in the response. Set to 1 to include a count. Defaults to 0.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Include input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a field to return multiple types of related objects in this query.  For example, enter: post.author, to retrieve posts and their authors related to this class.
        ###

        def set_Include(value)
          set_input("Include", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of objects to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end
        #### 
        # Set the value of the Skip input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only records after this number. Used in combination with the Limit input to page through many results.
        ###

        def set_Skip(value)
          set_input("Skip", value)
        end
        #### 
        # Set the value of the Where input for this Choreo. 
        # 
        # @param String - (optional, json) A valid query constraint formatted as a JSON-encoded string. See documentation for syntax rules.
        ###

        def set_Where(value)
          set_input("Where", value)
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
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Query




  end # module Queries

  module Roles



    ##############################################################################
    #
    # CreateRole
    #
    # Creates a new role.
    #
    ##############################################################################

    class CreateRole < Choreography

      ####
      #  Create a new instance of the CreateRole Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Roles/CreateRole")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateRoleInputSet
      ####
      def new_input_set()
        return CreateRoleInputSet.new()
      end

      def make_result_set()
        return CreateRoleResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateRoleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateRole
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateRoleInputSet < Choreography::InputSet

        #### 
        # Set the value of the Role input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the role information. See documentation for formatting details.
        ###

        def set_Role(value)
          set_input("Role", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateRole Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateRoleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateRole



    ##############################################################################
    #
    # DeleteRole
    #
    # Retrieves a given role.
    #
    ##############################################################################

    class DeleteRole < Choreography

      ####
      #  Create a new instance of the DeleteRole Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Roles/DeleteRole")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteRoleInputSet
      ####
      def new_input_set()
        return DeleteRoleInputSet.new()
      end

      def make_result_set()
        return DeleteRoleResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteRoleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteRole
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteRoleInputSet < Choreography::InputSet

        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, json) The ID of the role to retrieve.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteRole Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteRoleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteRole



    ##############################################################################
    #
    # RetrieveRole
    #
    # Deletes a specified role.
    #
    ##############################################################################

    class RetrieveRole < Choreography

      ####
      #  Create a new instance of the RetrieveRole Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Roles/RetrieveRole")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveRoleInputSet
      ####
      def new_input_set()
        return RetrieveRoleInputSet.new()
      end

      def make_result_set()
        return RetrieveRoleResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveRoleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveRole
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveRoleInputSet < Choreography::InputSet

        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, json) The ID of the role to be retrieved.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveRole Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveRoleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveRole



    ##############################################################################
    #
    # UpdateRole
    #
    # Updates an existing role.
    #
    ##############################################################################

    class UpdateRole < Choreography

      ####
      #  Create a new instance of the UpdateRole Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Roles/UpdateRole")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateRoleInputSet
      ####
      def new_input_set()
        return UpdateRoleInputSet.new()
      end

      def make_result_set()
        return UpdateRoleResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateRoleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateRole
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateRoleInputSet < Choreography::InputSet

        #### 
        # Set the value of the Role input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the role information to be updated. See documentation for formatting details.
        ###

        def set_Role(value)
          set_input("Role", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the role to update.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateRole Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateRoleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateRole




  end # module Roles

  module Users



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
        super(session, "/Library/Parse/Users/DeleteUser")
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
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user to retrieve.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
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
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteUser



    ##############################################################################
    #
    # LinkExistingUser
    #
    # Allows your application to link an existing user with a service like Facebook or Twitter.
    #
    ##############################################################################

    class LinkExistingUser < Choreography

      ####
      #  Create a new instance of the LinkExistingUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Users/LinkExistingUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LinkExistingUserInputSet
      ####
      def new_input_set()
        return LinkExistingUserInputSet.new()
      end

      def make_result_set()
        return LinkExistingUserResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = LinkExistingUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LinkExistingUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LinkExistingUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the AuthData input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the authentication data of the user you want to link with another service. See documentation for more formatting details.
        ###

        def set_AuthData(value)
          set_input("AuthData", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user that is being linked to another service.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end
        #### 
        # Set the value of the SessionToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid Session Token. Note that Session Tokens can be retrieved by the Login and SignUp Choreos.
        ###

        def set_SessionToken(value)
          set_input("SessionToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LinkExistingUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LinkExistingUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LinkExistingUser



    ##############################################################################
    #
    # LinkNewUser
    #
    # Allows your application to sign up and login users by linking them to other services such as Twitter or Facebook.
    #
    ##############################################################################

    class LinkNewUser < Choreography

      ####
      #  Create a new instance of the LinkNewUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Users/LinkNewUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LinkNewUserInputSet
      ####
      def new_input_set()
        return LinkNewUserInputSet.new()
      end

      def make_result_set()
        return LinkNewUserResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = LinkNewUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LinkNewUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LinkNewUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the AuthData input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the authentication data of the user you want to link with another service. See documentation for more formatting details.
        ###

        def set_AuthData(value)
          set_input("AuthData", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LinkNewUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LinkNewUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LinkNewUser



    ##############################################################################
    #
    # Login
    #
    # Allows your application to authenticate a given user; returns user information, user-provided fields, and a session token.
    #
    ##############################################################################

    class Login < Choreography

      ####
      #  Create a new instance of the Login Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Users/Login")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LoginInputSet
      ####
      def new_input_set()
        return LoginInputSet.new()
      end

      def make_result_set()
        return LoginResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = LoginResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Login
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LoginInputSet < Choreography::InputSet

        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, string) The password for the user that is loggin in.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The username for the user that is authenticating.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Login Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LoginResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Login



    ##############################################################################
    #
    # PasswordReset
    #
    # Allows a user to request a password reset email.
    #
    ##############################################################################

    class PasswordReset < Choreography

      ####
      #  Create a new instance of the PasswordReset Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Users/PasswordReset")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PasswordResetInputSet
      ####
      def new_input_set()
        return PasswordResetInputSet.new()
      end

      def make_result_set()
        return PasswordResetResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = PasswordResetResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PasswordReset
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PasswordResetInputSet < Choreography::InputSet

        #### 
        # Set the value of the EmailAddress input for this Choreo. 
        # 
        # @param String - (required, json) The email address for the user who wishes to reset their password.
        ###

        def set_EmailAddress(value)
          set_input("EmailAddress", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PasswordReset Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PasswordResetResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PasswordReset



    ##############################################################################
    #
    # Query
    #
    # Retrieves multiple users at once and allows you to specify query constraints.
    #
    ##############################################################################

    class Query < Choreography

      ####
      #  Create a new instance of the Query Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Users/Query")
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
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A flag indicating to include a count of users in the response. Set to 1 to include a count. Defaults to 0.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Include input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a field to return multiple types of related objects in this query.  For example, enter: post.author, to retrieve posts and their authors related to this class.
        ###

        def set_Include(value)
          set_input("Include", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of users to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end
        #### 
        # Set the value of the Where input for this Choreo. 
        # 
        # @param String - (optional, json) A valid query constraint formatted as a JSON-encoded string. See documentation for syntax rules.
        ###

        def set_Where(value)
          set_input("Where", value)
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
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Query



    ##############################################################################
    #
    # RetrieveUser
    #
    # Retrieves details for a specific user.
    #
    ##############################################################################

    class RetrieveUser < Choreography

      ####
      #  Create a new instance of the RetrieveUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Users/RetrieveUser")
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
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user to retrieve.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
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
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveUser



    ##############################################################################
    #
    # SignUp
    #
    # Allows your application to sign up a new user.
    #
    ##############################################################################

    class SignUp < Choreography

      ####
      #  Create a new instance of the SignUp Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Parse/Users/SignUp")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SignUpInputSet
      ####
      def new_input_set()
        return SignUpInputSet.new()
      end

      def make_result_set()
        return SignUpResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SignUpResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SignUp
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SignUpInputSet < Choreography::InputSet

        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the new user information.
        ###

        def set_User(value)
          set_input("User", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SignUp Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SignUpResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SignUp



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
        super(session, "/Library/Parse/Users/UpdateUser")
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
        # Set the value of the UserInformation input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the user information to update.
        ###

        def set_UserInformation(value)
          set_input("UserInformation", value)
        end
        #### 
        # Set the value of the ApplicationID input for this Choreo. 
        # 
        # @param String - (required, string) The Application ID provided by Parse.
        ###

        def set_ApplicationID(value)
          set_input("ApplicationID", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user to update.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the RESTAPIKey input for this Choreo. 
        # 
        # @param String - (required, string) The REST API Key provided by Parse.
        ###

        def set_RESTAPIKey(value)
          set_input("RESTAPIKey", value)
        end
        #### 
        # Set the value of the SessionToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid Session Token. Note that Session Tokens can be retrieved by the Login and SignUp Choreos.
        ###

        def set_SessionToken(value)
          set_input("SessionToken", value)
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
      	# @return String - (json) The response from Parse.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateUser




  end # module Users

end # module Parse