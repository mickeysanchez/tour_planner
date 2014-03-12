require "temboo"

module NPR




  module StationFinder



    ##############################################################################
    #
    # SearchByCallLetters
    #
    # Retrieves local NPR member stations based on uniquely identifying call letters.
    #
    ##############################################################################

    class SearchByCallLetters < Choreography

      ####
      #  Create a new instance of the SearchByCallLetters Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StationFinder/SearchByCallLetters")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchByCallLettersInputSet
      ####
      def new_input_set()
        return SearchByCallLettersInputSet.new()
      end

      def make_result_set()
        return SearchByCallLettersResultSet.new()
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
        results = SearchByCallLettersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchByCallLetters
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchByCallLettersInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NPR.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Band input for this Choreo. 
        # 
        # @param String - (optional, string) Enter AM or FM.
        ###

        def set_Band(value)
          set_input("Band", value)
        end
        #### 
        # Set the value of the CallLetters input for this Choreo. 
        # 
        # @param String - (required, string) Enter the unique identifier associated with a station.
        ###

        def set_CallLetters(value)
          set_input("CallLetters", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchByCallLetters Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchByCallLettersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) 
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchByCallLetters



    ##############################################################################
    #
    # SearchByCity
    #
    # Retrieves local NPR member stations based on zip code.
    #
    ##############################################################################

    class SearchByCity < Choreography

      ####
      #  Create a new instance of the SearchByCity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StationFinder/SearchByCity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchByCityInputSet
      ####
      def new_input_set()
        return SearchByCityInputSet.new()
      end

      def make_result_set()
        return SearchByCityResultSet.new()
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
        results = SearchByCityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchByCity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchByCityInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NPR.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the City input for this Choreo. 
        # 
        # @param String - (required, string) Enter the city name. When searching by city, the state parameter must also be specified.
        ###

        def set_City(value)
          set_input("City", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (required, string) Enter the state. The city parameter must also be specified.
        ###

        def set_State(value)
          set_input("State", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchByCity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchByCityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) 
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchByCity



    ##############################################################################
    #
    # SearchByID
    #
    # Retrieves local NPR member stations based on their unique ID.
    #
    ##############################################################################

    class SearchByID < Choreography

      ####
      #  Create a new instance of the SearchByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StationFinder/SearchByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchByIDInputSet
      ####
      def new_input_set()
        return SearchByIDInputSet.new()
      end

      def make_result_set()
        return SearchByIDResultSet.new()
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
        results = SearchByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NPR.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The unique ID that NPR asociates with the organization.
        ###

        def set_ID(value)
          set_input("ID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchByIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) 
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchByID



    ##############################################################################
    #
    # SearchByLocation
    #
    # Retrieves local NPR member stations near the specified lattitude and longitude location coordinates.
    #
    ##############################################################################

    class SearchByLocation < Choreography

      ####
      #  Create a new instance of the SearchByLocation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StationFinder/SearchByLocation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchByLocationInputSet
      ####
      def new_input_set()
        return SearchByLocationInputSet.new()
      end

      def make_result_set()
        return SearchByLocationResultSet.new()
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
        results = SearchByLocationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchByLocation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchByLocationInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NPR.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Lattitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The lattitude point of a station's location. Must be used together with the longitude parameter. This must be a positive value.
        ###

        def set_Lattitude(value)
          set_input("Lattitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude point of a station's location. Must be used together with the lattitude parameter. This must be a positive value.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchByLocation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchByLocationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) 
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchByLocation



    ##############################################################################
    #
    # SearchByZipCode
    #
    # Retrieves local NPR member stations based on zip code.
    #
    ##############################################################################

    class SearchByZipCode < Choreography

      ####
      #  Create a new instance of the SearchByZipCode Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StationFinder/SearchByZipCode")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchByZipCodeInputSet
      ####
      def new_input_set()
        return SearchByZipCodeInputSet.new()
      end

      def make_result_set()
        return SearchByZipCodeResultSet.new()
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
        results = SearchByZipCodeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchByZipCode
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchByZipCodeInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NPR.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Zip input for this Choreo. 
        # 
        # @param String - (required, string) Enter a five-digit zip code.
        ###

        def set_Zip(value)
          set_input("Zip", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchByZipCode Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchByZipCodeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) 
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchByZipCode



    ##############################################################################
    #
    # SearchStations
    #
    # 
    #
    ##############################################################################

    class SearchStations < Choreography

      ####
      #  Create a new instance of the SearchStations Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StationFinder/SearchStations")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchStationsInputSet
      ####
      def new_input_set()
        return SearchStationsInputSet.new()
      end

      def make_result_set()
        return SearchStationsResultSet.new()
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
        results = SearchStationsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchStations
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchStationsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NPR.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Band input for this Choreo. 
        # 
        # @param String - (optional, string) Enter AM or FM. This parameter can only be used when the CallLetters parameter is indicated to refine a search.
        ###

        def set_Band(value)
          set_input("Band", value)
        end
        #### 
        # Set the value of the CallLetters input for this Choreo. 
        # 
        # @param String - (optional, string) Enter the unique identifier associated with a station. Can be used with the band parameter to refine a search.
        ###

        def set_CallLetters(value)
          set_input("CallLetters", value)
        end
        #### 
        # Set the value of the City input for this Choreo. 
        # 
        # @param String - (optional, string) Enter the city name. When using the city, the state parameter must also be specified.
        ###

        def set_City(value)
          set_input("City", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (optional, string) Unique ID associated with an organization.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Lattitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The lattitude point of a station's location. Must be used together with the longitude parameter. This must be a positive value.
        ###

        def set_Lattitude(value)
          set_input("Lattitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The longitude point of a station's location. Must be used together with the lattitude parameter. This must be a positive value.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Network input for this Choreo. 
        # 
        # @param String - (optional, string) Searches for stations that belong to the provided network.
        ###

        def set_Network(value)
          set_input("Network", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) Enter the state. Parameter can be the full state name or the two-letter state abbreviation. When using state, the city parameter must also be used.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Zip input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Enter a five-digit zip code.
        ###

        def set_Zip(value)
          set_input("Zip", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchStations Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchStationsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) 
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchStations




  end # module StationFinder

  module StoryFinder



    ##############################################################################
    #
    # Bios
    #
    # Retrieves a list of NPR personalities and corresponding IDs. Also used to look up the IDs of specific NPR personalities by specifying them as an optional parameter.
    #
    ##############################################################################

    class Bios < Choreography

      ####
      #  Create a new instance of the Bios Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StoryFinder/Bios")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return BiosInputSet
      ####
      def new_input_set()
        return BiosInputSet.new()
      end

      def make_result_set()
        return BiosResultSet.new()
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
        results = BiosResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Bios
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class BiosInputSet < Choreography::InputSet

        #### 
        # Set the value of the Personality input for this Choreo. 
        # 
        # @param String - (optional, string) The specific name or an NPR personality to return. Multiple names can be specified separated by commas (i.e. Andrei Codrescu,Allison Keyes). Personality IDs are returned when this input is used.
        ###

        def set_Personality(value)
          set_input("Personality", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying Personality, only xml is returned.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StoryCountAll input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories.
        ###

        def set_StoryCountAll(value)
          set_input("StoryCountAll", value)
        end
        #### 
        # Set the value of the StoryCountMonth input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published in the last month.
        ###

        def set_StoryCountMonth(value)
          set_input("StoryCountMonth", value)
        end
        #### 
        # Set the value of the StoryCountToday input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published today.
        ###

        def set_StoryCountToday(value)
          set_input("StoryCountToday", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Bios Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class BiosResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from NPR.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Id" output from this Choreo execution
      	#
      	# @return String - (integer) The ID of the personality specified. This is only returned when the Personality input is specified. When personalities are specified, this will be a list of IDs separated by commas.
      	####
      	def get_Id()
      	  return @outputs["Id"]
      	end
      end

    end # class Bios



    ##############################################################################
    #
    # Blogs
    #
    # Retrieves a list of NPR blogs and corresponding IDs. Also used to look up the IDs of specific NPR blog by specifying those as an optional parameter.
    #
    ##############################################################################

    class Blogs < Choreography

      ####
      #  Create a new instance of the Blogs Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StoryFinder/Blogs")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return BlogsInputSet
      ####
      def new_input_set()
        return BlogsInputSet.new()
      end

      def make_result_set()
        return BlogsResultSet.new()
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
        results = BlogsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Blogs
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class BlogsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Blog input for this Choreo. 
        # 
        # @param String - (optional, string) The specific blog title to return. Multiple blog titles can be specified separated by commas (i.e. Soapbox,Planet Money). Blog IDs are returned when this input is used.
        ###

        def set_Blog(value)
          set_input("Blog", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying Blog, only xml is returned.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StoryCountAll input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories.
        ###

        def set_StoryCountAll(value)
          set_input("StoryCountAll", value)
        end
        #### 
        # Set the value of the StoryCountMonth input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published in the last month.
        ###

        def set_StoryCountMonth(value)
          set_input("StoryCountMonth", value)
        end
        #### 
        # Set the value of the StoryCountToday input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published today.
        ###

        def set_StoryCountToday(value)
          set_input("StoryCountToday", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Blogs Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class BlogsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from NPR.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Id" output from this Choreo execution
      	#
      	# @return String - (integer) The ID of the blog. This is only returned when the Blog input is specified. When multiple blogs are specified, this will be a list of IDs separated by commas.
      	####
      	def get_Id()
      	  return @outputs["Id"]
      	end
      end

    end # class Blogs



    ##############################################################################
    #
    # Columns
    #
    # Retrieves a list of NPR column titles and corresponding IDs. Also used to look up the IDs of specific NPR columns by specifying the title as an optional parameter.
    #
    ##############################################################################

    class Columns < Choreography

      ####
      #  Create a new instance of the Columns Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StoryFinder/Columns")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ColumnsInputSet
      ####
      def new_input_set()
        return ColumnsInputSet.new()
      end

      def make_result_set()
        return ColumnsResultSet.new()
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
        results = ColumnsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Columns
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ColumnsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Column input for this Choreo. 
        # 
        # @param String - (optional, string) The specific column title to return. Multiple column titles can be specified separated by commas (i.e. Book Reviews,My Guilty Pleasure). Column IDs are returned when this input is used.
        ###

        def set_Column(value)
          set_input("Column", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying Column, only xml is returned.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StoryCountAll input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories.
        ###

        def set_StoryCountAll(value)
          set_input("StoryCountAll", value)
        end
        #### 
        # Set the value of the StoryCountMonth input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published in the last month.
        ###

        def set_StoryCountMonth(value)
          set_input("StoryCountMonth", value)
        end
        #### 
        # Set the value of the StoryCountToday input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published today.
        ###

        def set_StoryCountToday(value)
          set_input("StoryCountToday", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Columns Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ColumnsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from NPR.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Id" output from this Choreo execution
      	#
      	# @return String - (integer) The ID of the column. This is only returned when the Column input is specified. When columns are specified, this will be a list of IDs separated by commas.
      	####
      	def get_Id()
      	  return @outputs["Id"]
      	end
      end

    end # class Columns



    ##############################################################################
    #
    # GetListByID
    #
    # Retrieves a list of NPR categories from a specified list type ID.
    #
    ##############################################################################

    class GetListByID < Choreography

      ####
      #  Create a new instance of the GetListByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StoryFinder/GetListByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetListByIDInputSet
      ####
      def new_input_set()
        return GetListByIDInputSet.new()
      end

      def make_result_set()
        return GetListByIDResultSet.new()
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
        results = GetListByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetListByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetListByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the ChildrenOf input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items which are assigned to the given topic ID. For example, if Id=3006 and ChildrenOf=1008 only recent series which are assigned to "Arts & Life" are returned.
        ###

        def set_ChildrenOf(value)
          set_input("ChildrenOf", value)
        end
        #### 
        # Set the value of the HideChildren input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If set to "1", returns only topics which are not subtopics of another topic.
        ###

        def set_HideChildren(value)
          set_input("HideChildren", value)
        end
        #### 
        # Set the value of the Id input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the list type you want to retrieve. For example, the list type id for Music Genres is 3218).
        ###

        def set_Id(value)
          set_input("Id", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Set to json or xml (the default).
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StoryCountAll input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories.
        ###

        def set_StoryCountAll(value)
          set_input("StoryCountAll", value)
        end
        #### 
        # Set the value of the StoryCountMonth input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published in the last month.
        ###

        def set_StoryCountMonth(value)
          set_input("StoryCountMonth", value)
        end
        #### 
        # Set the value of the StoryCountToday input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published today.
        ###

        def set_StoryCountToday(value)
          set_input("StoryCountToday", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetListByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetListByIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from NPR.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetListByID



    ##############################################################################
    #
    # MusicArtists
    #
    # Retrieves a list of NPR music artists and corresponding IDs. Also used to look up the IDs of specific NPR music artists by specifying them as an optional parameter.
    #
    ##############################################################################

    class MusicArtists < Choreography

      ####
      #  Create a new instance of the MusicArtists Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StoryFinder/MusicArtists")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MusicArtistsInputSet
      ####
      def new_input_set()
        return MusicArtistsInputSet.new()
      end

      def make_result_set()
        return MusicArtistsResultSet.new()
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
        results = MusicArtistsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MusicArtists
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MusicArtistsInputSet < Choreography::InputSet

        #### 
        # Set the value of the MusicArtist input for this Choreo. 
        # 
        # @param String - (optional, string) The specific name or an NPR music artist to return. Multiple names can be specified separated by commas (i.e. Thom Yorke,Yo La Tengo). Music artist IDs are returned when this input is used.
        ###

        def set_MusicArtist(value)
          set_input("MusicArtist", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying MusicArtist, only xml is returned.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StoryCountAll input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories.
        ###

        def set_StoryCountAll(value)
          set_input("StoryCountAll", value)
        end
        #### 
        # Set the value of the StoryCountMonth input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published in the last month.
        ###

        def set_StoryCountMonth(value)
          set_input("StoryCountMonth", value)
        end
        #### 
        # Set the value of the StoryCountToday input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published today.
        ###

        def set_StoryCountToday(value)
          set_input("StoryCountToday", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MusicArtists Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MusicArtistsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from NPR.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Id" output from this Choreo execution
      	#
      	# @return String - (integer) The ID of the music artist. This is only returned when the MusicArtist input is specified. When multiple artist names are specified, this will be a list of IDs separated by commas.
      	####
      	def get_Id()
      	  return @outputs["Id"]
      	end
      end

    end # class MusicArtists



    ##############################################################################
    #
    # MusicGenres
    #
    # Retrieves a list of NPR music genres and corresponding IDs. Also used to look up the IDs of specific NPR music genres by specifying those as an optional parameter.
    #
    ##############################################################################

    class MusicGenres < Choreography

      ####
      #  Create a new instance of the MusicGenres Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StoryFinder/MusicGenres")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MusicGenresInputSet
      ####
      def new_input_set()
        return MusicGenresInputSet.new()
      end

      def make_result_set()
        return MusicGenresResultSet.new()
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
        results = MusicGenresResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MusicGenres
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MusicGenresInputSet < Choreography::InputSet

        #### 
        # Set the value of the MusicGenre input for this Choreo. 
        # 
        # @param String - (optional, string) The specific music genre title to return. Multiple genre titles can be specified separated by commas (i.e. Blues,Classical). Genre IDs are returned when this input is used.
        ###

        def set_MusicGenre(value)
          set_input("MusicGenre", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying MusicGenre, only xml is returned.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StoryCountAll input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories.
        ###

        def set_StoryCountAll(value)
          set_input("StoryCountAll", value)
        end
        #### 
        # Set the value of the StoryCountMonth input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published in the last month.
        ###

        def set_StoryCountMonth(value)
          set_input("StoryCountMonth", value)
        end
        #### 
        # Set the value of the StoryCountToday input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published today.
        ###

        def set_StoryCountToday(value)
          set_input("StoryCountToday", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MusicGenres Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MusicGenresResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from NPR.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Id" output from this Choreo execution
      	#
      	# @return String - (integer) The ID of the music genre. This is only returned when the MusicGenre input is specified. When multiple genres are specified, this will be a list of IDs separated by commas.
      	####
      	def get_Id()
      	  return @outputs["Id"]
      	end
      end

    end # class MusicGenres



    ##############################################################################
    #
    # Programs
    #
    # Retrieves a list of NPR programs and corresponding IDs. Also used to look up the IDs of specific NPR programs by specifying them as an optional parameter.
    #
    ##############################################################################

    class Programs < Choreography

      ####
      #  Create a new instance of the Programs Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StoryFinder/Programs")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ProgramsInputSet
      ####
      def new_input_set()
        return ProgramsInputSet.new()
      end

      def make_result_set()
        return ProgramsResultSet.new()
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
        results = ProgramsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Programs
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ProgramsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Program input for this Choreo. 
        # 
        # @param String - (optional, string) The specific program title to return. Multiple prorgam titles can be specified separated by commas (i.e. All Things Considered,Tell Me More). Program IDs are returned when this input is used.
        ###

        def set_Program(value)
          set_input("Program", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying Program, only xml is returned.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StoryCountAll input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories.
        ###

        def set_StoryCountAll(value)
          set_input("StoryCountAll", value)
        end
        #### 
        # Set the value of the StoryCountMonth input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published in the last month.
        ###

        def set_StoryCountMonth(value)
          set_input("StoryCountMonth", value)
        end
        #### 
        # Set the value of the StoryCountToday input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published today.
        ###

        def set_StoryCountToday(value)
          set_input("StoryCountToday", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Programs Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ProgramsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from NPR.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Id" output from this Choreo execution
      	#
      	# @return String - (integer) The ID of the program. This is only returned when the Program input is specified. When multiple programs are specified, this will be a list of IDs separated by commas.
      	####
      	def get_Id()
      	  return @outputs["Id"]
      	end
      end

    end # class Programs



    ##############################################################################
    #
    # Query
    #
    # Queries the Story API for stories across all NPR media, including audio, text, images, and web-only content.
    #
    ##############################################################################

    class Query < Choreography

      ####
      #  Create a new instance of the Query Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StoryFinder/Query")
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
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, multiline) The API Key provided by NPR.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the DateType input for this Choreo. 
        # 
        # @param String - (optional, string) Controls the meaning of StartDate and EndDate. Values can be story or correction.
        ###

        def set_DateType(value)
          set_input("DateType", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, string) The exact date for which stories will be returned. Format: YYYY-MM-DD The special value current is also allowed. Cannot be used with StartDate or EndDate.
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (optional, string) The end date for which stories will be returned. Format: YYYY-MM-DD Can be used with StartDate to search a range. Cannot be used with Date. The meaning of this parameter can be modified with DateType.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-delimited list of fields to be returned in the output for the results. List of fields can be made up of selectable fields or compilation fields. Defaults to all available fields.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the IDBoolean input for this Choreo. 
        # 
        # @param String - (optional, string) Describes how IDs are searched. Allowed values: and, or, union.
        ###

        def set_IDBoolean(value)
          set_input("IDBoolean", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-delimited list of ID numbers corresponding to topics, music genres, programs, blogs, bios, music artists, and series.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the NumResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of stories to be returned up to 20 maximum.
        ###

        def set_NumResults(value)
          set_input("NumResults", value)
        end
        #### 
        # Set the value of the OrgID input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-delimited list of ID numbers of local stations.
        ###

        def set_OrgID(value)
          set_input("OrgID", value)
        end
        #### 
        # Set the value of the RequiredAssets input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-delimited list that limits the resulting set to contain only stories with a particular type of asset. Allowed values: audio, image, text, and correction.
        ###

        def set_RequiredAssets(value)
          set_input("RequiredAssets", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Enter output format. Values accepted: NPRML, RSS, MediaRSS, Podcast, ATOM, JSON, HTML WIdget, Javascript Widget. Default is JSON.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SearchTerm input for this Choreo. 
        # 
        # @param String - (optional, string) Term to search in NPR's search engine. Can be used with SearchType to specify which fields should be searched.
        ###

        def set_SearchTerm(value)
          set_input("SearchTerm", value)
        end
        #### 
        # Set the value of the SearchType input for this Choreo. 
        # 
        # @param String - (optional, string) Used with SearchTerm to specify which fields should be searched. Default searches all fields. Allowed values: main and full.
        ###

        def set_SearchType(value)
          set_input("SearchType", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) Determines the order in which the stories will be returned. Default is date descending. Other allowed values: date ascending, editor assigned, and featured.
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (optional, string) The start date for which stories will be returned. Format: YYYY-MM-DD Can be used with EndDate to search a range. Cannot be used with Date. The meaning of this parameter can be modified with DateType.
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end
        #### 
        # Set the value of the StartNum input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Determines where in the result set to start returning stories.
        ###

        def set_StartNum(value)
          set_input("StartNum", value)
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
      	# @return String - (xml) The response from NPR.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Query



    ##############################################################################
    #
    # Series
    #
    # Retrieves a list of NPR series titles and corresponding IDs. Also used to look up the IDs of specific NPR series by specifying those as an optional parameter.
    #
    ##############################################################################

    class Series < Choreography

      ####
      #  Create a new instance of the Series Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StoryFinder/Series")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SeriesInputSet
      ####
      def new_input_set()
        return SeriesInputSet.new()
      end

      def make_result_set()
        return SeriesResultSet.new()
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
        results = SeriesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Series
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SeriesInputSet < Choreography::InputSet

        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying Series, only xml is returned.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Series input for this Choreo. 
        # 
        # @param String - (optional, string) The specific series title to return. Multiple titles can be specified separated by commas (i.e. Life in Berlin,Climate Connections). Series IDs are returned when this input is used.
        ###

        def set_Series(value)
          set_input("Series", value)
        end
        #### 
        # Set the value of the StoryCountAll input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories.
        ###

        def set_StoryCountAll(value)
          set_input("StoryCountAll", value)
        end
        #### 
        # Set the value of the StoryCountMonth input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published in the last month.
        ###

        def set_StoryCountMonth(value)
          set_input("StoryCountMonth", value)
        end
        #### 
        # Set the value of the StoryCountToday input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published today.
        ###

        def set_StoryCountToday(value)
          set_input("StoryCountToday", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Series Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SeriesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Id" output from this Choreo execution
      	#
      	# @return String - (integer) The ID of the series. This is only returned when the Series input is specified. When multiple series are specified, this will be a list of IDs separated by commas.
      	####
      	def get_Id()
      	  return @outputs["Id"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from NPR.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Series



    ##############################################################################
    #
    # Topics
    #
    # Retrieves a list of NPR topics and corresponding IDs. Also used to look up the IDs of specific NPR topics by specifying them as an optional parameter.
    #
    ##############################################################################

    class Topics < Choreography

      ####
      #  Create a new instance of the Topics Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/StoryFinder/Topics")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TopicsInputSet
      ####
      def new_input_set()
        return TopicsInputSet.new()
      end

      def make_result_set()
        return TopicsResultSet.new()
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
        results = TopicsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Topics
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TopicsInputSet < Choreography::InputSet

        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in. Set to json or xml (the default). Note that when specifying Topic, only xml is returned.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StoryCountAll input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories.
        ###

        def set_StoryCountAll(value)
          set_input("StoryCountAll", value)
        end
        #### 
        # Set the value of the StoryCountMonth input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published in the last month.
        ###

        def set_StoryCountMonth(value)
          set_input("StoryCountMonth", value)
        end
        #### 
        # Set the value of the StoryCountToday input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns only items with at least this number of associated stories published today.
        ###

        def set_StoryCountToday(value)
          set_input("StoryCountToday", value)
        end
        #### 
        # Set the value of the Topic input for this Choreo. 
        # 
        # @param String - (optional, string) The specific topic title to return. Multiple topics can be specified separated by commas (i.e. Energy,Europe). Topic IDs are returned when this input is used.
        ###

        def set_Topic(value)
          set_input("Topic", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Topics Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TopicsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Id" output from this Choreo execution
      	#
      	# @return String - (integer) The ID of the topic. This is only returned when the Topic input is specified. When topics are specified, this will be a list of IDs separated by commas.
      	####
      	def get_Id()
      	  return @outputs["Id"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from NPR.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Topics




    module Utils



      ##############################################################################
      #
      # KeyHelper
      #
      # 
      #
      ##############################################################################

      class KeyHelper < Choreography

        ####
        #  Create a new instance of the KeyHelper Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NPR/StoryFinder/Utils/KeyHelper")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return KeyHelperInputSet
        ####
        def new_input_set()
          return KeyHelperInputSet.new()
        end

        def make_result_set()
          return KeyHelperResultSet.new()
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
          results = KeyHelperResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the KeyHelper
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class KeyHelperInputSet < Choreography::InputSet

          #### 
          # Set the value of the Names input for this Choreo. 
          # 
          # @param String - A folder collection of names to search for.
          ###

          def set_Names(value)
            set_input("Names", value)
          end
          #### 
          # Set the value of the CurrentValue input for this Choreo. 
          # 
          # @param String - (required, any) The current item value.
          ###

          def set_CurrentValue(value)
            set_input("CurrentValue", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the KeyHelper Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class KeyHelperResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Id" output from this Choreo execution
        	#
        	# @return String - The ID of an item found.
        	####
        	def get_Id()
        	  return @outputs["Id"]
        	end
        end

      end # class KeyHelper



      ##############################################################################
      #
      # XpathHelper
      #
      # 
      #
      ##############################################################################

      class XpathHelper < Choreography

        ####
        #  Create a new instance of the XpathHelper Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NPR/StoryFinder/Utils/XpathHelper")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return XpathHelperInputSet
        ####
        def new_input_set()
          return XpathHelperInputSet.new()
        end

        def make_result_set()
          return XpathHelperResultSet.new()
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
          results = XpathHelperResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the XpathHelper
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class XpathHelperInputSet < Choreography::InputSet

          #### 
          # Set the value of the Response input for this Choreo. 
          # 
          # @param String - (conditional, any) 
          ###

          def set_Response(value)
            set_input("Response", value)
          end
          #### 
          # Set the value of the Value input for this Choreo. 
          # 
          # @param String - (optional, any) 
          ###

          def set_Value(value)
            set_input("Value", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the XpathHelper Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class XpathHelperResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Id" output from this Choreo execution
        	#
        	# @return String - The ID of an item found.
        	####
        	def get_Id()
        	  return @outputs["Id"]
        	end
        end

      end # class XpathHelper




    end # module Utils

  end # module StoryFinder

  module Transcripts



    ##############################################################################
    #
    # TranscriptSearch
    #
    # Retrieves transcripts of NPR stories based on their unique story IDs.
    #
    ##############################################################################

    class TranscriptSearch < Choreography

      ####
      #  Create a new instance of the TranscriptSearch Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NPR/Transcripts/TranscriptSearch")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TranscriptSearchInputSet
      ####
      def new_input_set()
        return TranscriptSearchInputSet.new()
      end

      def make_result_set()
        return TranscriptSearchResultSet.new()
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
        results = TranscriptSearchResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TranscriptSearch
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TranscriptSearchInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NPR.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The story ID for which you want a transcript. You can find the story ID by first running an aprropriate StoryFinder Choreo.
        ###

        def set_ID(value)
          set_input("ID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TranscriptSearch Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TranscriptSearchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) 
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class TranscriptSearch




  end # module Transcripts

end # module NPR