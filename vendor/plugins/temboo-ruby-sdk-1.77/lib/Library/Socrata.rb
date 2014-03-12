require "temboo"

module Socrata




  module SODA



    ##############################################################################
    #
    # Query
    #
    # Performs queries against data on the Socrata Platform.
    #
    ##############################################################################

    class Query < Choreography

      ####
      #  Create a new instance of the Query Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Socrata/SODA/Query")
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
        # Set the value of the AppToken input for this Choreo. 
        # 
        # @param String - (optional, string) The App Token provided by Socrata.
        ###

        def set_AppToken(value)
          set_input("AppToken", value)
        end
        #### 
        # Set the value of the Domain input for this Choreo. 
        # 
        # @param String - (required, string) The domain used in the request (i.e. soda.demo.socrata.com).
        ###

        def set_Domain(value)
          set_input("Domain", value)
        end
        #### 
        # Set the value of the Group input for this Choreo. 
        # 
        # @param String - (optional, string) Groups results based on the column name provided.
        ###

        def set_Group(value)
          set_input("Group", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param String - (optional, string) The maximum number of results to return. Used in combination with the Offset input for pagination. Defaults to 100.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates the starting point of the result set. Used in combination with the Limit input for pagination. Defaults to 0.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) Determines how results will be sorted. This input can take a column name, and can sort in either ascending or descending order (i.e. datetime asc).
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the Resource input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for a dataset to retrieve (i.e 4tka-6guv or earthquakes).
        ###

        def set_Resource(value)
          set_input("Resource", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default), xml, csv, and rdf.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Search input for this Choreo. 
        # 
        # @param String - (optional, string) A search clause. This wll do a full text search for a value.
        ###

        def set_Search(value)
          set_input("Search", value)
        end
        #### 
        # Set the value of the Select input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates which columns to return. If not specified, all columns will be returned.
        ###

        def set_Select(value)
          set_input("Select", value)
        end
        #### 
        # Set the value of the Where input for this Choreo. 
        # 
        # @param String - (optional, string) Filters the results using a WHERE clause.
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
      	# Retrieve the value for the "Fields" output from this Choreo execution
      	#
      	# @return String - (json) This lists the fields returned in this response in a JSON array.
      	####
      	def get_Fields()
      	  return @outputs["Fields"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response form Socrata.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Types" output from this Choreo execution
      	#
      	# @return String - (json) This is a list of SODA2 types in a JSON array. These will match up in the same order as the fields in X-SODA2-Fields.
      	####
      	def get_Types()
      	  return @outputs["Types"]
      	end
      end

    end # class Query




  end # module SODA

end # module Socrata