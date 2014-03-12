require "temboo"

module NYTimes




  module ArticleSearch



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
        super(session, "/Library/NYTimes/ArticleSearch/QueryArticles")
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
        # @param String - (required, string) Search keywords (optionally applied to specific fields) and/or facets. See Choreo documentation for syntax examples.
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




  end # module ArticleSearch

  module BestSellers



    ##############################################################################
    #
    # BestSellerHistory
    #
    # Retrieves data from a New York Times best-seller list for a specified title.
    #
    ##############################################################################

    class BestSellerHistory < Choreography

      ####
      #  Create a new instance of the BestSellerHistory Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/BestSellers/BestSellerHistory")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return BestSellerHistoryInputSet
      ####
      def new_input_set()
        return BestSellerHistoryInputSet.new()
      end

      def make_result_set()
        return BestSellerHistoryResultSet.new()
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
        results = BestSellerHistoryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the BestSellerHistory
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class BestSellerHistoryInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (required, string) The title of the best seller to retrieve data for
        ###

        def set_Title(value)
          set_input("Title", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the BestSellerHistory Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class BestSellerHistoryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from the NY Times API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class BestSellerHistory



    ##############################################################################
    #
    # BestSellerListByDate
    #
    # Retrieves data from a New York Times best-seller list for a specified date.
    #
    ##############################################################################

    class BestSellerListByDate < Choreography

      ####
      #  Create a new instance of the BestSellerListByDate Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/BestSellers/BestSellerListByDate")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return BestSellerListByDateInputSet
      ####
      def new_input_set()
        return BestSellerListByDateInputSet.new()
      end

      def make_result_set()
        return BestSellerListByDateResultSet.new()
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
        results = BestSellerListByDateResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the BestSellerListByDate
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class BestSellerListByDateInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The best-seller list publication date. Can be an epoch timestamp in milliseconds or in YYYY-MM-DD format.
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ListName input for this Choreo. 
        # 
        # @param String - (required, string) The Times best-seller list to retrieve (i.e. e-book-fiction or hardcover-fiction)
        ###

        def set_ListName(value)
          set_input("ListName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the BestSellerListByDate Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class BestSellerListByDateResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from the NY Times API
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class BestSellerListByDate



    ##############################################################################
    #
    # GetBestSellerHistory
    #
    # Retrieves information about New York Times best-sellers that match a specified search criteria.
    #
    ##############################################################################

    class GetBestSellerHistory < Choreography

      ####
      #  Create a new instance of the GetBestSellerHistory Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/BestSellers/GetBestSellerHistory")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBestSellerHistoryInputSet
      ####
      def new_input_set()
        return GetBestSellerHistoryInputSet.new()
      end

      def make_result_set()
        return GetBestSellerHistoryResultSet.new()
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
        results = GetBestSellerHistoryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBestSellerHistory
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBestSellerHistoryInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AgeGroup input for this Choreo. 
        # 
        # @param String - (optional, string) The target age group for the best seller.
        ###

        def set_AgeGroup(value)
          set_input("AgeGroup", value)
        end
        #### 
        # Set the value of the Author input for this Choreo. 
        # 
        # @param String - (optional, string) The author of the best seller.
        ###

        def set_Author(value)
          set_input("Author", value)
        end
        #### 
        # Set the value of the Contributor input for this Choreo. 
        # 
        # @param String - (optional, string) The author of the best seller, as well as other contributors such as the illustrator.
        ###

        def set_Contributor(value)
          set_input("Contributor", value)
        end
        #### 
        # Set the value of the ISBN input for this Choreo. 
        # 
        # @param String - (optional, string) International Standard Book Number, 10 or 13 digits.
        ###

        def set_ISBN(value)
          set_input("ISBN", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Price input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The publisher's list price of the best seller, including decimal point.
        ###

        def set_Price(value)
          set_input("Price", value)
        end
        #### 
        # Set the value of the Publisher input for this Choreo. 
        # 
        # @param String - (optional, string) The standardized name of the publisher.
        ###

        def set_Publisher(value)
          set_input("Publisher", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should bein. Valid values are: json (the default), and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) The column name to sort by. Valid values are: age-group, author, contributor, isbn, price, publisher, and title.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) The sort order. Valid values are: ASC and DESC.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (conditional, string) The title of the best seller to retrieve data for.
        ###

        def set_Title(value)
          set_input("Title", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBestSellerHistory Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBestSellerHistoryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBestSellerHistory



    ##############################################################################
    #
    # GetBestSellerList
    #
    # Retrieves data from a New York Times best-seller list for a specified date.
    #
    ##############################################################################

    class GetBestSellerList < Choreography

      ####
      #  Create a new instance of the GetBestSellerList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/BestSellers/GetBestSellerList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBestSellerListInputSet
      ####
      def new_input_set()
        return GetBestSellerListInputSet.new()
      end

      def make_result_set()
        return GetBestSellerListResultSet.new()
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
        results = GetBestSellerListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBestSellerList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBestSellerListInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The best-seller list publication date in YYYY-MM-DD format.
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ListName input for this Choreo. 
        # 
        # @param String - (required, string) The Times best-seller list to retrieve (i.e. e-book-fiction or hardcover-fiction).
        ###

        def set_ListName(value)
          set_input("ListName", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value.
        ###

        def set_Offset(value)
          set_input("Offset", value)
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
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) The column name to sort by. Valid values are: bestsellers-date, date, isbn, list, list-name, published-date, rank, rank-last-week, and weeks-on-list.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) The sort order. Valid values are: ASC and DESC.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBestSellerList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBestSellerListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBestSellerList




  end # module BestSellers

  module CampaignFinance




    module Candidates



      ##############################################################################
      #
      # CandidateDetails
      #
      # Obtain finance details for a Presidential or Congressional candidate.
      #
      ##############################################################################

      class CandidateDetails < Choreography

        ####
        #  Create a new instance of the CandidateDetails Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/Candidates/CandidateDetails")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CandidateDetailsInputSet
        ####
        def new_input_set()
          return CandidateDetailsInputSet.new()
        end

        def make_result_set()
          return CandidateDetailsResultSet.new()
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
          results = CandidateDetailsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CandidateDetails
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CandidateDetailsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the FECID input for this Choreo. 
          # 
          # @param String - (required, string) Enter the FEC ID for the candidate.  ID can be obtained by first running the CandidateSearch Choreo.
          ###

          def set_FECID(value)
            set_input("FECID", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CandidateDetails Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CandidateDetailsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CandidateDetails



      ##############################################################################
      #
      # CandidateLeadersByCategory
      #
      # Retrieve a list of the 20 top candidates in terms of contributions received.
      #
      ##############################################################################

      class CandidateLeadersByCategory < Choreography

        ####
        #  Create a new instance of the CandidateLeadersByCategory Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/Candidates/CandidateLeadersByCategory")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CandidateLeadersByCategoryInputSet
        ####
        def new_input_set()
          return CandidateLeadersByCategoryInputSet.new()
        end

        def make_result_set()
          return CandidateLeadersByCategoryResultSet.new()
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
          results = CandidateLeadersByCategoryResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CandidateLeadersByCategory
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CandidateLeadersByCategoryInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the Category input for this Choreo. 
          # 
          # @param String - (required, string) Specify thecategory to be retrieved. Example: contribution-total, returns the total amount of financial contributions received by this candidate's campaign.  See Description for more info.
          ###

          def set_Category(value)
            set_input("Category", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CandidateLeadersByCategory Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CandidateLeadersByCategoryResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CandidateLeadersByCategory



      ##############################################################################
      #
      # CandidateSearch
      #
      # Search for a Presidential or Congressional candidate by last name and election cycle.
      #
      ##############################################################################

      class CandidateSearch < Choreography

        ####
        #  Create a new instance of the CandidateSearch Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/Candidates/CandidateSearch")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CandidateSearchInputSet
        ####
        def new_input_set()
          return CandidateSearchInputSet.new()
        end

        def make_result_set()
          return CandidateSearchResultSet.new()
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
          results = CandidateSearchResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CandidateSearch
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CandidateSearchInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the LastName input for this Choreo. 
          # 
          # @param String - (required, string) Enter the last name (or partial last name) of a Congressional or Presidential office candidate.
          ###

          def set_LastName(value)
            set_input("LastName", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CandidateSearch Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CandidateSearchResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CandidateSearch



      ##############################################################################
      #
      # NewCandidates
      #
      # Retrieves 20 of the most recently added political office candidates.
      #
      ##############################################################################

      class NewCandidates < Choreography

        ####
        #  Create a new instance of the NewCandidates Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/Candidates/NewCandidates")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return NewCandidatesInputSet
        ####
        def new_input_set()
          return NewCandidatesInputSet.new()
        end

        def make_result_set()
          return NewCandidatesResultSet.new()
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
          results = NewCandidatesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the NewCandidates
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class NewCandidatesInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the NewCandidates Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class NewCandidatesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class NewCandidates




    end # module Candidates

    module Committees



      ##############################################################################
      #
      # CommitteeContributions
      #
      # Obtain contributions made by a Political Action Committee (PAC) in an election cycle.
      #
      ##############################################################################

      class CommitteeContributions < Choreography

        ####
        #  Create a new instance of the CommitteeContributions Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/Committees/CommitteeContributions")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CommitteeContributionsInputSet
        ####
        def new_input_set()
          return CommitteeContributionsInputSet.new()
        end

        def make_result_set()
          return CommitteeContributionsResultSet.new()
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
          results = CommitteeContributionsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CommitteeContributions
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CommitteeContributionsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the CommitteeFECID input for this Choreo. 
          # 
          # @param String - (conditional, string) Enter a political action committee's FEC ID.  Either CommitteeFECID, OR Name must be provided.
          ###

          def set_CommitteeFECID(value)
            set_input("CommitteeFECID", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (conditional, string) Enter the name of a political action committee (PAC) whose contributions will be obtained. Either Name or CommitteeFECID must be provided.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the Offset input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value (e.g., Offset=40 displays results 41–60).
          ###

          def set_Offset(value)
            set_input("Offset", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CommitteeContributions Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CommitteeContributionsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CommitteeContributions



      ##############################################################################
      #
      # CommitteeContributionsToCandidate
      #
      # Obtain contributions made by a Political Action Committee (PAC) to a candidate.
      #
      ##############################################################################

      class CommitteeContributionsToCandidate < Choreography

        ####
        #  Create a new instance of the CommitteeContributionsToCandidate Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/Committees/CommitteeContributionsToCandidate")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CommitteeContributionsToCandidateInputSet
        ####
        def new_input_set()
          return CommitteeContributionsToCandidateInputSet.new()
        end

        def make_result_set()
          return CommitteeContributionsToCandidateResultSet.new()
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
          results = CommitteeContributionsToCandidateResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CommitteeContributionsToCandidate
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CommitteeContributionsToCandidateInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the CandidateFECID input for this Choreo. 
          # 
          # @param String - (required, string) Enter a cadidate's FEC ID.
          ###

          def set_CandidateFECID(value)
            set_input("CandidateFECID", value)
          end
          #### 
          # Set the value of the CommitteeFECID input for this Choreo. 
          # 
          # @param String - (required, string) Enter a committee's FEC ID.
          ###

          def set_CommitteeFECID(value)
            set_input("CommitteeFECID", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CommitteeContributionsToCandidate Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CommitteeContributionsToCandidateResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CommitteeContributionsToCandidate



      ##############################################################################
      #
      # CommitteeDetails
      #
      # Obtain details about a specific Political Action Committee.
      #
      ##############################################################################

      class CommitteeDetails < Choreography

        ####
        #  Create a new instance of the CommitteeDetails Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/Committees/CommitteeDetails")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CommitteeDetailsInputSet
        ####
        def new_input_set()
          return CommitteeDetailsInputSet.new()
        end

        def make_result_set()
          return CommitteeDetailsResultSet.new()
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
          results = CommitteeDetailsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CommitteeDetails
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CommitteeDetailsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the CommitteeFECID input for this Choreo. 
          # 
          # @param String - (required, string) Enter a committee's FEC ID.
          ###

          def set_CommitteeFECID(value)
            set_input("CommitteeFECID", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CommitteeDetails Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CommitteeDetailsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CommitteeDetails



      ##############################################################################
      #
      # CommitteeFilings
      #
      # Obtain a specific Political Action Committee's electronic filings.
      #
      ##############################################################################

      class CommitteeFilings < Choreography

        ####
        #  Create a new instance of the CommitteeFilings Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/Committees/CommitteeFilings")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CommitteeFilingsInputSet
        ####
        def new_input_set()
          return CommitteeFilingsInputSet.new()
        end

        def make_result_set()
          return CommitteeFilingsResultSet.new()
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
          results = CommitteeFilingsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CommitteeFilings
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CommitteeFilingsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the CommitteeFECID input for this Choreo. 
          # 
          # @param String - (required, string) Enter a committee's FEC ID.
          ###

          def set_CommitteeFECID(value)
            set_input("CommitteeFECID", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CommitteeFilings Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CommitteeFilingsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CommitteeFilings



      ##############################################################################
      #
      # CommitteeSearch
      #
      # Search for a political action committee (PACs) by name, or partial name.
      #
      ##############################################################################

      class CommitteeSearch < Choreography

        ####
        #  Create a new instance of the CommitteeSearch Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/Committees/CommitteeSearch")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CommitteeSearchInputSet
        ####
        def new_input_set()
          return CommitteeSearchInputSet.new()
        end

        def make_result_set()
          return CommitteeSearchResultSet.new()
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
          results = CommitteeSearchResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CommitteeSearch
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CommitteeSearchInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) Specify the name of the committee to be retireved. Partial names are also acceptable.  Examples: viacom.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CommitteeSearch Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CommitteeSearchResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CommitteeSearch



      ##############################################################################
      #
      # LeadershipPACs
      #
      # Retrieve a list of PACs that have been designated by the FEC as "leadership PACs".
      #
      ##############################################################################

      class LeadershipPACs < Choreography

        ####
        #  Create a new instance of the LeadershipPACs Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/Committees/LeadershipPACs")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return LeadershipPACsInputSet
        ####
        def new_input_set()
          return LeadershipPACsInputSet.new()
        end

        def make_result_set()
          return LeadershipPACsResultSet.new()
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
          results = LeadershipPACsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the LeadershipPACs
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class LeadershipPACsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the LeadershipPACs Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class LeadershipPACsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class LeadershipPACs



      ##############################################################################
      #
      # NewCommittees
      #
      # Retrieves 20 of the most recently added committees.
      #
      ##############################################################################

      class NewCommittees < Choreography

        ####
        #  Create a new instance of the NewCommittees Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/Committees/NewCommittees")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return NewCommitteesInputSet
        ####
        def new_input_set()
          return NewCommitteesInputSet.new()
        end

        def make_result_set()
          return NewCommitteesResultSet.new()
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
          results = NewCommitteesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the NewCommittees
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class NewCommitteesInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the NewCommittees Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class NewCommitteesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class NewCommittees




    end # module Committees

    module ElectronicFilings



      ##############################################################################
      #
      # GetElectronicFilingFormTypes
      #
      # Obtain a list of available form types used in FEC filings.
      #
      ##############################################################################

      class GetElectronicFilingFormTypes < Choreography

        ####
        #  Create a new instance of the GetElectronicFilingFormTypes Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/ElectronicFilings/GetElectronicFilingFormTypes")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetElectronicFilingFormTypesInputSet
        ####
        def new_input_set()
          return GetElectronicFilingFormTypesInputSet.new()
        end

        def make_result_set()
          return GetElectronicFilingFormTypesResultSet.new()
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
          results = GetElectronicFilingFormTypesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetElectronicFilingFormTypes
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetElectronicFilingFormTypesInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetElectronicFilingFormTypes Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetElectronicFilingFormTypesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetElectronicFilingFormTypes




    end # module ElectronicFilings

    module IndependentExpenditures



      ##############################################################################
      #
      # CommitteeIndependentExpenditures
      #
      # Retrieve the 20 most recent independent expenditures by a given committee, also known as "Super PACs."
      #
      ##############################################################################

      class CommitteeIndependentExpenditures < Choreography

        ####
        #  Create a new instance of the CommitteeIndependentExpenditures Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/IndependentExpenditures/CommitteeIndependentExpenditures")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CommitteeIndependentExpendituresInputSet
        ####
        def new_input_set()
          return CommitteeIndependentExpendituresInputSet.new()
        end

        def make_result_set()
          return CommitteeIndependentExpendituresResultSet.new()
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
          results = CommitteeIndependentExpendituresResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CommitteeIndependentExpenditures
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CommitteeIndependentExpendituresInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the FECID input for this Choreo. 
          # 
          # @param String - (required, string) Enter the FEC ID for the committee.  ID can be obtained by first running the CommitteeSearch Choreo.
          ###

          def set_FECID(value)
            set_input("FECID", value)
          end
          #### 
          # Set the value of the Offset input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value (e.g., Offset=40 displays results 41–60).
          ###

          def set_Offset(value)
            set_input("Offset", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CommitteeIndependentExpenditures Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CommitteeIndependentExpendituresResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CommitteeIndependentExpenditures



      ##############################################################################
      #
      # IndependentExpenditureOnlyCommittees
      #
      # Retrieves 20 of the most recent committees that have registered as independent expenditure-only (commonly known as "Super PACs").
      #
      ##############################################################################

      class IndependentExpenditureOnlyCommittees < Choreography

        ####
        #  Create a new instance of the IndependentExpenditureOnlyCommittees Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/IndependentExpenditures/IndependentExpenditureOnlyCommittees")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return IndependentExpenditureOnlyCommitteesInputSet
        ####
        def new_input_set()
          return IndependentExpenditureOnlyCommitteesInputSet.new()
        end

        def make_result_set()
          return IndependentExpenditureOnlyCommitteesResultSet.new()
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
          results = IndependentExpenditureOnlyCommitteesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the IndependentExpenditureOnlyCommittees
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class IndependentExpenditureOnlyCommitteesInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the Offset input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value (e.g., Offset=40 displays results 41–60).
          ###

          def set_Offset(value)
            set_input("Offset", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the IndependentExpenditureOnlyCommittees Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class IndependentExpenditureOnlyCommitteesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class IndependentExpenditureOnlyCommittees



      ##############################################################################
      #
      # PresidentialIndependentExpenditures
      #
      # Retrieves 20 of the most recent independent expenditures in support of or opposition to presidential candidates.
      #
      ##############################################################################

      class PresidentialIndependentExpenditures < Choreography

        ####
        #  Create a new instance of the PresidentialIndependentExpenditures Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/IndependentExpenditures/PresidentialIndependentExpenditures")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return PresidentialIndependentExpendituresInputSet
        ####
        def new_input_set()
          return PresidentialIndependentExpendituresInputSet.new()
        end

        def make_result_set()
          return PresidentialIndependentExpendituresResultSet.new()
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
          results = PresidentialIndependentExpendituresResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the PresidentialIndependentExpenditures
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class PresidentialIndependentExpendituresInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the Offset input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value (e.g., Offset=40 displays results 41–60).
          ###

          def set_Offset(value)
            set_input("Offset", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the PresidentialIndependentExpenditures Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class PresidentialIndependentExpendituresResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class PresidentialIndependentExpenditures




    end # module IndependentExpenditures

    module IndividualContributors



      ##############################################################################
      #
      # ContributionsByCandidate
      #
      # Retrieve contributions made by individuals to a specific presidential candidate. 
      #
      ##############################################################################

      class ContributionsByCandidate < Choreography

        ####
        #  Create a new instance of the ContributionsByCandidate Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/IndividualContributors/ContributionsByCandidate")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ContributionsByCandidateInputSet
        ####
        def new_input_set()
          return ContributionsByCandidateInputSet.new()
        end

        def make_result_set()
          return ContributionsByCandidateResultSet.new()
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
          results = ContributionsByCandidateResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ContributionsByCandidate
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ContributionsByCandidateInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the CandidateFECID input for this Choreo. 
          # 
          # @param String - (required, string) Enter a cadidate's nine-digit FEC ID. IDs can be obtained by first running the CandidateSearch Choreo.
          ###

          def set_CandidateFECID(value)
            set_input("CandidateFECID", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ContributionsByCandidate Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ContributionsByCandidateResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class ContributionsByCandidate



      ##############################################################################
      #
      # ContributionsToPresidentialCandidates
      #
      # Retrieve contributions made by individuals to a specific presidential candidate. 
      #
      ##############################################################################

      class ContributionsToPresidentialCandidates < Choreography

        ####
        #  Create a new instance of the ContributionsToPresidentialCandidates Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/IndividualContributors/ContributionsToPresidentialCandidates")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ContributionsToPresidentialCandidatesInputSet
        ####
        def new_input_set()
          return ContributionsToPresidentialCandidatesInputSet.new()
        end

        def make_result_set()
          return ContributionsToPresidentialCandidatesResultSet.new()
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
          results = ContributionsToPresidentialCandidatesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ContributionsToPresidentialCandidates
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ContributionsToPresidentialCandidatesInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the CandidateFECID input for this Choreo. 
          # 
          # @param String - (conditional, string) Enter a candidate's nine-digit FEC ID. IDs can be obtained by first running the CandidateSearch Choreo. Required unless providing the LastName input.
          ###

          def set_CandidateFECID(value)
            set_input("CandidateFECID", value)
          end
          #### 
          # Set the value of the LastName input for this Choreo. 
          # 
          # @param String - (conditional, string) Enter the name of a presidential candidate for whom contributions will be obtained. Required unless providing the CandidateFECID input.
          ###

          def set_LastName(value)
            set_input("LastName", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ContributionsToPresidentialCandidates Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ContributionsToPresidentialCandidatesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class ContributionsToPresidentialCandidates




    end # module IndividualContributors

    module PresidentialCampaigns



      ##############################################################################
      #
      # PresidentialCandidateTotals
      #
      # Retrieves the total receipts and disbursements for all presidential candidates for a particular campaign cycle.
      #
      ##############################################################################

      class PresidentialCandidateTotals < Choreography

        ####
        #  Create a new instance of the PresidentialCandidateTotals Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/PresidentialCampaigns/PresidentialCandidateTotals")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return PresidentialCandidateTotalsInputSet
        ####
        def new_input_set()
          return PresidentialCandidateTotalsInputSet.new()
        end

        def make_result_set()
          return PresidentialCandidateTotalsResultSet.new()
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
          results = PresidentialCandidateTotalsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the PresidentialCandidateTotals
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class PresidentialCandidateTotalsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the PresidentialCandidateTotals Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class PresidentialCandidateTotalsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class PresidentialCandidateTotals



      ##############################################################################
      #
      # PresidentialDonorInformation
      #
      # Retrieve details about individual donors, or a summary of donors from a particular location to a presidential election campaign.
      #
      ##############################################################################

      class PresidentialDonorInformation < Choreography

        ####
        #  Create a new instance of the PresidentialDonorInformation Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/PresidentialCampaigns/PresidentialDonorInformation")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return PresidentialDonorInformationInputSet
        ####
        def new_input_set()
          return PresidentialDonorInformationInputSet.new()
        end

        def make_result_set()
          return PresidentialDonorInformationResultSet.new()
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
          results = PresidentialDonorInformationResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the PresidentialDonorInformation
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class PresidentialDonorInformationInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the FirstName input for this Choreo. 
          # 
          # @param String - (optional, string) Enter the first name of a donor.  This parameter can be used together with LastName and/or Zip
          ###

          def set_FirstName(value)
            set_input("FirstName", value)
          end
          #### 
          # Set the value of the LastName input for this Choreo. 
          # 
          # @param String - (optional, string) Enter the last name of an individual donor to be retrieved.
          ###

          def set_LastName(value)
            set_input("LastName", value)
          end
          #### 
          # Set the value of the Offset input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Specify the starting point of the retrieved results, in multiples of 20.  By default, the first 20 results are returned.
          ###

          def set_Offset(value)
            set_input("Offset", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the Zip input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Enter a zipcode for which donor information wil be retrieved.
          ###

          def set_Zip(value)
            set_input("Zip", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the PresidentialDonorInformation Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class PresidentialDonorInformationResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class PresidentialDonorInformation



      ##############################################################################
      #
      # PresidentialStateZipTotals
      #
      # Retrieve the total amount of donations aggregated by a specified location (by state and/or zipcode).
      #
      ##############################################################################

      class PresidentialStateZipTotals < Choreography

        ####
        #  Create a new instance of the PresidentialStateZipTotals Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/NYTimes/CampaignFinance/PresidentialCampaigns/PresidentialStateZipTotals")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return PresidentialStateZipTotalsInputSet
        ####
        def new_input_set()
          return PresidentialStateZipTotalsInputSet.new()
        end

        def make_result_set()
          return PresidentialStateZipTotalsResultSet.new()
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
          results = PresidentialStateZipTotalsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the PresidentialStateZipTotals
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class PresidentialStateZipTotalsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key provided by NY Times.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the CampaignCycle input for this Choreo. 
          # 
          # @param Integer - (required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
          ###

          def set_CampaignCycle(value)
            set_input("CampaignCycle", value)
          end
          #### 
          # Set the value of the Location input for this Choreo. 
          # 
          # @param String - (required, string) Enter the location for which data will be retrieved. If ResourceType = states, use a two-letter state abbreviation (example: NY).  For zips, enter a five-digit zip code.
          ###

          def set_Location(value)
            set_input("Location", value)
          end
          #### 
          # Set the value of the ResourceType input for this Choreo. 
          # 
          # @param String - (required, string) Specify the type of resource to use when retrieving donor data. Valid formats include: zips, or states.
          ###

          def set_ResourceType(value)
            set_input("ResourceType", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) Enter json or xml.  Default is json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the PresidentialStateZipTotals Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class PresidentialStateZipTotalsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class PresidentialStateZipTotals




    end # module PresidentialCampaigns

  end # module CampaignFinance

  module EventListings



    ##############################################################################
    #
    # SearchEvents
    #
    # Searches events by location, filters, or full text search.
    #
    ##############################################################################

    class SearchEvents < Choreography

      ####
      #  Create a new instance of the SearchEvents Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/EventListings/SearchEvents")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchEventsInputSet
      ####
      def new_input_set()
        return SearchEventsInputSet.new()
      end

      def make_result_set()
        return SearchEventsResultSet.new()
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
        results = SearchEventsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchEvents
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchEventsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the DateRange input for this Choreo. 
        # 
        # @param String - (optional, date) Start date to end date in the following format: YYYY-MM-DD:YYYY-MM-DD.
        ###

        def set_DateRange(value)
          set_input("DateRange", value)
        end
        #### 
        # Set the value of the Filters input for this Choreo. 
        # 
        # @param String - (optional, string) Filters search results using facet names and values. See Choreo documentation for examples.
        ###

        def set_Filters(value)
          set_input("Filters", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The latitude coordinate of the location to use in the event search. If specified, Longitude must also be provided.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The longitude coordinate of the location to use in the event search. If specified, Latitude must also be provided.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A numeric value indicating the starting point of the result set. This can be used in combination with the Limit input to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) Search keywords to perform a text search on the following fields: web_description, event_name and venue_name.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the Radius input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The radius of the spacial search (in meters). Defaults to 1000.
        ###

        def set_Radius(value)
          set_input("Radius", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to json, xml, or sphp. Defaults to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to sort results. Appending "+asc" or "+desc" to a facet will sort results on that value in ascending or descending order (i.e. dist+asc).
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchEvents Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchEventsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API. Format corresponds to the ResponseFormat input. Defaults to xml.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchEvents



    ##############################################################################
    #
    # SearchEventsByBoundedBox
    #
    # Allows you to do a spatial search for events within a box bounded by specified northeast and southwest points.
    #
    ##############################################################################

    class SearchEventsByBoundedBox < Choreography

      ####
      #  Create a new instance of the SearchEventsByBoundedBox Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/EventListings/SearchEventsByBoundedBox")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchEventsByBoundedBoxInputSet
      ####
      def new_input_set()
        return SearchEventsByBoundedBoxInputSet.new()
      end

      def make_result_set()
        return SearchEventsByBoundedBoxResultSet.new()
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
        results = SearchEventsByBoundedBoxResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchEventsByBoundedBox
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchEventsByBoundedBoxInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the DateRange input for this Choreo. 
        # 
        # @param String - (optional, date) Start date to end date in the following format: YYYY-MM-DD:YYYY-MM-DD.
        ###

        def set_DateRange(value)
          set_input("DateRange", value)
        end
        #### 
        # Set the value of the Filters input for this Choreo. 
        # 
        # @param String - (optional, string) Filters search results using facet names and values. See Choreo documentation for examples.
        ###

        def set_Filters(value)
          set_input("Filters", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the NortheastLatitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The northeastern latitude of the bounding box to search. When searching within a bounded box, all four coordinates are required.
        ###

        def set_NortheastLatitude(value)
          set_input("NortheastLatitude", value)
        end
        #### 
        # Set the value of the NortheastLongitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The northeastern longitude of the bounding box to search. When searching within a bounded box, all four coordinates are required.
        ###

        def set_NortheastLongitude(value)
          set_input("NortheastLongitude", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A numeric value indicating the starting point of the result set. This can be used in combination with the Limit input to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) Search keywords to perform a text search on the following fields: web_description, event_name and venue_name.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the Radius input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The radius of the spacial search (in meters). Defaults to 1000.
        ###

        def set_Radius(value)
          set_input("Radius", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to json, xml, or sphp. Defaults to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to sort results. Appending "+asc" or "+desc" to a facet will sort results on that value in ascending or descending order (i.e. dist+asc).
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end
        #### 
        # Set the value of the SouthwestLatitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The southwest latitude of the bounding box to search. When searching within a bounded box, all four coordinates are required.
        ###

        def set_SouthwestLatitude(value)
          set_input("SouthwestLatitude", value)
        end
        #### 
        # Set the value of the SouthwestLongitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The southwest longitude of the bounding box to search. When searching within a bounded box, all four coordinates are required.
        ###

        def set_SouthwestLongitude(value)
          set_input("SouthwestLongitude", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchEventsByBoundedBox Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchEventsByBoundedBoxResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API. Format corresponds to the ResponseFormat input. Defaults to xml.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchEventsByBoundedBox



    ##############################################################################
    #
    # SearchListings
    #
    # Searches events by location, filters, or full text search.
    #
    ##############################################################################

    class SearchListings < Choreography

      ####
      #  Create a new instance of the SearchListings Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/EventListings/SearchListings")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchListingsInputSet
      ####
      def new_input_set()
        return SearchListingsInputSet.new()
      end

      def make_result_set()
        return SearchListingsResultSet.new()
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
        results = SearchListingsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchListings
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchListingsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the DateRange input for this Choreo. 
        # 
        # @param String - (optional, date) Start date to end date in the following format: YYYY-MM-DD:YYYY-MM-DD.
        ###

        def set_DateRange(value)
          set_input("DateRange", value)
        end
        #### 
        # Set the value of the Filters input for this Choreo. 
        # 
        # @param String - (optional, string) Filters search results using facet names and values. See Choreo documentation for examples.
        ###

        def set_Filters(value)
          set_input("Filters", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The latitude coordinate of the location to use in the event search. If specified, Longitude must also be provided.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The longitude coordinate of the location to use in the event search. If specified, Latitude must also be provided.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A numeric value indicating the starting point of the result set. This can be used in combination with the Limit input to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) Search keywords to perform a text search on the following fields: web_description, event_name and venue_name.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the Radius input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The radius of the spacial search (in meters). Defaults to 1000.
        ###

        def set_Radius(value)
          set_input("Radius", value)
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
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to sort results. Appending "+asc" or "+desc" to a facet will sort results on that value in ascending or descending order (i.e. dist+asc).
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchListings Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchListingsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API. Format corresponds to the ResponseFormat input. Defaults to xml.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchListings



    ##############################################################################
    #
    # SearchWithinBoundedBox
    #
    # Allows you to do a spatial search for events within a box bounded by specified northeast and southwest points.
    #
    ##############################################################################

    class SearchWithinBoundedBox < Choreography

      ####
      #  Create a new instance of the SearchWithinBoundedBox Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/EventListings/SearchWithinBoundedBox")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchWithinBoundedBoxInputSet
      ####
      def new_input_set()
        return SearchWithinBoundedBoxInputSet.new()
      end

      def make_result_set()
        return SearchWithinBoundedBoxResultSet.new()
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
        results = SearchWithinBoundedBoxResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchWithinBoundedBox
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchWithinBoundedBoxInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the DateRange input for this Choreo. 
        # 
        # @param String - (optional, date) Start date to end date in the following format: YYYY-MM-DD:YYYY-MM-DD.
        ###

        def set_DateRange(value)
          set_input("DateRange", value)
        end
        #### 
        # Set the value of the Filters input for this Choreo. 
        # 
        # @param String - (optional, string) Filters search results using facet names and values. See Choreo documentation for examples.
        ###

        def set_Filters(value)
          set_input("Filters", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the NortheastLatitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The northeastern latitude of the bounding box to search. When searching within a bounded box, all four coordinates are required.
        ###

        def set_NortheastLatitude(value)
          set_input("NortheastLatitude", value)
        end
        #### 
        # Set the value of the NortheastLongitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The northeastern longitude of the bounding box to search. When searching within a bounded box, all four coordinates are required.
        ###

        def set_NortheastLongitude(value)
          set_input("NortheastLongitude", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A numeric value indicating the starting point of the result set. This can be used in combination with the Limit input to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) Search keywords to perform a text search on the following fields: web_description, event_name and venue_name.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the Radius input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The radius of the spacial search (in meters). Defaults to 1000.
        ###

        def set_Radius(value)
          set_input("Radius", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to json, xml, or sphp. Defaults to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to sort results. Appending "+asc" or "+desc" to a facet will sort results on that value in ascending or descending order (i.e. dist+asc).
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end
        #### 
        # Set the value of the SouthwestLatitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The southwest latitude of the bounding box to search. When searching within a bounded box, all four coordinates are required.
        ###

        def set_SouthwestLatitude(value)
          set_input("SouthwestLatitude", value)
        end
        #### 
        # Set the value of the SouthwestLongitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The southwest longitude of the bounding box to search. When searching within a bounded box, all four coordinates are required.
        ###

        def set_SouthwestLongitude(value)
          set_input("SouthwestLongitude", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchWithinBoundedBox Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchWithinBoundedBoxResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API. Valid values are: json (the default) and xml.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchWithinBoundedBox




  end # module EventListings

  module MostPopular



    ##############################################################################
    #
    # GetMostEmailed
    #
    # Retrieves information for the blog posts and articles that are most frequently emailed.
    #
    ##############################################################################

    class GetMostEmailed < Choreography

      ####
      #  Create a new instance of the GetMostEmailed Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/MostPopular/GetMostEmailed")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMostEmailedInputSet
      ####
      def new_input_set()
        return GetMostEmailedInputSet.new()
      end

      def make_result_set()
        return GetMostEmailedResultSet.new()
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
        results = GetMostEmailedResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMostEmailed
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMostEmailedInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param String - (optional, string) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value.
        ###

        def set_Offset(value)
          set_input("Offset", value)
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
        # Set the value of the Section input for this Choreo. 
        # 
        # @param String - (required, string) Limits the results by one or more sections (i.e. arts).  To get all sections, specify all-sections.
        ###

        def set_Section(value)
          set_input("Section", value)
        end
        #### 
        # Set the value of the TimePeriod input for this Choreo. 
        # 
        # @param Integer - (required, integer) Allowed integer values: 1, 7, or 30, which corresponds to a day (1) , a week (7), or a month (30) of content.
        ###

        def set_TimePeriod(value)
          set_input("TimePeriod", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMostEmailed Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMostEmailedResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetMostEmailed



    ##############################################################################
    #
    # GetMostShared
    #
    # Retrieves information for the blog posts and articles that are most frequently shared.
    #
    ##############################################################################

    class GetMostShared < Choreography

      ####
      #  Create a new instance of the GetMostShared Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/MostPopular/GetMostShared")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMostSharedInputSet
      ####
      def new_input_set()
        return GetMostSharedInputSet.new()
      end

      def make_result_set()
        return GetMostSharedResultSet.new()
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
        results = GetMostSharedResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMostShared
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMostSharedInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param String - (optional, string) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value.
        ###

        def set_Offset(value)
          set_input("Offset", value)
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
        # Set the value of the Section input for this Choreo. 
        # 
        # @param String - (required, string) Limits the results by one or more sections (i.e. arts).  To get all sections, specify all-sections.
        ###

        def set_Section(value)
          set_input("Section", value)
        end
        #### 
        # Set the value of the ShareTypes input for this Choreo. 
        # 
        # @param String - (required, string) Limits the results by the method used to share the items.  Separate multiple share types by semicolons (i.e. facebook; twitter).
        ###

        def set_ShareTypes(value)
          set_input("ShareTypes", value)
        end
        #### 
        # Set the value of the TimePeriod input for this Choreo. 
        # 
        # @param Integer - (required, integer) Allowed integer values: 1, 7, or 30, which corresponds to a day (1) , a week (7), or a month (30) of content.
        ###

        def set_TimePeriod(value)
          set_input("TimePeriod", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMostShared Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMostSharedResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetMostShared



    ##############################################################################
    #
    # GetMostViewed
    #
    # Retrieves information for the blog posts and articles that are most frequently viewed.
    #
    ##############################################################################

    class GetMostViewed < Choreography

      ####
      #  Create a new instance of the GetMostViewed Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/MostPopular/GetMostViewed")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMostViewedInputSet
      ####
      def new_input_set()
        return GetMostViewedInputSet.new()
      end

      def make_result_set()
        return GetMostViewedResultSet.new()
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
        results = GetMostViewedResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMostViewed
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMostViewedInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value.
        ###

        def set_Offset(value)
          set_input("Offset", value)
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
        # Set the value of the Section input for this Choreo. 
        # 
        # @param String - (required, string) Limits the results by one or more sections (i.e. arts).  To get all sections, specify all-sections.
        ###

        def set_Section(value)
          set_input("Section", value)
        end
        #### 
        # Set the value of the TimePeriod input for this Choreo. 
        # 
        # @param Integer - (required, integer) Allowed integer values: 1, 7, or 30, which corresponds to a day (1) , a week (7), or a month (30) of content.
        ###

        def set_TimePeriod(value)
          set_input("TimePeriod", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMostViewed Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMostViewedResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetMostViewed



    ##############################################################################
    #
    # MostEmailed
    #
    # Retrieves information for the blog posts and articles that are most frequently emailed.
    #
    ##############################################################################

    class MostEmailed < Choreography

      ####
      #  Create a new instance of the MostEmailed Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/MostPopular/MostEmailed")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MostEmailedInputSet
      ####
      def new_input_set()
        return MostEmailedInputSet.new()
      end

      def make_result_set()
        return MostEmailedResultSet.new()
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
        results = MostEmailedResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MostEmailed
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MostEmailedInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Section input for this Choreo. 
        # 
        # @param String - (required, string) Limits the results by one or more sections (i.e. arts).  To get all sections, specify all-sections.
        ###

        def set_Section(value)
          set_input("Section", value)
        end
        #### 
        # Set the value of the TimePeriod input for this Choreo. 
        # 
        # @param Integer - (required, integer) Corresponds to a day, a week, or a month of content (i.e. 1, 7, 30)
        ###

        def set_TimePeriod(value)
          set_input("TimePeriod", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MostEmailed Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MostEmailedResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from the NY Times API
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class MostEmailed



    ##############################################################################
    #
    # MostShared
    #
    # Retrieves information for the blog posts and articles that are most frequently shared.
    #
    ##############################################################################

    class MostShared < Choreography

      ####
      #  Create a new instance of the MostShared Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/MostPopular/MostShared")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MostSharedInputSet
      ####
      def new_input_set()
        return MostSharedInputSet.new()
      end

      def make_result_set()
        return MostSharedResultSet.new()
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
        results = MostSharedResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MostShared
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MostSharedInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Section input for this Choreo. 
        # 
        # @param String - (required, string) Limits the results by one or more sections (i.e. arts).  To get all sections, specify all-sections.
        ###

        def set_Section(value)
          set_input("Section", value)
        end
        #### 
        # Set the value of the ShareTypes input for this Choreo. 
        # 
        # @param String - (required, string) Limits the results by the method used to share the items.  Separate multiple share types by semicolons (i.e. facebook; twitter).
        ###

        def set_ShareTypes(value)
          set_input("ShareTypes", value)
        end
        #### 
        # Set the value of the TimePeriod input for this Choreo. 
        # 
        # @param Integer - (required, integer) Corresponds to a day, a week, or a month of content (i.e. 1, 7, 30)
        ###

        def set_TimePeriod(value)
          set_input("TimePeriod", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MostShared Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MostSharedResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from the NY Times API
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class MostShared



    ##############################################################################
    #
    # MostViewed
    #
    # Retrieves information for the blog posts and articles that are most frequently viewed.
    #
    ##############################################################################

    class MostViewed < Choreography

      ####
      #  Create a new instance of the MostViewed Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/MostPopular/MostViewed")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MostViewedInputSet
      ####
      def new_input_set()
        return MostViewedInputSet.new()
      end

      def make_result_set()
        return MostViewedResultSet.new()
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
        results = MostViewedResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MostViewed
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MostViewedInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The starting point of the result set. Must be a multiple of 20.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Section input for this Choreo. 
        # 
        # @param String - (required, string) Limits the results by one or more sections (i.e. arts).  To get all sections, specify all-sections.
        ###

        def set_Section(value)
          set_input("Section", value)
        end
        #### 
        # Set the value of the TimePeriod input for this Choreo. 
        # 
        # @param Integer - (required, integer) Corresponds to a day, a week, or a month of content (i.e. 1, 7, 30)
        ###

        def set_TimePeriod(value)
          set_input("TimePeriod", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MostViewed Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MostViewedResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class MostViewed




  end # module MostPopular

  module MovieReviews



    ##############################################################################
    #
    # GetCriticsPicks
    #
    # Retrieves lists of reviews and NYT Critics' Picks.
    #
    ##############################################################################

    class GetCriticsPicks < Choreography

      ####
      #  Create a new instance of the GetCriticsPicks Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/MovieReviews/GetCriticsPicks")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCriticsPicksInputSet
      ####
      def new_input_set()
        return GetCriticsPicksInputSet.new()
      end

      def make_result_set()
        return GetCriticsPicksResultSet.new()
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
        results = GetCriticsPicksResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCriticsPicks
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCriticsPicksInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A numeric value indicating the starting point of the result set. Used to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) Sets the sort order of the results. Accepted values are: by-title, by-publication-date, by-opening-date, by-dvd-release-date.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the ResourceType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify "picks" to get NYT Critics' Picks in theaters or "dvd-picks" to get NYT Critics' Picks on DVD. Specify "all" to retrieve all reviews.
        ###

        def set_ResourceType(value)
          set_input("ResourceType", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to json, xml, or sphp. Defaults to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCriticsPicks Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCriticsPicksResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API. Format corresponds to the ResponseFormat input. Defaults to xml.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCriticsPicks



    ##############################################################################
    #
    # GetPicks
    #
    # Retrieves lists of reviews and NYT Critics' Picks.
    #
    ##############################################################################

    class GetPicks < Choreography

      ####
      #  Create a new instance of the GetPicks Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/MovieReviews/GetPicks")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPicksInputSet
      ####
      def new_input_set()
        return GetPicksInputSet.new()
      end

      def make_result_set()
        return GetPicksResultSet.new()
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
        results = GetPicksResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPicks
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPicksInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A numeric value indicating the starting point of the result set. Used to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) Sets the sort order of the results. Accepted values are: by-title, by-publication-date, by-opening-date, by-dvd-release-date.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the ResourceType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify "picks" to get NYT Critics' Picks in theaters or "dvd-picks" to get NYT Critics' Picks on DVD. Specify "all" to retrieve all reviews.
        ###

        def set_ResourceType(value)
          set_input("ResourceType", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPicks Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPicksResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPicks



    ##############################################################################
    #
    # GetReviewer
    #
    # Retrieves biographical information about reviewers.
    #
    ##############################################################################

    class GetReviewer < Choreography

      ####
      #  Create a new instance of the GetReviewer Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/MovieReviews/GetReviewer")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetReviewerInputSet
      ####
      def new_input_set()
        return GetReviewerInputSet.new()
      end

      def make_result_set()
        return GetReviewerResultSet.new()
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
        results = GetReviewerResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetReviewer
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetReviewerInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ResourceType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify "all", "full-time", or "part-time" for that subset. Specify a reviewer's name to get details about a reviewer. Names should be separated by hyphens or dots (i.e. manohla-dargis).
        ###

        def set_ResourceType(value)
          set_input("ResourceType", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetReviewer Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetReviewerResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetReviewer



    ##############################################################################
    #
    # GetReviewerDetails
    #
    # Retrieves biographical information about reviewers.
    #
    ##############################################################################

    class GetReviewerDetails < Choreography

      ####
      #  Create a new instance of the GetReviewerDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/MovieReviews/GetReviewerDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetReviewerDetailsInputSet
      ####
      def new_input_set()
        return GetReviewerDetailsInputSet.new()
      end

      def make_result_set()
        return GetReviewerDetailsResultSet.new()
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
        results = GetReviewerDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetReviewerDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetReviewerDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ResourceType input for this Choreo. 
        # 
        # @param String - (optional, string) Specify "all", "full-time", or "part-time" for that subset. Specify a reviewer's name to get details about a reviewer. Names should be separated by hyphens or dots (i.e. manohla-dargis)
        ###

        def set_ResourceType(value)
          set_input("ResourceType", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to json, xml, or sphp. Defaults to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetReviewerDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetReviewerDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API. Format corresponds to the ResponseFormat input. Defaults to xml.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetReviewerDetails



    ##############################################################################
    #
    # GetReviewsByKeyword
    #
    # Searches movie reviews by keyword and various filter parameters.
    #
    ##############################################################################

    class GetReviewsByKeyword < Choreography

      ####
      #  Create a new instance of the GetReviewsByKeyword Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/MovieReviews/GetReviewsByKeyword")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetReviewsByKeywordInputSet
      ####
      def new_input_set()
        return GetReviewsByKeywordInputSet.new()
      end

      def make_result_set()
        return GetReviewsByKeywordResultSet.new()
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
        results = GetReviewsByKeywordResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetReviewsByKeyword
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetReviewsByKeywordInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CriticsPick input for this Choreo. 
        # 
        # @param String - (optional, string) Set this parameter to Y to limt the results to NYT Critics' Picks. To get only those movies that have not been highlighted by Times critics, specify N.
        ###

        def set_CriticsPick(value)
          set_input("CriticsPick", value)
        end
        #### 
        # Set the value of the DVD input for this Choreo. 
        # 
        # @param String - (optional, string) Set this parameter to Y to limit the results to movies that have been released on DVD. To get only those movies that have not been released on DVD, specify N.
        ###

        def set_DVD(value)
          set_input("DVD", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A numeric value indicating the starting point of the result set. This can be used in combination with the Limit input to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the OpeningDate input for this Choreo. 
        # 
        # @param String - (optional, date) Limits by date or range of dates. The opening-date is the date the movie's opening date in the New York region. Format YYYY-MM-DD. Separate ranges with semicolons.
        ###

        def set_OpeningDate(value)
          set_input("OpeningDate", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) Sets the sort order of the results. Accepted values are: by-title, by-publication-date, by-opening-date, by-dvd-release-date.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the PublicationDate input for this Choreo. 
        # 
        # @param String - (optional, date) Limits by date or range of dates. The publication-date is the date the review was first publish.ed in The Times. Format YYYY-MM-DD. Separate ranges with semicolons.
        ###

        def set_PublicationDate(value)
          set_input("PublicationDate", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (conditional, string) A string of search keywords. Matches movie titles and indexed terms.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to json, xml, or sphp. Defaults to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Reviewer input for this Choreo. 
        # 
        # @param String - (optional, string) Limits results to reviews by a specific critic. Reviewer names should be hyphenated or concatenated with dots (i.e manohla.dargis).
        ###

        def set_Reviewer(value)
          set_input("Reviewer", value)
        end
        #### 
        # Set the value of the ThousandBest input for this Choreo. 
        # 
        # @param String - (optional, string) Set this parameter to Y to limit the results to movies on the Times list of The Best 1,000 Movies Ever Made. To get only those movies that are not on the list, specify N.
        ###

        def set_ThousandBest(value)
          set_input("ThousandBest", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetReviewsByKeyword Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetReviewsByKeywordResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API. Format corresponds to the ResponseFormat input. Defaults to xml.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetReviewsByKeyword



    ##############################################################################
    #
    # GetReviewsByReviewer
    #
    # Retrieves reviews by a specific Times reviewer.
    #
    ##############################################################################

    class GetReviewsByReviewer < Choreography

      ####
      #  Create a new instance of the GetReviewsByReviewer Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/MovieReviews/GetReviewsByReviewer")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetReviewsByReviewerInputSet
      ####
      def new_input_set()
        return GetReviewsByReviewerInputSet.new()
      end

      def make_result_set()
        return GetReviewsByReviewerResultSet.new()
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
        results = GetReviewsByReviewerResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetReviewsByReviewer
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetReviewsByReviewerInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CriticsPick input for this Choreo. 
        # 
        # @param String - (optional, string) Set this parameter to Y to limt the results to NYT Critics' Picks. To get only those movies that have not been highlighted by Times critics, specify N.
        ###

        def set_CriticsPick(value)
          set_input("CriticsPick", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A numeric value indicating the starting point of the result set. Used to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) Sets the sort order of the results. Accepted values are: by-title, by-publication-date, by-opening-date, by-dvd-release-date.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to json, xml, or sphp. Defaults to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ReviewerName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the Times reviewer. Reviewer names should be separated by hyphens or dots (i.e. manohla-dargis or manohla.dargis)
        ###

        def set_ReviewerName(value)
          set_input("ReviewerName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetReviewsByReviewer Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetReviewsByReviewerResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API. Format corresponds to the ResponseFormat input. Defaults to xml.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetReviewsByReviewer



    ##############################################################################
    #
    # SearchByKeyword
    #
    # Searches movie reviews by keyword and various filter parameters.
    #
    ##############################################################################

    class SearchByKeyword < Choreography

      ####
      #  Create a new instance of the SearchByKeyword Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/MovieReviews/SearchByKeyword")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchByKeywordInputSet
      ####
      def new_input_set()
        return SearchByKeywordInputSet.new()
      end

      def make_result_set()
        return SearchByKeywordResultSet.new()
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
        results = SearchByKeywordResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchByKeyword
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchByKeywordInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CriticsPick input for this Choreo. 
        # 
        # @param String - (optional, string) Set this parameter to Y to limt the results to NYT Critics' Picks. To get only those movies that have not been highlighted by Times critics, specify N.
        ###

        def set_CriticsPick(value)
          set_input("CriticsPick", value)
        end
        #### 
        # Set the value of the DVD input for this Choreo. 
        # 
        # @param String - (optional, string) Set this parameter to Y to limit the results to movies that have been released on DVD. To get only those movies that have not been released on DVD, specify N.
        ###

        def set_DVD(value)
          set_input("DVD", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A numeric value indicating the starting point of the result set. This can be used in combination with the Limit input to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the OpeningDate input for this Choreo. 
        # 
        # @param String - (optional, date) Limits by date or range of dates. The opening-date is the date the movie's opening date in the New York region. Format YYYY-MM-DD. Separate ranges with semicolons.
        ###

        def set_OpeningDate(value)
          set_input("OpeningDate", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) Sets the sort order of the results. Accepted values are: by-title, by-publication-date, by-opening-date, by-dvd-release-date.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the PublicationDate input for this Choreo. 
        # 
        # @param String - (optional, date) Limits by date or range of dates. The publication-date is the date the review was first publish.ed in The Times. Format YYYY-MM-DD. Separate ranges with semicolons.
        ###

        def set_PublicationDate(value)
          set_input("PublicationDate", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (conditional, string) A string of search keywords. Matches movie titles and indexed terms.
        ###

        def set_Query(value)
          set_input("Query", value)
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
        # Set the value of the Reviewer input for this Choreo. 
        # 
        # @param String - (optional, string) Limits results to reviews by a specific critic. Reviewer names should be hyphenated or concatenated with dots (i.e manohla.dargis).
        ###

        def set_Reviewer(value)
          set_input("Reviewer", value)
        end
        #### 
        # Set the value of the ThousandBest input for this Choreo. 
        # 
        # @param String - (optional, string) Set this parameter to Y to limit the results to movies on the Times list of The Best 1,000 Movies Ever Made. To get only those movies that are not on the list, specify N.
        ###

        def set_ThousandBest(value)
          set_input("ThousandBest", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchByKeyword Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchByKeywordResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchByKeyword



    ##############################################################################
    #
    # SearchByReviewer
    #
    # Retrieves reviews by a specific Times reviewer.
    #
    ##############################################################################

    class SearchByReviewer < Choreography

      ####
      #  Create a new instance of the SearchByReviewer Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/MovieReviews/SearchByReviewer")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchByReviewerInputSet
      ####
      def new_input_set()
        return SearchByReviewerInputSet.new()
      end

      def make_result_set()
        return SearchByReviewerResultSet.new()
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
        results = SearchByReviewerResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchByReviewer
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchByReviewerInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CriticsPick input for this Choreo. 
        # 
        # @param String - (optional, string) Set this parameter to Y to limt the results to NYT Critics' Picks. To get only those movies that have not been highlighted by Times critics, specify N.
        ###

        def set_CriticsPick(value)
          set_input("CriticsPick", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A numeric value indicating the starting point of the result set. Used to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) Sets the sort order of the results. Accepted values are: by-title, by-publication-date, by-opening-date, by-dvd-release-date.
        ###

        def set_Order(value)
          set_input("Order", value)
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
        # Set the value of the ReviewerName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the Times reviewer. Reviewer names should be separated by hyphens or dots (i.e. manohla-dargis or manohla.dargis).
        ###

        def set_ReviewerName(value)
          set_input("ReviewerName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchByReviewer Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchByReviewerResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchByReviewer




  end # module MovieReviews

  module RealEstate



    ##############################################################################
    #
    # GetListingsCounts
    #
    # Retrieves counts of real estate listings from New York Times Web Service.
    #
    ##############################################################################

    class GetListingsCounts < Choreography

      ####
      #  Create a new instance of the GetListingsCounts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/RealEstate/GetListingsCounts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetListingsCountsInputSet
      ####
      def new_input_set()
        return GetListingsCountsInputSet.new()
      end

      def make_result_set()
        return GetListingsCountsResultSet.new()
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
        results = GetListingsCountsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetListingsCounts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetListingsCountsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Bedrooms input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the results by number of bedrooms to search for. Defaults to 1.
        ###

        def set_Bedrooms(value)
          set_input("Bedrooms", value)
        end
        #### 
        # Set the value of the DateRange input for this Choreo. 
        # 
        # @param String - (required, string) Sets the quarter, month, week or day for the results (i.e. 2008-Q1, 2008-W52, 2007-07, 2010-10-01, etc).
        ###

        def set_DateRange(value)
          set_input("DateRange", value)
        end
        #### 
        # Set the value of the GeoExtentLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographical unit for the results (i.e. borough, neighborhood, or zip).
        ###

        def set_GeoExtentLevel(value)
          set_input("GeoExtentLevel", value)
        end
        #### 
        # Set the value of the GeoExtentValue input for this Choreo. 
        # 
        # @param String - (required, string) Limits the search to a specific area.  For example, if GeoExtentLevel is borough, the value for GeoExtentValue could be Brooklyn.
        ###

        def set_GeoExtentValue(value)
          set_input("GeoExtentValue", value)
        end
        #### 
        # Set the value of the GeoSummaryLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographic unit for grouping the results (borough, neighborhood, or zip).
        ###

        def set_GeoSummaryLevel(value)
          set_input("GeoSummaryLevel", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetListingsCounts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetListingsCountsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetListingsCounts



    ##############################################################################
    #
    # GetListingsPercentiles
    #
    # Retrieves percentiles of real estate listings from New York Times Web Service.
    #
    ##############################################################################

    class GetListingsPercentiles < Choreography

      ####
      #  Create a new instance of the GetListingsPercentiles Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/RealEstate/GetListingsPercentiles")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetListingsPercentilesInputSet
      ####
      def new_input_set()
        return GetListingsPercentilesInputSet.new()
      end

      def make_result_set()
        return GetListingsPercentilesResultSet.new()
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
        results = GetListingsPercentilesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetListingsPercentiles
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetListingsPercentilesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Bedrooms input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the results by number of bedrooms to search for. Defaults to 1.
        ###

        def set_Bedrooms(value)
          set_input("Bedrooms", value)
        end
        #### 
        # Set the value of the DateRange input for this Choreo. 
        # 
        # @param String - (required, string) Sets the quarter, month, week or day for the results (i.e. 2008-Q1, 2008-W52, 2007-07, 2010-10-01, etc).
        ###

        def set_DateRange(value)
          set_input("DateRange", value)
        end
        #### 
        # Set the value of the GeoExtentLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographical unit for the results (i.e. borough, neighborhood, or zip).
        ###

        def set_GeoExtentLevel(value)
          set_input("GeoExtentLevel", value)
        end
        #### 
        # Set the value of the GeoExtentValue input for this Choreo. 
        # 
        # @param String - (required, string) Limits the search to a specific area.  For example, if GeoExtentLevel is borough, the value for GeoExtentValue could be Brooklyn.
        ###

        def set_GeoExtentValue(value)
          set_input("GeoExtentValue", value)
        end
        #### 
        # Set the value of the GeoSummaryLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographic unit for grouping the results (borough, neighborhood, or zip).
        ###

        def set_GeoSummaryLevel(value)
          set_input("GeoSummaryLevel", value)
        end
        #### 
        # Set the value of the Percentile input for this Choreo. 
        # 
        # @param Integer - (required, integer) Specify a percentile for the listing prices you want to retrieve (i.e 50).
        ###

        def set_Percentile(value)
          set_input("Percentile", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetListingsPercentiles Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetListingsPercentilesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetListingsPercentiles



    ##############################################################################
    #
    # GetSalesCounts
    #
    # Retrieves counts of real estate sales from New York Times Web Service.
    #
    ##############################################################################

    class GetSalesCounts < Choreography

      ####
      #  Create a new instance of the GetSalesCounts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/RealEstate/GetSalesCounts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSalesCountsInputSet
      ####
      def new_input_set()
        return GetSalesCountsInputSet.new()
      end

      def make_result_set()
        return GetSalesCountsResultSet.new()
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
        results = GetSalesCountsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSalesCounts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSalesCountsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Bedrooms input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the results by number of bedrooms to search for. Defaults to 1.
        ###

        def set_Bedrooms(value)
          set_input("Bedrooms", value)
        end
        #### 
        # Set the value of the DateRange input for this Choreo. 
        # 
        # @param String - (required, string) Sets the quarter, month, week or day for the results (i.e. 2008-Q1, 2008-W52, 2007-07, 2010-10-01, etc)
        ###

        def set_DateRange(value)
          set_input("DateRange", value)
        end
        #### 
        # Set the value of the GeoExtentLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographical unit for the results (i.e. borough, neighborhood, or zip)
        ###

        def set_GeoExtentLevel(value)
          set_input("GeoExtentLevel", value)
        end
        #### 
        # Set the value of the GeoExtentValue input for this Choreo. 
        # 
        # @param String - (required, string) Limits the search to a specific area.  For example, if GeoExtendLevel is borough, the value for GeoExtendValue could be Brooklyn.
        ###

        def set_GeoExtentValue(value)
          set_input("GeoExtentValue", value)
        end
        #### 
        # Set the value of the GeoSummaryLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographic unit for grouping the results (borough, neighborhood, or zip)
        ###

        def set_GeoSummaryLevel(value)
          set_input("GeoSummaryLevel", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSalesCounts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSalesCountsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSalesCounts



    ##############################################################################
    #
    # GetSalesPercentiles
    #
    # Retrieves percentiles of real estate sales from New York Times Web Service.
    #
    ##############################################################################

    class GetSalesPercentiles < Choreography

      ####
      #  Create a new instance of the GetSalesPercentiles Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/RealEstate/GetSalesPercentiles")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSalesPercentilesInputSet
      ####
      def new_input_set()
        return GetSalesPercentilesInputSet.new()
      end

      def make_result_set()
        return GetSalesPercentilesResultSet.new()
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
        results = GetSalesPercentilesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSalesPercentiles
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSalesPercentilesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Bedrooms input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the results by number of bedrooms to search for. Defaults to 1.
        ###

        def set_Bedrooms(value)
          set_input("Bedrooms", value)
        end
        #### 
        # Set the value of the DateRange input for this Choreo. 
        # 
        # @param String - (required, string) Sets the quarter, month, week or day for the results (i.e. 2008-Q1, 2008-W52, 2007-07, etc)
        ###

        def set_DateRange(value)
          set_input("DateRange", value)
        end
        #### 
        # Set the value of the GeoExtentLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographical unit for the results (i.e. borough, neighborhood, or zip)
        ###

        def set_GeoExtentLevel(value)
          set_input("GeoExtentLevel", value)
        end
        #### 
        # Set the value of the GeoExtentValue input for this Choreo. 
        # 
        # @param String - (required, string) Limits the search to a specific area.  For example, if GeoExtendLevel is borough, the value for GeoExtendValue could be Brooklyn.
        ###

        def set_GeoExtentValue(value)
          set_input("GeoExtentValue", value)
        end
        #### 
        # Set the value of the GeoSummaryLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographic unit for grouping the results (borough, neighborhood, or zip)
        ###

        def set_GeoSummaryLevel(value)
          set_input("GeoSummaryLevel", value)
        end
        #### 
        # Set the value of the Percentile input for this Choreo. 
        # 
        # @param Integer - (required, integer) Specify the percentile for sales prices you want to retrieve (i.e 50)
        ###

        def set_Percentile(value)
          set_input("Percentile", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSalesPercentiles Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSalesPercentilesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSalesPercentiles



    ##############################################################################
    #
    # ListingsCounts
    #
    # Retrieves counts of real estate listings from New York Times Web Service.
    #
    ##############################################################################

    class ListingsCounts < Choreography

      ####
      #  Create a new instance of the ListingsCounts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/RealEstate/ListingsCounts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListingsCountsInputSet
      ####
      def new_input_set()
        return ListingsCountsInputSet.new()
      end

      def make_result_set()
        return ListingsCountsResultSet.new()
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
        results = ListingsCountsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListingsCounts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListingsCountsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Bedrooms input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the results by number of bedrooms to search for. Defaults to 1.
        ###

        def set_Bedrooms(value)
          set_input("Bedrooms", value)
        end
        #### 
        # Set the value of the DateRange input for this Choreo. 
        # 
        # @param String - (required, string) Sets the quarter, month, week or day for the results (i.e. 2008-Q1, 2008-W52, 2007-07, 2010-10-01, etc)
        ###

        def set_DateRange(value)
          set_input("DateRange", value)
        end
        #### 
        # Set the value of the GeoExtentLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographical unit for the results (i.e. borough, neighborhood, or zip)
        ###

        def set_GeoExtentLevel(value)
          set_input("GeoExtentLevel", value)
        end
        #### 
        # Set the value of the GeoExtentValue input for this Choreo. 
        # 
        # @param String - (required, string) Limits the search to a specific area.  For example, if GeoExtendLevel is borough, the value for GeoExtendValue could be Brooklyn.
        ###

        def set_GeoExtentValue(value)
          set_input("GeoExtentValue", value)
        end
        #### 
        # Set the value of the GeoSummaryLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographic unit for grouping the results (borough, neighborhood, or zip)
        ###

        def set_GeoSummaryLevel(value)
          set_input("GeoSummaryLevel", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListingsCounts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListingsCountsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from the NY Times API
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListingsCounts



    ##############################################################################
    #
    # ListingsPercentiles
    #
    # Retrieves percentiles of real estate listings from New York Times Web Service.
    #
    ##############################################################################

    class ListingsPercentiles < Choreography

      ####
      #  Create a new instance of the ListingsPercentiles Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/RealEstate/ListingsPercentiles")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListingsPercentilesInputSet
      ####
      def new_input_set()
        return ListingsPercentilesInputSet.new()
      end

      def make_result_set()
        return ListingsPercentilesResultSet.new()
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
        results = ListingsPercentilesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListingsPercentiles
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListingsPercentilesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Bedrooms input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the results by number of bedrooms to search for. Defaults to 1.
        ###

        def set_Bedrooms(value)
          set_input("Bedrooms", value)
        end
        #### 
        # Set the value of the DateRange input for this Choreo. 
        # 
        # @param String - (required, string) Sets the quarter, month, week or day for the results (i.e. 2008-Q1, 2008-W52, 2007-07, 2010-10-01, etc)
        ###

        def set_DateRange(value)
          set_input("DateRange", value)
        end
        #### 
        # Set the value of the GeoExtentLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographical unit for the results (i.e. borough, neighborhood, or zip)
        ###

        def set_GeoExtentLevel(value)
          set_input("GeoExtentLevel", value)
        end
        #### 
        # Set the value of the GeoExtentValue input for this Choreo. 
        # 
        # @param String - (required, string) Limits the search to a specific area.  For example, if GeoExtendLevel is borough, the value for GeoExtendValue could be Brooklyn.
        ###

        def set_GeoExtentValue(value)
          set_input("GeoExtentValue", value)
        end
        #### 
        # Set the value of the GeoSummaryLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographic unit for grouping the results (borough, neighborhood, or zip)
        ###

        def set_GeoSummaryLevel(value)
          set_input("GeoSummaryLevel", value)
        end
        #### 
        # Set the value of the Percentile input for this Choreo. 
        # 
        # @param Integer - (required, integer) Specify a percentile for the listing prices you want to retrieve (i.e 50)
        ###

        def set_Percentile(value)
          set_input("Percentile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListingsPercentiles Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListingsPercentilesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from the NY Times Web Service
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListingsPercentiles



    ##############################################################################
    #
    # SalesCounts
    #
    # Retrieves counts of real estate sales from New York Times Web Service.
    #
    ##############################################################################

    class SalesCounts < Choreography

      ####
      #  Create a new instance of the SalesCounts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/RealEstate/SalesCounts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SalesCountsInputSet
      ####
      def new_input_set()
        return SalesCountsInputSet.new()
      end

      def make_result_set()
        return SalesCountsResultSet.new()
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
        results = SalesCountsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SalesCounts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SalesCountsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Bedrooms input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the results by number of bedrooms to search for. Defaults to 1.
        ###

        def set_Bedrooms(value)
          set_input("Bedrooms", value)
        end
        #### 
        # Set the value of the DateRange input for this Choreo. 
        # 
        # @param String - (required, string) Sets the quarter, month, week or day for the results (i.e. 2008-Q1, 2008-W52, 2007-07, 2010-10-01, etc)
        ###

        def set_DateRange(value)
          set_input("DateRange", value)
        end
        #### 
        # Set the value of the GeoExtentLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographical unit for the results (i.e. borough, neighborhood, or zip)
        ###

        def set_GeoExtentLevel(value)
          set_input("GeoExtentLevel", value)
        end
        #### 
        # Set the value of the GeoExtentValue input for this Choreo. 
        # 
        # @param String - (required, string) Limits the search to a specific area.  For example, if GeoExtendLevel is borough, the value for GeoExtendValue could be Brooklyn.
        ###

        def set_GeoExtentValue(value)
          set_input("GeoExtentValue", value)
        end
        #### 
        # Set the value of the GeoSummaryLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographic unit for grouping the results (borough, neighborhood, or zip)
        ###

        def set_GeoSummaryLevel(value)
          set_input("GeoSummaryLevel", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SalesCounts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SalesCountsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from the NY Times API
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SalesCounts



    ##############################################################################
    #
    # SalesPercentiles
    #
    # Retrieves percentiles of real estate sales from New York Times Web Service.
    #
    ##############################################################################

    class SalesPercentiles < Choreography

      ####
      #  Create a new instance of the SalesPercentiles Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/RealEstate/SalesPercentiles")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SalesPercentilesInputSet
      ####
      def new_input_set()
        return SalesPercentilesInputSet.new()
      end

      def make_result_set()
        return SalesPercentilesResultSet.new()
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
        results = SalesPercentilesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SalesPercentiles
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SalesPercentilesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Bedrooms input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the results by number of bedrooms to search for. Defaults to 1.
        ###

        def set_Bedrooms(value)
          set_input("Bedrooms", value)
        end
        #### 
        # Set the value of the DateRange input for this Choreo. 
        # 
        # @param String - (required, string) Sets the quarter, month, week or day for the results (i.e. 2008-Q1, 2008-W52, 2007-07, etc)
        ###

        def set_DateRange(value)
          set_input("DateRange", value)
        end
        #### 
        # Set the value of the GeoExtentLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographical unit for the results (i.e. borough, neighborhood, or zip)
        ###

        def set_GeoExtentLevel(value)
          set_input("GeoExtentLevel", value)
        end
        #### 
        # Set the value of the GeoExtentValue input for this Choreo. 
        # 
        # @param String - (required, string) Limits the search to a specific area.  For example, if GeoExtendLevel is borough, the value for GeoExtendValue could be Brooklyn.
        ###

        def set_GeoExtentValue(value)
          set_input("GeoExtentValue", value)
        end
        #### 
        # Set the value of the GeoSummaryLevel input for this Choreo. 
        # 
        # @param String - (required, string) The geographic unit for grouping the results (borough, neighborhood, or zip)
        ###

        def set_GeoSummaryLevel(value)
          set_input("GeoSummaryLevel", value)
        end
        #### 
        # Set the value of the Percentile input for this Choreo. 
        # 
        # @param Integer - (required, integer) Specify the percentile for sales prices you want to retrieve (i.e 50)
        ###

        def set_Percentile(value)
          set_input("Percentile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SalesPercentiles Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SalesPercentilesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from the NY Times API
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SalesPercentiles




  end # module RealEstate

  module TimesNewswire



    ##############################################################################
    #
    # GetNewsItem
    #
    # Queries the Newswire API for a specific news item.
    #
    ##############################################################################

    class GetNewsItem < Choreography

      ####
      #  Create a new instance of the GetNewsItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/TimesNewswire/GetNewsItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetNewsItemInputSet
      ####
      def new_input_set()
        return GetNewsItemInputSet.new()
      end

      def make_result_set()
        return GetNewsItemResultSet.new()
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
        results = GetNewsItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetNewsItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetNewsItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (required, string) The complete URL of a specific news item. This URL is returned in the output of the GetRecentNews Choreo.
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetNewsItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetNewsItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetNewsItem



    ##############################################################################
    #
    # GetRecentNews
    #
    # Retrieves recent news items.
    #
    ##############################################################################

    class GetRecentNews < Choreography

      ####
      #  Create a new instance of the GetRecentNews Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/TimesNewswire/GetRecentNews")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRecentNewsInputSet
      ####
      def new_input_set()
        return GetRecentNewsInputSet.new()
      end

      def make_result_set()
        return GetRecentNewsResultSet.new()
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
        results = GetRecentNewsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRecentNews
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRecentNewsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return. Defaults to 20.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A numeric value indicating the starting point of the result set. This can be used in combination with the Limit input to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to json, xml, or sphp. Defaults to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Section input for this Choreo. 
        # 
        # @param String - (optional, string) Limits the set of items by one or more sections. Separate sections by semicolons. Defaults to "all" to get all sections. See Choreo documentation for more options for this input.
        ###

        def set_Section(value)
          set_input("Section", value)
        end
        #### 
        # Set the value of the Source input for this Choreo. 
        # 
        # @param String - (optional, string) Limits the set of items by originating source. Set to "nyt" for New York Times items only and "iht" for International Herald Tribune items. Set to "all" for both (the default).
        ###

        def set_Source(value)
          set_input("Source", value)
        end
        #### 
        # Set the value of the TimePeriod input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the set of items by time published. Valid range is number of hours, 1–720 (in hours). Defaults to 24.
        ###

        def set_TimePeriod(value)
          set_input("TimePeriod", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRecentNews Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRecentNewsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API. Format corresponds to the ResponseFormat input. Defaults to xml.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRecentNews



    ##############################################################################
    #
    # GetRecentNewsItems
    #
    # Retrieves recent news items.
    #
    ##############################################################################

    class GetRecentNewsItems < Choreography

      ####
      #  Create a new instance of the GetRecentNewsItems Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/TimesNewswire/GetRecentNewsItems")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRecentNewsItemsInputSet
      ####
      def new_input_set()
        return GetRecentNewsItemsInputSet.new()
      end

      def make_result_set()
        return GetRecentNewsItemsResultSet.new()
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
        results = GetRecentNewsItemsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRecentNewsItems
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRecentNewsItemsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return. Defaults to 20.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A numeric value indicating the starting point of the result set. This can be used in combination with the Limit input to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
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
        # Set the value of the Section input for this Choreo. 
        # 
        # @param String - (optional, string) Limits the set of items by one or more sections. Separate sections by semicolons. Defaults to "all" to get all sections. See Choreo documentation for more options for this input.
        ###

        def set_Section(value)
          set_input("Section", value)
        end
        #### 
        # Set the value of the Source input for this Choreo. 
        # 
        # @param String - (optional, string) Limits the set of items by originating source. Set to "nyt" for New York Times items only and "iht" for International Herald Tribune items. Set to "all" for both (the default).
        ###

        def set_Source(value)
          set_input("Source", value)
        end
        #### 
        # Set the value of the TimePeriod input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the set of items by time published. Valid range is number of hours, 1–720 (in hours). Defaults to 24.
        ###

        def set_TimePeriod(value)
          set_input("TimePeriod", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRecentNewsItems Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRecentNewsItemsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRecentNewsItems



    ##############################################################################
    #
    # GetSpecificNewsItem
    #
    # Queries the Newswire API for a specific news item.
    #
    ##############################################################################

    class GetSpecificNewsItem < Choreography

      ####
      #  Create a new instance of the GetSpecificNewsItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/NYTimes/TimesNewswire/GetSpecificNewsItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSpecificNewsItemInputSet
      ####
      def new_input_set()
        return GetSpecificNewsItemInputSet.new()
      end

      def make_result_set()
        return GetSpecificNewsItemResultSet.new()
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
        results = GetSpecificNewsItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSpecificNewsItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSpecificNewsItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by NY Times.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to json, xml, or sphp. Defaults to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (required, string) The complete URL of a specific news item. This URL is returned in the output of the GetRecentNews Choreo.
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSpecificNewsItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSpecificNewsItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the NY Times API. Format corresponds to the ResponseFormat input. Defaults to xml.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSpecificNewsItem




  end # module TimesNewswire

end # module NYTimes