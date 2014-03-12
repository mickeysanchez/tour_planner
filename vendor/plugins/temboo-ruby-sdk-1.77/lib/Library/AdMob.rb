require "temboo"

module AdMob



  ##############################################################################
  #
  # AdGroupSearch
  #
  # Search for Ad Groups using IDs.
  #
  ##############################################################################

  class AdGroupSearch < Choreography

    ####
    #  Create a new instance of the AdGroupSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/AdMob/AdGroupSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AdGroupSearchInputSet
    ####
    def new_input_set()
      return AdGroupSearchInputSet.new()
    end

    def make_result_set()
      return AdGroupSearchResultSet.new()
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
      results = AdGroupSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AdGroupSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AdGroupSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the AdGroupID input for this Choreo. 
      # 
      # @param String - (optional, string) Search for ad groups using this ID.
      ###

      def set_AdGroupID(value)
        set_input("AdGroupID", value)
      end
      #### 
      # Set the value of the CampaignID input for this Choreo. 
      # 
      # @param String - (optional, string) Search for ad groups in this specific campaign.
      ###

      def set_CampaignID(value)
        set_input("CampaignID", value)
      end
      #### 
      # Set the value of the ClientKey input for this Choreo. 
      # 
      # @param String - (required, string) The Client Key provided by AdMob.
      ###

      def set_ClientKey(value)
        set_input("ClientKey", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (conditional, string) Your AdMob username. Required unless providing a valid Token input.
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the IncludeDeleted input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) If set to 1, ad groups that have been deleted will be included in the search result.
      ###

      def set_IncludeDeleted(value)
        set_input("IncludeDeleted", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your Admob password. Required unless providing a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AdGroupSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AdGroupSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AdGroupSearch



  ##############################################################################
  #
  # AdGroupStats
  #
  # Search for Ad Group statistics by entering their IDs.
  #
  ##############################################################################

  class AdGroupStats < Choreography

    ####
    #  Create a new instance of the AdGroupStats Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/AdMob/AdGroupStats")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AdGroupStatsInputSet
    ####
    def new_input_set()
      return AdGroupStatsInputSet.new()
    end

    def make_result_set()
      return AdGroupStatsResultSet.new()
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
      results = AdGroupStatsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AdGroupStats
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AdGroupStatsInputSet < Choreography::InputSet

      #### 
      # Set the value of the AdGroupID input for this Choreo. 
      # 
      # @param String - (required, string) Search for ad groups using this ID.
      ###

      def set_AdGroupID(value)
        set_input("AdGroupID", value)
      end
      #### 
      # Set the value of the ClientKey input for this Choreo. 
      # 
      # @param String - (required, string) The Client Key provided by AdMob.
      ###

      def set_ClientKey(value)
        set_input("ClientKey", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (conditional, string) Your AdMob username. Required unless providing a valid Token input.
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the EndDate input for this Choreo. 
      # 
      # @param String - (required, date) Enter search end date in following format: 2011-09-12
      ###

      def set_EndDate(value)
        set_input("EndDate", value)
      end
      #### 
      # Set the value of the ObjectDimension input for this Choreo. 
      # 
      # @param String - (optional, string) Specify an Ad group to narrow your search.
      ###

      def set_ObjectDimension(value)
        set_input("ObjectDimension", value)
      end
      #### 
      # Set the value of the OrderBy input for this Choreo. 
      # 
      # @param String - (optional, string) Order by the number of impressions. Example: [impressions]=asc
      ###

      def set_OrderBy(value)
        set_input("OrderBy", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your Admob password. Required unless providing a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (required, date) Enter search start date in following format: 2011-09-12
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end
      #### 
      # Set the value of the TimeDimension input for this Choreo. 
      # 
      # @param String - (optional, string) Specify whether stats should be grouped by day, week, or month.
      ###

      def set_TimeDimension(value)
        set_input("TimeDimension", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AdGroupStats Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AdGroupStatsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AdGroupStats



  ##############################################################################
  #
  # AdSearch
  #
  # Search for ads using IDs.
  #
  ##############################################################################

  class AdSearch < Choreography

    ####
    #  Create a new instance of the AdSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/AdMob/AdSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AdSearchInputSet
    ####
    def new_input_set()
      return AdSearchInputSet.new()
    end

    def make_result_set()
      return AdSearchResultSet.new()
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
      results = AdSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AdSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AdSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the AdGroupID input for this Choreo. 
      # 
      # @param String - (optional, string) Search for ad groups using this ID.
      ###

      def set_AdGroupID(value)
        set_input("AdGroupID", value)
      end
      #### 
      # Set the value of the AdID input for this Choreo. 
      # 
      # @param String - (optional, string) Search for ads using this ID.
      ###

      def set_AdID(value)
        set_input("AdID", value)
      end
      #### 
      # Set the value of the ClientKey input for this Choreo. 
      # 
      # @param String - (required, string) The Client Key provided by AdMob.
      ###

      def set_ClientKey(value)
        set_input("ClientKey", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (conditional, string) Your AdMob username. Required unless providing a valid Token input.
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the IncludeDeleted input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) If set to 1, ad groups that have been deleted will be included in the search result.
      ###

      def set_IncludeDeleted(value)
        set_input("IncludeDeleted", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your Admob password. Required unless providing a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AdSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AdSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    end

  end # class AdSearch



  ##############################################################################
  #
  # AdStats
  #
  # Retrieve ad statistics by specifying IDs.
  #
  ##############################################################################

  class AdStats < Choreography

    ####
    #  Create a new instance of the AdStats Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/AdMob/AdStats")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AdStatsInputSet
    ####
    def new_input_set()
      return AdStatsInputSet.new()
    end

    def make_result_set()
      return AdStatsResultSet.new()
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
      results = AdStatsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AdStats
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AdStatsInputSet < Choreography::InputSet

      #### 
      # Set the value of the AdID input for this Choreo. 
      # 
      # @param String - (required, string) Search for ads using this ID.
      ###

      def set_AdID(value)
        set_input("AdID", value)
      end
      #### 
      # Set the value of the ClientKey input for this Choreo. 
      # 
      # @param String - (required, string) The Client Key provided by AdMob.
      ###

      def set_ClientKey(value)
        set_input("ClientKey", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (conditional, string) Your AdMob username. Required unless providing a valid Token input.
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the EndDate input for this Choreo. 
      # 
      # @param String - (required, date) Enter search end date in following format: 2011-09-12
      ###

      def set_EndDate(value)
        set_input("EndDate", value)
      end
      #### 
      # Set the value of the ObjectDimension input for this Choreo. 
      # 
      # @param String - (optional, string) Specify a specific Ad to narrow your search.
      ###

      def set_ObjectDimension(value)
        set_input("ObjectDimension", value)
      end
      #### 
      # Set the value of the OrderBy input for this Choreo. 
      # 
      # @param String - (optional, string) Order by the number of impressions. Example: [impressions]=asc
      ###

      def set_OrderBy(value)
        set_input("OrderBy", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your Admob password. Required unless providing a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (required, date) Enter search start date in following format: 2011-09-12
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end
      #### 
      # Set the value of the TimeDimension input for this Choreo. 
      # 
      # @param String - (optional, string) Specify whether stats should be grouped by day, week, or month.
      ###

      def set_TimeDimension(value)
        set_input("TimeDimension", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AdStats Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AdStatsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AdStats



  ##############################################################################
  #
  # CampaignSearch
  #
  # Search for ad campaigns using IDs.
  #
  ##############################################################################

  class CampaignSearch < Choreography

    ####
    #  Create a new instance of the CampaignSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/AdMob/CampaignSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CampaignSearchInputSet
    ####
    def new_input_set()
      return CampaignSearchInputSet.new()
    end

    def make_result_set()
      return CampaignSearchResultSet.new()
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
      results = CampaignSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CampaignSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CampaignSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the CampaignID input for this Choreo. 
      # 
      # @param String - (optional, string) Search for ad campaigns using this ID.
      ###

      def set_CampaignID(value)
        set_input("CampaignID", value)
      end
      #### 
      # Set the value of the ClientKey input for this Choreo. 
      # 
      # @param String - (required, string) The Client Key provided by AdMob.
      ###

      def set_ClientKey(value)
        set_input("ClientKey", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (conditional, string) Your AdMob username. Required unless providing a valid Token input.
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the IncludeDeleted input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) If set to 1, ad groups that have been deleted will be included in the search result.
      ###

      def set_IncludeDeleted(value)
        set_input("IncludeDeleted", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your Admob password. Required unless providing a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CampaignSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CampaignSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    end

  end # class CampaignSearch



  ##############################################################################
  #
  # CampaignStats
  #
  # Retrieve campaign stats by ID.
  #
  ##############################################################################

  class CampaignStats < Choreography

    ####
    #  Create a new instance of the CampaignStats Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/AdMob/CampaignStats")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CampaignStatsInputSet
    ####
    def new_input_set()
      return CampaignStatsInputSet.new()
    end

    def make_result_set()
      return CampaignStatsResultSet.new()
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
      results = CampaignStatsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CampaignStats
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CampaignStatsInputSet < Choreography::InputSet

      #### 
      # Set the value of the CampaignID input for this Choreo. 
      # 
      # @param String - (required, string) Search for ad campaigns using this ID.
      ###

      def set_CampaignID(value)
        set_input("CampaignID", value)
      end
      #### 
      # Set the value of the ClientKey input for this Choreo. 
      # 
      # @param String - (required, string) The Client Key provided by AdMob.
      ###

      def set_ClientKey(value)
        set_input("ClientKey", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (conditional, string) Your AdMob username. Required unless providing a valid Token input.
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the EndDate input for this Choreo. 
      # 
      # @param String - (required, date) Enter search end date in following format: 2011-09-12
      ###

      def set_EndDate(value)
        set_input("EndDate", value)
      end
      #### 
      # Set the value of the ObjectDimension input for this Choreo. 
      # 
      # @param String - (optional, string) Specify a campaign to group and narrow your search.
      ###

      def set_ObjectDimension(value)
        set_input("ObjectDimension", value)
      end
      #### 
      # Set the value of the OrderBy input for this Choreo. 
      # 
      # @param String - (optional, string) Order by the number of impressions. Example: [impressions]=asc
      ###

      def set_OrderBy(value)
        set_input("OrderBy", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your Admob password. Required unless providing a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (required, date) Enter search start date in following format: 2011-09-12
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end
      #### 
      # Set the value of the TimeDimension input for this Choreo. 
      # 
      # @param String - (optional, string) Specify whether stats should be grouped by day, week, or month.
      ###

      def set_TimeDimension(value)
        set_input("TimeDimension", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CampaignStats Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CampaignStatsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CampaignStats



  ##############################################################################
  #
  # Login
  #
  # Log into AdMob service and obtain an authorization token.
  #
  ##############################################################################

  class Login < Choreography

    ####
    #  Create a new instance of the Login Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/AdMob/Login")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return LoginInputSet
    ####
    def new_input_set()
      return LoginInputSet.new()
    end

    def make_result_set()
      return LoginResultSet.new()
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
      results = LoginResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Login
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class LoginInputSet < Choreography::InputSet

      #### 
      # Set the value of the ClientKey input for this Choreo. 
      # 
      # @param String - (required, string) The Client Key provided by AdMob.
      ###

      def set_ClientKey(value)
        set_input("ClientKey", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (required, string) Your AdMob username.
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your Admob password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Login Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class LoginResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (string) The token obtained by running this choreo.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from AdMob in XML format
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Login



  ##############################################################################
  #
  # Logout
  #
  # Logout from AdMob service.
  #
  ##############################################################################

  class Logout < Choreography

    ####
    #  Create a new instance of the Logout Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/AdMob/Logout")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return LogoutInputSet
    ####
    def new_input_set()
      return LogoutInputSet.new()
    end

    def make_result_set()
      return LogoutResultSet.new()
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
      results = LogoutResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Logout
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class LogoutInputSet < Choreography::InputSet

      #### 
      # Set the value of the ClientKey input for this Choreo. 
      # 
      # @param String - (required, string) The Client Key provided by AdMob.
      ###

      def set_ClientKey(value)
        set_input("ClientKey", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (required, string) The security token returned by the Login Choreo.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Logout Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class LogoutResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from AdMob in XML format
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Logout



  ##############################################################################
  #
  # SiteSearch
  #
  # Search for sites by specifying their ID.
  #
  ##############################################################################

  class SiteSearch < Choreography

    ####
    #  Create a new instance of the SiteSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/AdMob/SiteSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SiteSearchInputSet
    ####
    def new_input_set()
      return SiteSearchInputSet.new()
    end

    def make_result_set()
      return SiteSearchResultSet.new()
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
      results = SiteSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SiteSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SiteSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the ClientKey input for this Choreo. 
      # 
      # @param String - (required, string) The Client Key provided by AdMob.
      ###

      def set_ClientKey(value)
        set_input("ClientKey", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (conditional, string) Your AdMob username. Required unless providing a valid Token input.
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the IncludeDeleted input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) If set to 1, ad groups that have been deleted will be included in the search result.
      ###

      def set_IncludeDeleted(value)
        set_input("IncludeDeleted", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your Admob password. Required unless providing a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the SiteID input for this Choreo. 
      # 
      # @param String - (optional, string) Search for a site matching this ID.
      ###

      def set_SiteID(value)
        set_input("SiteID", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SiteSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SiteSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SiteSearch



  ##############################################################################
  #
  # SiteStats
  #
  # Retrieve site statistics.
  #
  ##############################################################################

  class SiteStats < Choreography

    ####
    #  Create a new instance of the SiteStats Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/AdMob/SiteStats")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SiteStatsInputSet
    ####
    def new_input_set()
      return SiteStatsInputSet.new()
    end

    def make_result_set()
      return SiteStatsResultSet.new()
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
      results = SiteStatsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SiteStats
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SiteStatsInputSet < Choreography::InputSet

      #### 
      # Set the value of the ClientKey input for this Choreo. 
      # 
      # @param String - (required, string) The Client Key provided by AdMob.
      ###

      def set_ClientKey(value)
        set_input("ClientKey", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (conditional, string) Your AdMob username. Required unless providing a valid Token input.
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the EndDate input for this Choreo. 
      # 
      # @param String - (required, date) Enter search end date in following format: 2011-09-12
      ###

      def set_EndDate(value)
        set_input("EndDate", value)
      end
      #### 
      # Set the value of the ObjectDimension input for this Choreo. 
      # 
      # @param String - (optional, string) Specify a site to group and narrow your search.
      ###

      def set_ObjectDimension(value)
        set_input("ObjectDimension", value)
      end
      #### 
      # Set the value of the OrderBy input for this Choreo. 
      # 
      # @param String - (optional, string) Order by the number of impressions. Example: [impressions]=asc
      ###

      def set_OrderBy(value)
        set_input("OrderBy", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (conditional, password) Your Admob password. Required unless providing a valid Token input.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the SiteID input for this Choreo. 
      # 
      # @param String - (optional, string) Search for a site matching this ID.
      ###

      def set_SiteID(value)
        set_input("SiteID", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (required, date) Enter search start date in following format: 2011-09-12
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end
      #### 
      # Set the value of the TimeDimension input for this Choreo. 
      # 
      # @param String - (optional, string) Specify whether stats should be grouped by day, week, or month.
      ###

      def set_TimeDimension(value)
        set_input("TimeDimension", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SiteStats Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SiteStatsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Token" output from this Choreo execution
    	#
    	# @return String - (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
    	####
    	def get_Token()
    	  return @outputs["Token"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SiteStats




end # module AdMob