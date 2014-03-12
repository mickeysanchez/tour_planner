require "temboo"

module MailChimp



  ##############################################################################
  #
  # ListBatchSubscribe
  #
  # Adds or updates multiple Mailchimp list subscribers.
  #
  ##############################################################################

  class ListBatchSubscribe < Choreography

    ####
    #  Create a new instance of the ListBatchSubscribe Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MailChimp/ListBatchSubscribe")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListBatchSubscribeInputSet
    ####
    def new_input_set()
      return ListBatchSubscribeInputSet.new()
    end

    def make_result_set()
      return ListBatchSubscribeResultSet.new()
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
      results = ListBatchSubscribeResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListBatchSubscribe
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListBatchSubscribeInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Mailchimp
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the DoubleOptIn input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Flag to control whether a double opt-in confirmation message is sent. Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_DoubleOptIn(value)
        set_input("DoubleOptIn", value)
      end
      #### 
      # Set the value of the EmailType input for this Choreo. 
      # 
      # @param String - (optional, string) Must be one of 'text', 'html', or 'mobile'. Defaults to html.
      ###

      def set_EmailType(value)
        set_input("EmailType", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param String - (required, string) The id of the Mailchimp list the subscribers will be added to.
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the ReplaceInterests input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A flag to determine whether to replace the interest groups with the groups provided or add the provided groups to the member's interest groups. Specify '1' (true) or '0' (false). Defaults to 1.
      ###

      def set_ReplaceInterests(value)
        set_input("ReplaceInterests", value)
      end
      #### 
      # Set the value of the SendWelcome input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) If double_optin is false and this flag is true, a welcome email will be sent. Note that this does not apply when updating records. Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_SendWelcome(value)
        set_input("SendWelcome", value)
      end
      #### 
      # Set the value of the Subscribers input for this Choreo. 
      # 
      # @param String - (required, json) An array of JSON objects containing the subscribers to insert. See Choreo documentation for the specific format for this JSON input.
      ###

      def set_Subscribers(value)
        set_input("Subscribers", value)
      end
      #### 
      # Set the value of the SupressErrors input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Whether or not to suppress errors that arise from attempting to add/update a subscriber. Defaults to 0 (false). Set to 1 (true) to supress errors.
      ###

      def set_SupressErrors(value)
        set_input("SupressErrors", value)
      end
      #### 
      # Set the value of the UpdateExisting input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates that if the email already exists, this request will perform an update instead of an insert. Specify '1' (true) or '0' (false). Defaults to 1.
      ###

      def set_UpdateExisting(value)
        set_input("UpdateExisting", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListBatchSubscribe Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListBatchSubscribeResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "ErrorList" output from this Choreo execution
    	#
    	# @return String - (json) A list of emails that were not successfully subscribed.
    	####
    	def get_ErrorList()
    	  return @outputs["ErrorList"]
    	end
    	####
    	# Retrieve the value for the "SuccessList" output from this Choreo execution
    	#
    	# @return String - (json) A list of email successfully subscribed.
    	####
    	def get_SuccessList()
    	  return @outputs["SuccessList"]
    	end
    end

  end # class ListBatchSubscribe



  ##############################################################################
  #
  # ListBatchSubscribeCSV
  #
  # Adds or updates multiple subscribers in a given CSV file.
  #
  ##############################################################################

  class ListBatchSubscribeCSV < Choreography

    ####
    #  Create a new instance of the ListBatchSubscribeCSV Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MailChimp/ListBatchSubscribeCSV")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListBatchSubscribeCSVInputSet
    ####
    def new_input_set()
      return ListBatchSubscribeCSVInputSet.new()
    end

    def make_result_set()
      return ListBatchSubscribeCSVResultSet.new()
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
      results = ListBatchSubscribeCSVResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListBatchSubscribeCSV
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListBatchSubscribeCSVInputSet < Choreography::InputSet

      #### 
      # Set the value of the CSVFile input for this Choreo. 
      # 
      # @param String - (conditional, multiline) The list of subscriber email addresses to unsubscribe in CSV format.
      ###

      def set_CSVFile(value)
        set_input("CSVFile", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Mailchimp
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the DoubleOptIn input for this Choreo. 
      # 
      # @param Boolean - (conditional, boolean) Flag to control whether a double opt-in confirmation message is sent. Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_DoubleOptIn(value)
        set_input("DoubleOptIn", value)
      end
      #### 
      # Set the value of the EmailType input for this Choreo. 
      # 
      # @param String - (optional, string) Must be one of 'text', 'html', or 'mobile'. Defaults to html.
      ###

      def set_EmailType(value)
        set_input("EmailType", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param String - (required, string) The id of the Mailchimp list associated with the email addresses to subscribe.
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the ReplaceInterests input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A flag to determine whether to replace the interest groups with the groups provided or add the provided groups to the member's interest groups. Specify '1' (true) or '0' (false). Defaults to 1.
      ###

      def set_ReplaceInterests(value)
        set_input("ReplaceInterests", value)
      end
      #### 
      # Set the value of the SupressErrors input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Whether or not to suppress errors that arise from attempting to add/update a subscriber. Defaults to 0 (false). Set to 1 (true) to supress errors.
      ###

      def set_SupressErrors(value)
        set_input("SupressErrors", value)
      end
      #### 
      # Set the value of the UpdateExisting input for this Choreo. 
      # 
      # @param Boolean - (conditional, boolean) Indicates that if the email already exists, this request will perform an update instead of an insert. Specify '1' (true) or '0' (false). Defaults to 1.
      ###

      def set_UpdateExisting(value)
        set_input("UpdateExisting", value)
      end
      #### 
      # Set the value of the VaultFile input for this Choreo. 
      # 
      # @param TembooPath - A path to a csv file in the vault containing the email addresses to unsubscribe. Can be used as an alternative to the CSVFile input.
      ###

      def set_VaultFile(value)
        set_alias("VaultFile", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListBatchSubscribeCSV Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListBatchSubscribeCSVResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "ErrorList" output from this Choreo execution
    	#
    	# @return String - (multiline) A list of emails that were not successfully subscribed.
    	####
    	def get_ErrorList()
    	  return @outputs["ErrorList"]
    	end
    	####
    	# Retrieve the value for the "SuccessList" output from this Choreo execution
    	#
    	# @return String - (multiline) A list of email successfully subscribed.
    	####
    	def get_SuccessList()
    	  return @outputs["SuccessList"]
    	end
    end

  end # class ListBatchSubscribeCSV



  ##############################################################################
  #
  # ListBatchUnsubscribe
  #
  # Unsubscribes one or more members from a MailChimp list.
  #
  ##############################################################################

  class ListBatchUnsubscribe < Choreography

    ####
    #  Create a new instance of the ListBatchUnsubscribe Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MailChimp/ListBatchUnsubscribe")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListBatchUnsubscribeInputSet
    ####
    def new_input_set()
      return ListBatchUnsubscribeInputSet.new()
    end

    def make_result_set()
      return ListBatchUnsubscribeResultSet.new()
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
      results = ListBatchUnsubscribeResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListBatchUnsubscribe
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListBatchUnsubscribeInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Mailchimp
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the DeleteMember input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A flag used to completely delete the member from your list instead of just unsubscribing. Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_DeleteMember(value)
        set_input("DeleteMember", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (required, string) The email address to unsubscribe from a Mailchimp list . Multiple emails can be supplied separated by commas.
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param String - (required, string) The Mailchimp List ID
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the SendGoodbye input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A flag used to send the goodbye email to the email address. Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_SendGoodbye(value)
        set_input("SendGoodbye", value)
      end
      #### 
      # Set the value of the SendNotify input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A flag used to send the unsubscribe notification email to the address defined in the list email notification settings. Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_SendNotify(value)
        set_input("SendNotify", value)
      end
      #### 
      # Set the value of the SupressErrors input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Whether or not to suppress errors that arise from attempting to unsubscribe an email address. Defaults to 0 (false). Set to 1 (true) to supress errors.
      ###

      def set_SupressErrors(value)
        set_input("SupressErrors", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListBatchUnsubscribe Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListBatchUnsubscribeResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "ErrorList" output from this Choreo execution
    	#
    	# @return String - (json) A list of emails that were not successfully unsubscribed.
    	####
    	def get_ErrorList()
    	  return @outputs["ErrorList"]
    	end
    	####
    	# Retrieve the value for the "SuccessList" output from this Choreo execution
    	#
    	# @return String - (json) A list of email successfully unsubscribed.
    	####
    	def get_SuccessList()
    	  return @outputs["SuccessList"]
    	end
    end

  end # class ListBatchUnsubscribe



  ##############################################################################
  #
  # ListBatchUnsubscribeCSV
  #
  # Unsubscribes one or more members listed in a CSV file from a MailChimp list.
  #
  ##############################################################################

  class ListBatchUnsubscribeCSV < Choreography

    ####
    #  Create a new instance of the ListBatchUnsubscribeCSV Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MailChimp/ListBatchUnsubscribeCSV")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListBatchUnsubscribeCSVInputSet
    ####
    def new_input_set()
      return ListBatchUnsubscribeCSVInputSet.new()
    end

    def make_result_set()
      return ListBatchUnsubscribeCSVResultSet.new()
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
      results = ListBatchUnsubscribeCSVResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListBatchUnsubscribeCSV
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListBatchUnsubscribeCSVInputSet < Choreography::InputSet

      #### 
      # Set the value of the CSVFile input for this Choreo. 
      # 
      # @param String - (conditional, multiline) The list of subscriber email addresses to unsubscribe in CSV format.
      ###

      def set_CSVFile(value)
        set_input("CSVFile", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Mailchimp
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the DeleteMember input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A flag used to completely delete the member from your list instead of just unsubscribing. Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_DeleteMember(value)
        set_input("DeleteMember", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param String - (required, string) The id of the Mailchimp list associated with the email addresses to unsubscribe.
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the SendGoodbye input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A flag used to send the goodbye email to the email address. Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_SendGoodbye(value)
        set_input("SendGoodbye", value)
      end
      #### 
      # Set the value of the SendNotify input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A flag used to send the unsubscribe notification email to the address defined in the list email notification settings. Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_SendNotify(value)
        set_input("SendNotify", value)
      end
      #### 
      # Set the value of the SupressErrors input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Whether or not to suppress errors that arise from attempting to unsubscribe an email address. Defaults to 0 (false). Set to 1 (true) to supress errors.
      ###

      def set_SupressErrors(value)
        set_input("SupressErrors", value)
      end
      #### 
      # Set the value of the VaultFile input for this Choreo. 
      # 
      # @param TembooPath - A path to a csv file in the vault containing the email addresses to unsubscribe. Can be used as an alternative to the CSVFile input.
      ###

      def set_VaultFile(value)
        set_alias("VaultFile", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListBatchUnsubscribeCSV Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListBatchUnsubscribeCSVResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "SuccessList" output from this Choreo execution
    	#
    	# @return String - (multiline) A list of email successfully unsubscribed.
    	####
    	def get_SuccessList()
    	  return @outputs["SuccessList"]
    	end
    	####
    	# Retrieve the value for the "ErrorList" output from this Choreo execution
    	#
    	# @return String - (multiline) A list of emails that were not successfully unsubscribed.
    	####
    	def get_ErrorList()
    	  return @outputs["ErrorList"]
    	end
    end

  end # class ListBatchUnsubscribeCSV



  ##############################################################################
  #
  # ListMemberInfo
  #
  # Get information for a member of a MailChimp list.
  #
  ##############################################################################

  class ListMemberInfo < Choreography

    ####
    #  Create a new instance of the ListMemberInfo Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MailChimp/ListMemberInfo")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListMemberInfoInputSet
    ####
    def new_input_set()
      return ListMemberInfoInputSet.new()
    end

    def make_result_set()
      return ListMemberInfoResultSet.new()
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
      results = ListMemberInfoResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListMemberInfo
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListMemberInfoInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Mailchimp.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the EmailAddress input for this Choreo. 
      # 
      # @param String - (required, string) The email address to use when searching for a Mailchimp member.
      ###

      def set_EmailAddress(value)
        set_input("EmailAddress", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param String - (required, string) The id of the Mailchimp list associated with the member you want to retrieve.
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Indicates the desired format for the response. Accepted values are "json" or "xml" (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListMemberInfo Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListMemberInfoResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Mailchimp. Corresponds to the format specified in the ResponseFormat parameter. Defaults to "xml".
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListMemberInfo



  ##############################################################################
  #
  # ListMembers
  #
  # Retrieves the email addresses of members of a MailChimp list. 
  #
  ##############################################################################

  class ListMembers < Choreography

    ####
    #  Create a new instance of the ListMembers Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MailChimp/ListMembers")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListMembersInputSet
    ####
    def new_input_set()
      return ListMembersInputSet.new()
    end

    def make_result_set()
      return ListMembersResultSet.new()
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
      results = ListMembersResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListMembers
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListMembersInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Mailchimp.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specifies the number of records in a page to be returned. Must be greater than zero and less than or equal to 15000. Defaults to 100.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param String - (required, string) The id of the Mailchimp list to retrieve members from.
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Indicates the desired format for the response. Accepted values are "json" or "xml" (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Since input for this Choreo. 
      # 
      # @param String - (optional, date) Retrieves records that have changed since this date/time. Formatted like 'YYYY-MM-DD HH:MM:SS.
      ###

      def set_Since(value)
        set_input("Since", value)
      end
      #### 
      # Set the value of the Start input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specifies the page at which to begin returning records. Page size is defined by the limit argument. Must be zero or greater. Defaults to 0.
      ###

      def set_Start(value)
        set_input("Start", value)
      end
      #### 
      # Set the value of the Status input for this Choreo. 
      # 
      # @param String - (optional, string) Must be one of 'subscribed', 'unsubscribed', 'cleaned', or 'updated'. Defaults to 'subscribed'.
      ###

      def set_Status(value)
        set_input("Status", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListMembers Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListMembersResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Mailchimp. Corresponds to the format specified in the ResponseFormat parameter. Defaults to "xml".
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListMembers



  ##############################################################################
  #
  # ListMergeVarAdd
  #
  # Add a new field to a MailChimp list.
  #
  ##############################################################################

  class ListMergeVarAdd < Choreography

    ####
    #  Create a new instance of the ListMergeVarAdd Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MailChimp/ListMergeVarAdd")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListMergeVarAddInputSet
    ####
    def new_input_set()
      return ListMergeVarAddInputSet.new()
    end

    def make_result_set()
      return ListMergeVarAddResultSet.new()
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
      results = ListMergeVarAddResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListMergeVarAdd
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListMergeVarAddInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Mailchimp.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Choices input for this Choreo. 
      # 
      # @param String - (optional, string) A list of up to 10 choices for radio and dropdown type fields )separated by commas).
      ###

      def set_Choices(value)
        set_input("Choices", value)
      end
      #### 
      # Set the value of the DateFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Valid for birthday and date fields. For birthday, must be "MM/DD" (default) or "DD/MM". For date type, must be "MM/DD/YYYY" (default) or "DD/MM/YYYY".
      ###

      def set_DateFormat(value)
        set_input("DateFormat", value)
      end
      #### 
      # Set the value of the DefaultCountry input for this Choreo. 
      # 
      # @param String - (optional, string) The ISO 3166 2 digit character code for the default country. Defaults to "US".
      ###

      def set_DefaultCountry(value)
        set_input("DefaultCountry", value)
      end
      #### 
      # Set the value of the DefaultValue input for this Choreo. 
      # 
      # @param String - (optional, string) The default value for the new field.
      ###

      def set_DefaultValue(value)
        set_input("DefaultValue", value)
      end
      #### 
      # Set the value of the FieldType input for this Choreo. 
      # 
      # @param String - (optional, string) Must be either left unset or one of 'text', 'number', 'radio', 'dropdown', 'date', 'address', 'phone', 'url', or 'imageurl. Defaults to text.
      ###

      def set_FieldType(value)
        set_input("FieldType", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the list on which to add the new merge var.
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the Name input for this Choreo. 
      # 
      # @param String - (required, string) Provide a long merge var name for user display (i.e. First Name)
      ###

      def set_Name(value)
        set_input("Name", value)
      end
      #### 
      # Set the value of the PhoneFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Defaults to "US"  - any other value will cause them to be unformatted (international).
      ###

      def set_PhoneFormat(value)
        set_input("PhoneFormat", value)
      end
      #### 
      # Set the value of the Public input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the field is displayed in public. Specify '1' (true) or '0' (false). Defaults to 1.
      ###

      def set_Public(value)
        set_input("Public", value)
      end
      #### 
      # Set the value of the Req input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates that the field will be required.  Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_Req(value)
        set_input("Req", value)
      end
      #### 
      # Set the value of the Show input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the field is displayed in the app's list member view.  Specify '1' (true) or '0' (false). Defaults to 1.
      ###

      def set_Show(value)
        set_input("Show", value)
      end
      #### 
      # Set the value of the Tag input for this Choreo. 
      # 
      # @param String - (required, string) Provide a short merge var tag name. MUST be 10 UTF-8 chars, including 'A-Z', '0-9', or '_' only (i.e. DESC123456).
      ###

      def set_Tag(value)
        set_input("Tag", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListMergeVarAdd Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListMergeVarAddResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (boolean) The response from Mailchimp. Returns the string "true" for success and an error description for failures.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListMergeVarAdd



  ##############################################################################
  #
  # ListMergeVarDel
  #
  # Remove a field name from a MailChimp list.
  #
  ##############################################################################

  class ListMergeVarDel < Choreography

    ####
    #  Create a new instance of the ListMergeVarDel Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MailChimp/ListMergeVarDel")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListMergeVarDelInputSet
    ####
    def new_input_set()
      return ListMergeVarDelInputSet.new()
    end

    def make_result_set()
      return ListMergeVarDelResultSet.new()
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
      results = ListMergeVarDelResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListMergeVarDel
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListMergeVarDelInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Mailchimp.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param String - (required, string) The id of the Mailchimp list associated with the merge var you want to delete.
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the Tag input for this Choreo. 
      # 
      # @param String - (required, string) Provide a valid merge var tag. A merge var tag can be retrieved by calling listMergeVars() or by logging in to your account.
      ###

      def set_Tag(value)
        set_input("Tag", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListMergeVarDel Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListMergeVarDelResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Mailchimp. Returns the string "true" for success and an error description for failures.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListMergeVarDel



  ##############################################################################
  #
  # ListMergeVars
  #
  # Get field names from a MailChimp list.
  #
  ##############################################################################

  class ListMergeVars < Choreography

    ####
    #  Create a new instance of the ListMergeVars Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MailChimp/ListMergeVars")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListMergeVarsInputSet
    ####
    def new_input_set()
      return ListMergeVarsInputSet.new()
    end

    def make_result_set()
      return ListMergeVarsResultSet.new()
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
      results = ListMergeVarsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListMergeVars
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListMergeVarsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Mailchimp.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param String - (required, string) The id of the Mailchimp list associated with the merge vars to retrieve.
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Indicates the desired format for the response. Accepted values are "json" or "xml" (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListMergeVars Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListMergeVarsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Mailchimp. Corresponds to the format specified in the ResponseFormat parameter. Defaults to "xml".
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListMergeVars



  ##############################################################################
  #
  # ListSubscribe
  #
  # Adds a subscriber to a MailChimp list.
  #
  ##############################################################################

  class ListSubscribe < Choreography

    ####
    #  Create a new instance of the ListSubscribe Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MailChimp/ListSubscribe")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListSubscribeInputSet
    ####
    def new_input_set()
      return ListSubscribeInputSet.new()
    end

    def make_result_set()
      return ListSubscribeResultSet.new()
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
      results = ListSubscribeResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListSubscribe
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListSubscribeInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Mailchimp.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the DoubleOptIn input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Flag to control whether a double opt-in confirmation message is sent. Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_DoubleOptIn(value)
        set_input("DoubleOptIn", value)
      end
      #### 
      # Set the value of the EmailAddress input for this Choreo. 
      # 
      # @param String - (conditional, string) The email address for the subscriber you want to create. Required unless the email address is included in the MergeVars input as part of your JSON object.
      ###

      def set_EmailAddress(value)
        set_input("EmailAddress", value)
      end
      #### 
      # Set the value of the EmailType input for this Choreo. 
      # 
      # @param String - (optional, string) Must be one of 'text', 'html', or 'mobile'. Defaults to html.
      ###

      def set_EmailType(value)
        set_input("EmailType", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param String - (required, string) The id of the list that the subsbriber will be added to.
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the MergeVars input for this Choreo. 
      # 
      # @param String - (conditional, json) A JSON object of the merge fields for this subscriber. If the subscriber email address is not provided for the EmailAddress input, it must be specified here.
      ###

      def set_MergeVars(value)
        set_input("MergeVars", value)
      end
      #### 
      # Set the value of the ReplaceInterests input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A flag to determine whether to replace the interest groups with the groups provided or add the provided groups to the member's interest groups. Specify '1' (true) or '0' (false). Defaults to 1.
      ###

      def set_ReplaceInterests(value)
        set_input("ReplaceInterests", value)
      end
      #### 
      # Set the value of the SendWelcome input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) If double_optin is false and this flag is true, a welcome email will be sent. Note that this does not apply when updating records. Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_SendWelcome(value)
        set_input("SendWelcome", value)
      end
      #### 
      # Set the value of the UpdateExisting input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates that if the email already exists, this request will perform an update instead of an insert. Specify '1' (true) or '0' (false). Defaults to 1.
      ###

      def set_UpdateExisting(value)
        set_input("UpdateExisting", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListSubscribe Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListSubscribeResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Mailchimp. Returns the string "true" for success and an error description for failures.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListSubscribe



  ##############################################################################
  #
  # ListUnsubscribe
  #
  # Remove a subscriber from a MailChimp list.
  #
  ##############################################################################

  class ListUnsubscribe < Choreography

    ####
    #  Create a new instance of the ListUnsubscribe Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MailChimp/ListUnsubscribe")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListUnsubscribeInputSet
    ####
    def new_input_set()
      return ListUnsubscribeInputSet.new()
    end

    def make_result_set()
      return ListUnsubscribeResultSet.new()
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
      results = ListUnsubscribeResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListUnsubscribe
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListUnsubscribeInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Mailchimp.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the DeleteMember input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A flag used to completely delete the member from your list instead of just unsubscribing. Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_DeleteMember(value)
        set_input("DeleteMember", value)
      end
      #### 
      # Set the value of the EmailAddress input for this Choreo. 
      # 
      # @param String - (required, string) The email address to unsubscribe.
      ###

      def set_EmailAddress(value)
        set_input("EmailAddress", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param String - (required, string) The id of the list that contains the email address you want to unsubscribe.
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the SendGoodbye input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A flag used to send the goodbye email to the email address. Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_SendGoodbye(value)
        set_input("SendGoodbye", value)
      end
      #### 
      # Set the value of the SendNotify input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A flag used to send the unsubscribe notification email to the address defined in the list email notification settings. Specify '1' (true) or '0' (false). Defaults to 0.
      ###

      def set_SendNotify(value)
        set_input("SendNotify", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListUnsubscribe Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListUnsubscribeResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Mailchimp. Returns the string "true" for success and an error description for failures.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListUnsubscribe



  ##############################################################################
  #
  # ListUpdateMember
  #
  # Update information for a member of a MailChimp list.
  #
  ##############################################################################

  class ListUpdateMember < Choreography

    ####
    #  Create a new instance of the ListUpdateMember Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MailChimp/ListUpdateMember")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListUpdateMemberInputSet
    ####
    def new_input_set()
      return ListUpdateMemberInputSet.new()
    end

    def make_result_set()
      return ListUpdateMemberResultSet.new()
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
      results = ListUpdateMemberResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListUpdateMember
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListUpdateMemberInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Mailchimp.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the EmailAddress input for this Choreo. 
      # 
      # @param String - (required, string) The current email address for the subscriber you want to update.
      ###

      def set_EmailAddress(value)
        set_input("EmailAddress", value)
      end
      #### 
      # Set the value of the EmailType input for this Choreo. 
      # 
      # @param String - (optional, string) Must be one of 'text', 'html', or 'mobile'. Defaults to html.
      ###

      def set_EmailType(value)
        set_input("EmailType", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param String - (required, string) The id of the list that the existing subsbriber belongs to.
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the Merge1 input for this Choreo. 
      # 
      # @param String - (optional, string) Corresponds to the first merge var field defined in your account.
      ###

      def set_Merge1(value)
        set_input("Merge1", value)
      end
      #### 
      # Set the value of the Merge2 input for this Choreo. 
      # 
      # @param String - (optional, string) Corresponds to the second merge var field defined in your account.
      ###

      def set_Merge2(value)
        set_input("Merge2", value)
      end
      #### 
      # Set the value of the Merge3 input for this Choreo. 
      # 
      # @param String - (optional, string) Corresponds to the third merge var field defined in your account.
      ###

      def set_Merge3(value)
        set_input("Merge3", value)
      end
      #### 
      # Set the value of the Merge4 input for this Choreo. 
      # 
      # @param String - (optional, string) Corresponds to the fourth merge var field defined in your account.
      ###

      def set_Merge4(value)
        set_input("Merge4", value)
      end
      #### 
      # Set the value of the NewEmail input for this Choreo. 
      # 
      # @param String - (optional, multiline) Set this to update the email address of a subscriber.
      ###

      def set_NewEmail(value)
        set_input("NewEmail", value)
      end
      #### 
      # Set the value of the ReplaceInterests input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A flag to determine whether to replace the interest groups with the groups provided or add the provided groups to the member's interest groups. Specify '1' (true) or '0' (false). Defaults to 1.
      ###

      def set_ReplaceInterests(value)
        set_input("ReplaceInterests", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListUpdateMember Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListUpdateMemberResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Mailchimp. Returns the string "true" for success and an error description for failures.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListUpdateMember



  ##############################################################################
  #
  # Lists
  #
  # Get all lists from a MailChimp account.
  #
  ##############################################################################

  class Lists < Choreography

    ####
    #  Create a new instance of the Lists Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MailChimp/Lists")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListsInputSet
    ####
    def new_input_set()
      return ListsInputSet.new()
    end

    def make_result_set()
      return ListsResultSet.new()
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
      results = ListsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Lists
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Mailchimp
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Indicates the desired format for the response. Accepted values are "json" or "xml" (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Lists Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Mailchimp. Corresponds to the format specified in the ResponseFormat parameter. Defaults to "xml".
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Lists



  ##############################################################################
  #
  # Ping
  #
  # Test connection to MailChimp services.
  #
  ##############################################################################

  class Ping < Choreography

    ####
    #  Create a new instance of the Ping Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MailChimp/Ping")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return PingInputSet
    ####
    def new_input_set()
      return PingInputSet.new()
    end

    def make_result_set()
      return PingResultSet.new()
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
      results = PingResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Ping
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class PingInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Mailchimp
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Ping Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class PingResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The response from Mailchimp.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Ping




  module Utils



    ##############################################################################
    #
    # IteratorHelper1
    #
    # 
    #
    ##############################################################################

    class IteratorHelper1 < Choreography

      ####
      #  Create a new instance of the IteratorHelper1 Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MailChimp/Utils/IteratorHelper1")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return IteratorHelper1InputSet
      ####
      def new_input_set()
        return IteratorHelper1InputSet.new()
      end

      def make_result_set()
        return IteratorHelper1ResultSet.new()
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
        results = IteratorHelper1ResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the IteratorHelper1
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class IteratorHelper1InputSet < Choreography::InputSet

        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the XML input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_XML(value)
          set_input("XML", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the IteratorHelper1 Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class IteratorHelper1ResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "CurrentValue" output from this Choreo execution
      	#
      	# @return String - 
      	####
      	def get_CurrentValue()
      	  return @outputs["CurrentValue"]
      	end
      	####
      	# Retrieve the value for the "CurrentName" output from this Choreo execution
      	#
      	# @return String - 
      	####
      	def get_CurrentName()
      	  return @outputs["CurrentName"]
      	end
      end

    end # class IteratorHelper1



    ##############################################################################
    #
    # IteratorHelper2
    #
    # 
    #
    ##############################################################################

    class IteratorHelper2 < Choreography

      ####
      #  Create a new instance of the IteratorHelper2 Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/MailChimp/Utils/IteratorHelper2")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return IteratorHelper2InputSet
      ####
      def new_input_set()
        return IteratorHelper2InputSet.new()
      end

      def make_result_set()
        return IteratorHelper2ResultSet.new()
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
        results = IteratorHelper2ResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the IteratorHelper2
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class IteratorHelper2InputSet < Choreography::InputSet

        #### 
        # Set the value of the XML input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_XML(value)
          set_input("XML", value)
        end
        #### 
        # Set the value of the CurrentName input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_CurrentName(value)
          set_input("CurrentName", value)
        end
        #### 
        # Set the value of the RowCount input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_RowCount(value)
          set_input("RowCount", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the IteratorHelper2 Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class IteratorHelper2ResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Value" output from this Choreo execution
      	#
      	# @return String - 
      	####
      	def get_Value()
      	  return @outputs["Value"]
      	end
      	####
      	# Retrieve the value for the "Key" output from this Choreo execution
      	#
      	# @return String - 
      	####
      	def get_Key()
      	  return @outputs["Key"]
      	end
      end

    end # class IteratorHelper2




  end # module Utils

end # module MailChimp