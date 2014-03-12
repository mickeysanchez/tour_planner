require "temboo"

module EnviroFacts




  module DesignForEnvironment



    ##############################################################################
    #
    # AdvancedSearch
    #
    # Performs a detailed search of the EPA Design for the Environment database.
    #
    ##############################################################################

    class AdvancedSearch < Choreography

      ####
      #  Create a new instance of the AdvancedSearch Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/EnviroFacts/DesignForEnvironment/AdvancedSearch")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AdvancedSearchInputSet
      ####
      def new_input_set()
        return AdvancedSearchInputSet.new()
      end

      def make_result_set()
        return AdvancedSearchResultSet.new()
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
        results = AdvancedSearchResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AdvancedSearch
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AdvancedSearchInputSet < Choreography::InputSet

        #### 
        # Set the value of the Operator input for this Choreo. 
        # 
        # @param String - (optional, string) Default output is "=" when SearchType=sector_id or product_id, and "CONTAINING" when SearchType=partner, product, or sector. Other possible values are: "<", " >", "!=", and "BEGINNING".
        ###

        def set_Operator(value)
          set_input("Operator", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (conditional, string) Response can be returned in JSON or XML. Defaults to XML.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the RowEnd input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number 1 or greater indicates the ending row number of the results displayed. Default is 4999 when RowStart is 0. Up to 5000 entries are returned in the output.
        ###

        def set_RowEnd(value)
          set_input("RowEnd", value)
        end
        #### 
        # Set the value of the RowStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicates the starting row number of the results displayed. Default is 0.
        ###

        def set_RowStart(value)
          set_input("RowStart", value)
        end
        #### 
        # Set the value of the SearchType input for this Choreo. 
        # 
        # @param String - (conditional, string) Indicate either "sector", "sector_id", "partner", "product", or "product_id." Used together with SearchValue and the optional Operator input to formulate a specific search of the DfE database.
        ###

        def set_SearchType(value)
          set_input("SearchType", value)
        end
        #### 
        # Set the value of the SearchValue input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) Indicate the product, code, or sector to search for. Used together with SearchType and the optional Operator input to create a customized search.
        ###

        def set_SearchValue(value)
          set_input("SearchValue", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AdvancedSearch Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AdvancedSearchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Count" output from this Choreo execution
      	#
      	# @return String - The total number of records returned for any given search.
      	####
      	def get_Count()
      	  return @outputs["Count"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AdvancedSearch



    ##############################################################################
    #
    # SearchByProduct
    #
    # Searches for products in the EPA Design for the Environment database.
    #
    ##############################################################################

    class SearchByProduct < Choreography

      ####
      #  Create a new instance of the SearchByProduct Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/EnviroFacts/DesignForEnvironment/SearchByProduct")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchByProductInputSet
      ####
      def new_input_set()
        return SearchByProductInputSet.new()
      end

      def make_result_set()
        return SearchByProductResultSet.new()
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
        results = SearchByProductResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchByProduct
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchByProductInputSet < Choreography::InputSet

        #### 
        # Set the value of the CompanyKeyword input for this Choreo. 
        # 
        # @param String - (conditional, string) A keyword in the name of the company to search for. If a specific ProductName or ProductID is specified, this input is ignored.
        ###

        def set_CompanyKeyword(value)
          set_input("CompanyKeyword", value)
        end
        #### 
        # Set the value of the Operator input for this Choreo. 
        # 
        # @param String - (optional, string) Default output is "CONTAINING" and does not require an operator, but users can enter "<", " >", "!=", "BEGINNING", "=" for more customized searches.
        ###

        def set_Operator(value)
          set_input("Operator", value)
        end
        #### 
        # Set the value of the ProductID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) A number representing the unique identifier for a product in the EnviroFacts database.
        ###

        def set_ProductID(value)
          set_input("ProductID", value)
        end
        #### 
        # Set the value of the ProductKeyword input for this Choreo. 
        # 
        # @param String - (conditional, string) A keyword in the name of the product to search for. If a specific ProductID is specified, this input is ignored.
        ###

        def set_ProductKeyword(value)
          set_input("ProductKeyword", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (conditional, string) Response can be returned in JSON or XML. Defaults to XML.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the RowEnd input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number 1 or greater indicates the ending row number of the results displayed. Default is 4999 when RowStart is 0. Up to 5000 entries are returned in the output.
        ###

        def set_RowEnd(value)
          set_input("RowEnd", value)
        end
        #### 
        # Set the value of the RowStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicates the starting row number of the results displayed. Default is 0.
        ###

        def set_RowStart(value)
          set_input("RowStart", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchByProduct Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchByProductResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Count" output from this Choreo execution
      	#
      	# @return String - The total number of records returned for any given search.
      	####
      	def get_Count()
      	  return @outputs["Count"]
      	end
      end

    end # class SearchByProduct



    ##############################################################################
    #
    # SearchBySector
    #
    # Looks up products by sector in the EPA Design for the Environment database
    #
    ##############################################################################

    class SearchBySector < Choreography

      ####
      #  Create a new instance of the SearchBySector Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/EnviroFacts/DesignForEnvironment/SearchBySector")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchBySectorInputSet
      ####
      def new_input_set()
        return SearchBySectorInputSet.new()
      end

      def make_result_set()
        return SearchBySectorResultSet.new()
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
        results = SearchBySectorResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchBySector
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchBySectorInputSet < Choreography::InputSet

        #### 
        # Set the value of the Category input for this Choreo. 
        # 
        # @param String - (conditional, string) Specify either Industrial or Consumer to retrieve a list of products that fall into either category. If a specific SectorKeyword or SectorID is given, this input is ignored.
        ###

        def set_Category(value)
          set_input("Category", value)
        end
        #### 
        # Set the value of the Operator input for this Choreo. 
        # 
        # @param String - (optional, string) Default output is "CONTAINING" and does not require an operator, but users can enter "<", " >", "!=", "BEGINNING", "=" for more customized searches.
        ###

        def set_Operator(value)
          set_input("Operator", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (conditional, string) Response can be returned in JSON or XML. Defaults to XML.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the RowEnd input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number 1 or greater indicates the ending row number of the results displayed. Default is 4999 when RowStart is 0. Up to 5000 entries are returned in the output.
        ###

        def set_RowEnd(value)
          set_input("RowEnd", value)
        end
        #### 
        # Set the value of the RowStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicates the starting row number of the results displayed. Default is 0.
        ###

        def set_RowStart(value)
          set_input("RowStart", value)
        end
        #### 
        # Set the value of the SectorID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) A number representing the unique identifier for the product's sector in the EnviroFacts database.
        ###

        def set_SectorID(value)
          set_input("SectorID", value)
        end
        #### 
        # Set the value of the SectorKeyword input for this Choreo. 
        # 
        # @param String - (conditional, string) A keyword in the name of the sector to search for. If a specific SectorID is given, this input is ignored.
        ###

        def set_SectorKeyword(value)
          set_input("SectorKeyword", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchBySector Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchBySectorResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Count" output from this Choreo execution
      	#
      	# @return String - The total number of records returned for any given search.
      	####
      	def get_Count()
      	  return @outputs["Count"]
      	end
      end

    end # class SearchBySector




  end # module DesignForEnvironment

  module Toxins



    ##############################################################################
    #
    # ChemActivityByFacility
    #
    # Retrieves a list of the type of manufacturing activity of toxic chemicals at any EPA-regulated facility.
    #
    ##############################################################################

    class ChemActivityByFacility < Choreography

      ####
      #  Create a new instance of the ChemActivityByFacility Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/EnviroFacts/Toxins/ChemActivityByFacility")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ChemActivityByFacilityInputSet
      ####
      def new_input_set()
        return ChemActivityByFacilityInputSet.new()
      end

      def make_result_set()
        return ChemActivityByFacilityResultSet.new()
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
        results = ChemActivityByFacilityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ChemActivityByFacility
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ChemActivityByFacilityInputSet < Choreography::InputSet

        #### 
        # Set the value of the FacilityID input for this Choreo. 
        # 
        # @param String - (required, string) FacilityID for which a toxin release report is to be generated. Found by first running the FacilitiesSearch Choreo.
        ###

        def set_FacilityID(value)
          set_input("FacilityID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the desired response format. Valid formats are: xml (the default) and csv.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the RowEnd input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number 1 or greater indicates the ending row number of the results displayed. Default is 4999 when RowStart is 0. Up to 5000 entries are returned in the output.
        ###

        def set_RowEnd(value)
          set_input("RowEnd", value)
        end
        #### 
        # Set the value of the RowStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicates the starting row number of the results displayed. Default is 0.
        ###

        def set_RowStart(value)
          set_input("RowStart", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ChemActivityByFacility Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ChemActivityByFacilityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ChemActivityByFacility



    ##############################################################################
    #
    # ChemicalSearch
    #
    # Retrieves information about specific chemicals released by EPA-regulated facilities.
    #
    ##############################################################################

    class ChemicalSearch < Choreography

      ####
      #  Create a new instance of the ChemicalSearch Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/EnviroFacts/Toxins/ChemicalSearch")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ChemicalSearchInputSet
      ####
      def new_input_set()
        return ChemicalSearchInputSet.new()
      end

      def make_result_set()
        return ChemicalSearchResultSet.new()
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
        results = ChemicalSearchResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ChemicalSearch
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ChemicalSearchInputSet < Choreography::InputSet

        #### 
        # Set the value of the ChemicalID input for this Choreo. 
        # 
        # @param String - (required, string) EPA ID number of a chemical. Chemical IDs from a given facility can be found by first running the ChemActivityByFacility or ToxinReleaseByFacility Choreos.
        ###

        def set_ChemicalID(value)
          set_input("ChemicalID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ChemicalSearch Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ChemicalSearchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ChemicalSearch



    ##############################################################################
    #
    # FacilitiesSearchByZip
    #
    # Retrieves a list of EPA-regulated facilities in the Toxics Release Inventory (TRI) database within a given area code.
    #
    ##############################################################################

    class FacilitiesSearchByZip < Choreography

      ####
      #  Create a new instance of the FacilitiesSearchByZip Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/EnviroFacts/Toxins/FacilitiesSearchByZip")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FacilitiesSearchByZipInputSet
      ####
      def new_input_set()
        return FacilitiesSearchByZipInputSet.new()
      end

      def make_result_set()
        return FacilitiesSearchByZipResultSet.new()
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
        results = FacilitiesSearchByZipResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FacilitiesSearchByZip
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FacilitiesSearchByZipInputSet < Choreography::InputSet

        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the desired response format. Valid formats are: xml (the default) and csv.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the RowEnd input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number 1 or greater indicates the ending row number of the results displayed. Default is 4999 when RowStart is 0. Up to 5000 entries are returned in the output.
        ###

        def set_RowEnd(value)
          set_input("RowEnd", value)
        end
        #### 
        # Set the value of the RowStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicates the starting row number of the results displayed. Default is 0.
        ###

        def set_RowStart(value)
          set_input("RowStart", value)
        end
        #### 
        # Set the value of the Zip input for this Choreo. 
        # 
        # @param String - (required, string) Zip code to be searched.
        ###

        def set_Zip(value)
          set_input("Zip", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FacilitiesSearchByZip Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FacilitiesSearchByZipResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FacilitiesSearchByZip



    ##############################################################################
    #
    # ToxinReleaseByFacility
    #
    # Retrieves a list of the annual release quantities of toxic chemicals at EPA-regulated facilities into air, water, on-site land, and underground wells.
    #
    ##############################################################################

    class ToxinReleaseByFacility < Choreography

      ####
      #  Create a new instance of the ToxinReleaseByFacility Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/EnviroFacts/Toxins/ToxinReleaseByFacility")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ToxinReleaseByFacilityInputSet
      ####
      def new_input_set()
        return ToxinReleaseByFacilityInputSet.new()
      end

      def make_result_set()
        return ToxinReleaseByFacilityResultSet.new()
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
        results = ToxinReleaseByFacilityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ToxinReleaseByFacility
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ToxinReleaseByFacilityInputSet < Choreography::InputSet

        #### 
        # Set the value of the FacilityID input for this Choreo. 
        # 
        # @param String - (required, string) FacilityID for which a toxin release report is to be generated. Found by first running the FacilitiesSearch Choreo.
        ###

        def set_FacilityID(value)
          set_input("FacilityID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the desired response format. Valid formats are: xml (the default) and csv.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the RowEnd input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number 1 or greater indicates the ending row number of the results displayed. Default is 4999 when RowStart is 0. Up to 5000 entries are returned in the output.
        ###

        def set_RowEnd(value)
          set_input("RowEnd", value)
        end
        #### 
        # Set the value of the RowStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicates the starting row number of the results displayed. Default is 0.
        ###

        def set_RowStart(value)
          set_input("RowStart", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ToxinReleaseByFacility Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ToxinReleaseByFacilityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ToxinReleaseByFacility




  end # module Toxins

  module UVForecast



    ##############################################################################
    #
    # DailyUVByCity
    #
    # Retrieves EPA daily Ultraviolet (UV) Index readings in a given city.
    #
    ##############################################################################

    class DailyUVByCity < Choreography

      ####
      #  Create a new instance of the DailyUVByCity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/EnviroFacts/UVForecast/DailyUVByCity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DailyUVByCityInputSet
      ####
      def new_input_set()
        return DailyUVByCityInputSet.new()
      end

      def make_result_set()
        return DailyUVByCityResultSet.new()
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
        results = DailyUVByCityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DailyUVByCity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DailyUVByCityInputSet < Choreography::InputSet

        #### 
        # Set the value of the City input for this Choreo. 
        # 
        # @param String - (required, string) A valid City Name in the United States.
        ###

        def set_City(value)
          set_input("City", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Results can be retrieved in either JSON or XML. Defaults to XML.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (required, string) The abbreviation of the state that the city resides in.
        ###

        def set_State(value)
          set_input("State", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DailyUVByCity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DailyUVByCityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DailyUVByCity



    ##############################################################################
    #
    # DailyUVByZipCode
    #
    # Retrieves EPA daily Ultraviolet (UV) Index readings in a given zip code. 
    #
    ##############################################################################

    class DailyUVByZipCode < Choreography

      ####
      #  Create a new instance of the DailyUVByZipCode Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/EnviroFacts/UVForecast/DailyUVByZipCode")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DailyUVByZipCodeInputSet
      ####
      def new_input_set()
        return DailyUVByZipCodeInputSet.new()
      end

      def make_result_set()
        return DailyUVByZipCodeResultSet.new()
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
        results = DailyUVByZipCodeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DailyUVByZipCode
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DailyUVByZipCodeInputSet < Choreography::InputSet

        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Results can be retrieved in either JSON or XML. Defaults to XML.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Zip input for this Choreo. 
        # 
        # @param Integer - (required, integer) A valid United States Postal Service (USPS) ZIP Code or Postal Code.
        ###

        def set_Zip(value)
          set_input("Zip", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DailyUVByZipCode Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DailyUVByZipCodeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DailyUVByZipCode



    ##############################################################################
    #
    # HourlyUVByCity
    #
    # Retrieves EPA hourly Ultraviolet (UV) Index readings in a given city. 
    #
    ##############################################################################

    class HourlyUVByCity < Choreography

      ####
      #  Create a new instance of the HourlyUVByCity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/EnviroFacts/UVForecast/HourlyUVByCity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return HourlyUVByCityInputSet
      ####
      def new_input_set()
        return HourlyUVByCityInputSet.new()
      end

      def make_result_set()
        return HourlyUVByCityResultSet.new()
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
        results = HourlyUVByCityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the HourlyUVByCity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class HourlyUVByCityInputSet < Choreography::InputSet

        #### 
        # Set the value of the City input for this Choreo. 
        # 
        # @param String - (required, string) A valid City Name in the United States.
        ###

        def set_City(value)
          set_input("City", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Results can be retrieved in either JSON or XML. Defaults to XML.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (required, string) The abbreviation of the state that the city resides in.
        ###

        def set_State(value)
          set_input("State", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the HourlyUVByCity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class HourlyUVByCityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class HourlyUVByCity



    ##############################################################################
    #
    # HourlyUVByZipCode
    #
    # Retrieves EPA hourly Ultraviolet (UV) Index readings in a given zip code.
    #
    ##############################################################################

    class HourlyUVByZipCode < Choreography

      ####
      #  Create a new instance of the HourlyUVByZipCode Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/EnviroFacts/UVForecast/HourlyUVByZipCode")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return HourlyUVByZipCodeInputSet
      ####
      def new_input_set()
        return HourlyUVByZipCodeInputSet.new()
      end

      def make_result_set()
        return HourlyUVByZipCodeResultSet.new()
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
        results = HourlyUVByZipCodeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the HourlyUVByZipCode
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class HourlyUVByZipCodeInputSet < Choreography::InputSet

        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Results can be retrieved in either JSON or XML. Defaults to XML.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Zip input for this Choreo. 
        # 
        # @param Integer - (required, integer) A valid United States Postal Service (USPS) ZIP Code or Postal Code.
        ###

        def set_Zip(value)
          set_input("Zip", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the HourlyUVByZipCode Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class HourlyUVByZipCodeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class HourlyUVByZipCode




  end # module UVForecast

  module Utils



    ##############################################################################
    #
    # Query
    #
    # 
    #
    ##############################################################################

    class Query < Choreography

      ####
      #  Create a new instance of the Query Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/EnviroFacts/Utils/Query")
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
        # Set the value of the ColumnName input for this Choreo. 
        # 
        # @param String - (optional, string) Optional parameter to limit TableName outputs.
        ###

        def set_ColumnName(value)
          set_input("ColumnName", value)
        end
        #### 
        # Set the value of the ColumnOperator input for this Choreo. 
        # 
        # @param String - (optional, string) Optional parameter. Deafult is = but can also accept <, >, and !=.
        ###

        def set_ColumnOperator(value)
          set_input("ColumnOperator", value)
        end
        #### 
        # Set the value of the ColumnValue input for this Choreo. 
        # 
        # @param String - (optional, string) Used with optional ColumnName parameter.
        ###

        def set_ColumnValue(value)
          set_input("ColumnValue", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the desired response format. Valid formats are: xml (the default) and csv.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Rows input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The row where results numbering starts. Default starts at 0 and returns a maximum of 5000 rows.
        ###

        def set_Rows(value)
          set_input("Rows", value)
        end
        #### 
        # Set the value of the TableName input for this Choreo. 
        # 
        # @param String - (required, string) EPA Table to be searched.
        ###

        def set_TableName(value)
          set_input("TableName", value)
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
      	# @return String - The response from EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Query




  end # module Utils

end # module EnviroFacts