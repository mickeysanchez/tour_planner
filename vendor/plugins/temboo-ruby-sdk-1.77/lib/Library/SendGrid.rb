require "temboo"

module SendGrid




  module NewsletterAPI




    module Identity



      ##############################################################################
      #
      # CreateIdentity
      #
      # Create a new identity.
      #
      ##############################################################################

      class CreateIdentity < Choreography

        ####
        #  Create a new instance of the CreateIdentity Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Identity/CreateIdentity")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CreateIdentityInputSet
        ####
        def new_input_set()
          return CreateIdentityInputSet.new()
        end

        def make_result_set()
          return CreateIdentityResultSet.new()
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
          results = CreateIdentityResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CreateIdentity
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CreateIdentityInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid. 
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Address input for this Choreo. 
          # 
          # @param String - (required, string) The physical address to be used for this Identity.
          ###

          def set_Address(value)
            set_input("Address", value)
          end
          #### 
          # Set the value of the City input for this Choreo. 
          # 
          # @param String - (required, string) The city for this Identity.
          ###

          def set_City(value)
            set_input("City", value)
          end
          #### 
          # Set the value of the Country input for this Choreo. 
          # 
          # @param String - (required, string) The country to be associated with this Identity.
          ###

          def set_Country(value)
            set_input("Country", value)
          end
          #### 
          # Set the value of the Email input for this Choreo. 
          # 
          # @param String - (required, string) The email address to be used for this identity.
          ###

          def set_Email(value)
            set_input("Email", value)
          end
          #### 
          # Set the value of the Identity input for this Choreo. 
          # 
          # @param String - (required, string) The name for this identity.
          ###

          def set_Identity(value)
            set_input("Identity", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) Enter the name to be associated with this identity.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ReplyTo input for this Choreo. 
          # 
          # @param String - (required, string) An email address to be used in the Reply-To field.
          ###

          def set_ReplyTo(value)
            set_input("ReplyTo", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid.  Specify json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the State input for this Choreo. 
          # 
          # @param String - (required, string) The state to be associated with this Identity.
          ###

          def set_State(value)
            set_input("State", value)
          end
          #### 
          # Set the value of the Zip input for this Choreo. 
          # 
          # @param Integer - (required, integer) The zip code associated with this Identity.
          ###

          def set_Zip(value)
            set_input("Zip", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CreateIdentity Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CreateIdentityResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CreateIdentity



      ##############################################################################
      #
      # DeleteIdentity
      #
      # Delete an Identity.
      #
      ##############################################################################

      class DeleteIdentity < Choreography

        ####
        #  Create a new instance of the DeleteIdentity Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Identity/DeleteIdentity")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteIdentityInputSet
        ####
        def new_input_set()
          return DeleteIdentityInputSet.new()
        end

        def make_result_set()
          return DeleteIdentityResultSet.new()
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
          results = DeleteIdentityResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteIdentity
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteIdentityInputSet < Choreography::InputSet

          #### 
          # Set the value of the Response input for this Choreo. 
          # 
          # @param String - (required, any) The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
          ###

          def set_Response(value)
            set_input("Response", value)
          end
          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid. 
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Identity input for this Choreo. 
          # 
          # @param String - (required, string) The identity to be removed from your account.
          ###

          def set_Identity(value)
            set_input("Identity", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid. Specify json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteIdentity Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteIdentityResultSet < Choreography::ResultSet
        end

      end # class DeleteIdentity



      ##############################################################################
      #
      # EditIdentity
      #
      # Edit a newsletter identity.
      #
      ##############################################################################

      class EditIdentity < Choreography

        ####
        #  Create a new instance of the EditIdentity Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Identity/EditIdentity")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return EditIdentityInputSet
        ####
        def new_input_set()
          return EditIdentityInputSet.new()
        end

        def make_result_set()
          return EditIdentityResultSet.new()
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
          results = EditIdentityResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the EditIdentity
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class EditIdentityInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid. 
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Address input for this Choreo. 
          # 
          # @param String - (required, string) The new physical address to be used for this Identity.
          ###

          def set_Address(value)
            set_input("Address", value)
          end
          #### 
          # Set the value of the City input for this Choreo. 
          # 
          # @param String - (required, string) The new city for this Identity.
          ###

          def set_City(value)
            set_input("City", value)
          end
          #### 
          # Set the value of the Country input for this Choreo. 
          # 
          # @param String - (required, string) The new country to be associated with this Identity.
          ###

          def set_Country(value)
            set_input("Country", value)
          end
          #### 
          # Set the value of the Email input for this Choreo. 
          # 
          # @param String - (required, string) An email address to be used for this identity.
          ###

          def set_Email(value)
            set_input("Email", value)
          end
          #### 
          # Set the value of the Identity input for this Choreo. 
          # 
          # @param String - (required, string) The identity that is to be edited.
          ###

          def set_Identity(value)
            set_input("Identity", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) The new name to be associated with this identity.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the NewIdentity input for this Choreo. 
          # 
          # @param String - (optional, string) The new name for this identity.
          ###

          def set_NewIdentity(value)
            set_input("NewIdentity", value)
          end
          #### 
          # Set the value of the ReplyTo input for this Choreo. 
          # 
          # @param String - (required, string) An email address to be used in the Reply-To field.
          ###

          def set_ReplyTo(value)
            set_input("ReplyTo", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid: Soecify json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the State input for this Choreo. 
          # 
          # @param String - (required, string) The state to be associated with this Identity.
          ###

          def set_State(value)
            set_input("State", value)
          end
          #### 
          # Set the value of the Zip input for this Choreo. 
          # 
          # @param Integer - (required, integer) The new zip code associated with this Identity.
          ###

          def set_Zip(value)
            set_input("Zip", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the EditIdentity Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class EditIdentityResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class EditIdentity



      ##############################################################################
      #
      # GetIdentityInfo
      #
      # Retrieve information about a specified Identity.
      #
      ##############################################################################

      class GetIdentityInfo < Choreography

        ####
        #  Create a new instance of the GetIdentityInfo Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Identity/GetIdentityInfo")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetIdentityInfoInputSet
        ####
        def new_input_set()
          return GetIdentityInfoInputSet.new()
        end

        def make_result_set()
          return GetIdentityInfoResultSet.new()
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
          results = GetIdentityInfoResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetIdentityInfo
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetIdentityInfoInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid. 
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Identity input for this Choreo. 
          # 
          # @param String - (required, string) The identity for which info will be retrieved.
          ###

          def set_Identity(value)
            set_input("Identity", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid: Specify json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetIdentityInfo Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetIdentityInfoResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetIdentityInfo



      ##############################################################################
      #
      # ListAllIdentities
      #
      # Retrieve information about a specified Identity.
      #
      ##############################################################################

      class ListAllIdentities < Choreography

        ####
        #  Create a new instance of the ListAllIdentities Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Identity/ListAllIdentities")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListAllIdentitiesInputSet
        ####
        def new_input_set()
          return ListAllIdentitiesInputSet.new()
        end

        def make_result_set()
          return ListAllIdentitiesResultSet.new()
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
          results = ListAllIdentitiesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListAllIdentities
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListAllIdentitiesInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid. 
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Identity input for this Choreo. 
          # 
          # @param String - (optional, string) The identity for which info will be retrieved. Leave it empty to list all Identities in this account.
          ###

          def set_Identity(value)
            set_input("Identity", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid. Specify json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListAllIdentities Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListAllIdentitiesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class ListAllIdentities




    end # module Identity

    module Lists



      ##############################################################################
      #
      # CreateRecipientList
      #
      # Create a new recipient list.
      #
      ##############################################################################

      class CreateRecipientList < Choreography

        ####
        #  Create a new instance of the CreateRecipientList Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Lists/CreateRecipientList")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CreateRecipientListInputSet
        ####
        def new_input_set()
          return CreateRecipientListInputSet.new()
        end

        def make_result_set()
          return CreateRecipientListResultSet.new()
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
          results = CreateRecipientListResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CreateRecipientList
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CreateRecipientListInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid. 
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the ColumnName input for this Choreo. 
          # 
          # @param String - (optional, string) An additional column name.
          ###

          def set_ColumnName(value)
            set_input("ColumnName", value)
          end
          #### 
          # Set the value of the List input for this Choreo. 
          # 
          # @param String - (required, string) The name of the recipient list that is being created.
          ###

          def set_List(value)
            set_input("List", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (optional, string) The column name to be associated with email addresses.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid. Specify json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CreateRecipientList Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CreateRecipientListResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CreateRecipientList



      ##############################################################################
      #
      # DeleteRecipientList
      #
      # Delete a Recipient List.
      #
      ##############################################################################

      class DeleteRecipientList < Choreography

        ####
        #  Create a new instance of the DeleteRecipientList Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Lists/DeleteRecipientList")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteRecipientListInputSet
        ####
        def new_input_set()
          return DeleteRecipientListInputSet.new()
        end

        def make_result_set()
          return DeleteRecipientListResultSet.new()
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
          results = DeleteRecipientListResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteRecipientList
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteRecipientListInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the List input for this Choreo. 
          # 
          # @param String - (required, string) The name of a Recipient List to be deleted from this account.
          ###

          def set_List(value)
            set_input("List", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteRecipientList Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteRecipientListResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (string) The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeleteRecipientList



      ##############################################################################
      #
      # GetAllRecipientLists
      #
      # Retrieve all Recipient Lists.
      #
      ##############################################################################

      class GetAllRecipientLists < Choreography

        ####
        #  Create a new instance of the GetAllRecipientLists Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Lists/GetAllRecipientLists")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetAllRecipientListsInputSet
        ####
        def new_input_set()
          return GetAllRecipientListsInputSet.new()
        end

        def make_result_set()
          return GetAllRecipientListsResultSet.new()
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
          results = GetAllRecipientListsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetAllRecipientLists
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetAllRecipientListsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the List input for this Choreo. 
          # 
          # @param String - (optional, string) The name of a Recipient List to be retrieved.
          ###

          def set_List(value)
            set_input("List", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetAllRecipientLists Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetAllRecipientListsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetAllRecipientLists



      ##############################################################################
      #
      # RenameRecipientList
      #
      # Rename a recipient list.
      #
      ##############################################################################

      class RenameRecipientList < Choreography

        ####
        #  Create a new instance of the RenameRecipientList Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Lists/RenameRecipientList")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return RenameRecipientListInputSet
        ####
        def new_input_set()
          return RenameRecipientListInputSet.new()
        end

        def make_result_set()
          return RenameRecipientListResultSet.new()
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
          results = RenameRecipientListResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the RenameRecipientList
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class RenameRecipientListInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the List input for this Choreo. 
          # 
          # @param String - (required, string) The name of Recipient List that is to be renamed.
          ###

          def set_List(value)
            set_input("List", value)
          end
          #### 
          # Set the value of the NewList input for this Choreo. 
          # 
          # @param String - (required, string) The new name of Recipient List that is to be renamed.
          ###

          def set_NewList(value)
            set_input("NewList", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the RenameRecipientList Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class RenameRecipientListResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class RenameRecipientList




    end # module Lists

    module ListsEmail



      ##############################################################################
      #
      # AddEmailToList
      #
      # Add an email to an existing Recipient List.
      #
      ##############################################################################

      class AddEmailToList < Choreography

        ####
        #  Create a new instance of the AddEmailToList Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/ListsEmail/AddEmailToList")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return AddEmailToListInputSet
        ####
        def new_input_set()
          return AddEmailToListInputSet.new()
        end

        def make_result_set()
          return AddEmailToListResultSet.new()
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
          results = AddEmailToListResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the AddEmailToList
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class AddEmailToListInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Data input for this Choreo. 
          # 
          # @param String - (required, string) The JSON string containing the name, email and additional fields to be added to the specified recipient lists.  Example: {"email":"address@example.com","name":"name","other_field":"value"}
          ###

          def set_Data(value)
            set_input("Data", value)
          end
          #### 
          # Set the value of the List input for this Choreo. 
          # 
          # @param String - (required, string) The recipient list to which emaill addresses are being added. The list must be already existing.
          ###

          def set_List(value)
            set_input("List", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the AddEmailToList Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class AddEmailToListResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class AddEmailToList



      ##############################################################################
      #
      # DeleteEmailFromList
      #
      # Delete an email address from a specified Recipient List.
      #
      ##############################################################################

      class DeleteEmailFromList < Choreography

        ####
        #  Create a new instance of the DeleteEmailFromList Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/ListsEmail/DeleteEmailFromList")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteEmailFromListInputSet
        ####
        def new_input_set()
          return DeleteEmailFromListInputSet.new()
        end

        def make_result_set()
          return DeleteEmailFromListResultSet.new()
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
          results = DeleteEmailFromListResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteEmailFromList
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteEmailFromListInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Email input for this Choreo. 
          # 
          # @param String - (required, string) The email address to be removed from the recipient list.
          ###

          def set_Email(value)
            set_input("Email", value)
          end
          #### 
          # Set the value of the List input for this Choreo. 
          # 
          # @param String - (required, string) The recipient list from which email addresses will be removed.  Must be an existing recipient list.
          ###

          def set_List(value)
            set_input("List", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteEmailFromList Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteEmailFromListResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeleteEmailFromList



      ##############################################################################
      #
      # GetListEmailAddresses
      #
      # Retrieve email addresses associated with a specified Recipient List.
      #
      ##############################################################################

      class GetListEmailAddresses < Choreography

        ####
        #  Create a new instance of the GetListEmailAddresses Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/ListsEmail/GetListEmailAddresses")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetListEmailAddressesInputSet
        ####
        def new_input_set()
          return GetListEmailAddressesInputSet.new()
        end

        def make_result_set()
          return GetListEmailAddressesResultSet.new()
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
          results = GetListEmailAddressesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetListEmailAddresses
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetListEmailAddressesInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Email input for this Choreo. 
          # 
          # @param String - (optional, string) The email address to search for in a recipient list.
          ###

          def set_Email(value)
            set_input("Email", value)
          end
          #### 
          # Set the value of the List input for this Choreo. 
          # 
          # @param String - (required, string) The recipient list from which email addresses will be retrieved.  Must be an existing recipient list.
          ###

          def set_List(value)
            set_input("List", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetListEmailAddresses Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetListEmailAddressesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetListEmailAddresses




    end # module ListsEmail

    module Newsletter



      ##############################################################################
      #
      # CreateNewsletter
      #
      # Create a new newsletter.
      #
      ##############################################################################

      class CreateNewsletter < Choreography

        ####
        #  Create a new instance of the CreateNewsletter Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Newsletter/CreateNewsletter")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CreateNewsletterInputSet
        ####
        def new_input_set()
          return CreateNewsletterInputSet.new()
        end

        def make_result_set()
          return CreateNewsletterResultSet.new()
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
          results = CreateNewsletterResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CreateNewsletter
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CreateNewsletterInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the HTML input for this Choreo. 
          # 
          # @param String - (required, string) The html portion of the newsletter.
          ###

          def set_HTML(value)
            set_input("HTML", value)
          end
          #### 
          # Set the value of the Identity input for this Choreo. 
          # 
          # @param String - (required, string) The Identiy that will be used for the newsletter to be created.  This must be an existing Identity.
          ###

          def set_Identity(value)
            set_input("Identity", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) The name of the new newsletter.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the Subject input for this Choreo. 
          # 
          # @param String - (required, string) The subject for the new newsletter.
          ###

          def set_Subject(value)
            set_input("Subject", value)
          end
          #### 
          # Set the value of the Text input for this Choreo. 
          # 
          # @param String - (required, string) The text portion of the newsletter.
          ###

          def set_Text(value)
            set_input("Text", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CreateNewsletter Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CreateNewsletterResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CreateNewsletter



      ##############################################################################
      #
      # DeleteNewsletter
      #
      # Remove a newsletter from the account.
      #
      ##############################################################################

      class DeleteNewsletter < Choreography

        ####
        #  Create a new instance of the DeleteNewsletter Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Newsletter/DeleteNewsletter")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteNewsletterInputSet
        ####
        def new_input_set()
          return DeleteNewsletterInputSet.new()
        end

        def make_result_set()
          return DeleteNewsletterResultSet.new()
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
          results = DeleteNewsletterResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteNewsletter
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteNewsletterInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) The name of the newsletter that is to be deleted.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteNewsletter Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteNewsletterResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeleteNewsletter



      ##############################################################################
      #
      # EditNewsletter
      #
      # Edit an existing newsletter.
      #
      ##############################################################################

      class EditNewsletter < Choreography

        ####
        #  Create a new instance of the EditNewsletter Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Newsletter/EditNewsletter")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return EditNewsletterInputSet
        ####
        def new_input_set()
          return EditNewsletterInputSet.new()
        end

        def make_result_set()
          return EditNewsletterResultSet.new()
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
          results = EditNewsletterResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the EditNewsletter
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class EditNewsletterInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the HTML input for this Choreo. 
          # 
          # @param String - (required, string) The html portion of the newsletter.
          ###

          def set_HTML(value)
            set_input("HTML", value)
          end
          #### 
          # Set the value of the Identity input for this Choreo. 
          # 
          # @param String - (required, string) The new identity Identiy for the newsletter that is being edited.
          ###

          def set_Identity(value)
            set_input("Identity", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) The name of the newsletter that is being edited.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the NewName input for this Choreo. 
          # 
          # @param String - (required, string) The new name of the newsletter that is being edited.
          ###

          def set_NewName(value)
            set_input("NewName", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the Subject input for this Choreo. 
          # 
          # @param String - (required, string) The new subject for the edited newsletter.
          ###

          def set_Subject(value)
            set_input("Subject", value)
          end
          #### 
          # Set the value of the Text input for this Choreo. 
          # 
          # @param String - (required, string) The text portion of the newsletter.
          ###

          def set_Text(value)
            set_input("Text", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the EditNewsletter Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class EditNewsletterResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class EditNewsletter



      ##############################################################################
      #
      # GetNewsletterContent
      #
      # Retrieve contents of a specified newsletter.
      #
      ##############################################################################

      class GetNewsletterContent < Choreography

        ####
        #  Create a new instance of the GetNewsletterContent Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Newsletter/GetNewsletterContent")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetNewsletterContentInputSet
        ####
        def new_input_set()
          return GetNewsletterContentInputSet.new()
        end

        def make_result_set()
          return GetNewsletterContentResultSet.new()
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
          results = GetNewsletterContentResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetNewsletterContent
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetNewsletterContentInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) The name of the newsletter to be retrieved. It must be an existing newsletter.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetNewsletterContent Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetNewsletterContentResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetNewsletterContent



      ##############################################################################
      #
      # ListAllNewsletters
      #
      # Get a list of all newsletters in this account.
      #
      ##############################################################################

      class ListAllNewsletters < Choreography

        ####
        #  Create a new instance of the ListAllNewsletters Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Newsletter/ListAllNewsletters")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListAllNewslettersInputSet
        ####
        def new_input_set()
          return ListAllNewslettersInputSet.new()
        end

        def make_result_set()
          return ListAllNewslettersResultSet.new()
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
          results = ListAllNewslettersResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListAllNewsletters
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListAllNewslettersInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (optional, string) The name of a specific newsletter to be retrieved. It must be an existing newsletter.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListAllNewsletters Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListAllNewslettersResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class ListAllNewsletters




    end # module Newsletter

    module Recipients



      ##############################################################################
      #
      # AddRecipientList
      #
      # Add one or more recipient lists to a newsletter.
      #
      ##############################################################################

      class AddRecipientList < Choreography

        ####
        #  Create a new instance of the AddRecipientList Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Recipients/AddRecipientList")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return AddRecipientListInputSet
        ####
        def new_input_set()
          return AddRecipientListInputSet.new()
        end

        def make_result_set()
          return AddRecipientListResultSet.new()
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
          results = AddRecipientListResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the AddRecipientList
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class AddRecipientListInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the List input for this Choreo. 
          # 
          # @param String - (required, string) The recipient list to be added to the specified newsletter.
          ###

          def set_List(value)
            set_input("List", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) The name of an existing newsletter to which a recipient list is being added.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the AddRecipientList Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class AddRecipientListResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class AddRecipientList



      ##############################################################################
      #
      # DeleteRecipientListFromNewsletter
      #
      # Delete Recipient Lists from a Newsletter.
      #
      ##############################################################################

      class DeleteRecipientListFromNewsletter < Choreography

        ####
        #  Create a new instance of the DeleteRecipientListFromNewsletter Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Recipients/DeleteRecipientListFromNewsletter")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteRecipientListFromNewsletterInputSet
        ####
        def new_input_set()
          return DeleteRecipientListFromNewsletterInputSet.new()
        end

        def make_result_set()
          return DeleteRecipientListFromNewsletterResultSet.new()
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
          results = DeleteRecipientListFromNewsletterResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteRecipientListFromNewsletter
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteRecipientListFromNewsletterInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the List input for this Choreo. 
          # 
          # @param String - (required, string) The Recipient List to remove.
          ###

          def set_List(value)
            set_input("List", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) The name of an existing newsletter, to remove recipient lists from.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteRecipientListFromNewsletter Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteRecipientListFromNewsletterResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeleteRecipientListFromNewsletter



      ##############################################################################
      #
      # GetAttachedRecipientLists
      #
      # Retrieve Recipient Lists attached to a specified newsletter.
      #
      ##############################################################################

      class GetAttachedRecipientLists < Choreography

        ####
        #  Create a new instance of the GetAttachedRecipientLists Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Recipients/GetAttachedRecipientLists")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetAttachedRecipientListsInputSet
        ####
        def new_input_set()
          return GetAttachedRecipientListsInputSet.new()
        end

        def make_result_set()
          return GetAttachedRecipientListsResultSet.new()
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
          results = GetAttachedRecipientListsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetAttachedRecipientLists
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetAttachedRecipientListsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) The name of an existing newsletter, whose recipient lists will be obtained.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetAttachedRecipientLists Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetAttachedRecipientListsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetAttachedRecipientLists




    end # module Recipients

    module Schedule



      ##############################################################################
      #
      # DeleteScheduledDeliveryTime
      #
      # Delete a scheduled Newsletter delivery time.
      #
      ##############################################################################

      class DeleteScheduledDeliveryTime < Choreography

        ####
        #  Create a new instance of the DeleteScheduledDeliveryTime Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Schedule/DeleteScheduledDeliveryTime")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteScheduledDeliveryTimeInputSet
        ####
        def new_input_set()
          return DeleteScheduledDeliveryTimeInputSet.new()
        end

        def make_result_set()
          return DeleteScheduledDeliveryTimeResultSet.new()
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
          results = DeleteScheduledDeliveryTimeResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteScheduledDeliveryTime
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteScheduledDeliveryTimeInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) The name of the newsletter for which scheduled delievery will be removed.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteScheduledDeliveryTime Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteScheduledDeliveryTimeResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeleteScheduledDeliveryTime



      ##############################################################################
      #
      # GetNewsletterScheduleTime
      #
      # Get the scheduled delivery time of a specified Newsletter.
      #
      ##############################################################################

      class GetNewsletterScheduleTime < Choreography

        ####
        #  Create a new instance of the GetNewsletterScheduleTime Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Schedule/GetNewsletterScheduleTime")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetNewsletterScheduleTimeInputSet
        ####
        def new_input_set()
          return GetNewsletterScheduleTimeInputSet.new()
        end

        def make_result_set()
          return GetNewsletterScheduleTimeResultSet.new()
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
          results = GetNewsletterScheduleTimeResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetNewsletterScheduleTime
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetNewsletterScheduleTimeInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) The name of the newsletter for which delivery schedule information will be retrieved.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetNewsletterScheduleTime Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetNewsletterScheduleTimeResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetNewsletterScheduleTime



      ##############################################################################
      #
      # ScheduleNewsletterDelivery
      #
      # Schedule a delivery time for an existing Newsletter.
      #
      ##############################################################################

      class ScheduleNewsletterDelivery < Choreography

        ####
        #  Create a new instance of the ScheduleNewsletterDelivery Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/NewsletterAPI/Schedule/ScheduleNewsletterDelivery")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ScheduleNewsletterDeliveryInputSet
        ####
        def new_input_set()
          return ScheduleNewsletterDeliveryInputSet.new()
        end

        def make_result_set()
          return ScheduleNewsletterDeliveryResultSet.new()
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
          results = ScheduleNewsletterDeliveryResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ScheduleNewsletterDelivery
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ScheduleNewsletterDeliveryInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the After input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The number of minites after which the newsletter will be delivered.
          ###

          def set_After(value)
            set_input("After", value)
          end
          #### 
          # Set the value of the At input for this Choreo. 
          # 
          # @param String - (optional, string) The date and time when the newsletter is to be delievered, in ISO 8601 format (YYYY-MM-DD HH:MM:SS+-HH:MM)
          ###

          def set_At(value)
            set_input("At", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) The name of the newsletter that is being scheduled for delivery.  If the newsletter is to be sent immediately, then leave the At, and After parameters empty.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ScheduleNewsletterDelivery Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ScheduleNewsletterDeliveryResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class ScheduleNewsletterDelivery




    end # module Schedule

  end # module NewsletterAPI

  module WebAPI




    module Blocks



      ##############################################################################
      #
      # DeleteBlockedAddress
      #
      # Delete an address from the blocked email list.
      #
      ##############################################################################

      class DeleteBlockedAddress < Choreography

        ####
        #  Create a new instance of the DeleteBlockedAddress Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Blocks/DeleteBlockedAddress")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteBlockedAddressInputSet
        ####
        def new_input_set()
          return DeleteBlockedAddressInputSet.new()
        end

        def make_result_set()
          return DeleteBlockedAddressResultSet.new()
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
          results = DeleteBlockedAddressResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteBlockedAddress
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteBlockedAddressInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the EmailAddress input for this Choreo. 
          # 
          # @param String - (required, string) The valid email address to be deleted from your block list.
          ###

          def set_EmailAddress(value)
            set_input("EmailAddress", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteBlockedAddress Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteBlockedAddressResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeleteBlockedAddress



      ##############################################################################
      #
      # GetBlockedAddresses
      #
      # Retrieve a list of blocked emails, with response codes, and optional dates.
      #
      ##############################################################################

      class GetBlockedAddresses < Choreography

        ####
        #  Create a new instance of the GetBlockedAddresses Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Blocks/GetBlockedAddresses")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetBlockedAddressesInputSet
        ####
        def new_input_set()
          return GetBlockedAddressesInputSet.new()
        end

        def make_result_set()
          return GetBlockedAddressesResultSet.new()
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
          results = GetBlockedAddressesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetBlockedAddresses
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetBlockedAddressesInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Date input for this Choreo. 
          # 
          # @param String - (optional, string) The timestamp of the Block records. Enter 1 to return a date in a MySQL timestamp format - YYYY-MM-DD HH:MM:SS
          ###

          def set_Date(value)
            set_input("Date", value)
          end
          #### 
          # Set the value of the Days input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The number of days (greater than 0) for which block data will be retrieved.
          ###

          def set_Days(value)
            set_input("Days", value)
          end
          #### 
          # Set the value of the EndDate input for this Choreo. 
          # 
          # @param String - (optional, string) Specify the end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
          ###

          def set_EndDate(value)
            set_input("EndDate", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the StartDate input for this Choreo. 
          # 
          # @param String - (optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value.
          ###

          def set_StartDate(value)
            set_input("StartDate", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetBlockedAddresses Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetBlockedAddressesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetBlockedAddresses




    end # module Blocks

    module Bounces



      ##############################################################################
      #
      # DeleteBouncedAddress
      #
      # Delete an address from the bounced email list.
      #
      ##############################################################################

      class DeleteBouncedAddress < Choreography

        ####
        #  Create a new instance of the DeleteBouncedAddress Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Bounces/DeleteBouncedAddress")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteBouncedAddressInputSet
        ####
        def new_input_set()
          return DeleteBouncedAddressInputSet.new()
        end

        def make_result_set()
          return DeleteBouncedAddressResultSet.new()
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
          results = DeleteBouncedAddressResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteBouncedAddress
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteBouncedAddressInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the EmailAddress input for this Choreo. 
          # 
          # @param String - (optional, string) The valid email address to be deleted from your block list.
          ###

          def set_EmailAddress(value)
            set_input("EmailAddress", value)
          end
          #### 
          # Set the value of the EndDate input for this Choreo. 
          # 
          # @param String - (optional, string) The end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
          ###

          def set_EndDate(value)
            set_input("EndDate", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the StartDate input for this Choreo. 
          # 
          # @param String - (optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value.
          ###

          def set_StartDate(value)
            set_input("StartDate", value)
          end
          #### 
          # Set the value of the Type input for this Choreo. 
          # 
          # @param String - (optional, string) The type of bounce to search for. Choices include: hard, or soft.
          ###

          def set_Type(value)
            set_input("Type", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteBouncedAddress Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteBouncedAddressResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeleteBouncedAddress



      ##############################################################################
      #
      # GetBounces
      #
      # Retrieve a list of bounced emails, with response codes, and optional dates.
      #
      ##############################################################################

      class GetBounces < Choreography

        ####
        #  Create a new instance of the GetBounces Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Bounces/GetBounces")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetBouncesInputSet
        ####
        def new_input_set()
          return GetBouncesInputSet.new()
        end

        def make_result_set()
          return GetBouncesResultSet.new()
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
          results = GetBouncesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetBounces
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetBouncesInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Date input for this Choreo. 
          # 
          # @param String - (optional, string) The timestamp of the Block records. Enter 1 to return a date in a MySQL timestamp format - YYYY-MM-DD HH:MM:SS
          ###

          def set_Date(value)
            set_input("Date", value)
          end
          #### 
          # Set the value of the Days input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The number of days (greater than 0) for which block data will be retrieved.
          ###

          def set_Days(value)
            set_input("Days", value)
          end
          #### 
          # Set the value of the Email input for this Choreo. 
          # 
          # @param String - (optional, string) The email to search for.
          ###

          def set_Email(value)
            set_input("Email", value)
          end
          #### 
          # Set the value of the EndDate input for this Choreo. 
          # 
          # @param String - (optional, string) The end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
          ###

          def set_EndDate(value)
            set_input("EndDate", value)
          end
          #### 
          # Set the value of the Limit input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The number to limit the number of results returned.
          ###

          def set_Limit(value)
            set_input("Limit", value)
          end
          #### 
          # Set the value of the Offset input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The beginning point in the list to retrieve bounces from.
          ###

          def set_Offset(value)
            set_input("Offset", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the StartDate input for this Choreo. 
          # 
          # @param String - (optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value.
          ###

          def set_StartDate(value)
            set_input("StartDate", value)
          end
          #### 
          # Set the value of the Type input for this Choreo. 
          # 
          # @param String - (optional, string) The type of bounce to search for. Choice included are: hard, or soft.
          ###

          def set_Type(value)
            set_input("Type", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetBounces Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetBouncesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetBounces




    end # module Bounces

    module FilterCommands



      ##############################################################################
      #
      # ActivateApp
      #
      # Activate an app.
      #
      ##############################################################################

      class ActivateApp < Choreography

        ####
        #  Create a new instance of the ActivateApp Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/FilterCommands/ActivateApp")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ActivateAppInputSet
        ####
        def new_input_set()
          return ActivateAppInputSet.new()
        end

        def make_result_set()
          return ActivateAppResultSet.new()
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
          results = ActivateAppResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ActivateApp
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ActivateAppInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the AppName input for this Choreo. 
          # 
          # @param String - (required, string) The name of the app to be activated.  A list of available apps can be obtained by running the ListAvailableApps Choreo.
          ###

          def set_AppName(value)
            set_input("AppName", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ActivateApp Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ActivateAppResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class ActivateApp



      ##############################################################################
      #
      # DeactivateApp
      #
      # Deactivate an app.
      #
      ##############################################################################

      class DeactivateApp < Choreography

        ####
        #  Create a new instance of the DeactivateApp Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/FilterCommands/DeactivateApp")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeactivateAppInputSet
        ####
        def new_input_set()
          return DeactivateAppInputSet.new()
        end

        def make_result_set()
          return DeactivateAppResultSet.new()
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
          results = DeactivateAppResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeactivateApp
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeactivateAppInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the AppName input for this Choreo. 
          # 
          # @param String - (required, string) The name of the app to be activated.  A list of available apps can be obtained by running the ListAvailableApps Choreo.
          ###

          def set_AppName(value)
            set_input("AppName", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeactivateApp Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeactivateAppResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeactivateApp



      ##############################################################################
      #
      # GetAppSettings
      #
      # Obtain settings for the specified app.
      #
      ##############################################################################

      class GetAppSettings < Choreography

        ####
        #  Create a new instance of the GetAppSettings Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/FilterCommands/GetAppSettings")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetAppSettingsInputSet
        ####
        def new_input_set()
          return GetAppSettingsInputSet.new()
        end

        def make_result_set()
          return GetAppSettingsResultSet.new()
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
          results = GetAppSettingsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetAppSettings
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetAppSettingsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the AppName input for this Choreo. 
          # 
          # @param String - (required, string) The name of the app to be activated.  A list of available apps can be obtained by running the ListAvailableApps Choreo.
          ###

          def set_AppName(value)
            set_input("AppName", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetAppSettings Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetAppSettingsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetAppSettings



      ##############################################################################
      #
      # ListAvailableApps
      #
      # List all availalbe apps available through the SendGrid Web API.
      #
      ##############################################################################

      class ListAvailableApps < Choreography

        ####
        #  Create a new instance of the ListAvailableApps Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/FilterCommands/ListAvailableApps")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListAvailableAppsInputSet
        ####
        def new_input_set()
          return ListAvailableAppsInputSet.new()
        end

        def make_result_set()
          return ListAvailableAppsResultSet.new()
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
          results = ListAvailableAppsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListAvailableApps
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListAvailableAppsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The username registered with SendGrid.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListAvailableApps Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListAvailableAppsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class ListAvailableApps



      ##############################################################################
      #
      # SetupApp
      #
      # Sets up a previously activated app.
      #
      ##############################################################################

      class SetupApp < Choreography

        ####
        #  Create a new instance of the SetupApp Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/FilterCommands/SetupApp")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return SetupAppInputSet
        ####
        def new_input_set()
          return SetupAppInputSet.new()
        end

        def make_result_set()
          return SetupAppResultSet.new()
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
          results = SetupAppResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the SetupApp
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class SetupAppInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the AppName input for this Choreo. 
          # 
          # @param String - (required, string) The name of the app to be activated.  A list of available apps can be obtained by running the ListAvailableApps Choreo.
          ###

          def set_AppName(value)
            set_input("AppName", value)
          end
          #### 
          # Set the value of the Password input for this Choreo. 
          # 
          # @param String - (required, string) Enter the password for the app that is being setup.  For example, if setting up a Twitter app, enter a valid Twitter account password.
          ###

          def set_Password(value)
            set_input("Password", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the Username input for this Choreo. 
          # 
          # @param String - (required, string) The username for the app that is being setup. For example, if setting up a Twitter app, enter a valid Twitter account username.
          ###

          def set_Username(value)
            set_input("Username", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the SetupApp Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class SetupAppResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class SetupApp




    end # module FilterCommands

    module InvalidEmails



      ##############################################################################
      #
      # DeleteInvalidAddress
      #
      # Delete an address from the Invalid Email list.
      #
      ##############################################################################

      class DeleteInvalidAddress < Choreography

        ####
        #  Create a new instance of the DeleteInvalidAddress Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/InvalidEmails/DeleteInvalidAddress")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteInvalidAddressInputSet
        ####
        def new_input_set()
          return DeleteInvalidAddressInputSet.new()
        end

        def make_result_set()
          return DeleteInvalidAddressResultSet.new()
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
          results = DeleteInvalidAddressResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteInvalidAddress
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteInvalidAddressInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the EmailAddressToDelete input for this Choreo. 
          # 
          # @param String - (required, string) The email address that is to be deleted.
          ###

          def set_EmailAddressToDelete(value)
            set_input("EmailAddressToDelete", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteInvalidAddress Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteInvalidAddressResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeleteInvalidAddress



      ##############################################################################
      #
      # RetrieveInvalidEmails
      #
      # Retrieve a list of invalid emails with addresses, response codes, and dates.
      #
      ##############################################################################

      class RetrieveInvalidEmails < Choreography

        ####
        #  Create a new instance of the RetrieveInvalidEmails Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/InvalidEmails/RetrieveInvalidEmails")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return RetrieveInvalidEmailsInputSet
        ####
        def new_input_set()
          return RetrieveInvalidEmailsInputSet.new()
        end

        def make_result_set()
          return RetrieveInvalidEmailsResultSet.new()
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
          results = RetrieveInvalidEmailsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the RetrieveInvalidEmails
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class RetrieveInvalidEmailsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Date input for this Choreo. 
          # 
          # @param String - (optional, string) The timestamp of the Block records. Enter 1 to return a date in a MySQL timestamp format - YYYY-MM-DD HH:MM:SS
          ###

          def set_Date(value)
            set_input("Date", value)
          end
          #### 
          # Set the value of the Days input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The number of days (greater than 0) for which block data will be retrieved.
          ###

          def set_Days(value)
            set_input("Days", value)
          end
          #### 
          # Set the value of the Email input for this Choreo. 
          # 
          # @param String - (optional, string) The email to search for.
          ###

          def set_Email(value)
            set_input("Email", value)
          end
          #### 
          # Set the value of the EndDate input for this Choreo. 
          # 
          # @param String - (optional, string) The end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
          ###

          def set_EndDate(value)
            set_input("EndDate", value)
          end
          #### 
          # Set the value of the Limit input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The number to limit the number of results returned.
          ###

          def set_Limit(value)
            set_input("Limit", value)
          end
          #### 
          # Set the value of the Offset input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The beginning point in the list to retrieve bounces from.
          ###

          def set_Offset(value)
            set_input("Offset", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the StartDate input for this Choreo. 
          # 
          # @param String - (optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value.
          ###

          def set_StartDate(value)
            set_input("StartDate", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the RetrieveInvalidEmails Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class RetrieveInvalidEmailsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class RetrieveInvalidEmails




    end # module InvalidEmails

    module Mail



      ##############################################################################
      #
      # SendMail
      #
      # Allows you to send emails.
      #
      ##############################################################################

      class SendMail < Choreography

        ####
        #  Create a new instance of the SendMail Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Mail/SendMail")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return SendMailInputSet
        ####
        def new_input_set()
          return SendMailInputSet.new()
        end

        def make_result_set()
          return SendMailResultSet.new()
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
          results = SendMailResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the SendMail
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class SendMailInputSet < Choreography::InputSet

          #### 
          # Set the value of the FileContents input for this Choreo. 
          # 
          # @param String - (optional, string) The Base64-encoded contents of the file you want to attach.
          ###

          def set_FileContents(value)
            set_input("FileContents", value)
          end
          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the BCC input for this Choreo. 
          # 
          # @param String - (optional, string) Enter a BCC recipient.  Multiple recipients can also be passed in as an array of email addresses.
          ###

          def set_BCC(value)
            set_input("BCC", value)
          end
          #### 
          # Set the value of the Date input for this Choreo. 
          # 
          # @param String - (optional, string) The timestamp of the Block records. Enter 1 to return a date in a MySQL timestamp format - YYYY-MM-DD HH:MM:SS
          ###

          def set_Date(value)
            set_input("Date", value)
          end
          #### 
          # Set the value of the FileName input for this Choreo. 
          # 
          # @param String - (optional, string) The name of the file you are attaching to your email.
          ###

          def set_FileName(value)
            set_input("FileName", value)
          end
          #### 
          # Set the value of the FromName input for this Choreo. 
          # 
          # @param String - (optional, string) The name to be appended to the from email.  For example, your company name, or your name.
          ###

          def set_FromName(value)
            set_input("FromName", value)
          end
          #### 
          # Set the value of the From input for this Choreo. 
          # 
          # @param String - (required, string) The originating email address.  Must be from your domain.
          ###

          def set_From(value)
            set_input("From", value)
          end
          #### 
          # Set the value of the HTML input for this Choreo. 
          # 
          # @param String - (conditional, string) The HTML to be used in the body of your email message. Required unless specifying a plain text body in the Text input.
          ###

          def set_HTML(value)
            set_input("HTML", value)
          end
          #### 
          # Set the value of the Headers input for this Choreo. 
          # 
          # @param String - (optional, json) The collection of key/value pairs in JSON format. Each key represents a header name and the value the header value. For example: {"X-Accept-Language": "en", "X-Mailer": "MyApp"}
          ###

          def set_Headers(value)
            set_input("Headers", value)
          end
          #### 
          # Set the value of the ReplyTo input for this Choreo. 
          # 
          # @param String - (optional, string) The email address to append to the reply-to field of your email.
          ###

          def set_ReplyTo(value)
            set_input("ReplyTo", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the Subject input for this Choreo. 
          # 
          # @param String - (required, string) The subject of the email message.
          ###

          def set_Subject(value)
            set_input("Subject", value)
          end
          #### 
          # Set the value of the Text input for this Choreo. 
          # 
          # @param String - (conditional, string) The text of the email message. Required unless providing the message body using the HTML input.
          ###

          def set_Text(value)
            set_input("Text", value)
          end
          #### 
          # Set the value of the ToName input for this Choreo. 
          # 
          # @param String - (optional, string) The name of the email recipient.
          ###

          def set_ToName(value)
            set_input("ToName", value)
          end
          #### 
          # Set the value of the To input for this Choreo. 
          # 
          # @param String - (required, string) The valid recipient email address.  Multiple addresses can be entered as elements of an array.
          ###

          def set_To(value)
            set_input("To", value)
          end
          #### 
          # Set the value of the XSMTPAPI input for this Choreo. 
          # 
          # @param String - (optional, json) Must be valid JSON format.  See here for additional info: http://docs.sendgrid.com/documentation/api/smtp-api/
          ###

          def set_XSMTPAPI(value)
            set_input("XSMTPAPI", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - A path to a vault file to use for the attachment. Can be used as an alternative to the FileContents input.
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the SendMail Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class SendMailResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class SendMail




    end # module Mail

    module Profile



      ##############################################################################
      #
      # ResetPassword
      #
      # Reset a SendGrid account password.
      #
      ##############################################################################

      class ResetPassword < Choreography

        ####
        #  Create a new instance of the ResetPassword Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Profile/ResetPassword")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ResetPasswordInputSet
        ####
        def new_input_set()
          return ResetPasswordInputSet.new()
        end

        def make_result_set()
          return ResetPasswordResultSet.new()
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
          results = ResetPasswordResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ResetPassword
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ResetPasswordInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the ConfirmPassword input for this Choreo. 
          # 
          # @param String - (required, string) The new account password.  Must match the string entered in the Password variable.  Minumum password length is 6 characters.
          ###

          def set_ConfirmPassword(value)
            set_input("ConfirmPassword", value)
          end
          #### 
          # Set the value of the Password input for this Choreo. 
          # 
          # @param String - (required, string) The new account password of 6 characters or more.
          ###

          def set_Password(value)
            set_input("Password", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ResetPassword Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ResetPasswordResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class ResetPassword



      ##############################################################################
      #
      # UpdateAccountProfile
      #
      # Update a SendGrid account profile.
      #
      ##############################################################################

      class UpdateAccountProfile < Choreography

        ####
        #  Create a new instance of the UpdateAccountProfile Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Profile/UpdateAccountProfile")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return UpdateAccountProfileInputSet
        ####
        def new_input_set()
          return UpdateAccountProfileInputSet.new()
        end

        def make_result_set()
          return UpdateAccountProfileResultSet.new()
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
          results = UpdateAccountProfileResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the UpdateAccountProfile
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class UpdateAccountProfileInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Address input for this Choreo. 
          # 
          # @param String - (optional, string) The company address.
          ###

          def set_Address(value)
            set_input("Address", value)
          end
          #### 
          # Set the value of the City input for this Choreo. 
          # 
          # @param String - (optional, string) The city where this address is located in.
          ###

          def set_City(value)
            set_input("City", value)
          end
          #### 
          # Set the value of the FirstName input for this Choreo. 
          # 
          # @param String - (optional, string) The first name of the profile being updated.
          ###

          def set_FirstName(value)
            set_input("FirstName", value)
          end
          #### 
          # Set the value of the LastName input for this Choreo. 
          # 
          # @param String - (optional, string) The last name of the profile being updated.
          ###

          def set_LastName(value)
            set_input("LastName", value)
          end
          #### 
          # Set the value of the Phone input for this Choreo. 
          # 
          # @param String - (optional, string) The phone number, where you can be reached.
          ###

          def set_Phone(value)
            set_input("Phone", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the State input for this Choreo. 
          # 
          # @param String - (optional, string) The state where this company is located in.
          ###

          def set_State(value)
            set_input("State", value)
          end
          #### 
          # Set the value of the Website input for this Choreo. 
          # 
          # @param String - (optional, string) The company's website.
          ###

          def set_Website(value)
            set_input("Website", value)
          end
          #### 
          # Set the value of the Zip input for this Choreo. 
          # 
          # @param String - (optional, string) The zipcode where this company is located.
          ###

          def set_Zip(value)
            set_input("Zip", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the UpdateAccountProfile Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class UpdateAccountProfileResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class UpdateAccountProfile



      ##############################################################################
      #
      # UpdateContactProfileEmailAddress
      #
      # Update an account username.
      #
      ##############################################################################

      class UpdateContactProfileEmailAddress < Choreography

        ####
        #  Create a new instance of the UpdateContactProfileEmailAddress Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Profile/UpdateContactProfileEmailAddress")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return UpdateContactProfileEmailAddressInputSet
        ####
        def new_input_set()
          return UpdateContactProfileEmailAddressInputSet.new()
        end

        def make_result_set()
          return UpdateContactProfileEmailAddressResultSet.new()
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
          results = UpdateContactProfileEmailAddressResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the UpdateContactProfileEmailAddress
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class UpdateContactProfileEmailAddressInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the NewEmailAddress input for this Choreo. 
          # 
          # @param String - (required, string) A valid email address, not exceeding 100 characters. This address will be used for all future communication with SendGrid. A confirmation email will be sent to validate the change of address.
          ###

          def set_NewEmailAddress(value)
            set_input("NewEmailAddress", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the UpdateContactProfileEmailAddress Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class UpdateContactProfileEmailAddressResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class UpdateContactProfileEmailAddress



      ##############################################################################
      #
      # UpdateUsername
      #
      # Update an account username.
      #
      ##############################################################################

      class UpdateUsername < Choreography

        ####
        #  Create a new instance of the UpdateUsername Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Profile/UpdateUsername")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return UpdateUsernameInputSet
        ####
        def new_input_set()
          return UpdateUsernameInputSet.new()
        end

        def make_result_set()
          return UpdateUsernameResultSet.new()
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
          results = UpdateUsernameResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the UpdateUsername
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class UpdateUsernameInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the NewUsername input for this Choreo. 
          # 
          # @param String - (required, string) The new username, to be used for authenticating on the SendGrid SMTP servers and website. Must not exceed 100 characters. The username cannot be already taken or contain the SendGrid.com domain
          ###

          def set_NewUsername(value)
            set_input("NewUsername", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the UpdateUsername Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class UpdateUsernameResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class UpdateUsername



      ##############################################################################
      #
      # ViewAccountProfile
      #
      # Display account profile information.
      #
      ##############################################################################

      class ViewAccountProfile < Choreography

        ####
        #  Create a new instance of the ViewAccountProfile Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Profile/ViewAccountProfile")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ViewAccountProfileInputSet
        ####
        def new_input_set()
          return ViewAccountProfileInputSet.new()
        end

        def make_result_set()
          return ViewAccountProfileResultSet.new()
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
          results = ViewAccountProfileResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ViewAccountProfile
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ViewAccountProfileInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ViewAccountProfile Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ViewAccountProfileResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class ViewAccountProfile




    end # module Profile

    module SpamReports



      ##############################################################################
      #
      # DeleteEmailAddress
      #
      # Delete an email address from the spam reports list.

      #
      ##############################################################################

      class DeleteEmailAddress < Choreography

        ####
        #  Create a new instance of the DeleteEmailAddress Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/SpamReports/DeleteEmailAddress")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteEmailAddressInputSet
        ####
        def new_input_set()
          return DeleteEmailAddressInputSet.new()
        end

        def make_result_set()
          return DeleteEmailAddressResultSet.new()
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
          results = DeleteEmailAddressResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteEmailAddress
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteEmailAddressInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Email input for this Choreo. 
          # 
          # @param String - (optional, string) The specific email address to be deleted from the spam report list.
          ###

          def set_Email(value)
            set_input("Email", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteEmailAddress Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteEmailAddressResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeleteEmailAddress



      ##############################################################################
      #
      # GetSpamReports
      #
      # Obtain a list of spam reports, with email addresses, response codes, and dates.

      #
      ##############################################################################

      class GetSpamReports < Choreography

        ####
        #  Create a new instance of the GetSpamReports Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/SpamReports/GetSpamReports")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetSpamReportsInputSet
        ####
        def new_input_set()
          return GetSpamReportsInputSet.new()
        end

        def make_result_set()
          return GetSpamReportsResultSet.new()
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
          results = GetSpamReportsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetSpamReports
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetSpamReportsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Date input for this Choreo. 
          # 
          # @param String - (optional, string) The timestamp of the Block records. Enter 1 to return a date in a MySQL timestamp format - YYYY-MM-DD HH:MM:SS
          ###

          def set_Date(value)
            set_input("Date", value)
          end
          #### 
          # Set the value of the Days input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The number of days (greater than 0) for which block data will be retrieved.
          ###

          def set_Days(value)
            set_input("Days", value)
          end
          #### 
          # Set the value of the Email input for this Choreo. 
          # 
          # @param String - (optional, string) A specific email address to search for.
          ###

          def set_Email(value)
            set_input("Email", value)
          end
          #### 
          # Set the value of the EndDate input for this Choreo. 
          # 
          # @param String - (optional, string) The end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
          ###

          def set_EndDate(value)
            set_input("EndDate", value)
          end
          #### 
          # Set the value of the Limit input for this Choreo. 
          # 
          # @param Integer - (optional, integer) A number to limit the number of results returned.
          ###

          def set_Limit(value)
            set_input("Limit", value)
          end
          #### 
          # Set the value of the Offset input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The beginning point in the list to retrieve bounces from.
          ###

          def set_Offset(value)
            set_input("Offset", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the StartDate input for this Choreo. 
          # 
          # @param String - (optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value.
          ###

          def set_StartDate(value)
            set_input("StartDate", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetSpamReports Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetSpamReportsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetSpamReports




    end # module SpamReports

    module Statistics



      ##############################################################################
      #
      # GetAllTimeCategoryTotals
      #
      # Obtain statistics by specified categories.
      #
      ##############################################################################

      class GetAllTimeCategoryTotals < Choreography

        ####
        #  Create a new instance of the GetAllTimeCategoryTotals Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Statistics/GetAllTimeCategoryTotals")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetAllTimeCategoryTotalsInputSet
        ####
        def new_input_set()
          return GetAllTimeCategoryTotalsInputSet.new()
        end

        def make_result_set()
          return GetAllTimeCategoryTotalsResultSet.new()
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
          results = GetAllTimeCategoryTotalsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetAllTimeCategoryTotals
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetAllTimeCategoryTotalsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Aggregate input for this Choreo. 
          # 
          # @param Integer - (required, integer) Retrieve category statistics.  Default is set to 1.
          ###

          def set_Aggregate(value)
            set_input("Aggregate", value)
          end
          #### 
          # Set the value of the Category input for this Choreo. 
          # 
          # @param String - (required, string) Enter a category for which statistics will be retrieved. It must be an existing category that has statistics. If the category entered does not exist, an empty result set will be returned.
          ###

          def set_Category(value)
            set_input("Category", value)
          end
          #### 
          # Set the value of the Days input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The number of days (greater than 0) for which block data will be retrieved. Note that you can use either the days parameter or the start_date and end_date parameter.
          ###

          def set_Days(value)
            set_input("Days", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the StartDate input for this Choreo. 
          # 
          # @param String - (optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value. Use this ,or Days.
          ###

          def set_StartDate(value)
            set_input("StartDate", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetAllTimeCategoryTotals Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetAllTimeCategoryTotalsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetAllTimeCategoryTotals



      ##############################################################################
      #
      # GetCategoryStatistics
      #
      # Obtain statistics by specified categories.
      #
      ##############################################################################

      class GetCategoryStatistics < Choreography

        ####
        #  Create a new instance of the GetCategoryStatistics Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Statistics/GetCategoryStatistics")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetCategoryStatisticsInputSet
        ####
        def new_input_set()
          return GetCategoryStatisticsInputSet.new()
        end

        def make_result_set()
          return GetCategoryStatisticsResultSet.new()
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
          results = GetCategoryStatisticsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetCategoryStatistics
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetCategoryStatisticsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Category input for this Choreo. 
          # 
          # @param String - (required, string) The category for which statistics will be retrieved. It must be an existing category that has statistics. If the category entered does not exist, an empty result set will be returned.
          ###

          def set_Category(value)
            set_input("Category", value)
          end
          #### 
          # Set the value of the Days input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The number of days (greater than 0) for which block data will be retrieved. Note that you can use either the days parameter or the start_date and end_date parameter.
          ###

          def set_Days(value)
            set_input("Days", value)
          end
          #### 
          # Set the value of the EndDate input for this Choreo. 
          # 
          # @param String - (optional, string) The end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
          ###

          def set_EndDate(value)
            set_input("EndDate", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the StartDate input for this Choreo. 
          # 
          # @param String - (optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value. Use this ,or Days.
          ###

          def set_StartDate(value)
            set_input("StartDate", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetCategoryStatistics Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetCategoryStatisticsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetCategoryStatistics



      ##############################################################################
      #
      # ListAllCategories
      #
      # Retrieve a list of all the categories used in a SendGrid account.
      #
      ##############################################################################

      class ListAllCategories < Choreography

        ####
        #  Create a new instance of the ListAllCategories Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Statistics/ListAllCategories")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListAllCategoriesInputSet
        ####
        def new_input_set()
          return ListAllCategoriesInputSet.new()
        end

        def make_result_set()
          return ListAllCategoriesResultSet.new()
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
          results = ListAllCategoriesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListAllCategories
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListAllCategoriesInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListAllCategories Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListAllCategoriesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class ListAllCategories



      ##############################################################################
      #
      # RetrieveAggregates
      #
      # Retrieve all-time total usage statistics for your subusers
      #
      ##############################################################################

      class RetrieveAggregates < Choreography

        ####
        #  Create a new instance of the RetrieveAggregates Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Statistics/RetrieveAggregates")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return RetrieveAggregatesInputSet
        ####
        def new_input_set()
          return RetrieveAggregatesInputSet.new()
        end

        def make_result_set()
          return RetrieveAggregatesResultSet.new()
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
          results = RetrieveAggregatesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the RetrieveAggregates
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class RetrieveAggregatesInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Aggregate input for this Choreo. 
          # 
          # @param Integer - (required, integer) Retrieve all time totals. Must be set to 1. 
          ###

          def set_Aggregate(value)
            set_input("Aggregate", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the RetrieveAggregates Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class RetrieveAggregatesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class RetrieveAggregates



      ##############################################################################
      #
      # RetrieveStatistics
      #
      # Retrieve usage statistics.

      #
      ##############################################################################

      class RetrieveStatistics < Choreography

        ####
        #  Create a new instance of the RetrieveStatistics Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Statistics/RetrieveStatistics")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return RetrieveStatisticsInputSet
        ####
        def new_input_set()
          return RetrieveStatisticsInputSet.new()
        end

        def make_result_set()
          return RetrieveStatisticsResultSet.new()
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
          results = RetrieveStatisticsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the RetrieveStatistics
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class RetrieveStatisticsInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Days input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The number of days (greater than 0) for which block data will be retrieved.
          ###

          def set_Days(value)
            set_input("Days", value)
          end
          #### 
          # Set the value of the EndDate input for this Choreo. 
          # 
          # @param String - (optional, string) Specify the end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
          ###

          def set_EndDate(value)
            set_input("EndDate", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the StartDate input for this Choreo. 
          # 
          # @param String - (optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value.
          ###

          def set_StartDate(value)
            set_input("StartDate", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the RetrieveStatistics Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class RetrieveStatisticsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class RetrieveStatistics




    end # module Statistics

    module Unsubscribes



      ##############################################################################
      #
      # AddAddressToUnsubscribesList
      #
      # Add an address to the Unsubscribe list.
      #
      ##############################################################################

      class AddAddressToUnsubscribesList < Choreography

        ####
        #  Create a new instance of the AddAddressToUnsubscribesList Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Unsubscribes/AddAddressToUnsubscribesList")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return AddAddressToUnsubscribesListInputSet
        ####
        def new_input_set()
          return AddAddressToUnsubscribesListInputSet.new()
        end

        def make_result_set()
          return AddAddressToUnsubscribesListResultSet.new()
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
          results = AddAddressToUnsubscribesListResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the AddAddressToUnsubscribesList
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class AddAddressToUnsubscribesListInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Email input for this Choreo. 
          # 
          # @param String - (required, string) The valid email address to be added to the unsubscribed list.
          ###

          def set_Email(value)
            set_input("Email", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the AddAddressToUnsubscribesList Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class AddAddressToUnsubscribesListResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class AddAddressToUnsubscribesList



      ##############################################################################
      #
      # DeleteFromUnsubscribesList
      #
      # Delete an address from the Unsubscribe list.
      #
      ##############################################################################

      class DeleteFromUnsubscribesList < Choreography

        ####
        #  Create a new instance of the DeleteFromUnsubscribesList Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Unsubscribes/DeleteFromUnsubscribesList")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteFromUnsubscribesListInputSet
        ####
        def new_input_set()
          return DeleteFromUnsubscribesListInputSet.new()
        end

        def make_result_set()
          return DeleteFromUnsubscribesListResultSet.new()
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
          results = DeleteFromUnsubscribesListResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteFromUnsubscribesList
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteFromUnsubscribesListInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Email input for this Choreo. 
          # 
          # @param String - (optional, string) The unsubscribed email address to be deleted from the list. If no parameters are provided, the ENTIRE list will be removed.
          ###

          def set_Email(value)
            set_input("Email", value)
          end
          #### 
          # Set the value of the EndDate input for this Choreo. 
          # 
          # @param String - (optional, string) The end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
          ###

          def set_EndDate(value)
            set_input("EndDate", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the StartDate input for this Choreo. 
          # 
          # @param String - (optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value. Use this ,or Days.
          ###

          def set_StartDate(value)
            set_input("StartDate", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteFromUnsubscribesList Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteFromUnsubscribesListResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeleteFromUnsubscribesList



      ##############################################################################
      #
      # GetUnsubscribesList
      #
      # Get a list of Unsubscribes with addresses and dates. 
      #
      ##############################################################################

      class GetUnsubscribesList < Choreography

        ####
        #  Create a new instance of the GetUnsubscribesList Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/SendGrid/WebAPI/Unsubscribes/GetUnsubscribesList")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetUnsubscribesListInputSet
        ####
        def new_input_set()
          return GetUnsubscribesListInputSet.new()
        end

        def make_result_set()
          return GetUnsubscribesListResultSet.new()
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
          results = GetUnsubscribesListResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetUnsubscribesList
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetUnsubscribesListInputSet < Choreography::InputSet

          #### 
          # Set the value of the APIKey input for this Choreo. 
          # 
          # @param String - (required, string) The API Key obtained from SendGrid.
          ###

          def set_APIKey(value)
            set_input("APIKey", value)
          end
          #### 
          # Set the value of the APIUser input for this Choreo. 
          # 
          # @param String - (required, string) The username registered with SendGrid.
          ###

          def set_APIUser(value)
            set_input("APIUser", value)
          end
          #### 
          # Set the value of the Date input for this Choreo. 
          # 
          # @param String - (optional, string) The timestamp of the Block records. Enter 1 to return a date in a MySQL timestamp format - YYYY-MM-DD HH:MM:SS
          ###

          def set_Date(value)
            set_input("Date", value)
          end
          #### 
          # Set the value of the Days input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The number of days (greater than 0) for which block data will be retrieved. Note that you can use either the days parameter or the start_date and end_date parameter.
          ###

          def set_Days(value)
            set_input("Days", value)
          end
          #### 
          # Set the value of the Email input for this Choreo. 
          # 
          # @param String - (optional, string) The specific email address to search for.
          ###

          def set_Email(value)
            set_input("Email", value)
          end
          #### 
          # Set the value of the EndDate input for this Choreo. 
          # 
          # @param String - (optional, string) The end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
          ###

          def set_EndDate(value)
            set_input("EndDate", value)
          end
          #### 
          # Set the value of the Limit input for this Choreo. 
          # 
          # @param Integer - (optional, integer) A number to limit the number of results returned.
          ###

          def set_Limit(value)
            set_input("Limit", value)
          end
          #### 
          # Set the value of the Offset input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The beginning point in the list to retrieve bounces from.
          ###

          def set_Offset(value)
            set_input("Offset", value)
          end
          #### 
          # Set the value of the ResponseFormat input for this Choreo. 
          # 
          # @param String - (optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
          ###

          def set_ResponseFormat(value)
            set_input("ResponseFormat", value)
          end
          #### 
          # Set the value of the StartDate input for this Choreo. 
          # 
          # @param String - (optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value. Use this ,or Days.
          ###

          def set_StartDate(value)
            set_input("StartDate", value)
          end
          #### 
          # Set the value of the VaultFile input for this Choreo. 
          # 
          # @param TembooPath - 
          ###

          def set_VaultFile(value)
            set_alias("VaultFile", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetUnsubscribesList Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetUnsubscribesListResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetUnsubscribesList




    end # module Unsubscribes

  end # module WebAPI

end # module SendGrid