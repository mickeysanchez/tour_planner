require "temboo"

module DuckDuckGo



  ##############################################################################
  #
  # Query
  #
  # Access DuckDuckGo web search functionality.  
  #
  ##############################################################################

  class Query < Choreography

    ####
    #  Create a new instance of the Query Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DuckDuckGo/Query")
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
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) Enter: xml, or json.  Default is set to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the NoHTML input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Enter 1 to remove HTML from text. Set only if Format=json.
      ###

      def set_NoHTML(value)
        set_input("NoHTML", value)
      end
      #### 
      # Set the value of the NoRedirect input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Enter 1 to skip HTTP redirects.  This is useful for !bang commands. Set only if Format=json.
      ###

      def set_NoRedirect(value)
        set_input("NoRedirect", value)
      end
      #### 
      # Set the value of the PrettyPrint input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Enter 1 to pretty-print the JSON output.
      ###

      def set_PrettyPrint(value)
        set_input("PrettyPrint", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (required, string) Enter a search query.
      ###

      def set_Query(value)
        set_input("Query", value)
      end
      #### 
      # Set the value of the SkipDisambiguation input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Enter 1 to skip disambiguation. Set only if Format=json.
      ###

      def set_SkipDisambiguation(value)
        set_input("SkipDisambiguation", value)
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
    	# @return String - The response from DuckDuckGo in XML or JSON format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Query




end # module DuckDuckGo