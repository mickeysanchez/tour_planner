require "temboo"

module Tour



  ##############################################################################
  #
  # QueryArticles
  #
  # Lets you query the Article Search API for New York Times articles.
  #
  ##############################################################################

  class QueryArticles < Choreography

    ####
    #  Create a new instance of the QueryArticles Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tour/QueryArticles")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return QueryArticlesInputSet
    ####
    def new_input_set()
      return QueryArticlesInputSet.new()
    end

    def make_result_set()
      return QueryArticlesResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = QueryArticlesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the QueryArticles
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class QueryArticlesInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by NY Times.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the BeginDate input for this Choreo. 
      # 
      # @param String - (optional, date) Sets the starting point (which is inclusive) of the range of publication dates to return. Must be used with EndDate. Date should be formatted like YYYYMMDD.
      ###

      def set_BeginDate(value)
        set_input("BeginDate", value)
      end
      #### 
      # Set the value of the EndDate input for this Choreo. 
      # 
      # @param String - (optional, date) Sets the end point (which is inclusive) of the range of publication dates to return. Must be used with BeginDate. Date should be formatted like YYYYMMDD.
      ###

      def set_EndDate(value)
        set_input("EndDate", value)
      end
      #### 
      # Set the value of the Facets input for this Choreo. 
      # 
      # @param String - (optional, string) A comma-delimited list of up to 5 facets. This indicates the sets of facet values to include in the response. See Choreo documentation for more information about accepted values for this input.
      ###

      def set_Facets(value)
        set_input("Facets", value)
      end
      #### 
      # Set the value of the Fields input for this Choreo. 
      # 
      # @param String - (optional, string) A comma-delimited list of fields to return. These fields are returned by default: body, byline, date, title, and url.
      ###

      def set_Fields(value)
        set_input("Fields", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) This corresponds to which set of 10 results is returned. Used to page through results. Set to 0 to return records 0-9, set to 1 to return records 10-19, etc.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (required, string) Enter keywords to search against the text of New York Times articles.
      ###

      def set_Query(value)
        set_input("Query", value)
      end
      #### 
      # Set the value of the Rank input for this Choreo. 
      # 
      # @param String - (optional, string) Sets the order of the results. Accepted values are: newest (the defaults), oldest, or closest.
      ###

      def set_Rank(value)
        set_input("Rank", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the QueryArticles Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class QueryArticlesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from the NY Times API.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class QueryArticles




end # module Tour