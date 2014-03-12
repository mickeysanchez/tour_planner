require "temboo"

module ConstantContact



  ##############################################################################
  #
  # AddMultipleContacts
  #
  # Creates multiple contacts in your Constant Contact list via the Activities bulk API.  The Choreo can use Excel or CSV files for the bulk upload.
  #
  ##############################################################################

  class AddMultipleContacts < Choreography

    ####
    #  Create a new instance of the AddMultipleContacts Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ConstantContact/AddMultipleContacts")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AddMultipleContactsInputSet
    ####
    def new_input_set()
      return AddMultipleContactsInputSet.new()
    end

    def make_result_set()
      return AddMultipleContactsResultSet.new()
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
      results = AddMultipleContactsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AddMultipleContacts
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AddMultipleContactsInputSet < Choreography::InputSet

      #### 
      # Set the value of the FileContents input for this Choreo. 
      # 
      # @param String - (conditional, multiline) The file contents of the list you want to upload. Should be in CSV format.
      ###

      def set_FileContents(value)
        set_input("FileContents", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Constant Contact.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The numberic id for the list that you want to add contacts to.
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your Constant Contact password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the UserName input for this Choreo. 
      # 
      # @param String - (required, string) Your Constant Contact username.
      ###

      def set_UserName(value)
        set_input("UserName", value)
      end
      #### 
      # Set the value of the VaultFile input for this Choreo. 
      # 
      # @param TembooPath - (optional, vault file) A path to the vault CSV file you want to upload. Required unless using the FileContents input.
      ###

      def set_VaultFile(value)
        set_alias("VaultFile", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AddMultipleContacts Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AddMultipleContactsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Constant Contact.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AddMultipleContacts



  ##############################################################################
  #
  # CreateContact
  #
  # Creates a contact in your Constant Contact account.
  #
  ##############################################################################

  class CreateContact < Choreography

    ####
    #  Create a new instance of the CreateContact Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ConstantContact/CreateContact")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateContactInputSet
    ####
    def new_input_set()
      return CreateContactInputSet.new()
    end

    def make_result_set()
      return CreateContactResultSet.new()
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
      results = CreateContactResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateContact
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateContactInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Constant Contact.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Addr1 input for this Choreo. 
      # 
      # @param String - (optional, string) The first line of the contact's address.
      ###

      def set_Addr1(value)
        set_input("Addr1", value)
      end
      #### 
      # Set the value of the Addr2 input for this Choreo. 
      # 
      # @param String - (optional, string) The second line of the contact's address.
      ###

      def set_Addr2(value)
        set_input("Addr2", value)
      end
      #### 
      # Set the value of the Addr3 input for this Choreo. 
      # 
      # @param String - (optional, string) The third line of the contact's address.
      ###

      def set_Addr3(value)
        set_input("Addr3", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (optional, string) The city portion of the contact's address.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the CompanyName input for this Choreo. 
      # 
      # @param String - (optional, string) The company name for the contact.
      ###

      def set_CompanyName(value)
        set_input("CompanyName", value)
      end
      #### 
      # Set the value of the CountryCode input for this Choreo. 
      # 
      # @param String - (optional, string) The country code associated with the contact's address.
      ###

      def set_CountryCode(value)
        set_input("CountryCode", value)
      end
      #### 
      # Set the value of the CountryName input for this Choreo. 
      # 
      # @param String - (optional, string) Corresponds to the Country Name field in Constant Contact
      ###

      def set_CountryName(value)
        set_input("CountryName", value)
      end
      #### 
      # Set the value of the EmailAddress input for this Choreo. 
      # 
      # @param String - (required, string) The email address for the contact.
      ###

      def set_EmailAddress(value)
        set_input("EmailAddress", value)
      end
      #### 
      # Set the value of the EmailType input for this Choreo. 
      # 
      # @param String - (optional, string) The email type that the contact should receive.
      ###

      def set_EmailType(value)
        set_input("EmailType", value)
      end
      #### 
      # Set the value of the FirstName input for this Choreo. 
      # 
      # @param String - (optional, string) The first name of the contact.
      ###

      def set_FirstName(value)
        set_input("FirstName", value)
      end
      #### 
      # Set the value of the HomePhone input for this Choreo. 
      # 
      # @param String - (optional, string) The contact's home phone.
      ###

      def set_HomePhone(value)
        set_input("HomePhone", value)
      end
      #### 
      # Set the value of the JobTitle input for this Choreo. 
      # 
      # @param String - (optional, string) The contact's job title.
      ###

      def set_JobTitle(value)
        set_input("JobTitle", value)
      end
      #### 
      # Set the value of the LastName input for this Choreo. 
      # 
      # @param String - (optional, string) The last name of the contact.
      ###

      def set_LastName(value)
        set_input("LastName", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID for the list that you want to add the contact to.
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the MiddleName input for this Choreo. 
      # 
      # @param String - (optional, string) The middle name of the contact.
      ###

      def set_MiddleName(value)
        set_input("MiddleName", value)
      end
      #### 
      # Set the value of the Name input for this Choreo. 
      # 
      # @param String - (optional, string) The full name of the contact.
      ###

      def set_Name(value)
        set_input("Name", value)
      end
      #### 
      # Set the value of the Note input for this Choreo. 
      # 
      # @param String - (optional, string) A note associated with the contact.
      ###

      def set_Note(value)
        set_input("Note", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your Constant Contact password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the PostalCode input for this Choreo. 
      # 
      # @param String - (optional, string) The postal code for the contact's address.
      ###

      def set_PostalCode(value)
        set_input("PostalCode", value)
      end
      #### 
      # Set the value of the StateCode input for this Choreo. 
      # 
      # @param String - (optional, string) The state code for the contact's address.
      ###

      def set_StateCode(value)
        set_input("StateCode", value)
      end
      #### 
      # Set the value of the StateName input for this Choreo. 
      # 
      # @param String - (optional, string) Corresponds to the State Name field in Constant Contact
      ###

      def set_StateName(value)
        set_input("StateName", value)
      end
      #### 
      # Set the value of the Status input for this Choreo. 
      # 
      # @param String - (optional, string) The status of the contact (i.e. Active).
      ###

      def set_Status(value)
        set_input("Status", value)
      end
      #### 
      # Set the value of the SubPostalCode input for this Choreo. 
      # 
      # @param String - (optional, string) The sub postal code for the contact.
      ###

      def set_SubPostalCode(value)
        set_input("SubPostalCode", value)
      end
      #### 
      # Set the value of the UserName input for this Choreo. 
      # 
      # @param String - (required, string) Your Constant Contact username.
      ###

      def set_UserName(value)
        set_input("UserName", value)
      end
      #### 
      # Set the value of the WorkPhone input for this Choreo. 
      # 
      # @param String - (optional, string) The contact's work phone.
      ###

      def set_WorkPhone(value)
        set_input("WorkPhone", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateContact Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateContactResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Constant Contact.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateContact



  ##############################################################################
  #
  # ListAllContacts
  #
  # Retrieves a list of all contacts from Constant Contact.
  #
  ##############################################################################

  class ListAllContacts < Choreography

    ####
    #  Create a new instance of the ListAllContacts Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ConstantContact/ListAllContacts")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListAllContactsInputSet
    ####
    def new_input_set()
      return ListAllContactsInputSet.new()
    end

    def make_result_set()
      return ListAllContactsResultSet.new()
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
      results = ListAllContactsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListAllContacts
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListAllContactsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Constant Contact.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your Constant Contact password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the UserName input for this Choreo. 
      # 
      # @param String - (required, string) Your Constant Contact username.
      ###

      def set_UserName(value)
        set_input("UserName", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListAllContacts Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListAllContactsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Constant Contact.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListAllContacts



  ##############################################################################
  #
  # ObtainContactInformation
  #
  # Retrieves contact information from Constant Contact by specifying the contact ID.
  #
  ##############################################################################

  class ObtainContactInformation < Choreography

    ####
    #  Create a new instance of the ObtainContactInformation Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ConstantContact/ObtainContactInformation")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ObtainContactInformationInputSet
    ####
    def new_input_set()
      return ObtainContactInformationInputSet.new()
    end

    def make_result_set()
      return ObtainContactInformationResultSet.new()
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
      results = ObtainContactInformationResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ObtainContactInformation
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ObtainContactInformationInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Constant Contact.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ContactId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID for the contact you want to retrieve information for.
      ###

      def set_ContactId(value)
        set_input("ContactId", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your Constant Contact password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the UserName input for this Choreo. 
      # 
      # @param String - (required, string) Your Constant Contact username.
      ###

      def set_UserName(value)
        set_input("UserName", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ObtainContactInformation Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ObtainContactInformationResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Constant Contact.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ObtainContactInformation



  ##############################################################################
  #
  # SearchContactsByEmail
  #
  # Allows you to search Constant Contact by email to retrieve a contact's information.
  #
  ##############################################################################

  class SearchContactsByEmail < Choreography

    ####
    #  Create a new instance of the SearchContactsByEmail Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ConstantContact/SearchContactsByEmail")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchContactsByEmailInputSet
    ####
    def new_input_set()
      return SearchContactsByEmailInputSet.new()
    end

    def make_result_set()
      return SearchContactsByEmailResultSet.new()
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
      results = SearchContactsByEmailResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchContactsByEmail
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchContactsByEmailInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Constant Contact.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the EmailAddress input for this Choreo. 
      # 
      # @param String - (required, string) The email address to use in your search.
      ###

      def set_EmailAddress(value)
        set_input("EmailAddress", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your Constant Contact password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the UserName input for this Choreo. 
      # 
      # @param String - (required, string) Your Constant Contact username.
      ###

      def set_UserName(value)
        set_input("UserName", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchContactsByEmail Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchContactsByEmailResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Constant Contact.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchContactsByEmail



  ##############################################################################
  #
  # SearchContactsByUpdatedSince
  #
  # Searches your Constant Contact list by last updated date.  Use this Choreo for synchronizing your lists with other systems. 
  #
  ##############################################################################

  class SearchContactsByUpdatedSince < Choreography

    ####
    #  Create a new instance of the SearchContactsByUpdatedSince Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ConstantContact/SearchContactsByUpdatedSince")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchContactsByUpdatedSinceInputSet
    ####
    def new_input_set()
      return SearchContactsByUpdatedSinceInputSet.new()
    end

    def make_result_set()
      return SearchContactsByUpdatedSinceResultSet.new()
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
      results = SearchContactsByUpdatedSinceResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchContactsByUpdatedSince
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchContactsByUpdatedSinceInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Constant Contact.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ListType input for this Choreo. 
      # 
      # @param String - (optional, string) The list type to query.  Supported values for this parameter are: active, removed and do-not-mail. Defaults to 'active'.
      ###

      def set_ListType(value)
        set_input("ListType", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your Constant Contact password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the UpdatedSince input for this Choreo. 
      # 
      # @param String - (required, date) Epoch timestamp in milliseconds or formatted like 2009-12-01T01:00:00.000Z. Used to query for modified records.
      ###

      def set_UpdatedSince(value)
        set_input("UpdatedSince", value)
      end
      #### 
      # Set the value of the UserName input for this Choreo. 
      # 
      # @param String - (required, string) Your Constant Contact username.
      ###

      def set_UserName(value)
        set_input("UserName", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchContactsByUpdatedSince Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchContactsByUpdatedSinceResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Constant Contact.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchContactsByUpdatedSince



  ##############################################################################
  #
  # UpdateContact
  #
  # Updates an existing contact in your Constant Contact system when you supply a contact ID to the Choreo.
  #
  ##############################################################################

  class UpdateContact < Choreography

    ####
    #  Create a new instance of the UpdateContact Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ConstantContact/UpdateContact")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return UpdateContactInputSet
    ####
    def new_input_set()
      return UpdateContactInputSet.new()
    end

    def make_result_set()
      return UpdateContactResultSet.new()
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
      results = UpdateContactResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the UpdateContact
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class UpdateContactInputSet < Choreography::InputSet

      #### 
      # Set the value of the UpdatedContactXML input for this Choreo. 
      # 
      # @param String - (required, xml) This input should be the updated XML returned from the ObtainContactInformation Choreo.
      ###

      def set_UpdatedContactXML(value)
        set_input("UpdatedContactXML", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Constant Contact.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ContactId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The id for the contact you want to update.
      ###

      def set_ContactId(value)
        set_input("ContactId", value)
      end
      #### 
      # Set the value of the ListId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID for the list that you want to update
      ###

      def set_ListId(value)
        set_input("ListId", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your Constant Contact password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the UserName input for this Choreo. 
      # 
      # @param String - (required, string) You Constant Contact username.
      ###

      def set_UserName(value)
        set_input("UserName", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the UpdateContact Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class UpdateContactResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Constant Contact. Note that a successful update returns no content.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class UpdateContact




end # module ConstantContact