require "temboo"

module SchoolFinder



  ##############################################################################
  #
  # DistrictSearch
  #
  # Returns a list of school profiles and related school information for a zip code, city, state, or other criteria in the search parameters.
  #
  ##############################################################################

  class DistrictSearch < Choreography

    ####
    #  Create a new instance of the DistrictSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/SchoolFinder/DistrictSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DistrictSearchInputSet
    ####
    def new_input_set()
      return DistrictSearchInputSet.new()
    end

    def make_result_set()
      return DistrictSearchResultSet.new()
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
      results = DistrictSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DistrictSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DistrictSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) Your School Finder API Key.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (conditional, string) The name of a city. City requests must also be accompanied by the corresponding state parameter.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the DistrictID input for this Choreo. 
      # 
      # @param String - (conditional, string) The internal Education.com id of a school district.
      ###

      def set_DistrictID(value)
        set_input("DistrictID", value)
      end
      #### 
      # Set the value of the DistrictLEA input for this Choreo. 
      # 
      # @param String - (conditional, string) The NCES Local Education Agency (LEA) id of a school district.
      ###

      def set_DistrictLEA(value)
        set_input("DistrictLEA", value)
      end
      #### 
      # Set the value of the DistrictName input for this Choreo. 
      # 
      # @param String - (conditional, string) The name of the district.
      ###

      def set_DistrictName(value)
        set_input("DistrictName", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (conditional, string) The two letter abbreviation of a state e.g. South Caroline should be formatted “SC”.
      ###

      def set_State(value)
        set_input("State", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DistrictSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DistrictSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Education.com.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DistrictSearch



  ##############################################################################
  #
  # GBD
  #
  # Returns contextual and branding links to Education.com. 
  #
  ##############################################################################

  class GBD < Choreography

    ####
    #  Create a new instance of the GBD Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/SchoolFinder/GBD")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GBDInputSet
    ####
    def new_input_set()
      return GBDInputSet.new()
    end

    def make_result_set()
      return GBDResultSet.new()
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
      results = GBDResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GBD
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GBDInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) Your School Finder API Key.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (conditional, string) The name of a city. Must also be accompanied by the corresponding state parameter.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the DistrictID input for this Choreo. 
      # 
      # @param String - (conditional, string) The internal Education.com id of a school district.
      ###

      def set_DistrictID(value)
        set_input("DistrictID", value)
      end
      #### 
      # Set the value of the NCES input for this Choreo. 
      # 
      # @param String - (conditional, string) The nces id of the school.
      ###

      def set_NCES(value)
        set_input("NCES", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the SchoolID input for this Choreo. 
      # 
      # @param String - (conditional, string) The id of the school.
      ###

      def set_SchoolID(value)
        set_input("SchoolID", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (conditional, string) The two letter abbreviation of a state e.g. South Caroline should be formatted “SC”.
      ###

      def set_State(value)
        set_input("State", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GBD Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GBDResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Education.com.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GBD



  ##############################################################################
  #
  # GetReviews
  #
  # Returns a list of the most recent school reviews and parent rating for a single school.
  #
  ##############################################################################

  class GetReviews < Choreography

    ####
    #  Create a new instance of the GetReviews Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/SchoolFinder/GetReviews")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetReviewsInputSet
    ####
    def new_input_set()
      return GetReviewsInputSet.new()
    end

    def make_result_set()
      return GetReviewsResultSet.new()
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
      results = GetReviewsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetReviews
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetReviewsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) Your School Finder API Key.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the NCES input for this Choreo. 
      # 
      # @param String - (conditional, string) The National Center for Education Statistics (NCES) id of the school. NCES or SchoolID are required.
      ###

      def set_NCES(value)
        set_input("NCES", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the SchoolID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Education.com id of the school you want to find. NCES or SchoolID are required.
      ###

      def set_SchoolID(value)
        set_input("SchoolID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetReviews Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetReviewsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Education.com.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetReviews



  ##############################################################################
  #
  # GetStudentStats
  #
  # Returns student statistics for a single school, city, or state. 
  #
  ##############################################################################

  class GetStudentStats < Choreography

    ####
    #  Create a new instance of the GetStudentStats Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/SchoolFinder/GetStudentStats")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetStudentStatsInputSet
    ####
    def new_input_set()
      return GetStudentStatsInputSet.new()
    end

    def make_result_set()
      return GetStudentStatsResultSet.new()
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
      results = GetStudentStatsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetStudentStats
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetStudentStatsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) Your School Finder API Key.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (optional, string) The name of a city. Please note cities composed of two words should be formatted with a plus sign e.g. “san+Francisco.” City requests must also be accompanied by the corresponding state parameter.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the DistrictID input for this Choreo. 
      # 
      # @param String - (conditional, string) The education.com district id.
      ###

      def set_DistrictID(value)
        set_input("DistrictID", value)
      end
      #### 
      # Set the value of the DistrictLEA input for this Choreo. 
      # 
      # @param String - (conditional, string) The LEA id of the district.
      ###

      def set_DistrictLEA(value)
        set_input("DistrictLEA", value)
      end
      #### 
      # Set the value of the NCES input for this Choreo. 
      # 
      # @param String - (conditional, string) The National Center for Education Statistics (NCES) id of the school.
      ###

      def set_NCES(value)
        set_input("NCES", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (conditional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the SchoolID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Education.com id of the school you want to find.
      ###

      def set_SchoolID(value)
        set_input("SchoolID", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The two letter abbreviation of a state e.g. South Caroline should be formatted “SC”.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Zip input for this Choreo. 
      # 
      # @param Integer - (optional, integer) A five digit US postal code.
      ###

      def set_Zip(value)
        set_input("Zip", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetStudentStats Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetStudentStatsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Education.com.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetStudentStats



  ##############################################################################
  #
  # GetTeacherStats
  #
  # Returns teacher statistics for a school, district, or state. 
  #
  ##############################################################################

  class GetTeacherStats < Choreography

    ####
    #  Create a new instance of the GetTeacherStats Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/SchoolFinder/GetTeacherStats")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetTeacherStatsInputSet
    ####
    def new_input_set()
      return GetTeacherStatsInputSet.new()
    end

    def make_result_set()
      return GetTeacherStatsResultSet.new()
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
      results = GetTeacherStatsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetTeacherStats
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetTeacherStatsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) Your School Finder API Key.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the DistrictID input for this Choreo. 
      # 
      # @param String - (conditional, string) The education.com district id.
      ###

      def set_DistrictID(value)
        set_input("DistrictID", value)
      end
      #### 
      # Set the value of the DistrictLEA input for this Choreo. 
      # 
      # @param String - (conditional, string) The LEA id of the district.
      ###

      def set_DistrictLEA(value)
        set_input("DistrictLEA", value)
      end
      #### 
      # Set the value of the NCES input for this Choreo. 
      # 
      # @param String - (conditional, string) The National Center for Education Statistics (NCES) id of the school.
      ###

      def set_NCES(value)
        set_input("NCES", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the SchoolID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Education.com id of the school you want to find.
      ###

      def set_SchoolID(value)
        set_input("SchoolID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetTeacherStats Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetTeacherStatsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Education.com.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetTeacherStats



  ##############################################################################
  #
  # GetTestRating
  #
  # Returns the Education.com TestRating for a single school or schools within a city or zip code. 
  #
  ##############################################################################

  class GetTestRating < Choreography

    ####
    #  Create a new instance of the GetTestRating Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/SchoolFinder/GetTestRating")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetTestRatingInputSet
    ####
    def new_input_set()
      return GetTestRatingInputSet.new()
    end

    def make_result_set()
      return GetTestRatingResultSet.new()
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
      results = GetTestRatingResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetTestRating
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetTestRatingInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) Your School Finder API Key.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (conditional, string) The name of a city. Must also be accompanied by the corresponding state parameter.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the NCES input for this Choreo. 
      # 
      # @param String - (conditional, string) The National Center for Education Statistics (NCES) id of the school.
      ###

      def set_NCES(value)
        set_input("NCES", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the SchoolID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Education.com id of the school you want to find.
      ###

      def set_SchoolID(value)
        set_input("SchoolID", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (conditional, string) The two letter abbreviation of a state e.g. South Caroline should be formatted “SC”.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Zip input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) A five digit US postal code.
      ###

      def set_Zip(value)
        set_input("Zip", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetTestRating Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetTestRatingResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Education.com.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetTestRating



  ##############################################################################
  #
  # GetTestScores
  #
  # Returns test scores for a school, district, city or state. 


  #
  ##############################################################################

  class GetTestScores < Choreography

    ####
    #  Create a new instance of the GetTestScores Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/SchoolFinder/GetTestScores")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetTestScoresInputSet
    ####
    def new_input_set()
      return GetTestScoresInputSet.new()
    end

    def make_result_set()
      return GetTestScoresResultSet.new()
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
      results = GetTestScoresResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetTestScores
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetTestScoresInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) Your School Finder API Key.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the DistrictID input for this Choreo. 
      # 
      # @param String - (conditional, string) The education.com district id.
      ###

      def set_DistrictID(value)
        set_input("DistrictID", value)
      end
      #### 
      # Set the value of the DistrictLEA input for this Choreo. 
      # 
      # @param String - (conditional, string) The LEA id of the district.
      ###

      def set_DistrictLEA(value)
        set_input("DistrictLEA", value)
      end
      #### 
      # Set the value of the NCES input for this Choreo. 
      # 
      # @param String - (conditional, string) The National Center for Education Statistics (NCES) id of the school.
      ###

      def set_NCES(value)
        set_input("NCES", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the SchoolID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Education.com id of the school you want to find.
      ###

      def set_SchoolID(value)
        set_input("SchoolID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetTestScores Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetTestScoresResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Education.com.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetTestScores



  ##############################################################################
  #
  # NumberOf
  #
  # Returns the total number of schools, the number of schools at each level (elementary, middle, high) and the number of each type of school (public, private, charter) in a given city. 
  #
  ##############################################################################

  class NumberOf < Choreography

    ####
    #  Create a new instance of the NumberOf Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/SchoolFinder/NumberOf")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return NumberOfInputSet
    ####
    def new_input_set()
      return NumberOfInputSet.new()
    end

    def make_result_set()
      return NumberOfResultSet.new()
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
      results = NumberOfResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the NumberOf
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class NumberOfInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) Your School Finder API Key.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (required, string) The name of a city. City requests must also be accompanied by the corresponding state parameter.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (required, string) The two letter abbreviation of a state e.g. South Caroline should be formatted “SC”.
      ###

      def set_State(value)
        set_input("State", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the NumberOf Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class NumberOfResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Education.com.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class NumberOf



  ##############################################################################
  #
  # SchoolSearch
  #
  # Returns a list of school district profiles and related school information for a zip code, city, state, or other criteria in the search parameters.
  #
  ##############################################################################

  class SchoolSearch < Choreography

    ####
    #  Create a new instance of the SchoolSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/SchoolFinder/SchoolSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SchoolSearchInputSet
    ####
    def new_input_set()
      return SchoolSearchInputSet.new()
    end

    def make_result_set()
      return SchoolSearchResultSet.new()
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
      results = SchoolSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SchoolSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SchoolSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) Your School Finder API Key.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (conditional, string) The name of a city. Must also be accompanied by the corresponding state parameter.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the County input for this Choreo. 
      # 
      # @param String - (conditional, string) The name of a county.
      ###

      def set_County(value)
        set_input("County", value)
      end
      #### 
      # Set the value of the Distance input for this Choreo. 
      # 
      # @param BigDecimal - (conditional, decimal) A distance in miles from a specific latitude/longitude. The suggested value is around 1.5 miles. Please note that distance is required when using latitude and longitude parameters.
      ###

      def set_Distance(value)
        set_input("Distance", value)
      end
      #### 
      # Set the value of the DistrictID input for this Choreo. 
      # 
      # @param String - (optional, string) The internal Education.com id of a school district.
      ###

      def set_DistrictID(value)
        set_input("DistrictID", value)
      end
      #### 
      # Set the value of the DistrictLEA input for this Choreo. 
      # 
      # @param String - (optional, string) The NCES Local Education Agency (LEA) id of a school district.
      ###

      def set_DistrictLEA(value)
        set_input("DistrictLEA", value)
      end
      #### 
      # Set the value of the Latitude input for this Choreo. 
      # 
      # @param BigDecimal - (conditional, decimal) A latitude which serves as the center for distance searches. Please note that distance is required when using latitude and longitude parameters.
      ###

      def set_Latitude(value)
        set_input("Latitude", value)
      end
      #### 
      # Set the value of the Longitude input for this Choreo. 
      # 
      # @param BigDecimal - (conditional, decimal) A longitude which serves as the center for distance searches. Please note that distance is required when using latitude and longitude parameters.
      ###

      def set_Longitude(value)
        set_input("Longitude", value)
      end
      #### 
      # Set the value of the MinResult input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Minimum number of search results to return. The search will be expanded in increments of 0.5 miles until the minresult is reached. minResult is only valid for zip code and latitude/longitude requests.
      ###

      def set_MinResult(value)
        set_input("MinResult", value)
      end
      #### 
      # Set the value of the NCES input for this Choreo. 
      # 
      # @param String - (optional, string) The National Center for Education Statistics (NCES) id of the school you want to find.
      ###

      def set_NCES(value)
        set_input("NCES", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Format of the response returned by Education.com. Defaluts to XML. JSON is also possible.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the SchoolID input for this Choreo. 
      # 
      # @param String - (optional, string) The Education.com id of the school you want to find.
      ###

      def set_SchoolID(value)
        set_input("SchoolID", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (conditional, string) The two letter abbreviation of a state e.g. South Caroline should be formatted “SC”.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Zip input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) A five digit US postal code.
      ###

      def set_Zip(value)
        set_input("Zip", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SchoolSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SchoolSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Education.com.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SchoolSearch




end # module SchoolFinder