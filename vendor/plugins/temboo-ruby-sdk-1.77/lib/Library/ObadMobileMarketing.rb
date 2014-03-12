require "temboo"

module ObadMobileMarketing



  ##############################################################################
  #
  # AddCSVData
  #
  # Transfer a csv file to add records to a specified group.
  #
  ##############################################################################

  class AddCSVData < Choreography

    ####
    #  Create a new instance of the AddCSVData Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ObadMobileMarketing/AddCSVData")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AddCSVDataInputSet
    ####
    def new_input_set()
      return AddCSVDataInputSet.new()
    end

    def make_result_set()
      return AddCSVDataResultSet.new()
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
      results = AddCSVDataResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AddCSVData
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AddCSVDataInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param Integer - (integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the GroupID input for this Choreo. 
      # 
      # @param Integer - (integer) Unique ID for the group you want to update
      ###

      def set_GroupID(value)
        set_input("GroupID", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (string) Specify the desired item list (i.e. camp, coupon, usergroup, shopgroup, or coupongroup). Defaults to 'shopgroup'.
      ###

      def set_Type(value)
        set_input("Type", value)
      end
      #### 
      # Set the value of the URLSource input for this Choreo. 
      # 
      # @param String - (string) The URL where you are hosting the CSV data (i.e. http://mybucket.s3.amazonaws.com/my_new_users.csv)
      ###

      def set_URLSource(value)
        set_input("URLSource", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AddCSVData Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AddCSVDataResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (XML) The response from Obad
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AddCSVData



  ##############################################################################
  #
  # CampaignSend
  #
  # Generate a CSV file for sending a campaign.
  #
  ##############################################################################

  class CampaignSend < Choreography

    ####
    #  Create a new instance of the CampaignSend Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ObadMobileMarketing/CampaignSend")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CampaignSendInputSet
    ####
    def new_input_set()
      return CampaignSendInputSet.new()
    end

    def make_result_set()
      return CampaignSendResultSet.new()
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
      results = CampaignSendResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CampaignSend
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CampaignSendInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the CampaignID input for this Choreo. 
      # 
      # @param Integer - (integer) The ID for the campaign you want to send
      ###

      def set_CampaignID(value)
        set_input("CampaignID", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param Integer - (integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) The type of campaign you're sending.  Can be sms, mail, or smsmail. Defaults to sms.
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CampaignSend Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CampaignSendResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (XML) The response from Obad
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CampaignSend



  ##############################################################################
  #
  # CouponGroupData
  #
  # Allows you to add or remove a coupon from a coupon group.
  #
  ##############################################################################

  class CouponGroupData < Choreography

    ####
    #  Create a new instance of the CouponGroupData Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ObadMobileMarketing/CouponGroupData")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CouponGroupDataInputSet
    ####
    def new_input_set()
      return CouponGroupDataInputSet.new()
    end

    def make_result_set()
      return CouponGroupDataResultSet.new()
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
      results = CouponGroupDataResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CouponGroupData
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CouponGroupDataInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param Integer - (integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the CouponGroupID input for this Choreo. 
      # 
      # @param Integer - (integer) The ID of the coupongroup you need to update
      ###

      def set_CouponGroupID(value)
        set_input("CouponGroupID", value)
      end
      #### 
      # Set the value of the CouponID input for this Choreo. 
      # 
      # @param Integer - (integer) The ID of the coupon you need to update
      ###

      def set_CouponID(value)
        set_input("CouponID", value)
      end
      #### 
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the Mode input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Specify 0 for removing or 1 for adding. Defaults to 1.
      ###

      def set_Mode(value)
        set_input("Mode", value)
      end
      #### 
      # Set the value of the CSVData input for this Choreo. 
      # 
      # @param TembooPath - 
      ###

      def set_CSVData(value)
        set_alias("CSVData", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CouponGroupData Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CouponGroupDataResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (XML) The response from Obad
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CouponGroupData



  ##############################################################################
  #
  # EditCoupon
  #
  # Allows you to create a new coupon or update an existing one.
  #
  ##############################################################################

  class EditCoupon < Choreography

    ####
    #  Create a new instance of the EditCoupon Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ObadMobileMarketing/EditCoupon")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return EditCouponInputSet
    ####
    def new_input_set()
      return EditCouponInputSet.new()
    end

    def make_result_set()
      return EditCouponResultSet.new()
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
      results = EditCouponResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the EditCoupon
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class EditCouponInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param Integer - (integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the CouponId input for this Choreo. 
      # 
      # @param Integer - (integer) The ID of the coupon you need to update.  In creation mode, leave this blank, and the ID will be returned in the response.
      ###

      def set_CouponId(value)
        set_input("CouponId", value)
      end
      #### 
      # Set the value of the Desc1 input for this Choreo. 
      # 
      # @param String - (string) Description at the TOP of the coupon
      ###

      def set_Desc1(value)
        set_input("Desc1", value)
      end
      #### 
      # Set the value of the Desc2 input for this Choreo. 
      # 
      # @param String - (string) Description at the BOTTOM line 1 of the coupon
      ###

      def set_Desc2(value)
        set_input("Desc2", value)
      end
      #### 
      # Set the value of the Desc3 input for this Choreo. 
      # 
      # @param String - (string) Description of the BOTTOM line 2 of the coupon
      ###

      def set_Desc3(value)
        set_input("Desc3", value)
      end
      #### 
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the From input for this Choreo. 
      # 
      # @param String - (date) The first date that the coupon is available (formatted like YYYY/MM/DD)
      ###

      def set_From(value)
        set_input("From", value)
      end
      #### 
      # Set the value of the Mode input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Specify the writing mode. Use '0' for creating or '1'  for updating. Defaults to 0.
      ###

      def set_Mode(value)
        set_input("Mode", value)
      end
      #### 
      # Set the value of the Title input for this Choreo. 
      # 
      # @param String - (string) The title of the coupon that will be only used for the console
      ###

      def set_Title(value)
        set_input("Title", value)
      end
      #### 
      # Set the value of the To input for this Choreo. 
      # 
      # @param String - (date) The final date that the coupon is available (formatted like YYYY/MM/DD)
      ###

      def set_To(value)
        set_input("To", value)
      end
      #### 
      # Set the value of the UseOnce input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Use '1' for use and burn coupon one time only and '0' for unlimited use and burn. Defaults to 0.
      ###

      def set_UseOnce(value)
        set_input("UseOnce", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the EditCoupon Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class EditCouponResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (XML) The response from Obad
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class EditCoupon



  ##############################################################################
  #
  # EditGroup
  #
  # Allows you to create a new group or update an existing one.
  #
  ##############################################################################

  class EditGroup < Choreography

    ####
    #  Create a new instance of the EditGroup Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ObadMobileMarketing/EditGroup")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return EditGroupInputSet
    ####
    def new_input_set()
      return EditGroupInputSet.new()
    end

    def make_result_set()
      return EditGroupResultSet.new()
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
      results = EditGroupResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the EditGroup
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class EditGroupInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param Integer - (integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the Description input for this Choreo. 
      # 
      # @param String - (string) The description of the group
      ###

      def set_Description(value)
        set_input("Description", value)
      end
      #### 
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the GroupID input for this Choreo. 
      # 
      # @param Integer - (integer) The id of the group you need to update. In creation mode, leave blank and the id will be returned in the response.
      ###

      def set_GroupID(value)
        set_input("GroupID", value)
      end
      #### 
      # Set the value of the Mode input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Specify 0 for creating and 1 for updating. Defaults to 0.
      ###

      def set_Mode(value)
        set_input("Mode", value)
      end
      #### 
      # Set the value of the Title input for this Choreo. 
      # 
      # @param String - (string) The title of the group
      ###

      def set_Title(value)
        set_input("Title", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) The type of group to perform the action on.  Can be usergroup, shopgroup, or coupongroup. Defaults to usergroup.
      ###

      def set_Type(value)
        set_input("Type", value)
      end
      #### 
      # Set the value of the CSVData input for this Choreo. 
      # 
      # @param TembooPath - 
      ###

      def set_CSVData(value)
        set_alias("CSVData", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the EditGroup Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class EditGroupResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (XML) The response from Obad
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class EditGroup



  ##############################################################################
  #
  # GetList
  #
  # Returns the list and parameters of a specified list type (i.e. campaigns, coupons, user groups, shop groups, or coupons groups).
  #
  ##############################################################################

  class GetList < Choreography

    ####
    #  Create a new instance of the GetList Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ObadMobileMarketing/GetList")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetListInputSet
    ####
    def new_input_set()
      return GetListInputSet.new()
    end

    def make_result_set()
      return GetListResultSet.new()
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
      results = GetListResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetList
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetListInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param Integer - (integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the ID input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Unique ID for an item.  Defaults to 0 which returns ALL.
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) Specify the desired item list (i.e. camp, coupon, usergroup, shopgroup, or coupongroup). Defaults to coupon.
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetList Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetListResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (XML) The response from Obad
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetList



  ##############################################################################
  #
  # ImageCampaign
  #
  # Transfer an image for updating the email body image or the wap banner of a campaign.
  #
  ##############################################################################

  class ImageCampaign < Choreography

    ####
    #  Create a new instance of the ImageCampaign Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ObadMobileMarketing/ImageCampaign")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ImageCampaignInputSet
    ####
    def new_input_set()
      return ImageCampaignInputSet.new()
    end

    def make_result_set()
      return ImageCampaignResultSet.new()
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
      results = ImageCampaignResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ImageCampaign
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ImageCampaignInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the CampaignID input for this Choreo. 
      # 
      # @param Integer - (integer) The ID of the campaign you want to update
      ###

      def set_CampaignID(value)
        set_input("CampaignID", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param Integer - (integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) Specify the desired image type to modify (i.e. mailimage or wapban). Defaults to mailimage.
      ###

      def set_Type(value)
        set_input("Type", value)
      end
      #### 
      # Set the value of the URLSource input for this Choreo. 
      # 
      # @param String - (string) The URL where you are hosting the JPG file (i.e. http://mybucket.s3.amazonaws.com/my_image.jpg)
      ###

      def set_URLSource(value)
        set_input("URLSource", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ImageCampaign Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ImageCampaignResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (XML) The response from Obad
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ImageCampaign



  ##############################################################################
  #
  # ImageCoupon
  #
  # Transfer an image for updating the coupon or coupon burn.
  #
  ##############################################################################

  class ImageCoupon < Choreography

    ####
    #  Create a new instance of the ImageCoupon Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/ObadMobileMarketing/ImageCoupon")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ImageCouponInputSet
    ####
    def new_input_set()
      return ImageCouponInputSet.new()
    end

    def make_result_set()
      return ImageCouponResultSet.new()
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
      results = ImageCouponResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ImageCoupon
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ImageCouponInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param Integer - (integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the CouponID input for this Choreo. 
      # 
      # @param Integer - (integer) The ID of the coupon you want to update
      ###

      def set_CouponID(value)
        set_input("CouponID", value)
      end
      #### 
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) Specify the desired image type to update (i.e. coupon or couponburn). Defaults to coupon.
      ###

      def set_Type(value)
        set_input("Type", value)
      end
      #### 
      # Set the value of the URLSource input for this Choreo. 
      # 
      # @param String - (string) The URL where you are hosting the JPG file (i.e. http://mybucket.s3.amazonaws.com/my_image.jpg)
      ###

      def set_URLSource(value)
        set_input("URLSource", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ImageCoupon Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ImageCouponResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The XML response from Obad
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ImageCoupon




end # module ObadMobileMarketing