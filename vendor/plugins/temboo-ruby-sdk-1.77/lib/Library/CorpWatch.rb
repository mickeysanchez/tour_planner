require "temboo"

module CorpWatch




  module Company



    ##############################################################################
    #
    # GetCompanyByCIK
    #
    # Returns a company record for a given SEC CIK identification number.
    #
    ##############################################################################

    class GetCompanyByCIK < Choreography

      ####
      #  Create a new instance of the GetCompanyByCIK Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Company/GetCompanyByCIK")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCompanyByCIKInputSet
      ####
      def new_input_set()
        return GetCompanyByCIKInputSet.new()
      end

      def make_result_set()
        return GetCompanyByCIKResultSet.new()
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
        results = GetCompanyByCIKResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCompanyByCIK
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCompanyByCIKInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CIK input for this Choreo. 
        # 
        # @param String - (required, string) The SEC's CIK identification number.
        ###

        def set_CIK(value)
          set_input("CIK", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Year input for this Choreo. 
        # 
        # @param Integer - (optional, integer) If a year is specified, only records for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to most recent.
        ###

        def set_Year(value)
          set_input("Year", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCompanyByCIK Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCompanyByCIKResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCompanyByCIK



    ##############################################################################
    #
    # GetCompanyByCWID
    #
    # Returns basic information for a specifiied company.
    #
    ##############################################################################

    class GetCompanyByCWID < Choreography

      ####
      #  Create a new instance of the GetCompanyByCWID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Company/GetCompanyByCWID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCompanyByCWIDInputSet
      ####
      def new_input_set()
        return GetCompanyByCWIDInputSet.new()
      end

      def make_result_set()
        return GetCompanyByCWIDResultSet.new()
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
        results = GetCompanyByCWIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCompanyByCWID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCompanyByCWIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CWID input for this Choreo. 
        # 
        # @param String - (required, string) CoprWatch ID for the company. Format looks like: cw_8484.
        ###

        def set_CWID(value)
          set_input("CWID", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Year input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify the year for which you want company information. When none is specified, returns the most recent record available for that company.
        ###

        def set_Year(value)
          set_input("Year", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCompanyByCWID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCompanyByCWIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCompanyByCWID



    ##############################################################################
    #
    # GetCompanyByEIN
    #
    # Returns a company record for a given IRS Employer Identification Number (tax ID).
    #
    ##############################################################################

    class GetCompanyByEIN < Choreography

      ####
      #  Create a new instance of the GetCompanyByEIN Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Company/GetCompanyByEIN")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCompanyByEINInputSet
      ####
      def new_input_set()
        return GetCompanyByEINInputSet.new()
      end

      def make_result_set()
        return GetCompanyByEINResultSet.new()
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
        results = GetCompanyByEINResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCompanyByEIN
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCompanyByEINInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the EIN input for this Choreo. 
        # 
        # @param String - (required, string) The IRS Employer Identification Number (tax ID) of a company.
        ###

        def set_EIN(value)
          set_input("EIN", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Year input for this Choreo. 
        # 
        # @param Integer - (optional, integer) If a year is specified, only records for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to most recent.
        ###

        def set_Year(value)
          set_input("Year", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCompanyByEIN Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCompanyByEINResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCompanyByEIN



    ##############################################################################
    #
    # GetCompanyFilings
    #
    # Returns the official SEC documents from which a company's information was extracted in order to check the accuracy of data.
    #
    ##############################################################################

    class GetCompanyFilings < Choreography

      ####
      #  Create a new instance of the GetCompanyFilings Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Company/GetCompanyFilings")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCompanyFilingsInputSet
      ####
      def new_input_set()
        return GetCompanyFilingsInputSet.new()
      end

      def make_result_set()
        return GetCompanyFilingsResultSet.new()
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
        results = GetCompanyFilingsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCompanyFilings
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCompanyFilingsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CWID input for this Choreo. 
        # 
        # @param String - (required, string) CoprWatch ID for the company. Format looks like: cw_8484.
        ###

        def set_CWID(value)
          set_input("CWID", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCompanyFilings Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCompanyFilingsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCompanyFilings



    ##############################################################################
    #
    # GetCompanyHistory
    #
    # Returns a complete set of basic records for a given company, covering all the years for which information is available.
    #
    ##############################################################################

    class GetCompanyHistory < Choreography

      ####
      #  Create a new instance of the GetCompanyHistory Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Company/GetCompanyHistory")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCompanyHistoryInputSet
      ####
      def new_input_set()
        return GetCompanyHistoryInputSet.new()
      end

      def make_result_set()
        return GetCompanyHistoryResultSet.new()
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
        results = GetCompanyHistoryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCompanyHistory
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCompanyHistoryInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CWID input for this Choreo. 
        # 
        # @param String - (required, string) CoprWatch ID for the company. Format looks like: cw_8484.
        ###

        def set_CWID(value)
          set_input("CWID", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCompanyHistory Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCompanyHistoryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCompanyHistory



    ##############################################################################
    #
    # GetCompanyLocations
    #
    # Returns a list of mailing addresses, business addresses, and jurisdiction of incorporation associated with a given company.
    #
    ##############################################################################

    class GetCompanyLocations < Choreography

      ####
      #  Create a new instance of the GetCompanyLocations Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Company/GetCompanyLocations")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCompanyLocationsInputSet
      ####
      def new_input_set()
        return GetCompanyLocationsInputSet.new()
      end

      def make_result_set()
        return GetCompanyLocationsResultSet.new()
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
        results = GetCompanyLocationsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCompanyLocations
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCompanyLocationsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CWID input for this Choreo. 
        # 
        # @param String - (required, string) CoprWatch ID for the company. Format looks like: cw_8484.
        ###

        def set_CWID(value)
          set_input("CWID", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCompanyLocations Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCompanyLocationsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCompanyLocations



    ##############################################################################
    #
    # GetCompanyNames
    #
    # Returns a complete list of company names associated with a given company record, including its aliases, former names, and normalized forms.
    #
    ##############################################################################

    class GetCompanyNames < Choreography

      ####
      #  Create a new instance of the GetCompanyNames Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Company/GetCompanyNames")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCompanyNamesInputSet
      ####
      def new_input_set()
        return GetCompanyNamesInputSet.new()
      end

      def make_result_set()
        return GetCompanyNamesResultSet.new()
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
        results = GetCompanyNamesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCompanyNames
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCompanyNamesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CWID input for this Choreo. 
        # 
        # @param String - (required, string) CoprWatch ID for the company. Format looks like: cw_8484.
        ###

        def set_CWID(value)
          set_input("CWID", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCompanyNames Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCompanyNamesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCompanyNames




  end # module Company

  module Lists



    ##############################################################################
    #
    # ListCountryCodes
    #
    # Returns a complete list of ISO-3166 standard country and subdivision codes.
    #
    ##############################################################################

    class ListCountryCodes < Choreography

      ####
      #  Create a new instance of the ListCountryCodes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Lists/ListCountryCodes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListCountryCodesInputSet
      ####
      def new_input_set()
        return ListCountryCodesInputSet.new()
      end

      def make_result_set()
        return ListCountryCodesResultSet.new()
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
        results = ListCountryCodesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListCountryCodes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListCountryCodesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListCountryCodes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListCountryCodesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListCountryCodes



    ##############################################################################
    #
    # ListIndustryCodes
    #
    # Returns a complete list of all Standard Industrial Classification (SIC) codes and sectors.
    #
    ##############################################################################

    class ListIndustryCodes < Choreography

      ####
      #  Create a new instance of the ListIndustryCodes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Lists/ListIndustryCodes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListIndustryCodesInputSet
      ####
      def new_input_set()
        return ListIndustryCodesInputSet.new()
      end

      def make_result_set()
        return ListIndustryCodesResultSet.new()
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
        results = ListIndustryCodesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListIndustryCodes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListIndustryCodesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListIndustryCodes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListIndustryCodesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListIndustryCodes



    ##############################################################################
    #
    # ListLocations
    #
    # Returns a list of locations of companies matching the given query.
    #
    ##############################################################################

    class ListLocations < Choreography

      ####
      #  Create a new instance of the ListLocations Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Lists/ListLocations")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListLocationsInputSet
      ####
      def new_input_set()
        return ListLocationsInputSet.new()
      end

      def make_result_set()
        return ListLocationsResultSet.new()
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
        results = ListLocationsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListLocations
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListLocationsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Address input for this Choreo. 
        # 
        # @param String - (optional, string) Enter an address fragment to search for. This can be either a street address, city, or state/subregion.
        ###

        def set_Address(value)
          set_input("Address", value)
        end
        #### 
        # Set the value of the CountryCode input for this Choreo. 
        # 
        # @param String - (optional, string) Enter an ISO-3166 formatted country code. 
        ###

        def set_CountryCode(value)
          set_input("CountryCode", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MaxYear input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicate desired year of the most recent appearance in SEC filing data (e.g. indicating 2007 will search for companies that ceased filing in 2007).
        ###

        def set_MaxYear(value)
          set_input("MaxYear", value)
        end
        #### 
        # Set the value of the MinYear input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicate desired year of the earliest appearance in SEC filing data (e.g. indicating 2004 will search for companies that started filing in 2004).
        ###

        def set_MinYear(value)
          set_input("MinYear", value)
        end
        #### 
        # Set the value of the PostalCode input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Enter a postal code to be searched.
        ###

        def set_PostalCode(value)
          set_input("PostalCode", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates the origin of the location information found. Acceptable values: relation_loc, business, mailing, state_of_incorp. See documentation for more info.
        ###

        def set_Type(value)
          set_input("Type", value)
        end
        #### 
        # Set the value of the Year input for this Choreo. 
        # 
        # @param Integer - (optional, integer) If a year is specified, only records for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to most recent.
        ###

        def set_Year(value)
          set_input("Year", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListLocations Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListLocationsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListLocations



    ##############################################################################
    #
    # ListNames
    #
    # Returns a list of names (companies or individuals) matching a given name query.
    #
    ##############################################################################

    class ListNames < Choreography

      ####
      #  Create a new instance of the ListNames Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Lists/ListNames")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListNamesInputSet
      ####
      def new_input_set()
        return ListNamesInputSet.new()
      end

      def make_result_set()
        return ListNamesResultSet.new()
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
        results = ListNamesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListNames
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListNamesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MaxYear input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicate desired year of the most recent appearance in SEC filing data (e.g. indicating 2007 will search for companies that ceased filing in 2007).
        ###

        def set_MaxYear(value)
          set_input("MaxYear", value)
        end
        #### 
        # Set the value of the MinYear input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicate desired year of the earliest appearance in SEC filing data (e.g. indicating 2004 will search for companies that started filing in 2004).
        ###

        def set_MinYear(value)
          set_input("MinYear", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) Name to be searched.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Source input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates how the name was derived. See documentation for more information on this parameter.
        ###

        def set_Source(value)
          set_input("Source", value)
        end
        #### 
        # Set the value of the Year input for this Choreo. 
        # 
        # @param Integer - (optional, integer) If a year is specified, only records for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to most recent.
        ###

        def set_Year(value)
          set_input("Year", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListNames Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListNamesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListNames




  end # module Lists

  module Relationships



    ##############################################################################
    #
    # CompanyChildren
    #
    # Returns a list of the subsidiaries, or "children," of a company.
    #
    ##############################################################################

    class CompanyChildren < Choreography

      ####
      #  Create a new instance of the CompanyChildren Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Relationships/CompanyChildren")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CompanyChildrenInputSet
      ####
      def new_input_set()
        return CompanyChildrenInputSet.new()
      end

      def make_result_set()
        return CompanyChildrenResultSet.new()
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
        results = CompanyChildrenResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CompanyChildren
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CompanyChildrenInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CWID input for this Choreo. 
        # 
        # @param String - (required, string) CoprWatch ID for the company. Format looks like: cw_8484.
        ###

        def set_CWID(value)
          set_input("CWID", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Year input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) If a year is specified, only subsidiaries for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to 2012 (most recent yr).
        ###

        def set_Year(value)
          set_input("Year", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CompanyChildren Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CompanyChildrenResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CompanyChildren



    ##############################################################################
    #
    # CompanyParents
    #
    # Returns a list of principal owning companies, or "parents," of a company.
    #
    ##############################################################################

    class CompanyParents < Choreography

      ####
      #  Create a new instance of the CompanyParents Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Relationships/CompanyParents")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CompanyParentsInputSet
      ####
      def new_input_set()
        return CompanyParentsInputSet.new()
      end

      def make_result_set()
        return CompanyParentsResultSet.new()
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
        results = CompanyParentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CompanyParents
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CompanyParentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CWID input for this Choreo. 
        # 
        # @param String - (required, string) CoprWatch ID for the company. Format looks like: cw_8484.
        ###

        def set_CWID(value)
          set_input("CWID", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Year input for this Choreo. 
        # 
        # @param Integer - (optional, integer) If a year is specified, only parents for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to most recent.
        ###

        def set_Year(value)
          set_input("Year", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CompanyParents Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CompanyParentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CompanyParents



    ##############################################################################
    #
    # TopParent
    #
    # For a given ID of the highest-level owning parent of a family of corporations, retrieves all of the companies that are "below" it in the hierarchy.
    #
    ##############################################################################

    class TopParent < Choreography

      ####
      #  Create a new instance of the TopParent Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Relationships/TopParent")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TopParentInputSet
      ####
      def new_input_set()
        return TopParentInputSet.new()
      end

      def make_result_set()
        return TopParentResultSet.new()
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
        results = TopParentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TopParent
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TopParentInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CWID input for this Choreo. 
        # 
        # @param String - (required, string) The CWID of the highest-level owning parent of a family of corprorations (or Top Parent). Most company records contain a field for top_parent_id.
        ###

        def set_CWID(value)
          set_input("CWID", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Year input for this Choreo. 
        # 
        # @param Integer - (optional, integer) If a year is specified, only subsidiaries for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to most recent.
        ###

        def set_Year(value)
          set_input("Year", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TopParent Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TopParentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class TopParent




  end # module Relationships

  module Search



    ##############################################################################
    #
    # CompoundSearch
    #
    # Returns a list of companies according to several search parameters such as industry, location, date range, company name, etc.
    #
    ##############################################################################

    class CompoundSearch < Choreography

      ####
      #  Create a new instance of the CompoundSearch Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/CorpWatch/Search/CompoundSearch")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CompoundSearchInputSet
      ####
      def new_input_set()
        return CompoundSearchInputSet.new()
      end

      def make_result_set()
        return CompoundSearchResultSet.new()
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
        results = CompoundSearchResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CompoundSearch
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CompoundSearchInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The APIKey from CorpWatch if you have one.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Address input for this Choreo. 
        # 
        # @param String - (conditional, string) Specific fragment of an address to be searched, such as "empire" or "Main Street."
        ###

        def set_Address(value)
          set_input("Address", value)
        end
        #### 
        # Set the value of the CountryCode input for this Choreo. 
        # 
        # @param String - (optional, string) Two-letter country code (e.g. VI for Virgin Islands).
        ###

        def set_CountryCode(value)
          set_input("CountryCode", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the IndustryCode input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) Standard Industrial Classification (SIC) code.
        ###

        def set_IndustryCode(value)
          set_input("IndustryCode", value)
        end
        #### 
        # Set the value of the IndustrySector input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) Standard Industrial Classification (SIC) sector code.
        ###

        def set_IndustrySector(value)
          set_input("IndustrySector", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Match input for this Choreo. 
        # 
        # @param Integer - (optional, integer) By default search terms match against complete words. Use 1 to return cases where the search string matches anywhere in the Name or Address field. Performance is significantly affected when enabled.
        ###

        def set_Match(value)
          set_input("Match", value)
        end
        #### 
        # Set the value of the MaxYear input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicate desired year of the most recent appearance in SEC filing data (e.g. indicating 2007 will search for companies that ceased filing in 2007).
        ###

        def set_MaxYear(value)
          set_input("MaxYear", value)
        end
        #### 
        # Set the value of the MinYear input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicate desired year of the most recent appearance in SEC filing data (e.g. indicating 2007 will search for companies that ceased filing in 2007).
        ###

        def set_MinYear(value)
          set_input("MinYear", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (conditional, string) Company name to search. Words in the search query must match to full words in the name. See documentation for more details.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the NumChildren input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limit results to those with a specified number of listed subsidiaries, or "children." (Only immediate relationships are counted.
        ###

        def set_NumChildren(value)
          set_input("NumChildren", value)
        end
        #### 
        # Set the value of the NumParents input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limit results to those with a specified number of listed parent companies (only immediate relationships are counted).
        ###

        def set_NumParents(value)
          set_input("NumParents", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the SourceType input for this Choreo. 
        # 
        # @param String - (optional, string) Indicate "filers" to restrict results to those of companies that appeared as a filer on SEC documents, or "relationships" for companies that only appear as subsidiaries on filings.
        ###

        def set_SourceType(value)
          set_input("SourceType", value)
        end
        #### 
        # Set the value of the SubdivisionCode input for this Choreo. 
        # 
        # @param String - (optional, string) Two-letter abbreviation for the subdivision of the area to be searched (e.g. "OR" for Oregon when CountryCode is set to "US").
        ###

        def set_SubdivisionCode(value)
          set_input("SubdivisionCode", value)
        end
        #### 
        # Set the value of the TopParent input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limit results by he CWID of the highest-level owning parent of a family of corprorations (or Top Parent). Most company records contain a field for top_parent_id.
        ###

        def set_TopParent(value)
          set_input("TopParent", value)
        end
        #### 
        # Set the value of the Year input for this Choreo. 
        # 
        # @param Integer - (optional, integer) If a year is specified, only records for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to most recent.
        ###

        def set_Year(value)
          set_input("Year", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CompoundSearch Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CompoundSearchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from CorpWatch.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CompoundSearch




  end # module Search

end # module CorpWatch