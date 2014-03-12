require "temboo"

module LittleSis




  module Entity



    ##############################################################################
    #
    # Categories
    #
    # Retrieves a list of all the Relationships possible among people and organizations in LittleSis.
    #
    ##############################################################################

    class Categories < Choreography

      ####
      #  Create a new instance of the Categories Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/Categories")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CategoriesInputSet
      ####
      def new_input_set()
        return CategoriesInputSet.new()
      end

      def make_result_set()
        return CategoriesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CategoriesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Categories
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CategoriesInputSet < Choreography::InputSet

        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format of the response from LittleSis.org. Acceptable inputs: xml or json. Defautls to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Categories Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CategoriesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Categories



    ##############################################################################
    #
    # EntitySearchByKeyword
    #
    # Retrieves Entities (people or organizations) in LittleSis that match a given keyword search.
    #
    ##############################################################################

    class EntitySearchByKeyword < Choreography

      ####
      #  Create a new instance of the EntitySearchByKeyword Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/EntitySearchByKeyword")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EntitySearchByKeywordInputSet
      ####
      def new_input_set()
        return EntitySearchByKeywordInputSet.new()
      end

      def make_result_set()
        return EntitySearchByKeywordResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = EntitySearchByKeywordResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EntitySearchByKeyword
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EntitySearchByKeywordInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Keywords input for this Choreo. 
        # 
        # @param String - (required, string) Enter search text.
        ###

        def set_Keywords(value)
          set_input("Keywords", value)
        end
        #### 
        # Set the value of the Number input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what number of results to show. Used in conjunction with Page parameter, a Number of 20 and a Page of 6 will show results 100-120.
        ###

        def set_Number(value)
          set_input("Number", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what page of results to show. Used in conjunction with Number parameter. A number of 20 and a Page of 6 will show results 100-120.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SearchAll input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Enter 1 to search a record's description and summary fields. When not specified, only the name and aliases fields of each record will be searched.
        ###

        def set_SearchAll(value)
          set_input("SearchAll", value)
        end
        #### 
        # Set the value of the TypeIDs input for this Choreo. 
        # 
        # @param String - (optional, string) You can specify a TypeIDs value to limit the search results to only those of a given type. Obtain all possible types and type ID's by first running the GetTypes Choreo.
        ###

        def set_TypeIDs(value)
          set_input("TypeIDs", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EntitySearchByKeyword Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EntitySearchByKeywordResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EntitySearchByKeyword



    ##############################################################################
    #
    # EntityTypes
    #
    # Retrieves a list of the types of Entities (people or organizations) in LittleSis, along with TypeIDs.
    #
    ##############################################################################

    class EntityTypes < Choreography

      ####
      #  Create a new instance of the EntityTypes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/EntityTypes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EntityTypesInputSet
      ####
      def new_input_set()
        return EntityTypesInputSet.new()
      end

      def make_result_set()
        return EntityTypesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = EntityTypesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EntityTypes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EntityTypesInputSet < Choreography::InputSet

        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format of the response from LittleSis.org. Acceptable inputs: xml or json. Defautls to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EntityTypes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EntityTypesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EntityTypes



    ##############################################################################
    #
    # GetAliasesByEntity
    #
    # Retrieves the aliases associated with each LittleSis Entity (person or organization).
    #
    ##############################################################################

    class GetAliasesByEntity < Choreography

      ####
      #  Create a new instance of the GetAliasesByEntity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/GetAliasesByEntity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetAliasesByEntityInputSet
      ####
      def new_input_set()
        return GetAliasesByEntityInputSet.new()
      end

      def make_result_set()
        return GetAliasesByEntityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetAliasesByEntityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetAliasesByEntity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetAliasesByEntityInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the EntityID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the Entity (person or organization) for which aliases are to be retrieved.
        ###

        def set_EntityID(value)
          set_input("EntityID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetAliasesByEntity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetAliasesByEntityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetAliasesByEntity



    ##############################################################################
    #
    # GetBatchEntities
    #
    # Retrieves the LittleSis record for a given Entity (person or organization) by its ID.
    #
    ##############################################################################

    class GetBatchEntities < Choreography

      ####
      #  Create a new instance of the GetBatchEntities Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/GetBatchEntities")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBatchEntitiesInputSet
      ####
      def new_input_set()
        return GetBatchEntitiesInputSet.new()
      end

      def make_result_set()
        return GetBatchEntitiesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetBatchEntitiesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBatchEntities
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBatchEntitiesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Details input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicate 1 to retrieve detailed information associated with each record retrieved Otherwise, only a basic record will be returned.
        ###

        def set_Details(value)
          set_input("Details", value)
        end
        #### 
        # Set the value of the EntityIDs input for this Choreo. 
        # 
        # @param String - (required, string) A comma delimited string of the IDs of the Entities to retrieve.
        ###

        def set_EntityIDs(value)
          set_input("EntityIDs", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBatchEntities Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBatchEntitiesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBatchEntities



    ##############################################################################
    #
    # GetChainsByEntity
    #
    # Retrieves a chain of connections between two Entities (person or organization) in LittleSis.
    #
    ##############################################################################

    class GetChainsByEntity < Choreography

      ####
      #  Create a new instance of the GetChainsByEntity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/GetChainsByEntity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetChainsByEntityInputSet
      ####
      def new_input_set()
        return GetChainsByEntityInputSet.new()
      end

      def make_result_set()
        return GetChainsByEntityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetChainsByEntityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetChainsByEntity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetChainsByEntityInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limit the relationships to specific categories by specifying the category number.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the EntityIDs input for this Choreo. 
        # 
        # @param Integer - (required, integer) The EntityIDs of the two entities for which a relationship chain is to be returned, separated by a semicolon (e.g. 14629;2 ).
        ###

        def set_EntityIDs(value)
          set_input("EntityIDs", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies which of the found chain to expand in detail. Default is 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetChainsByEntity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetChainsByEntityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetChainsByEntity



    ##############################################################################
    #
    # GetEntitiesWithRelationship
    #
    # Retrieves a list of Entities (person or organization) to which a known relationship exists in LittleSis for any Entity.
    #
    ##############################################################################

    class GetEntitiesWithRelationship < Choreography

      ####
      #  Create a new instance of the GetEntitiesWithRelationship Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/GetEntitiesWithRelationship")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetEntitiesWithRelationshipInputSet
      ####
      def new_input_set()
        return GetEntitiesWithRelationshipInputSet.new()
      end

      def make_result_set()
        return GetEntitiesWithRelationshipResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetEntitiesWithRelationshipResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetEntitiesWithRelationship
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetEntitiesWithRelationshipInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CategoryIDs input for this Choreo. 
        # 
        # @param String - (optional, string) Comma delimited list of category IDs of the categories to which the resulting Entities should belong.
        ###

        def set_CategoryIDs(value)
          set_input("CategoryIDs", value)
        end
        #### 
        # Set the value of the Current input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set to 1 to limit the relationships returned to only past relationships. Set to 0 to limit relationships returned to only current relationships. Defaults to all.
        ###

        def set_Current(value)
          set_input("Current", value)
        end
        #### 
        # Set the value of the EntityID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the person or organization fro which a record is to be returned.
        ###

        def set_EntityID(value)
          set_input("EntityID", value)
        end
        #### 
        # Set the value of the Number input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what number of results to show. Used in conjunction with Page parameter, a Number of 20 and a Page of 6 will show results 100-120.
        ###

        def set_Number(value)
          set_input("Number", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what order the given entity must have in the relationship.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what page of results to show. Used in conjunction with Number parameter. A number of 20 and a Page of 6 will show results 100-120.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) Defaults to sorting by entity, which returns a list of relationships grouped by related entity. Specify another sort order for the results. Acceptable inputs: category or relationship.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetEntitiesWithRelationship Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetEntitiesWithRelationshipResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetEntitiesWithRelationship



    ##############################################################################
    #
    # GetEntity
    #
    # Retrieves the LittleSis record for a given Entity (person or organization) by its ID.
    #
    ##############################################################################

    class GetEntity < Choreography

      ####
      #  Create a new instance of the GetEntity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/GetEntity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetEntityInputSet
      ####
      def new_input_set()
        return GetEntityInputSet.new()
      end

      def make_result_set()
        return GetEntityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetEntityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetEntity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetEntityInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Details input for this Choreo. 
        # 
        # @param String - (optional, string) Indicate "details" to retrieve detailed information associated with this record, including aliases. Otherwise, only a basic record will be returned.
        ###

        def set_Details(value)
          set_input("Details", value)
        end
        #### 
        # Set the value of the EntityID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The EntityID of the person or organization record to be returned.
        ###

        def set_EntityID(value)
          set_input("EntityID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetEntity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetEntityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetEntity



    ##############################################################################
    #
    # GetEntityByOutsideID
    #
    # Retrieves the record for an Entity in LittleSis using the ID of a number of third-party organizations such as the SEC or GovTrack.
    #
    ##############################################################################

    class GetEntityByOutsideID < Choreography

      ####
      #  Create a new instance of the GetEntityByOutsideID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/GetEntityByOutsideID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetEntityByOutsideIDInputSet
      ####
      def new_input_set()
        return GetEntityByOutsideIDInputSet.new()
      end

      def make_result_set()
        return GetEntityByOutsideIDResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetEntityByOutsideIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetEntityByOutsideID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetEntityByOutsideIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the IDType input for this Choreo. 
        # 
        # @param String - (required, string) You can search for a record by the IDs of other third-party services. Acceptable inputs: ticker, sec_cik, fec_id, bioguide_id, govtrack_id, crp_id, watchdog_id. See documentation for more information.
        ###

        def set_IDType(value)
          set_input("IDType", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the record to be returned.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetEntityByOutsideID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetEntityByOutsideIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetEntityByOutsideID



    ##############################################################################
    #
    # GetLeadershipByOrganization
    #
    # Retrieves a list of board members and executives for a given organization.
    #
    ##############################################################################

    class GetLeadershipByOrganization < Choreography

      ####
      #  Create a new instance of the GetLeadershipByOrganization Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/GetLeadershipByOrganization")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLeadershipByOrganizationInputSet
      ####
      def new_input_set()
        return GetLeadershipByOrganizationInputSet.new()
      end

      def make_result_set()
        return GetLeadershipByOrganizationResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetLeadershipByOrganizationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLeadershipByOrganization
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLeadershipByOrganizationInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Current input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set to 1 to limit the relationships returned to only past relationships. Set to 0 to limit relationships returned to only current relationships. Defaults to all.
        ###

        def set_Current(value)
          set_input("Current", value)
        end
        #### 
        # Set the value of the EntityID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the organization.
        ###

        def set_EntityID(value)
          set_input("EntityID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLeadershipByOrganization Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLeadershipByOrganizationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLeadershipByOrganization



    ##############################################################################
    #
    # GetLeadershipByPerson
    #
    # Retrieves a list of organizations of which a given person is an executive or board member.
    #
    ##############################################################################

    class GetLeadershipByPerson < Choreography

      ####
      #  Create a new instance of the GetLeadershipByPerson Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/GetLeadershipByPerson")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLeadershipByPersonInputSet
      ####
      def new_input_set()
        return GetLeadershipByPersonInputSet.new()
      end

      def make_result_set()
        return GetLeadershipByPersonResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetLeadershipByPersonResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLeadershipByPerson
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLeadershipByPersonInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Current input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set to 1 to limit the relationships returned to only past relationships. Set to 0 to limit relationships returned to only current relationships. Defaults to all.
        ###

        def set_Current(value)
          set_input("Current", value)
        end
        #### 
        # Set the value of the EntityID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the person.
        ###

        def set_EntityID(value)
          set_input("EntityID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (optional, string) Limits results to organizations of the specified type, e.g. "PublicCompany."
        ###

        def set_Type(value)
          set_input("Type", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLeadershipByPerson Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLeadershipByPersonResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLeadershipByPerson



    ##############################################################################
    #
    # GetListsByEntity
    #
    # Retrieves a list of Lists in LittleSis the given Entity (person or organization) belongs to.
    #
    ##############################################################################

    class GetListsByEntity < Choreography

      ####
      #  Create a new instance of the GetListsByEntity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/GetListsByEntity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetListsByEntityInputSet
      ####
      def new_input_set()
        return GetListsByEntityInputSet.new()
      end

      def make_result_set()
        return GetListsByEntityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetListsByEntityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetListsByEntity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetListsByEntityInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the EntityID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the record to be returned.
        ###

        def set_EntityID(value)
          set_input("EntityID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetListsByEntity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetListsByEntityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetListsByEntity



    ##############################################################################
    #
    # GetRelationshipsByEntity
    #
    # Retrieves a list of Relationships (to a person or to an organization) of a given Entity known in LittleSis.
    #
    ##############################################################################

    class GetRelationshipsByEntity < Choreography

      ####
      #  Create a new instance of the GetRelationshipsByEntity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/GetRelationshipsByEntity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRelationshipsByEntityInputSet
      ####
      def new_input_set()
        return GetRelationshipsByEntityInputSet.new()
      end

      def make_result_set()
        return GetRelationshipsByEntityResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetRelationshipsByEntityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRelationshipsByEntity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRelationshipsByEntityInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CategoryIDs input for this Choreo. 
        # 
        # @param String - (optional, string) Comma delimited list of category IDs the resulting Relationships must have.
        ###

        def set_CategoryIDs(value)
          set_input("CategoryIDs", value)
        end
        #### 
        # Set the value of the EntityID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the person or organization fro which a record is to be returned.
        ###

        def set_EntityID(value)
          set_input("EntityID", value)
        end
        #### 
        # Set the value of the Number input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what number of results to show. Used in conjunction with Page parameter, a Number of 20 and a Page of 6 will show results 100-120.
        ###

        def set_Number(value)
          set_input("Number", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what order the given entity must have in the relationship.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what page of results to show. Used in conjunction with Number parameter. A number of 20 and a Page of 6 will show results 100-120.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRelationshipsByEntity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRelationshipsByEntityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRelationshipsByEntity



    ##############################################################################
    #
    # GetSecondDegreeRelationships
    #
    # Retrieves a list of all the Entities (people or organizations) that are two-degrees removed by Relationships from the given Entity.
    #
    ##############################################################################

    class GetSecondDegreeRelationships < Choreography

      ####
      #  Create a new instance of the GetSecondDegreeRelationships Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/GetSecondDegreeRelationships")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSecondDegreeRelationshipsInputSet
      ####
      def new_input_set()
        return GetSecondDegreeRelationshipsInputSet.new()
      end

      def make_result_set()
        return GetSecondDegreeRelationshipsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetSecondDegreeRelationshipsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSecondDegreeRelationships
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSecondDegreeRelationshipsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Category1 input for this Choreo. 
        # 
        # @param String - (optional, string) Comma delimited list of Category IDs. Restricts the categories of Relationships that the given Entity and all first degree Entities returned should be connected through.
        ###

        def set_Category1(value)
          set_input("Category1", value)
        end
        #### 
        # Set the value of the Category2 input for this Choreo. 
        # 
        # @param String - (optional, string) Comma delimited list of Category IDs. Restricts the categories of Relationships that the given Entity and all second degree Entities returned should be connected through.
        ###

        def set_Category2(value)
          set_input("Category2", value)
        end
        #### 
        # Set the value of the EntityID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the person or organization for which records are to be returned.
        ###

        def set_EntityID(value)
          set_input("EntityID", value)
        end
        #### 
        # Set the value of the Number input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what number of results to show. Used in conjunction with Page parameter, a Number of 20 and a Page of 6 will show results 100-120. Defaults to 20.
        ###

        def set_Number(value)
          set_input("Number", value)
        end
        #### 
        # Set the value of the Order1 input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the order of the Entities returned in the first degree Relationship. Acceptable values: 1 or 2. See documentation for more on Relationship order.
        ###

        def set_Order1(value)
          set_input("Order1", value)
        end
        #### 
        # Set the value of the Order2 input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the order of the first degree Entity in the second degree Relationship. Acceptable values: 1 or 2. See documentation for more on Relationship order.
        ###

        def set_Order2(value)
          set_input("Order2", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what page of results to show. Used in conjunction with Number parameter. A number of 20 and a Page of 6 will show results 100-120.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSecondDegreeRelationships Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSecondDegreeRelationshipsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSecondDegreeRelationships



    ##############################################################################
    #
    # GetSubOrganizations
    #
    # Retrieves a list of suborganizations of a given organization.
    #
    ##############################################################################

    class GetSubOrganizations < Choreography

      ####
      #  Create a new instance of the GetSubOrganizations Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Entity/GetSubOrganizations")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSubOrganizationsInputSet
      ####
      def new_input_set()
        return GetSubOrganizationsInputSet.new()
      end

      def make_result_set()
        return GetSubOrganizationsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetSubOrganizationsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSubOrganizations
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSubOrganizationsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the EntityID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the organization.
        ###

        def set_EntityID(value)
          set_input("EntityID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSubOrganizations Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSubOrganizationsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSubOrganizations




  end # module Entity

  module List



    ##############################################################################
    #
    # GetList
    #
    # Retrieves information about a List in LittleSis according to its ID.
    #
    ##############################################################################

    class GetList < Choreography

      ####
      #  Create a new instance of the GetList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/List/GetList")
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
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Entities input for this Choreo. 
        # 
        # @param String - (optional, string) Indicate "entities" to retrieve records of the entities that belong to the list. Otherwise, only a basic record about the list will be returned.
        ###

        def set_Entities(value)
          set_input("Entities", value)
        end
        #### 
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the list record to be returned.
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the Number input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what number of results to show. Used in conjunction with Page parameter, a Nnumber of 20 and a Page of 6 will show results 100-120.
        ###

        def set_Number(value)
          set_input("Number", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what page of results to show. Used in conjunction with Number parameter. A number of 20 and a Page of 6 will show results 100-120.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the TypeID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) When the Entities parameter is activated, you can specify type IDs limiting the entities returned to those having the specified types (as a comma-delimited list).
        ###

        def set_TypeID(value)
          set_input("TypeID", value)
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
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetList



    ##############################################################################
    #
    # ListSearchByKeyword
    #
    # Retrieves the name and description fields of Lists available in LittleSis that match a keyword search.
    #
    ##############################################################################

    class ListSearchByKeyword < Choreography

      ####
      #  Create a new instance of the ListSearchByKeyword Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/List/ListSearchByKeyword")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListSearchByKeywordInputSet
      ####
      def new_input_set()
        return ListSearchByKeywordInputSet.new()
      end

      def make_result_set()
        return ListSearchByKeywordResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListSearchByKeywordResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListSearchByKeyword
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListSearchByKeywordInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Keywords input for this Choreo. 
        # 
        # @param String - (required, string) Enter search text.
        ###

        def set_Keywords(value)
          set_input("Keywords", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListSearchByKeyword Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListSearchByKeywordResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListSearchByKeyword




  end # module List

  module Reference



    ##############################################################################
    #
    # GetReferences
    #
    # Retrieves references for the data included in any record obtained from LittleSis.
    #
    ##############################################################################

    class GetReferences < Choreography

      ####
      #  Create a new instance of the GetReferences Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Reference/GetReferences")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetReferencesInputSet
      ####
      def new_input_set()
        return GetReferencesInputSet.new()
      end

      def make_result_set()
        return GetReferencesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetReferencesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetReferences
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetReferencesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The ID of the record for which you want references. This can be either an entity or a relationship ID.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the RecordType input for this Choreo. 
        # 
        # @param String - (required, string) Specify type of record for which you want to obtain references: entity (for a person or an institution record) or relationship (for a relationship record).
        ###

        def set_RecordType(value)
          set_input("RecordType", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetReferences Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetReferencesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetReferences



    ##############################################################################
    #
    # GetRelationshipReferences
    #
    # Retrieves a list of relationships for any entity in LittleSis along with references for the relationship data obtained.
    #
    ##############################################################################

    class GetRelationshipReferences < Choreography

      ####
      #  Create a new instance of the GetRelationshipReferences Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Reference/GetRelationshipReferences")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRelationshipReferencesInputSet
      ####
      def new_input_set()
        return GetRelationshipReferencesInputSet.new()
      end

      def make_result_set()
        return GetRelationshipReferencesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetRelationshipReferencesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRelationshipReferences
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRelationshipReferencesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param String - (optional, string) Comma delimited list of category IDs.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the Current input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set to 1 to limit the relationships returned to only past relationships. Set to 0 to limit relationships returned to only current relationships. Defaults to all.
        ###

        def set_Current(value)
          set_input("Current", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The ID of the record for which you want relationship references.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Number input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what number of results to show. Used in conjunction with Page parameter, a Number of 20 and a Page of 6 will show results 100-120.
        ###

        def set_Number(value)
          set_input("Number", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what order the given entity must have in the relationship.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies what page of results to show. Used in conjunction with Number parameter. A number of 20 and a Page of 6 will show results 100-120.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) Defaults to sorting by entity, which returns a list of relationships grouped by related entity. Specify another sort order for the results. Acceptable inputs: category or relationship.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRelationshipReferences Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRelationshipReferencesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRelationshipReferences




  end # module Reference

  module Relationship



    ##############################################################################
    #
    # GetBatchRelationships
    #
    # Retrieves information about a batch of relationships in LittleSis according to the relationship IDs provided.
    #
    ##############################################################################

    class GetBatchRelationships < Choreography

      ####
      #  Create a new instance of the GetBatchRelationships Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Relationship/GetBatchRelationships")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBatchRelationshipsInputSet
      ####
      def new_input_set()
        return GetBatchRelationshipsInputSet.new()
      end

      def make_result_set()
        return GetBatchRelationshipsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetBatchRelationshipsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBatchRelationships
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBatchRelationshipsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Details input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicate 1 to include details for each relationship record returned. Otherwise, only a basic record will be returned.
        ###

        def set_Details(value)
          set_input("Details", value)
        end
        #### 
        # Set the value of the RelationshipIDs input for this Choreo. 
        # 
        # @param String - (required, string) The IDs of the relationship records to be returned as a comma delimited string.
        ###

        def set_RelationshipIDs(value)
          set_input("RelationshipIDs", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBatchRelationships Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBatchRelationshipsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBatchRelationships



    ##############################################################################
    #
    # GetOneRelationship
    #
    # Retrieves information about any known relationship between two entities in LittleSis according their IDs.
    #
    ##############################################################################

    class GetOneRelationship < Choreography

      ####
      #  Create a new instance of the GetOneRelationship Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Relationship/GetOneRelationship")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetOneRelationshipInputSet
      ####
      def new_input_set()
        return GetOneRelationshipInputSet.new()
      end

      def make_result_set()
        return GetOneRelationshipResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetOneRelationshipResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetOneRelationship
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetOneRelationshipInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the EntityIDs input for this Choreo. 
        # 
        # @param String - (required, string) The IDs of the entities between which you want to find relationships. Format is a semicolon delimited string (e.g. 1026;1)
        ###

        def set_EntityIDs(value)
          set_input("EntityIDs", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetOneRelationship Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetOneRelationshipResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetOneRelationship



    ##############################################################################
    #
    # GetRelationships
    #
    # Retrieves information about a specific relationship documented in LittleSis according to its Relationship ID.
    #
    ##############################################################################

    class GetRelationships < Choreography

      ####
      #  Create a new instance of the GetRelationships Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LittleSis/Relationship/GetRelationships")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRelationshipsInputSet
      ####
      def new_input_set()
        return GetRelationshipsInputSet.new()
      end

      def make_result_set()
        return GetRelationshipsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetRelationshipsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRelationships
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRelationshipsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from LittleSis.org.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Details input for this Choreo. 
        # 
        # @param String - (optional, string) Indicate "details" to retrieve detailed information associated with this record, including fields associated with the specific relationship type. Otherwise, only a basic record will be returned.
        ###

        def set_Details(value)
          set_input("Details", value)
        end
        #### 
        # Set the value of the RelationshipID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the relationship record to be returned.
        ###

        def set_RelationshipID(value)
          set_input("RelationshipID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Format of the response returned by LittleSis.org. Acceptable inputs: xml or json. Defaults to xml
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRelationships Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRelationshipsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LittleSis.org.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRelationships




  end # module Relationship

end # module LittleSis