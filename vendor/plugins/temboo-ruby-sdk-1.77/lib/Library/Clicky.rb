require "temboo"

module Clicky



  ##############################################################################
  #
  # AdvancedFilter
  #
  # Allows you to retrieve analytics, using more advanced filter options.
  #
  ##############################################################################

  class AdvancedFilter < Choreography

    ####
    #  Create a new instance of the AdvancedFilter Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Clicky/AdvancedFilter")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AdvancedFilterInputSet
    ####
    def new_input_set()
      return AdvancedFilterInputSet.new()
    end

    def make_result_set()
      return AdvancedFilterResultSet.new()
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
      results = AdvancedFilterResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AdvancedFilter
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AdvancedFilterInputSet < Choreography::InputSet

      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, string) The date or date range you want to access. Use YYYY-MM-DD format for date and YYYY-MM-DD,YYYY-MM-DD for a range. See docs for more options for this input. Defaults to 'today'.
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the FilterName input for this Choreo. 
      # 
      # @param String - (required, string) The name of the data you want to filter by (i.e. ip_address). See docs for a complete list of supported filters.
      ###

      def set_FilterName(value)
        set_input("FilterName", value)
      end
      #### 
      # Set the value of the FilterValue input for this Choreo. 
      # 
      # @param String - (required, string) The value of the filter you want to apply to the request. For example, if you're FilterName is "ip_address", you could use "65.0.0.0,85.0.0.0" in the FilterValue.
      ###

      def set_FilterValue(value)
        set_input("FilterValue", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results that will be returned. Defaults to 10.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Output input for this Choreo. 
      # 
      # @param String - (optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
      ###

      def set_Output(value)
        set_input("Output", value)
      end
      #### 
      # Set the value of the SiteID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
      ###

      def set_SiteID(value)
        set_input("SiteID", value)
      end
      #### 
      # Set the value of the SiteKey input for this Choreo. 
      # 
      # @param String - (required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
      ###

      def set_SiteKey(value)
        set_input("SiteKey", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (required, string) The type of data you want to retrieve. Note that not all types are available for this Choreo. Use types: vistors-list, segmentation, or actions-list.
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AdvancedFilter Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AdvancedFilterResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Clicky formatted as specified in the Output parameter. Default is XML.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AdvancedFilter



  ##############################################################################
  #
  # FilterByItems
  #
  # Retrieves the stats for just a single item for the type you are requesting.
  #
  ##############################################################################

  class FilterByItems < Choreography

    ####
    #  Create a new instance of the FilterByItems Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Clicky/FilterByItems")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FilterByItemsInputSet
    ####
    def new_input_set()
      return FilterByItemsInputSet.new()
    end

    def make_result_set()
      return FilterByItemsResultSet.new()
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
      results = FilterByItemsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FilterByItems
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FilterByItemsInputSet < Choreography::InputSet

      #### 
      # Set the value of the Item input for this Choreo. 
      # 
      # @param String - (required, string) Use this input to get the stats for just a single item for the type you are requesting (i.e. type=links-domains and item=google.com).
      ###

      def set_Item(value)
        set_input("Item", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results that will be returned. Defaults to 10.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Output input for this Choreo. 
      # 
      # @param String - (optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
      ###

      def set_Output(value)
        set_input("Output", value)
      end
      #### 
      # Set the value of the SiteID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
      ###

      def set_SiteID(value)
        set_input("SiteID", value)
      end
      #### 
      # Set the value of the SiteKey input for this Choreo. 
      # 
      # @param String - (required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
      ###

      def set_SiteKey(value)
        set_input("SiteKey", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (required, string) The type of data you want to retrieve. Can be a comma-separated list of types (i.e. visitors,countries,searches).
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FilterByItems Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FilterByItemsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Clicky formatted as specified in the Output parameter. Default is XML.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FilterByItems



  ##############################################################################
  #
  # FilterByKeyword
  #
  # Retrieves analytics, filtering down to only the results you specify in a keyword filter.
  #
  ##############################################################################

  class FilterByKeyword < Choreography

    ####
    #  Create a new instance of the FilterByKeyword Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Clicky/FilterByKeyword")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FilterByKeywordInputSet
    ####
    def new_input_set()
      return FilterByKeywordInputSet.new()
    end

    def make_result_set()
      return FilterByKeywordResultSet.new()
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
      results = FilterByKeywordResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FilterByKeyword
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FilterByKeywordInputSet < Choreography::InputSet

      #### 
      # Set the value of the Filter input for this Choreo. 
      # 
      # @param String - (required, string) You can use this parameter to filter down to only the results you want.
      ###

      def set_Filter(value)
        set_input("Filter", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results that will be returned. Defaults to 10.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Output input for this Choreo. 
      # 
      # @param String - (optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
      ###

      def set_Output(value)
        set_input("Output", value)
      end
      #### 
      # Set the value of the SiteID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
      ###

      def set_SiteID(value)
        set_input("SiteID", value)
      end
      #### 
      # Set the value of the SiteKey input for this Choreo. 
      # 
      # @param String - (required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
      ###

      def set_SiteKey(value)
        set_input("SiteKey", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (required, string) The type of data you want to retrieve. Can be a comma-separated list of types (i.e. visitors,countries,searches).
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FilterByKeyword Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FilterByKeywordResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Clicky formatted as specified in the Output parameter. Default is XML.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FilterByKeyword



  ##############################################################################
  #
  # GetAnalyticsByDate
  #
  # Retrieves anlaytics for your website for a particular date or date range.
  #
  ##############################################################################

  class GetAnalyticsByDate < Choreography

    ####
    #  Create a new instance of the GetAnalyticsByDate Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Clicky/GetAnalyticsByDate")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetAnalyticsByDateInputSet
    ####
    def new_input_set()
      return GetAnalyticsByDateInputSet.new()
    end

    def make_result_set()
      return GetAnalyticsByDateResultSet.new()
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
      results = GetAnalyticsByDateResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetAnalyticsByDate
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetAnalyticsByDateInputSet < Choreography::InputSet

      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, string) The date or date range you want to access. Use YYYY-MM-DD format for date and YYYY-MM-DD,YYYY-MM-DD for a range. See docs for more options for this input. Defaults to 'today'.
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results that will be returned. Defaults to 10.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Output input for this Choreo. 
      # 
      # @param String - (optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
      ###

      def set_Output(value)
        set_input("Output", value)
      end
      #### 
      # Set the value of the SiteID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
      ###

      def set_SiteID(value)
        set_input("SiteID", value)
      end
      #### 
      # Set the value of the SiteKey input for this Choreo. 
      # 
      # @param String - (required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
      ###

      def set_SiteKey(value)
        set_input("SiteKey", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (required, string) The type of data you want to retrieve. Can be a comma-separated list of types (i.e. visitors,countries,searches).
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetAnalyticsByDate Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetAnalyticsByDateResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Clicky formatted as specified in the Output parameter. Default is XML.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetAnalyticsByDate



  ##############################################################################
  #
  # GetAnalyticsByType
  #
  # Retrieves a specified type of anlaytics for your website.
  #
  ##############################################################################

  class GetAnalyticsByType < Choreography

    ####
    #  Create a new instance of the GetAnalyticsByType Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Clicky/GetAnalyticsByType")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetAnalyticsByTypeInputSet
    ####
    def new_input_set()
      return GetAnalyticsByTypeInputSet.new()
    end

    def make_result_set()
      return GetAnalyticsByTypeResultSet.new()
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
      results = GetAnalyticsByTypeResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetAnalyticsByType
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetAnalyticsByTypeInputSet < Choreography::InputSet

      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum number of results that will be returned. Defaults to 10.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Output input for this Choreo. 
      # 
      # @param String - (optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
      ###

      def set_Output(value)
        set_input("Output", value)
      end
      #### 
      # Set the value of the SiteID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
      ###

      def set_SiteID(value)
        set_input("SiteID", value)
      end
      #### 
      # Set the value of the SiteKey input for this Choreo. 
      # 
      # @param String - (required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
      ###

      def set_SiteKey(value)
        set_input("SiteKey", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (required, string) The type of data you want to retrieve. Can be a comma-separated list of types (i.e. visitors,countries,searches).
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetAnalyticsByType Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetAnalyticsByTypeResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Clicky formatted as specified in the Output parameter. Default is XML.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetAnalyticsByType



  ##############################################################################
  #
  # HourlyVisitorsLast7Days
  #
  # Retrieves hourly visitor and action tallies for the last 7 days.
  #
  ##############################################################################

  class HourlyVisitorsLast7Days < Choreography

    ####
    #  Create a new instance of the HourlyVisitorsLast7Days Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Clicky/HourlyVisitorsLast7Days")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return HourlyVisitorsLast7DaysInputSet
    ####
    def new_input_set()
      return HourlyVisitorsLast7DaysInputSet.new()
    end

    def make_result_set()
      return HourlyVisitorsLast7DaysResultSet.new()
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
      results = HourlyVisitorsLast7DaysResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the HourlyVisitorsLast7Days
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class HourlyVisitorsLast7DaysInputSet < Choreography::InputSet

      #### 
      # Set the value of the Output input for this Choreo. 
      # 
      # @param String - (optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
      ###

      def set_Output(value)
        set_input("Output", value)
      end
      #### 
      # Set the value of the SiteID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
      ###

      def set_SiteID(value)
        set_input("SiteID", value)
      end
      #### 
      # Set the value of the SiteKey input for this Choreo. 
      # 
      # @param String - (required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
      ###

      def set_SiteKey(value)
        set_input("SiteKey", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) The type of data you want to retrieve. Defaults to "visitors,actions".
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the HourlyVisitorsLast7Days Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class HourlyVisitorsLast7DaysResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Clicky formatted as specified in the Output parameter. Default is XML.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class HourlyVisitorsLast7Days



  ##############################################################################
  #
  # Last30VisitorsTodayViaSearch
  #
  # Retrieves the last 30 visitors today who arrived via a search.
  #
  ##############################################################################

  class Last30VisitorsTodayViaSearch < Choreography

    ####
    #  Create a new instance of the Last30VisitorsTodayViaSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Clicky/Last30VisitorsTodayViaSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return Last30VisitorsTodayViaSearchInputSet
    ####
    def new_input_set()
      return Last30VisitorsTodayViaSearchInputSet.new()
    end

    def make_result_set()
      return Last30VisitorsTodayViaSearchResultSet.new()
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
      results = Last30VisitorsTodayViaSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Last30VisitorsTodayViaSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class Last30VisitorsTodayViaSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of records you want to retrieve. Defaults to 30.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Output input for this Choreo. 
      # 
      # @param String - (optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
      ###

      def set_Output(value)
        set_input("Output", value)
      end
      #### 
      # Set the value of the SiteID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
      ###

      def set_SiteID(value)
        set_input("SiteID", value)
      end
      #### 
      # Set the value of the SiteKey input for this Choreo. 
      # 
      # @param String - (required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
      ###

      def set_SiteKey(value)
        set_input("SiteKey", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) The type of data you want to retrieve. Defaults to "visitors-list".
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Last30VisitorsTodayViaSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class Last30VisitorsTodayViaSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Clicky formatted as specified in the Output parameter. Default is XML.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Last30VisitorsTodayViaSearch



  ##############################################################################
  #
  # SegmentationForVisitorsTodayViaSearch
  #
  # Retrieves segmentation data for visitors today who arrived via a search.
  #
  ##############################################################################

  class SegmentationForVisitorsTodayViaSearch < Choreography

    ####
    #  Create a new instance of the SegmentationForVisitorsTodayViaSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Clicky/SegmentationForVisitorsTodayViaSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SegmentationForVisitorsTodayViaSearchInputSet
    ####
    def new_input_set()
      return SegmentationForVisitorsTodayViaSearchInputSet.new()
    end

    def make_result_set()
      return SegmentationForVisitorsTodayViaSearchResultSet.new()
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
      results = SegmentationForVisitorsTodayViaSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SegmentationForVisitorsTodayViaSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SegmentationForVisitorsTodayViaSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of records you want to retrieve. Defaults to 30.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Output input for this Choreo. 
      # 
      # @param String - (optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
      ###

      def set_Output(value)
        set_input("Output", value)
      end
      #### 
      # Set the value of the SiteID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
      ###

      def set_SiteID(value)
        set_input("SiteID", value)
      end
      #### 
      # Set the value of the SiteKey input for this Choreo. 
      # 
      # @param String - (required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
      ###

      def set_SiteKey(value)
        set_input("SiteKey", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) The type of data you want to retrieve. Defaults to "segmentation".
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SegmentationForVisitorsTodayViaSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SegmentationForVisitorsTodayViaSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Clicky formatted as specified in the Output parameter. Default is XML.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SegmentationForVisitorsTodayViaSearch



  ##############################################################################
  #
  # TopStatsLastWeek
  #
  # Retrieves last weeks's top pages, links, and searches.
  #
  ##############################################################################

  class TopStatsLastWeek < Choreography

    ####
    #  Create a new instance of the TopStatsLastWeek Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Clicky/TopStatsLastWeek")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return TopStatsLastWeekInputSet
    ####
    def new_input_set()
      return TopStatsLastWeekInputSet.new()
    end

    def make_result_set()
      return TopStatsLastWeekResultSet.new()
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
      results = TopStatsLastWeekResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the TopStatsLastWeek
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class TopStatsLastWeekInputSet < Choreography::InputSet

      #### 
      # Set the value of the Output input for this Choreo. 
      # 
      # @param String - (optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
      ###

      def set_Output(value)
        set_input("Output", value)
      end
      #### 
      # Set the value of the SiteID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
      ###

      def set_SiteID(value)
        set_input("SiteID", value)
      end
      #### 
      # Set the value of the SiteKey input for this Choreo. 
      # 
      # @param String - (required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
      ###

      def set_SiteKey(value)
        set_input("SiteKey", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) The type of data you want to retrieve. Defaults to "pages,links,searches".
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the TopStatsLastWeek Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class TopStatsLastWeekResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Clicky formatted as specified in the Output parameter. Default is XML.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class TopStatsLastWeek



  ##############################################################################
  #
  # TopStatsLastWeekByDay
  #
  # Retrieves last weeks's top pages, links, and searches, by day.
  #
  ##############################################################################

  class TopStatsLastWeekByDay < Choreography

    ####
    #  Create a new instance of the TopStatsLastWeekByDay Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Clicky/TopStatsLastWeekByDay")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return TopStatsLastWeekByDayInputSet
    ####
    def new_input_set()
      return TopStatsLastWeekByDayInputSet.new()
    end

    def make_result_set()
      return TopStatsLastWeekByDayResultSet.new()
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
      results = TopStatsLastWeekByDayResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the TopStatsLastWeekByDay
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class TopStatsLastWeekByDayInputSet < Choreography::InputSet

      #### 
      # Set the value of the Output input for this Choreo. 
      # 
      # @param String - (optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
      ###

      def set_Output(value)
        set_input("Output", value)
      end
      #### 
      # Set the value of the SiteID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
      ###

      def set_SiteID(value)
        set_input("SiteID", value)
      end
      #### 
      # Set the value of the SiteKey input for this Choreo. 
      # 
      # @param String - (required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
      ###

      def set_SiteKey(value)
        set_input("SiteKey", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) The type of data you want to retrieve. Defaults to "pages,links,searches".
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the TopStatsLastWeekByDay Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class TopStatsLastWeekByDayResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Clicky formatted as specified in the Output parameter. Default is XML.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class TopStatsLastWeekByDay



  ##############################################################################
  #
  # VisitorsToday
  #
  # Retrieves today's visitors, actions, average actions, average time, and bounce rate.
  #
  ##############################################################################

  class VisitorsToday < Choreography

    ####
    #  Create a new instance of the VisitorsToday Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Clicky/VisitorsToday")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return VisitorsTodayInputSet
    ####
    def new_input_set()
      return VisitorsTodayInputSet.new()
    end

    def make_result_set()
      return VisitorsTodayResultSet.new()
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
      results = VisitorsTodayResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the VisitorsToday
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class VisitorsTodayInputSet < Choreography::InputSet

      #### 
      # Set the value of the Output input for this Choreo. 
      # 
      # @param String - (optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
      ###

      def set_Output(value)
        set_input("Output", value)
      end
      #### 
      # Set the value of the SiteID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
      ###

      def set_SiteID(value)
        set_input("SiteID", value)
      end
      #### 
      # Set the value of the SiteKey input for this Choreo. 
      # 
      # @param String - (required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
      ###

      def set_SiteKey(value)
        set_input("SiteKey", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) The type of data you want to retrieve. Defaults to "visitors,actions,actions-average,time-average,bounce-rate".
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the VisitorsToday Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class VisitorsTodayResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Clicky formatted as specified in the Output parameter. Default is XML.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class VisitorsToday




end # module Clicky