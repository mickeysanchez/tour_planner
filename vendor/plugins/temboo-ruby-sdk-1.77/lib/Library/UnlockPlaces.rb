require "temboo"

module UnlockPlaces



  ##############################################################################
  #
  # ClosestMatchSearch
  #
  # Searches for the closest match for a place.
  #
  ##############################################################################

  class ClosestMatchSearch < Choreography

    ####
    #  Create a new instance of the ClosestMatchSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/UnlockPlaces/ClosestMatchSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ClosestMatchSearchInputSet
    ####
    def new_input_set()
      return ClosestMatchSearchInputSet.new()
    end

    def make_result_set()
      return ClosestMatchSearchResultSet.new()
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
      results = ClosestMatchSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ClosestMatchSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ClosestMatchSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the Gazetteer input for this Choreo. 
      # 
      # @param String - (optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
      ###

      def set_Gazetteer(value)
        set_input("Gazetteer", value)
      end
      #### 
      # Set the value of the MaxRows input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
      ###

      def set_MaxRows(value)
        set_input("MaxRows", value)
      end
      #### 
      # Set the value of the Name input for this Choreo. 
      # 
      # @param String - (required, string) One or more names of places to search for (separated by commas).
      ###

      def set_Name(value)
        set_input("Name", value)
      end
      #### 
      # Set the value of the StartRow input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The row to start results display from. Defaults to 1.
      ###

      def set_StartRow(value)
        set_input("StartRow", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ClosestMatchSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ClosestMatchSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Unlock. Defaults to XML based on the format input parameter.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ClosestMatchSearch



  ##############################################################################
  #
  # FeatureLookup
  #
  # Searches for features by ID.
  #
  ##############################################################################

  class FeatureLookup < Choreography

    ####
    #  Create a new instance of the FeatureLookup Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/UnlockPlaces/FeatureLookup")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FeatureLookupInputSet
    ####
    def new_input_set()
      return FeatureLookupInputSet.new()
    end

    def make_result_set()
      return FeatureLookupResultSet.new()
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
      results = FeatureLookupResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FeatureLookup
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FeatureLookupInputSet < Choreography::InputSet

      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the Gazetteer input for this Choreo. 
      # 
      # @param String - (optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
      ###

      def set_Gazetteer(value)
        set_input("Gazetteer", value)
      end
      #### 
      # Set the value of the ID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of the feature you want to search for. Note that this identifier is returned in the <id> response element of the NameAndFeatureSearch Choreo.
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the MaxRows input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
      ###

      def set_MaxRows(value)
        set_input("MaxRows", value)
      end
      #### 
      # Set the value of the StartRow input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The row to start results display from. Defaults to 1.
      ###

      def set_StartRow(value)
        set_input("StartRow", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FeatureLookup Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FeatureLookupResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Unlock. Defaults to XML based on the format input parameter.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FeatureLookup



  ##############################################################################
  #
  # FootprintLookup
  #
  # Retrieves the footprint for a specified place identifier.
  #
  ##############################################################################

  class FootprintLookup < Choreography

    ####
    #  Create a new instance of the FootprintLookup Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/UnlockPlaces/FootprintLookup")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FootprintLookupInputSet
    ####
    def new_input_set()
      return FootprintLookupInputSet.new()
    end

    def make_result_set()
      return FootprintLookupResultSet.new()
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
      results = FootprintLookupResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FootprintLookup
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FootprintLookupInputSet < Choreography::InputSet

      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the Gazetteer input for this Choreo. 
      # 
      # @param String - (optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
      ###

      def set_Gazetteer(value)
        set_input("Gazetteer", value)
      end
      #### 
      # Set the value of the Identifier input for this Choreo. 
      # 
      # @param Integer - (required, integer) The place identifier that you want to use for the search. Note that this identifier is returned in the <geometryRef> response element of other Unlock Places search Choreos.
      ###

      def set_Identifier(value)
        set_input("Identifier", value)
      end
      #### 
      # Set the value of the MaxRows input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
      ###

      def set_MaxRows(value)
        set_input("MaxRows", value)
      end
      #### 
      # Set the value of the StartRow input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The row to start results display from. Defaults to 1.
      ###

      def set_StartRow(value)
        set_input("StartRow", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FootprintLookup Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FootprintLookupResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Unlock. Defaults to XML based on the format input parameter.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FootprintLookup



  ##############################################################################
  #
  # NameAndFeatureSearch
  #
  # Searches for names of places with a specified feature type.
  #
  ##############################################################################

  class NameAndFeatureSearch < Choreography

    ####
    #  Create a new instance of the NameAndFeatureSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/UnlockPlaces/NameAndFeatureSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return NameAndFeatureSearchInputSet
    ####
    def new_input_set()
      return NameAndFeatureSearchInputSet.new()
    end

    def make_result_set()
      return NameAndFeatureSearchResultSet.new()
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
      results = NameAndFeatureSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the NameAndFeatureSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class NameAndFeatureSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the FeatureType input for this Choreo. 
      # 
      # @param String - (required, string) The feature type that the place is (i.e. "Cities"). See http://unlock.edina.ac.uk/ws/supportedFeatureTypes?format=txt for a complete list of supported Feature Types.
      ###

      def set_FeatureType(value)
        set_input("FeatureType", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the Gazetteer input for this Choreo. 
      # 
      # @param String - (optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
      ###

      def set_Gazetteer(value)
        set_input("Gazetteer", value)
      end
      #### 
      # Set the value of the MaxRows input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
      ###

      def set_MaxRows(value)
        set_input("MaxRows", value)
      end
      #### 
      # Set the value of the Name input for this Choreo. 
      # 
      # @param String - (required, string) One or more names of places to search for (separated by commas).
      ###

      def set_Name(value)
        set_input("Name", value)
      end
      #### 
      # Set the value of the StartRow input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The row to start results display from. Defaults to 1.
      ###

      def set_StartRow(value)
        set_input("StartRow", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the NameAndFeatureSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class NameAndFeatureSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Unlock. Defaults to XML based on the format input parameter.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class NameAndFeatureSearch



  ##############################################################################
  #
  # NameSearch
  #
  # Basic query for a search by name, which will return a list of matching features for a specified place.
  #
  ##############################################################################

  class NameSearch < Choreography

    ####
    #  Create a new instance of the NameSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/UnlockPlaces/NameSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return NameSearchInputSet
    ####
    def new_input_set()
      return NameSearchInputSet.new()
    end

    def make_result_set()
      return NameSearchResultSet.new()
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
      results = NameSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the NameSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class NameSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the Gazetteer input for this Choreo. 
      # 
      # @param String - (optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
      ###

      def set_Gazetteer(value)
        set_input("Gazetteer", value)
      end
      #### 
      # Set the value of the MaxRows input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
      ###

      def set_MaxRows(value)
        set_input("MaxRows", value)
      end
      #### 
      # Set the value of the Name input for this Choreo. 
      # 
      # @param String - (required, string) One or more names of places to search for (separated by commas).
      ###

      def set_Name(value)
        set_input("Name", value)
      end
      #### 
      # Set the value of the StartRow input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The row to start results display from. Defaults to 1.
      ###

      def set_StartRow(value)
        set_input("StartRow", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the NameSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class NameSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Unlock. Defaults to XML based on the format input parameter.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class NameSearch



  ##############################################################################
  #
  # PostCodeSearch
  #
  # Searches for places by postal code.
  #
  ##############################################################################

  class PostCodeSearch < Choreography

    ####
    #  Create a new instance of the PostCodeSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/UnlockPlaces/PostCodeSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return PostCodeSearchInputSet
    ####
    def new_input_set()
      return PostCodeSearchInputSet.new()
    end

    def make_result_set()
      return PostCodeSearchResultSet.new()
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
      results = PostCodeSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the PostCodeSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class PostCodeSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the Gazetteer input for this Choreo. 
      # 
      # @param String - (optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
      ###

      def set_Gazetteer(value)
        set_input("Gazetteer", value)
      end
      #### 
      # Set the value of the MaxRows input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
      ###

      def set_MaxRows(value)
        set_input("MaxRows", value)
      end
      #### 
      # Set the value of the PostCode input for this Choreo. 
      # 
      # @param String - (required, string) A UK postal code to use for the search.
      ###

      def set_PostCode(value)
        set_input("PostCode", value)
      end
      #### 
      # Set the value of the StartRow input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The row to start results display from. Defaults to 1.
      ###

      def set_StartRow(value)
        set_input("StartRow", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the PostCodeSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class PostCodeSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Unlock. Defaults to XML based on the format input parameter.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class PostCodeSearch



  ##############################################################################
  #
  # SpacialFeaturesSearch
  #
  # Searches for feature types within a specified bounding box.
  #
  ##############################################################################

  class SpacialFeaturesSearch < Choreography

    ####
    #  Create a new instance of the SpacialFeaturesSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/UnlockPlaces/SpacialFeaturesSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SpacialFeaturesSearchInputSet
    ####
    def new_input_set()
      return SpacialFeaturesSearchInputSet.new()
    end

    def make_result_set()
      return SpacialFeaturesSearchResultSet.new()
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
      results = SpacialFeaturesSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SpacialFeaturesSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SpacialFeaturesSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the FeatureType input for this Choreo. 
      # 
      # @param String - (string) The feature type that the place is (i.e. "Cities"). See http://unlock.edina.ac.uk/ws/supportedFeatureTypes?format=txt for a complete list of supported Feature Types.
      ###

      def set_FeatureType(value)
        set_input("FeatureType", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the Gazetteer input for this Choreo. 
      # 
      # @param String - (optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
      ###

      def set_Gazetteer(value)
        set_input("Gazetteer", value)
      end
      #### 
      # Set the value of the MaxLatitude input for this Choreo. 
      # 
      # @param BigDecimal - (decimal) The maximum latitude point of a bounding box.
      ###

      def set_MaxLatitude(value)
        set_input("MaxLatitude", value)
      end
      #### 
      # Set the value of the MaxLongitude input for this Choreo. 
      # 
      # @param BigDecimal - (decimal) The maximum longitude point of a bounding box.
      ###

      def set_MaxLongitude(value)
        set_input("MaxLongitude", value)
      end
      #### 
      # Set the value of the MaxRows input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
      ###

      def set_MaxRows(value)
        set_input("MaxRows", value)
      end
      #### 
      # Set the value of the MinLatitude input for this Choreo. 
      # 
      # @param BigDecimal - (decimal) The minimum latitude point of a bounding box.
      ###

      def set_MinLatitude(value)
        set_input("MinLatitude", value)
      end
      #### 
      # Set the value of the MinLongitude input for this Choreo. 
      # 
      # @param BigDecimal - (decimal) The minimum longitude point of a bounding box.
      ###

      def set_MinLongitude(value)
        set_input("MinLongitude", value)
      end
      #### 
      # Set the value of the Operator input for this Choreo. 
      # 
      # @param String - Valid values are: "within" and "intersect". The results will therefore be entirely within, or overlapping with (intersecting), the bounding box. Defaults to "within".
      ###

      def set_Operator(value)
        set_input("Operator", value)
      end
      #### 
      # Set the value of the StartRow input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The row to start results display from. Defaults to 1.
      ###

      def set_StartRow(value)
        set_input("StartRow", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SpacialFeaturesSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SpacialFeaturesSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (XML) The response from Unlock. Defaults to XML based on the format input parameter.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SpacialFeaturesSearch



  ##############################################################################
  #
  # SpacialNameSearch
  #
  # Searches for names of places within a specified bounding box.
  #
  ##############################################################################

  class SpacialNameSearch < Choreography

    ####
    #  Create a new instance of the SpacialNameSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/UnlockPlaces/SpacialNameSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SpacialNameSearchInputSet
    ####
    def new_input_set()
      return SpacialNameSearchInputSet.new()
    end

    def make_result_set()
      return SpacialNameSearchResultSet.new()
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
      results = SpacialNameSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SpacialNameSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SpacialNameSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the Gazetteer input for this Choreo. 
      # 
      # @param String - (optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
      ###

      def set_Gazetteer(value)
        set_input("Gazetteer", value)
      end
      #### 
      # Set the value of the MaxLatitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The maximum latitude point of a bounding box.
      ###

      def set_MaxLatitude(value)
        set_input("MaxLatitude", value)
      end
      #### 
      # Set the value of the MaxLongitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The maximum longitude point of a bounding box.
      ###

      def set_MaxLongitude(value)
        set_input("MaxLongitude", value)
      end
      #### 
      # Set the value of the MaxRows input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
      ###

      def set_MaxRows(value)
        set_input("MaxRows", value)
      end
      #### 
      # Set the value of the MinLatitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The minimum latitude point of a bounding box.
      ###

      def set_MinLatitude(value)
        set_input("MinLatitude", value)
      end
      #### 
      # Set the value of the MinLongitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The minimum longitude point of a bounding box.
      ###

      def set_MinLongitude(value)
        set_input("MinLongitude", value)
      end
      #### 
      # Set the value of the Name input for this Choreo. 
      # 
      # @param String - (required, string) One or more names of places to search for (separated by commas).
      ###

      def set_Name(value)
        set_input("Name", value)
      end
      #### 
      # Set the value of the Operator input for this Choreo. 
      # 
      # @param String - (optional, any) Valid values are: "within" and "intersect". The results will therefore be entirely within, or overlapping with (intersecting), the bounding box. Defaults to "within".
      ###

      def set_Operator(value)
        set_input("Operator", value)
      end
      #### 
      # Set the value of the StartRow input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The row to start results display from. Defaults to 1.
      ###

      def set_StartRow(value)
        set_input("StartRow", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SpacialNameSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SpacialNameSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Unlock. Defaults to XML based on the format input parameter.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SpacialNameSearch



  ##############################################################################
  #
  # SupportedFeatureTypes
  #
  # Retrieves a list of supported feature types that can be used in searches.
  #
  ##############################################################################

  class SupportedFeatureTypes < Choreography

    ####
    #  Create a new instance of the SupportedFeatureTypes Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/UnlockPlaces/SupportedFeatureTypes")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SupportedFeatureTypesInputSet
    ####
    def new_input_set()
      return SupportedFeatureTypesInputSet.new()
    end

    def make_result_set()
      return SupportedFeatureTypesResultSet.new()
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
      results = SupportedFeatureTypesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SupportedFeatureTypes
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SupportedFeatureTypesInputSet < Choreography::InputSet

      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the Gazetteer input for this Choreo. 
      # 
      # @param String - (optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
      ###

      def set_Gazetteer(value)
        set_input("Gazetteer", value)
      end
      #### 
      # Set the value of the MaxRows input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
      ###

      def set_MaxRows(value)
        set_input("MaxRows", value)
      end
      #### 
      # Set the value of the StartRow input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The row to start results display from. Defaults to 1.
      ###

      def set_StartRow(value)
        set_input("StartRow", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SupportedFeatureTypes Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SupportedFeatureTypesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (XML) The response from Unlock. Defaults to XML based on the format input parameter.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SupportedFeatureTypes



  ##############################################################################
  #
  # UniqueNameSearch
  #
  # Search for the specified unique name, returning a single result per feature.
  #
  ##############################################################################

  class UniqueNameSearch < Choreography

    ####
    #  Create a new instance of the UniqueNameSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/UnlockPlaces/UniqueNameSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return UniqueNameSearchInputSet
    ####
    def new_input_set()
      return UniqueNameSearchInputSet.new()
    end

    def make_result_set()
      return UniqueNameSearchResultSet.new()
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
      results = UniqueNameSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the UniqueNameSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class UniqueNameSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the place search results. One of xml, kml, json, georss or txt. Defaults to "xml".
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the Gazetteer input for this Choreo. 
      # 
      # @param String - (optional, string) The place-name source to take locations from. The options are geonames, os, naturalearth or unlock which combines all the previous. Defaults to "unlock".
      ###

      def set_Gazetteer(value)
        set_input("Gazetteer", value)
      end
      #### 
      # Set the value of the MaxRows input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results to return. Defaults to 20. Cannot exceed 1000.
      ###

      def set_MaxRows(value)
        set_input("MaxRows", value)
      end
      #### 
      # Set the value of the Name input for this Choreo. 
      # 
      # @param String - (required, string) One or more names of places to search for (separated by commas).
      ###

      def set_Name(value)
        set_input("Name", value)
      end
      #### 
      # Set the value of the StartRow input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The row to start results display from. Defaults to 1.
      ###

      def set_StartRow(value)
        set_input("StartRow", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the UniqueNameSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class UniqueNameSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Unlock. Defaults to XML based on the format input parameter.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class UniqueNameSearch




end # module UnlockPlaces