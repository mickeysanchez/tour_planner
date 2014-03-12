require "temboo"

module TMB_eBay




  module Finding



    ##############################################################################
    #
    # FindCompletedItems
    #
    # Retrieves items whose listings are completed and are no longer available for sale on eBay.
    #
    ##############################################################################

    class FindCompletedItems < Choreography

      ####
      #  Create a new instance of the FindCompletedItems Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Finding/FindCompletedItems")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindCompletedItemsInputSet
      ####
      def new_input_set()
        return FindCompletedItemsInputSet.new()
      end

      def make_result_set()
        return FindCompletedItemsResultSet.new()
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
        results = FindCompletedItemsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindCompletedItems
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindCompletedItemsInputSet < Choreography::InputSet

        #### 
        # Set the value of the FindCompletedItemsRequest input for this Choreo. 
        # 
        # @param String - (optional, xml) The complete XML request body containing properties you wish to set. This can be used as an alternative to individual inputs that represent request properties.
        ###

        def set_FindCompletedItemsRequest(value)
          set_input("FindCompletedItemsRequest", value)
        end
        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the application.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AspectFilters input for this Choreo. 
        # 
        # @param String - (optional, json) A dictionary of key/value pairs to use as aspect filters for the request.
        ###

        def set_AspectFilters(value)
          set_input("AspectFilters", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param String - (optional, string) Filters the results by category ID.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the EntriesPerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of records to return in the result.
        ###

        def set_EntriesPerPage(value)
          set_input("EntriesPerPage", value)
        end
        #### 
        # Set the value of the GlobalID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The global ID of the eBay site to access (e.g., EBAY-US).
        ###

        def set_GlobalID(value)
          set_input("GlobalID", value)
        end
        #### 
        # Set the value of the ItemFilters input for this Choreo. 
        # 
        # @param String - (optional, json) A dictionary of key/value pairs to use as item filters for the request.
        ###

        def set_ItemFilters(value)
          set_input("ItemFilters", value)
        end
        #### 
        # Set the value of the Keywords input for this Choreo. 
        # 
        # @param String - (conditional, string) Filters the results by one or more keywords.
        ###

        def set_Keywords(value)
          set_input("Keywords", value)
        end
        #### 
        # Set the value of the OutputSelector input for this Choreo. 
        # 
        # @param String - (optional, string) Controls the fields that are returned in the response (e.g., GalleryInfo).
        ###

        def set_OutputSelector(value)
          set_input("OutputSelector", value)
        end
        #### 
        # Set the value of the PageNumber input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page number of the results to return.
        ###

        def set_PageNumber(value)
          set_input("PageNumber", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Valid values: BestMatch, BidCountMost, CountryAscending, CountryDescending, DistanceNearest, CurrentPriceHighest, EndTimeSoonest, PricePlusShippingHighest, PricePlusShippingLowest, StartTimeNewest.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindCompletedItems Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindCompletedItemsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindCompletedItems



    ##############################################################################
    #
    # FindItemsAdvanced
    #
    # Finds items by a keyword query and/or category and allows searching within item descriptions.
    #
    ##############################################################################

    class FindItemsAdvanced < Choreography

      ####
      #  Create a new instance of the FindItemsAdvanced Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Finding/FindItemsAdvanced")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindItemsAdvancedInputSet
      ####
      def new_input_set()
        return FindItemsAdvancedInputSet.new()
      end

      def make_result_set()
        return FindItemsAdvancedResultSet.new()
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
        results = FindItemsAdvancedResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindItemsAdvanced
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindItemsAdvancedInputSet < Choreography::InputSet

        #### 
        # Set the value of the FindItemsAdvancedRequest input for this Choreo. 
        # 
        # @param String - (optional, xml) The complete XML request body containing properties you wish to set. This can be used as an alternative to individual inputs that represent request properties.
        ###

        def set_FindItemsAdvancedRequest(value)
          set_input("FindItemsAdvancedRequest", value)
        end
        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the application.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AspectFilters input for this Choreo. 
        # 
        # @param String - (optional, json) A dictionary of key/value pairs to use as aspect filters for the request.
        ###

        def set_AspectFilters(value)
          set_input("AspectFilters", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param String - (optional, string) Filters the results by category ID.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the EntriesPerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of records to return in the result.
        ###

        def set_EntriesPerPage(value)
          set_input("EntriesPerPage", value)
        end
        #### 
        # Set the value of the GlobalID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The global ID of the eBay site to access (e.g., EBAY-US).
        ###

        def set_GlobalID(value)
          set_input("GlobalID", value)
        end
        #### 
        # Set the value of the ItemFilters input for this Choreo. 
        # 
        # @param String - (optional, json) A dictionary of key/value pairs to use as item filters for the request.
        ###

        def set_ItemFilters(value)
          set_input("ItemFilters", value)
        end
        #### 
        # Set the value of the Keywords input for this Choreo. 
        # 
        # @param String - (conditional, string) Filters the results by one or more keywords.
        ###

        def set_Keywords(value)
          set_input("Keywords", value)
        end
        #### 
        # Set the value of the OutputSelector input for this Choreo. 
        # 
        # @param String - (optional, string) Controls the fields that are returned in the response (e.g., GalleryInfo).
        ###

        def set_OutputSelector(value)
          set_input("OutputSelector", value)
        end
        #### 
        # Set the value of the PageNumber input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page number of the results to return.
        ###

        def set_PageNumber(value)
          set_input("PageNumber", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Valid values: BestMatch, BidCountMost, CountryAscending, CountryDescending, DistanceNearest, CurrentPriceHighest, EndTimeSoonest, PricePlusShippingHighest, PricePlusShippingLowest, StartTimeNewest.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindItemsAdvanced Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindItemsAdvancedResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindItemsAdvanced



    ##############################################################################
    #
    # FindItemsByImage
    #
    # Finds items based on their image similarity to the specified item.
    #
    ##############################################################################

    class FindItemsByImage < Choreography

      ####
      #  Create a new instance of the FindItemsByImage Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Finding/FindItemsByImage")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindItemsByImageInputSet
      ####
      def new_input_set()
        return FindItemsByImageInputSet.new()
      end

      def make_result_set()
        return FindItemsByImageResultSet.new()
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
        results = FindItemsByImageResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindItemsByImage
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindItemsByImageInputSet < Choreography::InputSet

        #### 
        # Set the value of the FindItemsByImageRequest input for this Choreo. 
        # 
        # @param String - (optional, xml) The complete XML request body containing properties you wish to set. This can be used as an alternative to individual inputs that represent request properties.
        ###

        def set_FindItemsByImageRequest(value)
          set_input("FindItemsByImageRequest", value)
        end
        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the application.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AspectFilters input for this Choreo. 
        # 
        # @param String - (optional, json) A dictionary of key/value pairs to use as aspect filters for the request.
        ###

        def set_AspectFilters(value)
          set_input("AspectFilters", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param String - (optional, string) Filters the results by category ID.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the EntriesPerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of records to return in the result.
        ###

        def set_EntriesPerPage(value)
          set_input("EntriesPerPage", value)
        end
        #### 
        # Set the value of the GlobalID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The global ID of the eBay site to access (e.g., EBAY-US).
        ###

        def set_GlobalID(value)
          set_input("GlobalID", value)
        end
        #### 
        # Set the value of the ItemFilters input for this Choreo. 
        # 
        # @param String - (optional, json) A dictionary of key/value pairs to use as item filters for the request.
        ###

        def set_ItemFilters(value)
          set_input("ItemFilters", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of an item associated with the image you want to use for matching. The item must be active and listed in a Clothing, Shoes & Accessories category (parent category ID 11450 on the eBay US site).
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the OutputSelector input for this Choreo. 
        # 
        # @param String - (optional, string) Controls the fields that are returned in the response (e.g., GalleryInfo).
        ###

        def set_OutputSelector(value)
          set_input("OutputSelector", value)
        end
        #### 
        # Set the value of the PageNumber input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page number of the results to return.
        ###

        def set_PageNumber(value)
          set_input("PageNumber", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Valid values: BestMatch, BidCountMost, CountryAscending, CountryDescending, DistanceNearest, CurrentPriceHighest, EndTimeSoonest, PricePlusShippingHighest, PricePlusShippingLowest, StartTimeNewest.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindItemsByImage Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindItemsByImageResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindItemsByImage



    ##############################################################################
    #
    # FindItemsByProduct
    #
    # Finds items based upon a product ID, such as an ISBN, UPC, EAN, or ePID.
    #
    ##############################################################################

    class FindItemsByProduct < Choreography

      ####
      #  Create a new instance of the FindItemsByProduct Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Finding/FindItemsByProduct")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindItemsByProductInputSet
      ####
      def new_input_set()
        return FindItemsByProductInputSet.new()
      end

      def make_result_set()
        return FindItemsByProductResultSet.new()
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
        results = FindItemsByProductResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindItemsByProduct
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindItemsByProductInputSet < Choreography::InputSet

        #### 
        # Set the value of the FindItemsByProductRequest input for this Choreo. 
        # 
        # @param String - (optional, xml) The complete XML request body containing properties you wish to set. This can be used as an alternative to individual inputs that represent request properties.
        ###

        def set_FindItemsByProductRequest(value)
          set_input("FindItemsByProductRequest", value)
        end
        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the application.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the EntriesPerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of records to return in the result.
        ###

        def set_EntriesPerPage(value)
          set_input("EntriesPerPage", value)
        end
        #### 
        # Set the value of the GlobalID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The global ID of the eBay site to access (e.g., EBAY-US).
        ###

        def set_GlobalID(value)
          set_input("GlobalID", value)
        end
        #### 
        # Set the value of the ItemFilters input for this Choreo. 
        # 
        # @param String - (optional, json) A dictionary of key/value pairs to use as item filters for the request.
        ###

        def set_ItemFilters(value)
          set_input("ItemFilters", value)
        end
        #### 
        # Set the value of the OutputSelector input for this Choreo. 
        # 
        # @param String - (optional, string) Controls the fields that are returned in the response (e.g., GalleryInfo).
        ###

        def set_OutputSelector(value)
          set_input("OutputSelector", value)
        end
        #### 
        # Set the value of the PageNumber input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page number of the results to return.
        ###

        def set_PageNumber(value)
          set_input("PageNumber", value)
        end
        #### 
        # Set the value of the ProductIDType input for this Choreo. 
        # 
        # @param String - (required, string) The type of identifier being used to find a product. Valid values are: ReferenceID, ISBN, UPC, and EAN.
        ###

        def set_ProductIDType(value)
          set_input("ProductIDType", value)
        end
        #### 
        # Set the value of the ProductID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of a product to find.
        ###

        def set_ProductID(value)
          set_input("ProductID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Valid values: BestMatch, BidCountMost, CountryAscending, CountryDescending, DistanceNearest, CurrentPriceHighest, EndTimeSoonest, PricePlusShippingHighest, PricePlusShippingLowest, StartTimeNewest.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindItemsByProduct Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindItemsByProductResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindItemsByProduct



    ##############################################################################
    #
    # GetHistograms
    #
    # Returns category and/or aspect histogram information for the eBay category ID you specify.
    #
    ##############################################################################

    class GetHistograms < Choreography

      ####
      #  Create a new instance of the GetHistograms Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Finding/GetHistograms")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetHistogramsInputSet
      ####
      def new_input_set()
        return GetHistogramsInputSet.new()
      end

      def make_result_set()
        return GetHistogramsResultSet.new()
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
        results = GetHistogramsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetHistograms
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetHistogramsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the application.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param String - (required, string) Specifies the category from which you want to retrieve histogram information. 
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the GlobalID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The global ID of the eBay site to access (e.g., EBAY-US).
        ###

        def set_GlobalID(value)
          set_input("GlobalID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetHistograms Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetHistogramsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetHistograms




  end # module Finding

  module Shopping



    ##############################################################################
    #
    # FindPopularItems
    #
    # Searches for popular items based on a category or keyword.
    #
    ##############################################################################

    class FindPopularItems < Choreography

      ####
      #  Create a new instance of the FindPopularItems Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Shopping/FindPopularItems")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindPopularItemsInputSet
      ####
      def new_input_set()
        return FindPopularItemsInputSet.new()
      end

      def make_result_set()
        return FindPopularItemsResultSet.new()
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
        results = FindPopularItemsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindPopularItems
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindPopularItemsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the application.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the CategoryIDExclude input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The ID of a category to exclude from the result set. Multiple category IDs can be separated by commas.
        ###

        def set_CategoryIDExclude(value)
          set_input("CategoryIDExclude", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param String - (optional, string) The ID of a category to filter by. Multiple category IDs can be separated by commas.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the MaxEntries input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The maxiumum number of entries to return in the response.
        ###

        def set_MaxEntries(value)
          set_input("MaxEntries", value)
        end
        #### 
        # Set the value of the QueryKeywords input for this Choreo. 
        # 
        # @param String - (conditional, string) The text for a keyword search.
        ###

        def set_QueryKeywords(value)
          set_input("QueryKeywords", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindPopularItems Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindPopularItemsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindPopularItems



    ##############################################################################
    #
    # FindProducts
    #
    # Retrieves the listings for products that match the specified keywords.
    #
    ##############################################################################

    class FindProducts < Choreography

      ####
      #  Create a new instance of the FindProducts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Shopping/FindProducts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindProductsInputSet
      ####
      def new_input_set()
        return FindProductsInputSet.new()
      end

      def make_result_set()
        return FindProductsResultSet.new()
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
        results = FindProductsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindProducts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindProductsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the application.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AvailableItemsOnly input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If set to true, only retrieve data for products that have been used to pre-fill active listings. If false, retrieve all products that match the query. Defaults to false.
        ###

        def set_AvailableItemsOnly(value)
          set_input("AvailableItemsOnly", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param String - (conditional, string) Restricts your query to a specific category. The request requires one of the following filter parameters: QueryKeywords, ProductID, or CategoryID. Only one of the filters should be provided.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the DomainName input for this Choreo. 
        # 
        # @param String - (optional, string) A domain to search in (e.g. Textbooks).
        ###

        def set_DomainName(value)
          set_input("DomainName", value)
        end
        #### 
        # Set the value of the HideDuplicateItems input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies whether or not to remove duplicate items from search results.
        ###

        def set_HideDuplicateItems(value)
          set_input("HideDuplicateItems", value)
        end
        #### 
        # Set the value of the IncludeSelector input for this Choreo. 
        # 
        # @param String - (optional, string) Defines standard subsets of fields to return within the response. Valid values are: Details, DomainHistogram, and Items.
        ###

        def set_IncludeSelector(value)
          set_input("IncludeSelector", value)
        end
        #### 
        # Set the value of the MaxEntries input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of entries to return in the response.
        ###

        def set_MaxEntries(value)
          set_input("MaxEntries", value)
        end
        #### 
        # Set the value of the PageNumber input for this Choreo. 
        # 
        # @param String - (optional, string) The page number to retrieve.
        ###

        def set_PageNumber(value)
          set_input("PageNumber", value)
        end
        #### 
        # Set the value of the ProductID input for this Choreo. 
        # 
        # @param String - (conditional, string) Used to retrieve product details. The request requires one of the following filter parameters: QueryKeywords, ProductID, or CategoryID. Only one of the filters should be provided.
        ###

        def set_ProductID(value)
          set_input("ProductID", value)
        end
        #### 
        # Set the value of the ProductSort input for this Choreo. 
        # 
        # @param String - (optional, string) Sorts the list of products returned. Valid values are: ItemCount, Popularity, Rating, ReviewCount, and Title.
        ###

        def set_ProductSort(value)
          set_input("ProductSort", value)
        end
        #### 
        # Set the value of the QueryKeywords input for this Choreo. 
        # 
        # @param String - (conditional, string) The query keywords to use for the product search. The request requires one of the following filter parameters: QueryKeywords, ProductID, or CategoryID. Only one of the filters should be provided.
        ###

        def set_QueryKeywords(value)
          set_input("QueryKeywords", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Sorts search results in ascending or descending order. Valid values are: Ascending and Descending.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindProducts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindProductsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindProducts



    ##############################################################################
    #
    # GetCategoryInfo
    #
    # Retrieve high-level category information for a specified category.
    #
    ##############################################################################

    class GetCategoryInfo < Choreography

      ####
      #  Create a new instance of the GetCategoryInfo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Shopping/GetCategoryInfo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCategoryInfoInputSet
      ####
      def new_input_set()
        return GetCategoryInfoInputSet.new()
      end

      def make_result_set()
        return GetCategoryInfoResultSet.new()
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
        results = GetCategoryInfoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCategoryInfo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCategoryInfoInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the application.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of a category to retrieve. Use an ID of -1 to retrieve the root category and the top-level (level 1) meta categories.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the IncludeSelector input for this Choreo. 
        # 
        # @param String - (optional, string) Defines standard subsets of fields to return within the response. Valid values are: ChildCategories.
        ###

        def set_IncludeSelector(value)
          set_input("IncludeSelector", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCategoryInfo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCategoryInfoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCategoryInfo



    ##############################################################################
    #
    # GetItemStatus
    #
    # Allows you to get the status for a group of items.
    #
    ##############################################################################

    class GetItemStatus < Choreography

      ####
      #  Create a new instance of the GetItemStatus Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Shopping/GetItemStatus")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetItemStatusInputSet
      ####
      def new_input_set()
        return GetItemStatusInputSet.new()
      end

      def make_result_set()
        return GetItemStatusResultSet.new()
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
        results = GetItemStatusResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetItemStatus
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetItemStatusInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the application.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of an item to retrieve the status for. Multiple item IDs can be separated by commas.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetItemStatus Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetItemStatusResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetItemStatus



    ##############################################################################
    #
    # GetMultipleItems
    #
    # Retrieves publicly available data for one or more listings.
    #
    ##############################################################################

    class GetMultipleItems < Choreography

      ####
      #  Create a new instance of the GetMultipleItems Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Shopping/GetMultipleItems")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMultipleItemsInputSet
      ####
      def new_input_set()
        return GetMultipleItemsInputSet.new()
      end

      def make_result_set()
        return GetMultipleItemsResultSet.new()
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
        results = GetMultipleItemsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMultipleItems
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMultipleItemsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the application.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of an item to retrieve the status for. Multiple item IDs can be separated by commas.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMultipleItems Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMultipleItemsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetMultipleItems



    ##############################################################################
    #
    # GetShippingCosts
    #
    # Retrieves shipping costs for an item.
    #
    ##############################################################################

    class GetShippingCosts < Choreography

      ####
      #  Create a new instance of the GetShippingCosts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Shopping/GetShippingCosts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetShippingCostsInputSet
      ####
      def new_input_set()
        return GetShippingCostsInputSet.new()
      end

      def make_result_set()
        return GetShippingCostsResultSet.new()
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
        results = GetShippingCostsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetShippingCosts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetShippingCostsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the application.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the DestinationCountryCode input for this Choreo. 
        # 
        # @param String - (conditional, string) The shipment destination country code.
        ###

        def set_DestinationCountryCode(value)
          set_input("DestinationCountryCode", value)
        end
        #### 
        # Set the value of the DestinationPostalCode input for this Choreo. 
        # 
        # @param String - (conditional, string) The shipment destination postal code.
        ###

        def set_DestinationPostalCode(value)
          set_input("DestinationPostalCode", value)
        end
        #### 
        # Set the value of the IncludeDetails input for this Choreo. 
        # 
        # @param Boolean - (conditional, boolean) Indicates whether to return the ShippingDetails container in the response.
        ###

        def set_IncludeDetails(value)
          set_input("IncludeDetails", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the item to get shipping costs for.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the QuantitySold input for this Choreo. 
        # 
        # @param String - (optional, string) The quantity of items being shipped.
        ###

        def set_QuantitySold(value)
          set_input("QuantitySold", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetShippingCosts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetShippingCostsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetShippingCosts



    ##############################################################################
    #
    # GetUserProfile
    #
    # Retrieves public user information based on the user ID you specify.
    #
    ##############################################################################

    class GetUserProfile < Choreography

      ####
      #  Create a new instance of the GetUserProfile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Shopping/GetUserProfile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUserProfileInputSet
      ####
      def new_input_set()
        return GetUserProfileInputSet.new()
      end

      def make_result_set()
        return GetUserProfileResultSet.new()
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
        results = GetUserProfileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUserProfile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUserProfileInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the application.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user to return the profile for.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUserProfile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUserProfileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetUserProfile




  end # module Shopping

  module Trading



    ##############################################################################
    #
    # AddBasicListing
    #
    # Allows you create a basic listing on eBay using scalar inputs rather than an XML request.
    #
    ##############################################################################

    class AddBasicListing < Choreography

      ####
      #  Create a new instance of the AddBasicListing Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/AddBasicListing")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddBasicListingInputSet
      ####
      def new_input_set()
        return AddBasicListingInputSet.new()
      end

      def make_result_set()
        return AddBasicListingResultSet.new()
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
        results = AddBasicListingResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddBasicListing
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddBasicListingInputSet < Choreography::InputSet

        #### 
        # Set the value of the BuyItNowPrice input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Allows a user to purchase the item at a Buy It Now price and end the auction immediately.
        ###

        def set_BuyItNowPrice(value)
          set_input("BuyItNowPrice", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The numeric ID for a category on eBay. Category IDs can be retrieved with the GetCategories Choreo.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the ConditionID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The numeric ID (e.g., 1000) for the item condition.
        ###

        def set_ConditionID(value)
          set_input("ConditionID", value)
        end
        #### 
        # Set the value of the Country input for this Choreo. 
        # 
        # @param String - (conditional, string) The country where the item is located in.
        ###

        def set_Country(value)
          set_input("Country", value)
        end
        #### 
        # Set the value of the Currency input for this Choreo. 
        # 
        # @param String - (conditional, string) The currency associated with the item price.
        ###

        def set_Currency(value)
          set_input("Currency", value)
        end
        #### 
        # Set the value of the DispatchTimeMax input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) Specifies the maximum number of business days the seller commits to for preparing an item to be shipped after receiving a cleared payment.
        ###

        def set_DispatchTimeMax(value)
          set_input("DispatchTimeMax", value)
        end
        #### 
        # Set the value of the ExpeditedService input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Whether or not the seller is offering expedited shipping service options.
        ###

        def set_ExpeditedService(value)
          set_input("ExpeditedService", value)
        end
        #### 
        # Set the value of the ItemDescription input for this Choreo. 
        # 
        # @param String - (conditional, string) The seller's description of the item.
        ###

        def set_ItemDescription(value)
          set_input("ItemDescription", value)
        end
        #### 
        # Set the value of the ListingDuration input for this Choreo. 
        # 
        # @param String - (conditional, string) The number of days the seller wants the listing to be active (e.g., Days_7). A complete list of accepted values is returned when calling GetCategoryFeatures with DetailLevel set to ReturnAll.
        ###

        def set_ListingDuration(value)
          set_input("ListingDuration", value)
        end
        #### 
        # Set the value of the ListingType input for this Choreo. 
        # 
        # @param String - (optional, string) The format of the listing the seller wants to use. Valid values are: AdType, Chinese, FixedPriceItem, Half, LeadGeneration.
        ###

        def set_ListingType(value)
          set_input("ListingType", value)
        end
        #### 
        # Set the value of the PayPalEmailAddress input for this Choreo. 
        # 
        # @param String - (conditional, string) The seller's PayPal email address. Required when a PaymentMethod is PayPal.
        ###

        def set_PayPalEmailAddress(value)
          set_input("PayPalEmailAddress", value)
        end
        #### 
        # Set the value of the PaymentMethods input for this Choreo. 
        # 
        # @param String - (conditional, string) Identifies the payment method (such as PayPal) that the seller will accept when the buyer pays for the item. This can be a comma-separated list (e.g., VisaMC,PayPal).
        ###

        def set_PaymentMethods(value)
          set_input("PaymentMethods", value)
        end
        #### 
        # Set the value of the PictureURL input for this Choreo. 
        # 
        # @param String - (conditional, string) The URL for a picture associated with an item.
        ###

        def set_PictureURL(value)
          set_input("PictureURL", value)
        end
        #### 
        # Set the value of the PostalCode input for this Choreo. 
        # 
        # @param String - (conditional, string) The Postal code of the place where the item is located.
        ###

        def set_PostalCode(value)
          set_input("PostalCode", value)
        end
        #### 
        # Set the value of the Quantity input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) Indicates the quantity of items available for purchase in the listing. Required for all auction listings and for non-variation, fixed-price listings. For auction listings, this value is always '1'.
        ###

        def set_Quantity(value)
          set_input("Quantity", value)
        end
        #### 
        # Set the value of the RefundOption input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates how the seller will compensate the buyer for a returned item (e.g. MoneyBack).
        ###

        def set_RefundOption(value)
          set_input("RefundOption", value)
        end
        #### 
        # Set the value of the ReservePrice input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The lowest price at which the seller is willing to sell the item.
        ###

        def set_ReservePrice(value)
          set_input("ReservePrice", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ReturnPolicyDescription input for this Choreo. 
        # 
        # @param String - (optional, string) The text description of return policy details.
        ###

        def set_ReturnPolicyDescription(value)
          set_input("ReturnPolicyDescription", value)
        end
        #### 
        # Set the value of the ReturnsAcceptedOption input for this Choreo. 
        # 
        # @param String - (conditional, string) Indicates whether the seller allows the buyer to return the item (e.g., ReturnsAccepted).
        ###

        def set_ReturnsAcceptedOption(value)
          set_input("ReturnsAcceptedOption", value)
        end
        #### 
        # Set the value of the ReturnsWithinOption input for this Choreo. 
        # 
        # @param String - (optional, string) The period of time the buyer has to return the item (e.g., Days_14). To accepted values for this field, call GeteBayDetails with DetailName set to ReturnPolicyDetails.
        ###

        def set_ReturnsWithinOption(value)
          set_input("ReturnsWithinOption", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the ShippingServiceAdditionalCost input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Shipping costs in addition to the value specified for the ShippingServiceCost parameter.
        ###

        def set_ShippingServiceAdditionalCost(value)
          set_input("ShippingServiceAdditionalCost", value)
        end
        #### 
        # Set the value of the ShippingServiceCost input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The cost for shipping the item.
        ###

        def set_ShippingServiceCost(value)
          set_input("ShippingServiceCost", value)
        end
        #### 
        # Set the value of the ShippingService input for this Choreo. 
        # 
        # @param String - (conditional, string) The name of the shipping service offered (e.g. UPSGround, USPSMedia).
        ###

        def set_ShippingService(value)
          set_input("ShippingService", value)
        end
        #### 
        # Set the value of the ShippingType input for this Choreo. 
        # 
        # @param String - (conditional, string) The shipping cost model offered by the seller. Valid values are: Calculated, CalculatedDomesticFlatInternational, Flat, FlatDomesticCalculatedInternational, FreightFlat, NotSpecified.
        ###

        def set_ShippingType(value)
          set_input("ShippingType", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the Site input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the site on which the item is listed. This should corresponse to the SiteID. Default value is "US".
        ###

        def set_Site(value)
          set_input("Site", value)
        end
        #### 
        # Set the value of the StartPrice input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) This value indicates the starting price of the item when it is listed for the first time.
        ###

        def set_StartPrice(value)
          set_input("StartPrice", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (conditional, string) The title of the item as it appears in the listing or search results.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddBasicListing Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddBasicListingResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddBasicListing



    ##############################################################################
    #
    # AddItem
    #
    # Defines a single new item and lists it on a specified eBay site.
    #
    ##############################################################################

    class AddItem < Choreography

      ####
      #  Create a new instance of the AddItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/AddItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddItemInputSet
      ####
      def new_input_set()
        return AddItemInputSet.new()
      end

      def make_result_set()
        return AddItemResultSet.new()
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
        results = AddItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the AddItemRequest input for this Choreo. 
        # 
        # @param String - (required, xml) The complete XML request body containing item properties you wish to set.
        ###

        def set_AddItemRequest(value)
          set_input("AddItemRequest", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddItem



    ##############################################################################
    #
    # AddMemberMessageAAQToPartner
    #
    # Allows a buyer and seller in an order relationship to send messages to each other's My Messages Inboxes.
    #
    ##############################################################################

    class AddMemberMessageAAQToPartner < Choreography

      ####
      #  Create a new instance of the AddMemberMessageAAQToPartner Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/AddMemberMessageAAQToPartner")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddMemberMessageAAQToPartnerInputSet
      ####
      def new_input_set()
        return AddMemberMessageAAQToPartnerInputSet.new()
      end

      def make_result_set()
        return AddMemberMessageAAQToPartnerResultSet.new()
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
        results = AddMemberMessageAAQToPartnerResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddMemberMessageAAQToPartner
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddMemberMessageAAQToPartnerInputSet < Choreography::InputSet

        #### 
        # Set the value of the Body input for this Choreo. 
        # 
        # @param String - (required, string) The message body.
        ###

        def set_Body(value)
          set_input("Body", value)
        end
        #### 
        # Set the value of the EmailCopyToSender input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A flag used to indicate that a copy should be sent to the sender.
        ###

        def set_EmailCopyToSender(value)
          set_input("EmailCopyToSender", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (required, string) The unique ID of the item about which the question was asked.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the QuestionType input for this Choreo. 
        # 
        # @param String - (required, string) The type of question. Valid values are: General, Shipping, Payment, MultipleItemShipping, CustomizedSubject, or None.
        ###

        def set_QuestionType(value)
          set_input("QuestionType", value)
        end
        #### 
        # Set the value of the RecipientID input for this Choreo. 
        # 
        # @param String - (required, string) The user ID of the message recipient.
        ###

        def set_RecipientID(value)
          set_input("RecipientID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the Subject input for this Choreo. 
        # 
        # @param String - (required, string) The message subject.
        ###

        def set_Subject(value)
          set_input("Subject", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddMemberMessageAAQToPartner Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddMemberMessageAAQToPartnerResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddMemberMessageAAQToPartner



    ##############################################################################
    #
    # AddMemberMessageRTQ
    #
    # Allows a seller to reply to a question about an active item listing.
    #
    ##############################################################################

    class AddMemberMessageRTQ < Choreography

      ####
      #  Create a new instance of the AddMemberMessageRTQ Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/AddMemberMessageRTQ")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddMemberMessageRTQInputSet
      ####
      def new_input_set()
        return AddMemberMessageRTQInputSet.new()
      end

      def make_result_set()
        return AddMemberMessageRTQResultSet.new()
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
        results = AddMemberMessageRTQResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddMemberMessageRTQ
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddMemberMessageRTQInputSet < Choreography::InputSet

        #### 
        # Set the value of the Body input for this Choreo. 
        # 
        # @param String - (required, string) The message body which should answer the question that an eBay user ask the seller. HTML is not allowed.
        ###

        def set_Body(value)
          set_input("Body", value)
        end
        #### 
        # Set the value of the DisplayToPublic input for this Choreo. 
        # 
        # @param String - (optional, string) When set to true, this indicates that the member message is viewable in the item listing.
        ###

        def set_DisplayToPublic(value)
          set_input("DisplayToPublic", value)
        end
        #### 
        # Set the value of the EmailCopyToSender input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A flag used to indicate that a copy should be sent to the sender.
        ###

        def set_EmailCopyToSender(value)
          set_input("EmailCopyToSender", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (optional, string) The unique ID of the item about which the question was asked.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the ParentMessageID input for this Choreo. 
        # 
        # @param String - (required, string) The ID number of the question to which this message is responding.
        ###

        def set_ParentMessageID(value)
          set_input("ParentMessageID", value)
        end
        #### 
        # Set the value of the RecipientID input for this Choreo. 
        # 
        # @param String - (required, string) The recipient's eBay user ID.
        ###

        def set_RecipientID(value)
          set_input("RecipientID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddMemberMessageRTQ Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddMemberMessageRTQResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddMemberMessageRTQ



    ##############################################################################
    #
    # AddToWatchList
    #
    # Adds one or more items to the user's My eBay watch list.
    #
    ##############################################################################

    class AddToWatchList < Choreography

      ####
      #  Create a new instance of the AddToWatchList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/AddToWatchList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddToWatchListInputSet
      ####
      def new_input_set()
        return AddToWatchListInputSet.new()
      end

      def make_result_set()
        return AddToWatchListResultSet.new()
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
        results = AddToWatchListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddToWatchList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddToWatchListInputSet < Choreography::InputSet

        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of an item to add to a user's watch list. This can be a comma-separated list of item IDs.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddToWatchList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddToWatchListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddToWatchList



    ##############################################################################
    #
    # CompleteSale
    #
    # Allows the seller to perform the final steps for completing an order.
    #
    ##############################################################################

    class CompleteSale < Choreography

      ####
      #  Create a new instance of the CompleteSale Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/CompleteSale")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CompleteSaleInputSet
      ####
      def new_input_set()
        return CompleteSaleInputSet.new()
      end

      def make_result_set()
        return CompleteSaleResultSet.new()
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
        results = CompleteSaleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CompleteSale
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CompleteSaleInputSet < Choreography::InputSet

        #### 
        # Set the value of the CompleteSaleRequest input for this Choreo. 
        # 
        # @param String - (optional, xml) The complete XML request body containing properties you wish to set. This can be used as an alternative to individual inputs that represent request properties.
        ###

        def set_CompleteSaleRequest(value)
          set_input("CompleteSaleRequest", value)
        end
        #### 
        # Set the value of the CommentText input for this Choreo. 
        # 
        # @param String - (optional, string) The comment text to leave Feedback about the buyer.
        ###

        def set_CommentText(value)
          set_input("CommentText", value)
        end
        #### 
        # Set the value of the CommentType input for this Choreo. 
        # 
        # @param String - (optional, string) The type of comment. Valid values are: Positive.
        ###

        def set_CommentType(value)
          set_input("CommentType", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (conditional, string) The unique identifier for an eBay item listing that was sold. Either ItemID or TransactionID should be provided.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the Notes input for this Choreo. 
        # 
        # @param String - (optional, string) A text field for shipping related notes.
        ###

        def set_Notes(value)
          set_input("Notes", value)
        end
        #### 
        # Set the value of the OrderID input for this Choreo. 
        # 
        # @param String - (optional, string) A unique identifier that identifies a single line item or multiple line item order.
        ###

        def set_OrderID(value)
          set_input("OrderID", value)
        end
        #### 
        # Set the value of the OrderLineItemID input for this Choreo. 
        # 
        # @param String - (optional, string) This is a unique identifier for an eBay order line item and is based upon the concatenation of ItemID and TransactionID, with a hyphen in between these two IDs.
        ###

        def set_OrderLineItemID(value)
          set_input("OrderLineItemID", value)
        end
        #### 
        # Set the value of the Paid input for this Choreo. 
        # 
        # @param Boolean - (conditional, boolean) Set to true to indicate that the item has been paid for. One of Feedback info, Shipped status or Paid status is required.
        ###

        def set_Paid(value)
          set_input("Paid", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the ShipmentTrackingNumber input for this Choreo. 
        # 
        # @param String - (optional, string) The tracking number for the package.
        ###

        def set_ShipmentTrackingNumber(value)
          set_input("ShipmentTrackingNumber", value)
        end
        #### 
        # Set the value of the ShippedTime input for this Choreo. 
        # 
        # @param String - (optional, date) The date and time that the item was shipped.
        ###

        def set_ShippedTime(value)
          set_input("ShippedTime", value)
        end
        #### 
        # Set the value of the Shipped input for this Choreo. 
        # 
        # @param Boolean - (conditional, boolean) Set to true to indicate that the item has been shipped. One of Feedback info, Shipped status or Paid status is required.
        ###

        def set_Shipped(value)
          set_input("Shipped", value)
        end
        #### 
        # Set the value of the ShippingCarrierUsed input for this Choreo. 
        # 
        # @param String - (optional, string) The carrier used to ship the item.
        ###

        def set_ShippingCarrierUsed(value)
          set_input("ShippingCarrierUsed", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the TargetUser input for this Choreo. 
        # 
        # @param String - (optional, string) The user ID of the buyer who you want to leave feedback for.
        ###

        def set_TargetUser(value)
          set_input("TargetUser", value)
        end
        #### 
        # Set the value of the TransactionID input for this Choreo. 
        # 
        # @param String - (conditional, string) The unique identifier for an eBay order line item (transaction). Either ItemID or TransactionID should be provided.
        ###

        def set_TransactionID(value)
          set_input("TransactionID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CompleteSale Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CompleteSaleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CompleteSale



    ##############################################################################
    #
    # CreateBasicListing
    #
    # Allows you create a basic listing on eBay using scalar inputs rather than an XML request.
    #
    ##############################################################################

    class CreateBasicListing < Choreography

      ####
      #  Create a new instance of the CreateBasicListing Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/CreateBasicListing")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateBasicListingInputSet
      ####
      def new_input_set()
        return CreateBasicListingInputSet.new()
      end

      def make_result_set()
        return CreateBasicListingResultSet.new()
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
        results = CreateBasicListingResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateBasicListing
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateBasicListingInputSet < Choreography::InputSet

        #### 
        # Set the value of the BuyItNowPrice input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Allows a user to purchase the item at a Buy It Now price and end the auction immediately.
        ###

        def set_BuyItNowPrice(value)
          set_input("BuyItNowPrice", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The numeric ID for a category on eBay. Category IDs can be retrieved with the GetCategories Choreo.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the ConditionID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The numeric ID (e.g., 1000) for the item condition.
        ###

        def set_ConditionID(value)
          set_input("ConditionID", value)
        end
        #### 
        # Set the value of the Country input for this Choreo. 
        # 
        # @param String - (conditional, string) The country where the item is located in.
        ###

        def set_Country(value)
          set_input("Country", value)
        end
        #### 
        # Set the value of the Currency input for this Choreo. 
        # 
        # @param String - (conditional, string) The currency associated with the item price.
        ###

        def set_Currency(value)
          set_input("Currency", value)
        end
        #### 
        # Set the value of the DispatchTimeMax input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) Specifies the maximum number of business days the seller commits to for preparing an item to be shipped after receiving a cleared payment.
        ###

        def set_DispatchTimeMax(value)
          set_input("DispatchTimeMax", value)
        end
        #### 
        # Set the value of the ExpeditedService input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Whether or not the seller is offering expedited shipping service options.
        ###

        def set_ExpeditedService(value)
          set_input("ExpeditedService", value)
        end
        #### 
        # Set the value of the ItemDescription input for this Choreo. 
        # 
        # @param String - (conditional, string) The seller's description of the item.
        ###

        def set_ItemDescription(value)
          set_input("ItemDescription", value)
        end
        #### 
        # Set the value of the ListingDuration input for this Choreo. 
        # 
        # @param String - (conditional, string) The number of days the seller wants the listing to be active (e.g., Days_7). A complete list of accepted values is returned when calling GetCategoryFeatures with DetailLevel set to ReturnAll.
        ###

        def set_ListingDuration(value)
          set_input("ListingDuration", value)
        end
        #### 
        # Set the value of the ListingType input for this Choreo. 
        # 
        # @param String - (optional, string) The format of the listing the seller wants to use. Valid values are: AdType, Chinese, FixedPriceItem, Half, LeadGeneration.
        ###

        def set_ListingType(value)
          set_input("ListingType", value)
        end
        #### 
        # Set the value of the PayPalEmailAddress input for this Choreo. 
        # 
        # @param String - (conditional, string) The seller's PayPal email address. Required when a PaymentMethod is PayPal.
        ###

        def set_PayPalEmailAddress(value)
          set_input("PayPalEmailAddress", value)
        end
        #### 
        # Set the value of the PaymentMethods input for this Choreo. 
        # 
        # @param String - (conditional, string) Identifies the payment method (such as PayPal) that the seller will accept when the buyer pays for the item. This can be a comma-separated list (e.g., VisaMC,PayPal).
        ###

        def set_PaymentMethods(value)
          set_input("PaymentMethods", value)
        end
        #### 
        # Set the value of the PictureURL input for this Choreo. 
        # 
        # @param String - (conditional, string) The URL for a picture associated with an item.
        ###

        def set_PictureURL(value)
          set_input("PictureURL", value)
        end
        #### 
        # Set the value of the PostalCode input for this Choreo. 
        # 
        # @param String - (conditional, string) The Postal code of the place where the item is located.
        ###

        def set_PostalCode(value)
          set_input("PostalCode", value)
        end
        #### 
        # Set the value of the Quantity input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) Indicates the quantity of items available for purchase in the listing. Required for all auction listings and for non-variation, fixed-price listings. For auction listings, this value is always '1'.
        ###

        def set_Quantity(value)
          set_input("Quantity", value)
        end
        #### 
        # Set the value of the RefundOption input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates how the seller will compensate the buyer for a returned item (e.g. MoneyBack).
        ###

        def set_RefundOption(value)
          set_input("RefundOption", value)
        end
        #### 
        # Set the value of the ReservePrice input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The lowest price at which the seller is willing to sell the item.
        ###

        def set_ReservePrice(value)
          set_input("ReservePrice", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ReturnPolicyDescription input for this Choreo. 
        # 
        # @param String - (optional, string) The text description of return policy details.
        ###

        def set_ReturnPolicyDescription(value)
          set_input("ReturnPolicyDescription", value)
        end
        #### 
        # Set the value of the ReturnsAcceptedOption input for this Choreo. 
        # 
        # @param String - (conditional, string) Indicates whether the seller allows the buyer to return the item (e.g., ReturnsAccepted).
        ###

        def set_ReturnsAcceptedOption(value)
          set_input("ReturnsAcceptedOption", value)
        end
        #### 
        # Set the value of the ReturnsWithinOption input for this Choreo. 
        # 
        # @param String - (optional, string) The period of time the buyer has to return the item (e.g., Days_14). To accepted values for this field, call GeteBayDetails with DetailName set to ReturnPolicyDetails.
        ###

        def set_ReturnsWithinOption(value)
          set_input("ReturnsWithinOption", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the ShippingServiceAdditionalCost input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Shipping costs in addition to the value specified for the ShippingServiceCost parameter.
        ###

        def set_ShippingServiceAdditionalCost(value)
          set_input("ShippingServiceAdditionalCost", value)
        end
        #### 
        # Set the value of the ShippingServiceCost input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The cost for shipping the item.
        ###

        def set_ShippingServiceCost(value)
          set_input("ShippingServiceCost", value)
        end
        #### 
        # Set the value of the ShippingService input for this Choreo. 
        # 
        # @param String - (conditional, string) The name of the shipping service offered (e.g. UPSGround, USPSMedia).
        ###

        def set_ShippingService(value)
          set_input("ShippingService", value)
        end
        #### 
        # Set the value of the ShippingType input for this Choreo. 
        # 
        # @param String - (conditional, string) The shipping cost model offered by the seller. Valid values are: Calculated, CalculatedDomesticFlatInternational, Flat, FlatDomesticCalculatedInternational, FreightFlat, NotSpecified.
        ###

        def set_ShippingType(value)
          set_input("ShippingType", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the Site input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the site on which the item is listed. This should corresponse to the SiteID. Default value is "US".
        ###

        def set_Site(value)
          set_input("Site", value)
        end
        #### 
        # Set the value of the StartPrice input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) This value indicates the starting price of the item when it is listed for the first time.
        ###

        def set_StartPrice(value)
          set_input("StartPrice", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (conditional, string) The title of the item as it appears in the listing or search results.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateBasicListing Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateBasicListingResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateBasicListing



    ##############################################################################
    #
    # EndItem
    #
    # Ends the specified item listing before the date and time that it is scheduled to end per the listing duration.
    #
    ##############################################################################

    class EndItem < Choreography

      ####
      #  Create a new instance of the EndItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/EndItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EndItemInputSet
      ####
      def new_input_set()
        return EndItemInputSet.new()
      end

      def make_result_set()
        return EndItemResultSet.new()
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
        results = EndItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EndItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EndItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the EndingReason input for this Choreo. 
        # 
        # @param String - (required, string) The reason the listing is ending early. Valid values are: LostOrBroken, NotAvailable, Incorrect, OtherListingError, CustomCode, SellToHighBidder, or Sold.
        ###

        def set_EndingReason(value)
          set_input("EndingReason", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the item to end.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SellerInventoryID input for this Choreo. 
        # 
        # @param String - (optional, string) Unique identifier that the seller specified when they listed the Half.com item. This paramater only applies to Half.com.
        ###

        def set_SellerInventoryID(value)
          set_input("SellerInventoryID", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EndItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EndItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EndItem



    ##############################################################################
    #
    # FetchToken
    #
    # Completes the authentication process by retrieving an eBay user token after they have visited the authorization URL returned by the GetSessionID Choreo and clicked "I agree".
    #
    ##############################################################################

    class FetchToken < Choreography

      ####
      #  Create a new instance of the FetchToken Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/FetchToken")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FetchTokenInputSet
      ####
      def new_input_set()
        return FetchTokenInputSet.new()
      end

      def make_result_set()
        return FetchTokenResultSet.new()
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
        results = FetchTokenResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FetchToken
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FetchTokenInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the application.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the CertID input for this Choreo. 
        # 
        # @param String - (required, string) The certificate that authenticates the application when making API calls.
        ###

        def set_CertID(value)
          set_input("CertID", value)
        end
        #### 
        # Set the value of the DevID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the developer's account.
        ###

        def set_DevID(value)
          set_input("DevID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SessionID input for this Choreo. 
        # 
        # @param String - (required, string) The SessionID returned from PayPal. This gets passed to the FetchToken Choreo after the user authorizes the request.
        ###

        def set_SessionID(value)
          set_input("SessionID", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the Timeout input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The amount of time (in seconds) to poll eBay to see if your app's user has allowed or denied the request for access. Defaults to 20. Max is 60.
        ###

        def set_Timeout(value)
          set_input("Timeout", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FetchToken Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FetchTokenResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "UserToken" output from this Choreo execution
      	#
      	# @return String - (string) An eBay Auth Token which can be used to make requests the user's behalf.
      	####
      	def get_UserToken()
      	  return @outputs["UserToken"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FetchToken



    ##############################################################################
    #
    # GetCategories
    #
    # Returns the latest category hierarchy for the eBay site.
    #
    ##############################################################################

    class GetCategories < Choreography

      ####
      #  Create a new instance of the GetCategories Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/GetCategories")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCategoriesInputSet
      ####
      def new_input_set()
        return GetCategoriesInputSet.new()
      end

      def make_result_set()
        return GetCategoriesResultSet.new()
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
        results = GetCategoriesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCategories
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCategoriesInputSet < Choreography::InputSet

        #### 
        # Set the value of the CategoryParent input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates the ID of the highest-level category to return. Multiple CategoryParent IDs can be specified in a comma-separated list.
        ###

        def set_CategoryParent(value)
          set_input("CategoryParent", value)
        end
        #### 
        # Set the value of the CategorySiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The ID for the site for which to retrieve the category hierarchy. Use the numeric site code (e.g., 0 for US, 77 for eBay Germany, etc).
        ###

        def set_CategorySiteID(value)
          set_input("CategorySiteID", value)
        end
        #### 
        # Set the value of the DetailLevel input for this Choreo. 
        # 
        # @param String - (optional, string) The level of detail to return in the response. Valid values are: ReturnAll.
        ###

        def set_DetailLevel(value)
          set_input("DetailLevel", value)
        end
        #### 
        # Set the value of the LevelLimit input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates the maximum depth of the category hierarchy to retrieve, where the top-level categories (meta-categories) are at level 1. Default is 0.
        ###

        def set_LevelLimit(value)
          set_input("LevelLimit", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end
        #### 
        # Set the value of the ViewAllNodes input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A flag that controls whether all eBay categories are returned, or only leaf categories are returned. To retrieve leaf categories, set this parameter to 'false'.
        ###

        def set_ViewAllNodes(value)
          set_input("ViewAllNodes", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCategories Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCategoriesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCategories



    ##############################################################################
    #
    # GetCategoryFeatures
    #
    # Returns information that describes the feature and value settings that apply to the set of eBay categories.
    #
    ##############################################################################

    class GetCategoryFeatures < Choreography

      ####
      #  Create a new instance of the GetCategoryFeatures Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/GetCategoryFeatures")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCategoryFeaturesInputSet
      ####
      def new_input_set()
        return GetCategoryFeaturesInputSet.new()
      end

      def make_result_set()
        return GetCategoryFeaturesResultSet.new()
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
        results = GetCategoryFeaturesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCategoryFeatures
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCategoryFeaturesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AllFeaturesForCategory input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A flag used to view all of the feature settings for a specific category.
        ###

        def set_AllFeaturesForCategory(value)
          set_input("AllFeaturesForCategory", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param String - (optional, string) The ID of the category for which you want to retrieve the feature settings.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the DetailLevel input for this Choreo. 
        # 
        # @param String - (optional, string) The level of detail to return in the response. Valid values are: ReturnAll and ReturnSummary.
        ###

        def set_DetailLevel(value)
          set_input("DetailLevel", value)
        end
        #### 
        # Set the value of the FeatureID input for this Choreo. 
        # 
        # @param String - (optional, string) Use this field if you want to know if specific features are enabled at the site or root category level. Multiple FeatureIDs can be specified in a comma-separated list.
        ###

        def set_FeatureID(value)
          set_input("FeatureID", value)
        end
        #### 
        # Set the value of the LevelLimit input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates the maximum depth of the category hierarchy to retrieve, where the top-level categories (meta-categories) are at level 1. Default is 0.
        ###

        def set_LevelLimit(value)
          set_input("LevelLimit", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end
        #### 
        # Set the value of the ViewAllNodes input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that eBay should return the site defaults along with all the categories that override the feature settings they inherit. DetailLevel must be 'ReturnAll' when setting this parameter to true.
        ###

        def set_ViewAllNodes(value)
          set_input("ViewAllNodes", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCategoryFeatures Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCategoryFeaturesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCategoryFeatures



    ##############################################################################
    #
    # GetEbayDetails
    #
    # Retrieves the available meta-data for the specified eBay site.
    #
    ##############################################################################

    class GetEbayDetails < Choreography

      ####
      #  Create a new instance of the GetEbayDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/GetEbayDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetEbayDetailsInputSet
      ####
      def new_input_set()
        return GetEbayDetailsInputSet.new()
      end

      def make_result_set()
        return GetEbayDetailsResultSet.new()
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
        results = GetEbayDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetEbayDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetEbayDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the DetailName input for this Choreo. 
        # 
        # @param String - (optional, string) An enumeration value used to filter the result by Detail Name (e.g., PaymentOptionDetails, RegionDetail, ShippingLocationDetails, ShippingServiceDetails, SiteDetails, etc).
        ###

        def set_DetailName(value)
          set_input("DetailName", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetEbayDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetEbayDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetEbayDetails



    ##############################################################################
    #
    # GetEbayOfficialTime
    #
    # Gets the official eBay system time in GMT.
    #
    ##############################################################################

    class GetEbayOfficialTime < Choreography

      ####
      #  Create a new instance of the GetEbayOfficialTime Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/GetEbayOfficialTime")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetEbayOfficialTimeInputSet
      ####
      def new_input_set()
        return GetEbayOfficialTimeInputSet.new()
      end

      def make_result_set()
        return GetEbayOfficialTimeResultSet.new()
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
        results = GetEbayOfficialTimeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetEbayOfficialTime
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetEbayOfficialTimeInputSet < Choreography::InputSet

        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetEbayOfficialTime Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetEbayOfficialTimeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetEbayOfficialTime



    ##############################################################################
    #
    # GetFeedback
    #
    # Retrieves the feedback left for a specified user or the summary feedback data for a specific order line item or item listing.
    #
    ##############################################################################

    class GetFeedback < Choreography

      ####
      #  Create a new instance of the GetFeedback Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/GetFeedback")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFeedbackInputSet
      ####
      def new_input_set()
        return GetFeedbackInputSet.new()
      end

      def make_result_set()
        return GetFeedbackResultSet.new()
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
        results = GetFeedbackResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFeedback
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFeedbackInputSet < Choreography::InputSet

        #### 
        # Set the value of the CommentType input for this Choreo. 
        # 
        # @param String - (optional, string) Returns feedback of a specified type. Valid values are: Positive, Neutral, Negative, Withdrawn, IndependentlyWithdrawn.
        ###

        def set_CommentType(value)
          set_input("CommentType", value)
        end
        #### 
        # Set the value of the DetailLevel input for this Choreo. 
        # 
        # @param String - (optional, string) The response detail level. Valid values are: ReturnAll.
        ###

        def set_DetailLevel(value)
          set_input("DetailLevel", value)
        end
        #### 
        # Set the value of the EntriesPerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of records to return in the result.
        ###

        def set_EntriesPerPage(value)
          set_input("EntriesPerPage", value)
        end
        #### 
        # Set the value of the FeedbackID input for this Choreo. 
        # 
        # @param String - (optional, string) An ID that uniquely identifies a feedback record to be retrieved
        ###

        def set_FeedbackID(value)
          set_input("FeedbackID", value)
        end
        #### 
        # Set the value of the FeedbackType input for this Choreo. 
        # 
        # @param String - (optional, string) The type of feedback to return. Valid values are: FeedbackReceivedAsSeller, FeedbackReceivedAsBuyer, FeedbackReceived, FeedbackLeft, CustomCode.
        ###

        def set_FeedbackType(value)
          set_input("FeedbackType", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (optional, string) The unique identifier for an eBay item listing.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the OrderLineItemID input for this Choreo. 
        # 
        # @param String - (optional, string) The unique identifier for an eBay order line item. This id generated by concatenating ItemID and TransactionID with a hyphen in between the IDs.
        ###

        def set_OrderLineItemID(value)
          set_input("OrderLineItemID", value)
        end
        #### 
        # Set the value of the PageNumber input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page number of the results to return.
        ###

        def set_PageNumber(value)
          set_input("PageNumber", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the TransactionID input for this Choreo. 
        # 
        # @param String - (optional, string) The unique identifier for an eBay order line item (transaction).
        ###

        def set_TransactionID(value)
          set_input("TransactionID", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The seller's UserID.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFeedback Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFeedbackResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFeedback



    ##############################################################################
    #
    # GetItem
    #
    # Returns item data such as title, description, price information, and seller information.
    #
    ##############################################################################

    class GetItem < Choreography

      ####
      #  Create a new instance of the GetItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/GetItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetItemInputSet
      ####
      def new_input_set()
        return GetItemInputSet.new()
      end

      def make_result_set()
        return GetItemResultSet.new()
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
        results = GetItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the DetailLevel input for this Choreo. 
        # 
        # @param String - (optional, string) The response detail level. Valid values are: ItemReturnAttributes, ItemReturnDescription, and ReturnAll.
        ###

        def set_DetailLevel(value)
          set_input("DetailLevel", value)
        end
        #### 
        # Set the value of the IncludeItemSpecifics input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If set to true, the response returns the ItemSpecifics node (if the listing has custom Item Specifics).
        ###

        def set_IncludeItemSpecifics(value)
          set_input("IncludeItemSpecifics", value)
        end
        #### 
        # Set the value of the IncludeTaxTable input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If set to true, an associated tax table is returned in the response.
        ###

        def set_IncludeTaxTable(value)
          set_input("IncludeTaxTable", value)
        end
        #### 
        # Set the value of the IncludeWatchCount input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates if the caller wants to include watch count for that item in the response when set to true. Only the seller is allowed to use this argument.
        ###

        def set_IncludeWatchCount(value)
          set_input("IncludeWatchCount", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (required, string) The ItemID that uniquely identifies the item listing to retrieve.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the TransactionID input for this Choreo. 
        # 
        # @param String - (optional, string) A unique identifier for a transaction (i.e.  an order line item). An order line item is created when the buyer commits to purchasing an item.
        ###

        def set_TransactionID(value)
          set_input("TransactionID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetItem



    ##############################################################################
    #
    # GetItemTransactions
    #
    # Retrieves order line item (transaction) information for a specified ItemID.
    #
    ##############################################################################

    class GetItemTransactions < Choreography

      ####
      #  Create a new instance of the GetItemTransactions Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/GetItemTransactions")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetItemTransactionsInputSet
      ####
      def new_input_set()
        return GetItemTransactionsInputSet.new()
      end

      def make_result_set()
        return GetItemTransactionsResultSet.new()
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
        results = GetItemTransactionsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetItemTransactions
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetItemTransactionsInputSet < Choreography::InputSet

        #### 
        # Set the value of the DetailLevel input for this Choreo. 
        # 
        # @param String - (optional, string) The detail level of the response. Valid values are: ItemReturnDescription and ReturnAll.
        ###

        def set_DetailLevel(value)
          set_input("DetailLevel", value)
        end
        #### 
        # Set the value of the EntriesPerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of records to return in the result.
        ###

        def set_EntriesPerPage(value)
          set_input("EntriesPerPage", value)
        end
        #### 
        # Set the value of the IncludeContainingOrder input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, the ContainingOrder container is returned in the response for each transaction node.
        ###

        def set_IncludeContainingOrder(value)
          set_input("IncludeContainingOrder", value)
        end
        #### 
        # Set the value of the IncludeFinalValueFee input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, the Final Value Fee (FVF) for all order line items is returned in the response.
        ###

        def set_IncludeFinalValueFee(value)
          set_input("IncludeFinalValueFee", value)
        end
        #### 
        # Set the value of the IncludeVariations input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, all variations defined for the item are returned at the root level.
        ###

        def set_IncludeVariations(value)
          set_input("IncludeVariations", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for an eBay item listing.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the ModTimeFrom input for this Choreo. 
        # 
        # @param String - (optional, date) Used to filter by date range (e.g., 2013-02-08T00:00:00.000Z).
        ###

        def set_ModTimeFrom(value)
          set_input("ModTimeFrom", value)
        end
        #### 
        # Set the value of the ModTimeTo input for this Choreo. 
        # 
        # @param String - (optional, date) Used to filter by date range (e.g., 2013-02-08T00:00:00.000Z).
        ###

        def set_ModTimeTo(value)
          set_input("ModTimeTo", value)
        end
        #### 
        # Set the value of the NumberOfDays input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of days in the past to search for order line items.
        ###

        def set_NumberOfDays(value)
          set_input("NumberOfDays", value)
        end
        #### 
        # Set the value of the OrderLineItemID input for this Choreo. 
        # 
        # @param String - (optional, string) A unique identifier for an eBay order line item.
        ###

        def set_OrderLineItemID(value)
          set_input("OrderLineItemID", value)
        end
        #### 
        # Set the value of the PageNumber input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page number of the results to return.
        ###

        def set_PageNumber(value)
          set_input("PageNumber", value)
        end
        #### 
        # Set the value of the Platform input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the eBay co-branded site upon which the order line item was created. Valid values are: eBay, Express, Half, Shopping, or WorldOfGood.
        ###

        def set_Platform(value)
          set_input("Platform", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the TransactionID input for this Choreo. 
        # 
        # @param String - (optional, string) Include a TransactionID field in the request if you want to retrieve the data for a specific order line item (transaction).
        ###

        def set_TransactionID(value)
          set_input("TransactionID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetItemTransactions Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetItemTransactionsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetItemTransactions



    ##############################################################################
    #
    # GetMemberMessages
    #
    # Retrieves a list of the messages that buyers have posted about your active item listings.
    #
    ##############################################################################

    class GetMemberMessages < Choreography

      ####
      #  Create a new instance of the GetMemberMessages Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/GetMemberMessages")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMemberMessagesInputSet
      ####
      def new_input_set()
        return GetMemberMessagesInputSet.new()
      end

      def make_result_set()
        return GetMemberMessagesResultSet.new()
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
        results = GetMemberMessagesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMemberMessages
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMemberMessagesInputSet < Choreography::InputSet

        #### 
        # Set the value of the DisplayToPublic input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, only public messages (viewable in the Item listing) are returned.
        ###

        def set_DisplayToPublic(value)
          set_input("DisplayToPublic", value)
        end
        #### 
        # Set the value of the EndCreationTime input for this Choreo. 
        # 
        # @param String - (optional, date) Used to filter by date range (e.g., 2013-02-08T00:00:00.000Z).
        ###

        def set_EndCreationTime(value)
          set_input("EndCreationTime", value)
        end
        #### 
        # Set the value of the EntriesPerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of records to return in the result.
        ###

        def set_EntriesPerPage(value)
          set_input("EntriesPerPage", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (optional, string) The ID of the item the message is about.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the MailMessageType input for this Choreo. 
        # 
        # @param String - (required, string) The type of message to retrieve. Valid values are: All and AskSellerQuestion. When set to AskSellerQuestion, ItemID or a date range filter must be specified.
        ###

        def set_MailMessageType(value)
          set_input("MailMessageType", value)
        end
        #### 
        # Set the value of the MemberMessageID input for this Choreo. 
        # 
        # @param String - (optional, string) An ID that uniquely identifies the message for a given user to be retrieved.
        ###

        def set_MemberMessageID(value)
          set_input("MemberMessageID", value)
        end
        #### 
        # Set the value of the MessageStatus input for this Choreo. 
        # 
        # @param String - (optional, string) The status of the message. Valid values are: Answered and Unanswered.
        ###

        def set_MessageStatus(value)
          set_input("MessageStatus", value)
        end
        #### 
        # Set the value of the PageNumber input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page number of the results to return.
        ###

        def set_PageNumber(value)
          set_input("PageNumber", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SenderID input for this Choreo. 
        # 
        # @param String - (optional, string) The seller's UserID.
        ###

        def set_SenderID(value)
          set_input("SenderID", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the StartCreationTime input for this Choreo. 
        # 
        # @param String - (optional, date) Used to filter by date range (e.g., 2013-02-08T00:00:00.000Z).
        ###

        def set_StartCreationTime(value)
          set_input("StartCreationTime", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMemberMessages Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMemberMessagesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetMemberMessages



    ##############################################################################
    #
    # GetSellerTransactions
    #
    # Retrieves order line item (transaction) information for the authenticated user only.
    #
    ##############################################################################

    class GetSellerTransactions < Choreography

      ####
      #  Create a new instance of the GetSellerTransactions Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/GetSellerTransactions")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSellerTransactionsInputSet
      ####
      def new_input_set()
        return GetSellerTransactionsInputSet.new()
      end

      def make_result_set()
        return GetSellerTransactionsResultSet.new()
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
        results = GetSellerTransactionsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSellerTransactions
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSellerTransactionsInputSet < Choreography::InputSet

        #### 
        # Set the value of the DetailLevel input for this Choreo. 
        # 
        # @param String - (optional, string) The detail level of the response. Valid values are: ItemReturnDescription and ReturnAll.
        ###

        def set_DetailLevel(value)
          set_input("DetailLevel", value)
        end
        #### 
        # Set the value of the EntriesPerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of records to return in the result.
        ###

        def set_EntriesPerPage(value)
          set_input("EntriesPerPage", value)
        end
        #### 
        # Set the value of the IncludeCodiceFiscale input for this Choreo. 
        # 
        # @param String - (optional, string) When set to 'true', the buyer's Codice Fiscale number is returned in the response.
        ###

        def set_IncludeCodiceFiscale(value)
          set_input("IncludeCodiceFiscale", value)
        end
        #### 
        # Set the value of the IncludeContainingOrder input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, the ContainingOrder container is returned in the response for each transaction node.
        ###

        def set_IncludeContainingOrder(value)
          set_input("IncludeContainingOrder", value)
        end
        #### 
        # Set the value of the IncludeFinalValueFee input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, the Final Value Fee (FVF) for all order line items is returned in the response.
        ###

        def set_IncludeFinalValueFee(value)
          set_input("IncludeFinalValueFee", value)
        end
        #### 
        # Set the value of the InventoryTrackingMethod input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Filters the response to only include order line items for listings that match this InventoryTrackingMethod setting. Valid values are: ItemID and SKU.
        ###

        def set_InventoryTrackingMethod(value)
          set_input("InventoryTrackingMethod", value)
        end
        #### 
        # Set the value of the ModTimeFrom input for this Choreo. 
        # 
        # @param String - (optional, date) Used to filter by date range (e.g., 2013-02-08T00:00:00.000Z).
        ###

        def set_ModTimeFrom(value)
          set_input("ModTimeFrom", value)
        end
        #### 
        # Set the value of the ModTimeTo input for this Choreo. 
        # 
        # @param String - (optional, date) Used to filter by date range (e.g., 2013-02-08T00:00:00.000Z).
        ###

        def set_ModTimeTo(value)
          set_input("ModTimeTo", value)
        end
        #### 
        # Set the value of the NumberOfDays input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of days in the past to search for order line items.
        ###

        def set_NumberOfDays(value)
          set_input("NumberOfDays", value)
        end
        #### 
        # Set the value of the PageNumber input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page number of the results to return.
        ###

        def set_PageNumber(value)
          set_input("PageNumber", value)
        end
        #### 
        # Set the value of the Platform input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the eBay co-branded site upon which the order line item was created. Valid values are: eBay, Express, Half, Shopping, or WorldOfGood.
        ###

        def set_Platform(value)
          set_input("Platform", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SKU input for this Choreo. 
        # 
        # @param String - (optional, string) One or more seller SKUs to filter the result. Multiple SKUs can be provided in a comma-separated list.
        ###

        def set_SKU(value)
          set_input("SKU", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSellerTransactions Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSellerTransactionsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSellerTransactions



    ##############################################################################
    #
    # GetSessionID
    #
    # Generates an authorization URL that an application can use to complete the first step in the authentication process.
    #
    ##############################################################################

    class GetSessionID < Choreography

      ####
      #  Create a new instance of the GetSessionID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/GetSessionID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSessionIDInputSet
      ####
      def new_input_set()
        return GetSessionIDInputSet.new()
      end

      def make_result_set()
        return GetSessionIDResultSet.new()
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
        results = GetSessionIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSessionID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSessionIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the application.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the CertID input for this Choreo. 
        # 
        # @param String - (required, string) The certificate that authenticates the application when making API calls.
        ###

        def set_CertID(value)
          set_input("CertID", value)
        end
        #### 
        # Set the value of the DevID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier for the developer's account.
        ###

        def set_DevID(value)
          set_input("DevID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the RuName input for this Choreo. 
        # 
        # @param String - (required, string) Your application's RuName which identifies your application to eBay.
        ###

        def set_RuName(value)
          set_input("RuName", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSessionID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSessionIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "SessionID" output from this Choreo execution
      	#
      	# @return String - (string) The SessionID returned from PayPal. This gets passed to the FetchToken Choreo after the user authorizes the request.
      	####
      	def get_SessionID()
      	  return @outputs["SessionID"]
      	end
      	####
      	# Retrieve the value for the "AuthorizationURL" output from this Choreo execution
      	#
      	# @return String - (string) The URL that you can send the user to so that they can sign-in and approve the user consent form.
      	####
      	def get_AuthorizationURL()
      	  return @outputs["AuthorizationURL"]
      	end
      end

    end # class GetSessionID



    ##############################################################################
    #
    # GetUser
    #
    # Retrieves data pertaining to a single eBay user.
    #
    ##############################################################################

    class GetUser < Choreography

      ####
      #  Create a new instance of the GetUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/GetUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUserInputSet
      ####
      def new_input_set()
        return GetUserInputSet.new()
      end

      def make_result_set()
        return GetUserResultSet.new()
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
        results = GetUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the DetailLevel input for this Choreo. 
        # 
        # @param String - (optional, string) The level of detail to return in the response. Valid values are: ReturnAll or ReturnSummary.
        ###

        def set_DetailLevel(value)
          set_input("DetailLevel", value)
        end
        #### 
        # Set the value of the IncludeFeatureEligibility input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Whether or not to include feature eligibility information in the response. Set to true or false.
        ###

        def set_IncludeFeatureEligibility(value)
          set_input("IncludeFeatureEligibility", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (optional, string) The ID of the item of a successfully concluded listing in which the requestor and target user were participants as buyer and seller.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay User ID for the user whose data you want to retrieve.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetUser



    ##############################################################################
    #
    # LeaveFeedback
    #
    # Enables a buyer and seller to leave feedback for their order partner at the conclusion of a successful order.
    #
    ##############################################################################

    class LeaveFeedback < Choreography

      ####
      #  Create a new instance of the LeaveFeedback Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/LeaveFeedback")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LeaveFeedbackInputSet
      ####
      def new_input_set()
        return LeaveFeedbackInputSet.new()
      end

      def make_result_set()
        return LeaveFeedbackResultSet.new()
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
        results = LeaveFeedbackResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LeaveFeedback
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LeaveFeedbackInputSet < Choreography::InputSet

        #### 
        # Set the value of the LeaveFeedbackRequest input for this Choreo. 
        # 
        # @param String - (optional, xml) The complete XML request body containing properties you wish to set. This can be used as an alternative to individual inputs that represent request properties.
        ###

        def set_LeaveFeedbackRequest(value)
          set_input("LeaveFeedbackRequest", value)
        end
        #### 
        # Set the value of the CommentText input for this Choreo. 
        # 
        # @param String - (conditional, string) The comment text to leave Feedback about the buyer.
        ###

        def set_CommentText(value)
          set_input("CommentText", value)
        end
        #### 
        # Set the value of the CommentType input for this Choreo. 
        # 
        # @param String - (conditional, string) The type of comment. Valid values are: Positive, Negative, and Neutral.
        ###

        def set_CommentType(value)
          set_input("CommentType", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (conditional, string) The unique identifier for an eBay item listing that was sold. Required unless OrderLineItemID is specified.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the OrderLineItemID input for this Choreo. 
        # 
        # @param String - (optional, string) This is a unique identifier for an eBay order line item and is based upon the concatenation of ItemID and TransactionID, with a hyphen in between these two IDs.
        ###

        def set_OrderLineItemID(value)
          set_input("OrderLineItemID", value)
        end
        #### 
        # Set the value of the RatingDetail input for this Choreo. 
        # 
        # @param String - (conditional, string) The subject that is being rated. Valid values are: Communication, ItemAsDescribed, ShippingAndHandlingCharges, and ShippingTime.
        ###

        def set_RatingDetail(value)
          set_input("RatingDetail", value)
        end
        #### 
        # Set the value of the Rating input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) A detailed numeric rating (1 through 5) for an order line item. This rating is applied to the subject provided for RatingDetail.
        ###

        def set_Rating(value)
          set_input("Rating", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the TargetUser input for this Choreo. 
        # 
        # @param String - (conditional, string) The user ID of the buyer who you want to leave feedback for.
        ###

        def set_TargetUser(value)
          set_input("TargetUser", value)
        end
        #### 
        # Set the value of the TransactionID input for this Choreo. 
        # 
        # @param String - (optional, string) The unique identifier for an eBay order line item (transaction). Required when there are multiple order ine items between the two order partners that require feedback.
        ###

        def set_TransactionID(value)
          set_input("TransactionID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LeaveFeedback Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LeaveFeedbackResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LeaveFeedback



    ##############################################################################
    #
    # PlaceOffer
    #
    # Allows an authenticated user to to make a bid, a best offer, or a purchase on the item specified by the ItemID input field.
    #
    ##############################################################################

    class PlaceOffer < Choreography

      ####
      #  Create a new instance of the PlaceOffer Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/PlaceOffer")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PlaceOfferInputSet
      ####
      def new_input_set()
        return PlaceOfferInputSet.new()
      end

      def make_result_set()
        return PlaceOfferResultSet.new()
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
        results = PlaceOfferResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PlaceOffer
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PlaceOfferInputSet < Choreography::InputSet

        #### 
        # Set the value of the PlaceOfferRequest input for this Choreo. 
        # 
        # @param String - (optional, xml) The complete XML request body containing properties you wish to set. This can be used as an alternative to individual inputs that represent request properties.
        ###

        def set_PlaceOfferRequest(value)
          set_input("PlaceOfferRequest", value)
        end
        #### 
        # Set the value of the Action input for this Choreo. 
        # 
        # @param String - (conditional, string) Indicates the type of offer being made on the specified listing. Valid values are: Bid, Purchase, Accept, Counter, Decline, or Offer.
        ###

        def set_Action(value)
          set_input("Action", value)
        end
        #### 
        # Set the value of the BestOfferID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of a Best Offer on an item. Required if Action is set to Accept or Decline.
        ###

        def set_BestOfferID(value)
          set_input("BestOfferID", value)
        end
        #### 
        # Set the value of the DetailLevel input for this Choreo. 
        # 
        # @param String - (optional, string) The response detail level. Valid values are: ItemReturnAttributes, ItemReturnDescription, and ReturnAll.
        ###

        def set_DetailLevel(value)
          set_input("DetailLevel", value)
        end
        #### 
        # Set the value of the EndUserIP input for this Choreo. 
        # 
        # @param String - (conditional, string) The public IP address of the machine from which the request is sent.
        ###

        def set_EndUserIP(value)
          set_input("EndUserIP", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ItemID that uniquely identifies the item listing to bid on.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the MaxBid input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The amount of the offer placed on the listing.
        ###

        def set_MaxBid(value)
          set_input("MaxBid", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (conditional, string) A message from the buyer to the seller.
        ###

        def set_Message(value)
          set_input("Message", value)
        end
        #### 
        # Set the value of the Quantity input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) Specifies the number of items from the specified listing that the user intends to purchase. For auctions, this must be set to 1.
        ###

        def set_Quantity(value)
          set_input("Quantity", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the UserConsent input for this Choreo. 
        # 
        # @param Boolean - (conditional, boolean) When set to true, confirms that the bidder read and agrees to eBay's privacy policy.
        ###

        def set_UserConsent(value)
          set_input("UserConsent", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PlaceOffer Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PlaceOfferResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PlaceOffer



    ##############################################################################
    #
    # ReviseItem
    #
    # Allows a seller to change the properties of a currently active listing.
    #
    ##############################################################################

    class ReviseItem < Choreography

      ####
      #  Create a new instance of the ReviseItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/ReviseItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ReviseItemInputSet
      ####
      def new_input_set()
        return ReviseItemInputSet.new()
      end

      def make_result_set()
        return ReviseItemResultSet.new()
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
        results = ReviseItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ReviseItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ReviseItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the ReviseItemRequest input for this Choreo. 
        # 
        # @param String - (optional, xml) The complete XML request body containing item properties you wish to set. This can be used as an alternative to individual inputs that represent item properties.
        ###

        def set_ReviseItemRequest(value)
          set_input("ReviseItemRequest", value)
        end
        #### 
        # Set the value of the BuyItNowPrice input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Allows a user to purchase the item at a Buy It Now price and end the auction immediately.
        ###

        def set_BuyItNowPrice(value)
          set_input("BuyItNowPrice", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The numeric ID for a category on eBay. Category IDs can be retrieved with the GetCategories Choreo.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the ConditionID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The numeric ID (e.g., 1000) for the item condition.
        ###

        def set_ConditionID(value)
          set_input("ConditionID", value)
        end
        #### 
        # Set the value of the Country input for this Choreo. 
        # 
        # @param String - (optional, string) The country that the item is located in.
        ###

        def set_Country(value)
          set_input("Country", value)
        end
        #### 
        # Set the value of the Currency input for this Choreo. 
        # 
        # @param String - (optional, string) The currency associated with the item price.
        ###

        def set_Currency(value)
          set_input("Currency", value)
        end
        #### 
        # Set the value of the DispatchTimeMax input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the maximum number of business days the seller commits to for preparing an item to be shipped after receiving a cleared payment.
        ###

        def set_DispatchTimeMax(value)
          set_input("DispatchTimeMax", value)
        end
        #### 
        # Set the value of the ExpeditedService input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Whether or not the seller is offering expedited shipping service options.
        ###

        def set_ExpeditedService(value)
          set_input("ExpeditedService", value)
        end
        #### 
        # Set the value of the ItemDescription input for this Choreo. 
        # 
        # @param String - (optional, string) The seller's description of the item.
        ###

        def set_ItemDescription(value)
          set_input("ItemDescription", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the item to revise.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the ListingDuration input for this Choreo. 
        # 
        # @param String - (optional, string) The number of days the seller wants the listing to be active (e.g., Days_7). A complete list of accepted values is returned when calling GetCategoryFeatures with DetailLevel set to ReturnAll.
        ###

        def set_ListingDuration(value)
          set_input("ListingDuration", value)
        end
        #### 
        # Set the value of the ListingType input for this Choreo. 
        # 
        # @param String - (optional, string) The format of the listing the seller wants to use. Valid values are: AdType, Chinese, FixedPriceItem, Half, LeadGeneration.
        ###

        def set_ListingType(value)
          set_input("ListingType", value)
        end
        #### 
        # Set the value of the PayPalEmailAddress input for this Choreo. 
        # 
        # @param String - (optional, string) The seller's PayPal email address. Required when a PaymentMethod is PayPal.
        ###

        def set_PayPalEmailAddress(value)
          set_input("PayPalEmailAddress", value)
        end
        #### 
        # Set the value of the PaymentMethods input for this Choreo. 
        # 
        # @param String - (optional, string) Identifies the payment method (such as PayPal) that the seller will accept when the buyer pays for the item. This can be a comma-separated list (e.g., VisaMC,PayPal).
        ###

        def set_PaymentMethods(value)
          set_input("PaymentMethods", value)
        end
        #### 
        # Set the value of the PictureURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL for a picture associated with an item.
        ###

        def set_PictureURL(value)
          set_input("PictureURL", value)
        end
        #### 
        # Set the value of the PostalCode input for this Choreo. 
        # 
        # @param String - (optional, string) The Postal code of the place where the item is located.
        ###

        def set_PostalCode(value)
          set_input("PostalCode", value)
        end
        #### 
        # Set the value of the Quantity input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Indicates the quantity of items available for purchase in the listing. Required for all auction listings and for non-variation, fixed-price listings. For auction listings, this value is always '1'.
        ###

        def set_Quantity(value)
          set_input("Quantity", value)
        end
        #### 
        # Set the value of the RefundOption input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates how the seller will compensate the buyer for a returned item (e.g. MoneyBack).
        ###

        def set_RefundOption(value)
          set_input("RefundOption", value)
        end
        #### 
        # Set the value of the ReservePrice input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The lowest price at which the seller is willing to sell the item.
        ###

        def set_ReservePrice(value)
          set_input("ReservePrice", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ReturnPolicyDescription input for this Choreo. 
        # 
        # @param String - (optional, string) The text description of return policy details.
        ###

        def set_ReturnPolicyDescription(value)
          set_input("ReturnPolicyDescription", value)
        end
        #### 
        # Set the value of the ReturnsAcceptedOption input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates whether the seller allows the buyer to return the item (e.g., ReturnsAccepted).
        ###

        def set_ReturnsAcceptedOption(value)
          set_input("ReturnsAcceptedOption", value)
        end
        #### 
        # Set the value of the ReturnsWithinOption input for this Choreo. 
        # 
        # @param String - (optional, string) The period of time the buyer has to return the item (e.g., Days_14). To accepted values for this field, call GeteBayDetails with DetailName set to ReturnPolicyDetails.
        ###

        def set_ReturnsWithinOption(value)
          set_input("ReturnsWithinOption", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the ShippingServiceAdditionalCost input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Shipping costs in addition to the value specified for the ShippingServiceCost parameter.
        ###

        def set_ShippingServiceAdditionalCost(value)
          set_input("ShippingServiceAdditionalCost", value)
        end
        #### 
        # Set the value of the ShippingServiceCost input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The cost for shipping the item.
        ###

        def set_ShippingServiceCost(value)
          set_input("ShippingServiceCost", value)
        end
        #### 
        # Set the value of the ShippingService input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the shipping service offered (e.g. UPSGround, USPSMedia).
        ###

        def set_ShippingService(value)
          set_input("ShippingService", value)
        end
        #### 
        # Set the value of the ShippingType input for this Choreo. 
        # 
        # @param String - (optional, string) The shipping cost model offered by the seller. Valid values are: Calculated, CalculatedDomesticFlatInternational, Flat, FlatDomesticCalculatedInternational, FreightFlat, NotSpecified.
        ###

        def set_ShippingType(value)
          set_input("ShippingType", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the Site input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the site on which the item is listed. This should corresponse to the SiteID. Default value is "US".
        ###

        def set_Site(value)
          set_input("Site", value)
        end
        #### 
        # Set the value of the StartPrice input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) This value indicates the starting price of the item when it is listed for the first time.
        ###

        def set_StartPrice(value)
          set_input("StartPrice", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (optional, string) The title of the item as it appears in the listing or search results.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ReviseItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ReviseItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ReviseItem



    ##############################################################################
    #
    # UploadSiteHostedPictures
    #
    # Allows you to uploads a picture to eBay Picture Services by specifying a binary attachment or image URL.
    #
    ##############################################################################

    class UploadSiteHostedPictures < Choreography

      ####
      #  Create a new instance of the UploadSiteHostedPictures Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/eBay/Trading/UploadSiteHostedPictures")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UploadSiteHostedPicturesInputSet
      ####
      def new_input_set()
        return UploadSiteHostedPicturesInputSet.new()
      end

      def make_result_set()
        return UploadSiteHostedPicturesResultSet.new()
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
        results = UploadSiteHostedPicturesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UploadSiteHostedPictures
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UploadSiteHostedPicturesInputSet < Choreography::InputSet

        #### 
        # Set the value of the ExtensionInDays input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of days to extend the expiration date for the specified image, after a listing has ended.
        ###

        def set_ExtensionInDays(value)
          set_input("ExtensionInDays", value)
        end
        #### 
        # Set the value of the ExternalPictureURL input for this Choreo. 
        # 
        # @param String - (conditional, string) The URL of an image to upload. Required unless providing PictureData. Max image size is 7 MB. Max URL length is 1024. Formats supported are: JPG, GIF, PNG, BMP, and TIF.
        ###

        def set_ExternalPictureURL(value)
          set_input("ExternalPictureURL", value)
        end
        #### 
        # Set the value of the PictureData input for this Choreo. 
        # 
        # @param String - (conditional, string) The Base64 encoded string for an the image data. Required unless providing the ExternalPictureURL. Max image size is 7 MB. Formats supported are: JPG, GIF, PNG, BMP, and TIF.
        ###

        def set_PictureData(value)
          set_input("PictureData", value)
        end
        #### 
        # Set the value of the PictureName input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the picture.
        ###

        def set_PictureName(value)
          set_input("PictureName", value)
        end
        #### 
        # Set the value of the PictureSet input for this Choreo. 
        # 
        # @param String - (optional, string) The image sizes that will be generated. Valid values are: Standard and Supersize.
        ###

        def set_PictureSet(value)
          set_input("PictureSet", value)
        end
        #### 
        # Set the value of the PictureUploadPolicy input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates that an uploaded picture is available to a seller on the eBay site. Valid values are: Add and ClearAndAdd.
        ###

        def set_PictureUploadPolicy(value)
          set_input("PictureUploadPolicy", value)
        end
        #### 
        # Set the value of the PictureWatermark input for this Choreo. 
        # 
        # @param String - (optional, string) The type of watermark that should be applied to the pictures hosted by the eBay Picture Services. Valid values are: User and Icon.
        ###

        def set_PictureWatermark(value)
          set_input("PictureWatermark", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SandboxMode input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates that the request should be made to the sandbox endpoint instead of the production endpoint. Set to 1 to enable sandbox mode.
        ###

        def set_SandboxMode(value)
          set_input("SandboxMode", value)
        end
        #### 
        # Set the value of the SiteID input for this Choreo. 
        # 
        # @param String - (optional, string) The eBay site ID that you want to access. Defaults to 0 indicating the US site.
        ###

        def set_SiteID(value)
          set_input("SiteID", value)
        end
        #### 
        # Set the value of the UserToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid eBay Auth Token.
        ###

        def set_UserToken(value)
          set_input("UserToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UploadSiteHostedPictures Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UploadSiteHostedPicturesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from eBay.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UploadSiteHostedPictures




  end # module Trading

end # module TMB_eBay