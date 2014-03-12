require "temboo"

module Kiva




  module JournalEntries



    ##############################################################################
    #
    # GetComments
    #
    # Returns comments for a specified journal entry.
    #
    ##############################################################################

    class GetComments < Choreography

      ####
      #  Create a new instance of the GetComments Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/JournalEntries/GetComments")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCommentsInputSet
      ####
      def new_input_set()
        return GetCommentsInputSet.new()
      end

      def make_result_set()
        return GetCommentsResultSet.new()
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
        results = GetCommentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetComments
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCommentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the JournalID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID number of the journal entry for which you want comments.
        ###

        def set_JournalID(value)
          set_input("JournalID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page position of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetComments Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCommentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetComments



    ##############################################################################
    #
    # SearchJournalEntries
    #
    # Returns a keyword search of all journal entries.
    #
    ##############################################################################

    class SearchJournalEntries < Choreography

      ####
      #  Create a new instance of the SearchJournalEntries Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/JournalEntries/SearchJournalEntries")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchJournalEntriesInputSet
      ####
      def new_input_set()
        return SearchJournalEntriesInputSet.new()
      end

      def make_result_set()
        return SearchJournalEntriesResultSet.new()
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
        results = SearchJournalEntriesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchJournalEntries
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchJournalEntriesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page position of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) Word or phrase used to search for in the journals' content.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) The order by which to return the results. Acceptable values: newest, oldest, recommendation_count, comment_count. Defaults to newest.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchJournalEntries Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchJournalEntriesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchJournalEntries




  end # module JournalEntries

  module Lenders



    ##############################################################################
    #
    # GetLenderDetails
    #
    # Returns details for lenders.
    #
    ##############################################################################

    class GetLenderDetails < Choreography

      ####
      #  Create a new instance of the GetLenderDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Lenders/GetLenderDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLenderDetailsInputSet
      ####
      def new_input_set()
        return GetLenderDetailsInputSet.new()
      end

      def make_result_set()
        return GetLenderDetailsResultSet.new()
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
        results = GetLenderDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLenderDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLenderDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the LenderName input for this Choreo. 
        # 
        # @param String - (required, string) List of comma-delimited lender names for which to return details. Maximum list items: 50.
        ###

        def set_LenderName(value)
          set_input("LenderName", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLenderDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLenderDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLenderDetails



    ##############################################################################
    #
    # GetLenderLoans
    #
    # Returns loans belonging to a particular lender.
    #
    ##############################################################################

    class GetLenderLoans < Choreography

      ####
      #  Create a new instance of the GetLenderLoans Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Lenders/GetLenderLoans")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLenderLoansInputSet
      ####
      def new_input_set()
        return GetLenderLoansInputSet.new()
      end

      def make_result_set()
        return GetLenderLoansResultSet.new()
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
        results = GetLenderLoansResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLenderLoans
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLenderLoansInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the LenderName input for this Choreo. 
        # 
        # @param String - (required, string) The lender name for which to return details.
        ###

        def set_LenderName(value)
          set_input("LenderName", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page position of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) The order by which to sort results. Acceptable values: oldest, newest. Defaults to newest.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLenderLoans Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLenderLoansResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLenderLoans



    ##############################################################################
    #
    # GetLenderTeams
    #
    # Returns teams that a particular lender is part of.
    #
    ##############################################################################

    class GetLenderTeams < Choreography

      ####
      #  Create a new instance of the GetLenderTeams Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Lenders/GetLenderTeams")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLenderTeamsInputSet
      ####
      def new_input_set()
        return GetLenderTeamsInputSet.new()
      end

      def make_result_set()
        return GetLenderTeamsResultSet.new()
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
        results = GetLenderTeamsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLenderTeams
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLenderTeamsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the LenderName input for this Choreo. 
        # 
        # @param String - (required, string) The lender name for which to return details.
        ###

        def set_LenderName(value)
          set_input("LenderName", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page position of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLenderTeams Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLenderTeamsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLenderTeams



    ##############################################################################
    #
    # GetNewestLenders
    #
    # Returns listings for the lenders who have most recently joined Kiva.
    #
    ##############################################################################

    class GetNewestLenders < Choreography

      ####
      #  Create a new instance of the GetNewestLenders Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Lenders/GetNewestLenders")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetNewestLendersInputSet
      ####
      def new_input_set()
        return GetNewestLendersInputSet.new()
      end

      def make_result_set()
        return GetNewestLendersResultSet.new()
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
        results = GetNewestLendersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetNewestLenders
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetNewestLendersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page position of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetNewestLenders Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetNewestLendersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetNewestLenders



    ##############################################################################
    #
    # SearchLenders
    #
    # Returns a keyword search for lenders based on multiple criteria.
    #
    ##############################################################################

    class SearchLenders < Choreography

      ####
      #  Create a new instance of the SearchLenders Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Lenders/SearchLenders")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchLendersInputSet
      ####
      def new_input_set()
        return SearchLendersInputSet.new()
      end

      def make_result_set()
        return SearchLendersResultSet.new()
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
        results = SearchLendersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchLenders
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchLendersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the CountryCode input for this Choreo. 
        # 
        # @param String - (optional, string) An ISO country code by which to filter results.
        ###

        def set_CountryCode(value)
          set_input("CountryCode", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page position of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (conditional, string) A general search query parameter which matches against lenders’ names occupations, whereabouts, and reasons for lending.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) The order by which to sort results. Acceptable values: oldest, newest. Defaults to newest.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchLenders Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchLendersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchLenders




  end # module Lenders

  module LendingActions



    ##############################################################################
    #
    # GetRecentLending
    #
    # Returns the 100 most recent loans made on Kiva by public lenders.
    #
    ##############################################################################

    class GetRecentLending < Choreography

      ####
      #  Create a new instance of the GetRecentLending Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/LendingActions/GetRecentLending")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRecentLendingInputSet
      ####
      def new_input_set()
        return GetRecentLendingInputSet.new()
      end

      def make_result_set()
        return GetRecentLendingResultSet.new()
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
        results = GetRecentLendingResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRecentLending
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRecentLendingInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRecentLending Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRecentLendingResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRecentLending




  end # module LendingActions

  module Loans



    ##############################################################################
    #
    # GetLenders
    #
    # Returns a list of public lenders to a loan.
    #
    ##############################################################################

    class GetLenders < Choreography

      ####
      #  Create a new instance of the GetLenders Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Loans/GetLenders")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLendersInputSet
      ####
      def new_input_set()
        return GetLendersInputSet.new()
      end

      def make_result_set()
        return GetLendersResultSet.new()
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
        results = GetLendersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLenders
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLendersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the LoanID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the loan for which to get details.
        ###

        def set_LoanID(value)
          set_input("LoanID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page position of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLenders Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLendersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLenders



    ##############################################################################
    #
    # GetLoanDetails
    #
    # Returns detailed information for multiple loans.
    #
    ##############################################################################

    class GetLoanDetails < Choreography

      ####
      #  Create a new instance of the GetLoanDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Loans/GetLoanDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLoanDetailsInputSet
      ####
      def new_input_set()
        return GetLoanDetailsInputSet.new()
      end

      def make_result_set()
        return GetLoanDetailsResultSet.new()
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
        results = GetLoanDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLoanDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLoanDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the LoanID input for this Choreo. 
        # 
        # @param String - (required, string) A comma-delimited list of the loan IDs for which to get details. Maximum list items: 10.
        ###

        def set_LoanID(value)
          set_input("LoanID", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLoanDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLoanDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLoanDetails



    ##############################################################################
    #
    # GetLoanUpdates
    #
    # Returns all status updates for a loan, newest first.
    #
    ##############################################################################

    class GetLoanUpdates < Choreography

      ####
      #  Create a new instance of the GetLoanUpdates Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Loans/GetLoanUpdates")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLoanUpdatesInputSet
      ####
      def new_input_set()
        return GetLoanUpdatesInputSet.new()
      end

      def make_result_set()
        return GetLoanUpdatesResultSet.new()
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
        results = GetLoanUpdatesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLoanUpdates
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLoanUpdatesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the LoanID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the loan for which to get details.
        ###

        def set_LoanID(value)
          set_input("LoanID", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLoanUpdates Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLoanUpdatesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLoanUpdates



    ##############################################################################
    #
    # GetNewestLoans
    #
    # Returns a list of the most recent fundraising loans.
    #
    ##############################################################################

    class GetNewestLoans < Choreography

      ####
      #  Create a new instance of the GetNewestLoans Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Loans/GetNewestLoans")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetNewestLoansInputSet
      ####
      def new_input_set()
        return GetNewestLoansInputSet.new()
      end

      def make_result_set()
        return GetNewestLoansResultSet.new()
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
        results = GetNewestLoansResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetNewestLoans
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetNewestLoansInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page position of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetNewestLoans Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetNewestLoansResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetNewestLoans



    ##############################################################################
    #
    # SearchLoans
    #
    # Returns a keyword search for loan listings by multiple criteria.
    #
    ##############################################################################

    class SearchLoans < Choreography

      ####
      #  Create a new instance of the SearchLoans Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Loans/SearchLoans")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchLoansInputSet
      ####
      def new_input_set()
        return SearchLoansInputSet.new()
      end

      def make_result_set()
        return SearchLoansResultSet.new()
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
        results = SearchLoansResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchLoans
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchLoansInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the CountryCode input for this Choreo. 
        # 
        # @param String - (optional, string) A list of two-character ISO codes of countries by which to filter results.
        ###

        def set_CountryCode(value)
          set_input("CountryCode", value)
        end
        #### 
        # Set the value of the Gender input for this Choreo. 
        # 
        # @param String - (optional, string) If supplied, results are filtered to loans with entrepreneurs of the specified gender. In the case of group loans, this matches against the predominate gender in the group: male or female.
        ###

        def set_Gender(value)
          set_input("Gender", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page position of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Partner input for this Choreo. 
        # 
        # @param String - (optional, string) A list of partner IDs for which to filter results.
        ###

        def set_Partner(value)
          set_input("Partner", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) A query string against which results should be returned.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the Region input for this Choreo. 
        # 
        # @param String - (optional, string) List of two-letter codes corresponding to regions in which Kiva operates. If supplied, results are filtered to loans only from the specified regions: na, ca, sa, af, as, me, ee.
        ###

        def set_Region(value)
          set_input("Region", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Sector input for this Choreo. 
        # 
        # @param String - (optional, string) A list of business sectors for which to filter results.
        ###

        def set_Sector(value)
          set_input("Sector", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) The order by which to sort results. Acceptable values: popularity, loan_amount, oldest, expiration, newest, amount_remaining, repayment_term. Defaults to newest.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end
        #### 
        # Set the value of the Status input for this Choreo. 
        # 
        # @param String - (optional, string) The status of loans to return: fundraising, funded, in_repayment, paid, ended_with_loss.
        ###

        def set_Status(value)
          set_input("Status", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchLoans Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchLoansResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchLoans




  end # module Loans

  module Partners



    ##############################################################################
    #
    # GetPartners
    #
    # Returns detailed listings of all Kiva field partners.
    #
    ##############################################################################

    class GetPartners < Choreography

      ####
      #  Create a new instance of the GetPartners Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Partners/GetPartners")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPartnersInputSet
      ####
      def new_input_set()
        return GetPartnersInputSet.new()
      end

      def make_result_set()
        return GetPartnersResultSet.new()
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
        results = GetPartnersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPartners
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPartnersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page position of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPartners Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPartnersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPartners




  end # module Partners

  module Teams



    ##############################################################################
    #
    # GetTeamByShortname
    #
    # Returns detailed information about one or more teams, using team shortnames.
    #
    ##############################################################################

    class GetTeamByShortname < Choreography

      ####
      #  Create a new instance of the GetTeamByShortname Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Teams/GetTeamByShortname")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTeamByShortnameInputSet
      ####
      def new_input_set()
        return GetTeamByShortnameInputSet.new()
      end

      def make_result_set()
        return GetTeamByShortnameResultSet.new()
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
        results = GetTeamByShortnameResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTeamByShortname
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTeamByShortnameInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the TeamShortname input for this Choreo. 
        # 
        # @param String - (required, string) The Team shortname for which to return details.
        ###

        def set_TeamShortname(value)
          set_input("TeamShortname", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTeamByShortname Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTeamByShortnameResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTeamByShortname



    ##############################################################################
    #
    # GetTeamLenders
    #
    # Returns a list of public lenders belonging to a specific team.
    #
    ##############################################################################

    class GetTeamLenders < Choreography

      ####
      #  Create a new instance of the GetTeamLenders Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Teams/GetTeamLenders")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTeamLendersInputSet
      ####
      def new_input_set()
        return GetTeamLendersInputSet.new()
      end

      def make_result_set()
        return GetTeamLendersResultSet.new()
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
        results = GetTeamLendersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTeamLenders
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTeamLendersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page position of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) The order by which to sort results: oldest  or newest. Defaults to newest.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end
        #### 
        # Set the value of the TeamID input for this Choreo. 
        # 
        # @param String - (required, string) The TeamID for which to return lenders.
        ###

        def set_TeamID(value)
          set_input("TeamID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTeamLenders Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTeamLendersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTeamLenders



    ##############################################################################
    #
    # GetTeamLoans
    #
    # Returns loans belonging to a particular team.
    #
    ##############################################################################

    class GetTeamLoans < Choreography

      ####
      #  Create a new instance of the GetTeamLoans Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Teams/GetTeamLoans")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTeamLoansInputSet
      ####
      def new_input_set()
        return GetTeamLoansInputSet.new()
      end

      def make_result_set()
        return GetTeamLoansResultSet.new()
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
        results = GetTeamLoansResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTeamLoans
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTeamLoansInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page position of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) The order by which to sort results: oldest  or newest. Defaults to newest.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end
        #### 
        # Set the value of the TeamID input for this Choreo. 
        # 
        # @param String - (required, string) The TeamID for which to return lenders.
        ###

        def set_TeamID(value)
          set_input("TeamID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTeamLoans Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTeamLoansResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTeamLoans



    ##############################################################################
    #
    # GetTeams
    #
    # Returns detailed information about one or more lending teams.
    #
    ##############################################################################

    class GetTeams < Choreography

      ####
      #  Create a new instance of the GetTeams Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Teams/GetTeams")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTeamsInputSet
      ####
      def new_input_set()
        return GetTeamsInputSet.new()
      end

      def make_result_set()
        return GetTeamsResultSet.new()
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
        results = GetTeamsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTeams
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTeamsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the TeamID input for this Choreo. 
        # 
        # @param String - (required, string) A list of team IDs for which details are to be returned. Max list items: 20.
        ###

        def set_TeamID(value)
          set_input("TeamID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTeams Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTeamsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTeams



    ##############################################################################
    #
    # SearchTeams
    #
    # Returns a keyword search of all lending teams using multiple criteria.
    #
    ##############################################################################

    class SearchTeams < Choreography

      ####
      #  Create a new instance of the SearchTeams Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Kiva/Teams/SearchTeams")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchTeamsInputSet
      ####
      def new_input_set()
        return SearchTeamsInputSet.new()
      end

      def make_result_set()
        return SearchTeamsResultSet.new()
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
        results = SearchTeamsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchTeams
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchTeamsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) Your unique application ID, usually in reverse DNS notation.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the MembershipType input for this Choreo. 
        # 
        # @param String - (optional, string) If supplied, only teams with the specified membership policy are returned: open or closed.
        ###

        def set_MembershipType(value)
          set_input("MembershipType", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page position of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) A query string against which results should be returned.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Output returned can be XML or JSON. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) The order by which to sort results. Acceptable values: popularity, loan_amount, oldest, expiration, newest, amount_remaining, repayment_term. Defaults to newest.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchTeams Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchTeamsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Kiva.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchTeams




  end # module Teams

end # module Kiva