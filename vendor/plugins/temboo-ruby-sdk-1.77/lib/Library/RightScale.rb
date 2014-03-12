require "temboo"

module RightScale



  ##############################################################################
  #
  # CreateDeployment
  #
  # Create a RightScale Deployment.
  #
  ##############################################################################

  class CreateDeployment < Choreography

    ####
    #  Create a new instance of the CreateDeployment Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/CreateDeployment")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateDeploymentInputSet
    ####
    def new_input_set()
      return CreateDeploymentInputSet.new()
    end

    def make_result_set()
      return CreateDeploymentResultSet.new()
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
      results = CreateDeploymentResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateDeployment
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateDeploymentInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the DeploymentDefaultEC2AvailabilityZone input for this Choreo. 
      # 
      # @param String - (optional, string) The default EC2 availability zone for this deployment.
      ###

      def set_DeploymentDefaultEC2AvailabilityZone(value)
        set_input("DeploymentDefaultEC2AvailabilityZone", value)
      end
      #### 
      # Set the value of the DeploymentDefaultVPCSubnetHref input for this Choreo. 
      # 
      # @param String - (optional, string) The href of the vpc subnet.
      ###

      def set_DeploymentDefaultVPCSubnetHref(value)
        set_input("DeploymentDefaultVPCSubnetHref", value)
      end
      #### 
      # Set the value of the DeploymentDescription input for this Choreo. 
      # 
      # @param String - (optional, string) The deployment being created.
      ###

      def set_DeploymentDescription(value)
        set_input("DeploymentDescription", value)
      end
      #### 
      # Set the value of the DeploymentNickname input for this Choreo. 
      # 
      # @param String - (required, string) The nickname of the deployment being created.
      ###

      def set_DeploymentNickname(value)
        set_input("DeploymentNickname", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateDeployment Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateDeploymentResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateDeployment



  ##############################################################################
  #
  # CreateServer
  #
  # Creates a RightScale server instance.
  #
  ##############################################################################

  class CreateServer < Choreography

    ####
    #  Create a new instance of the CreateServer Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/CreateServer")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateServerInputSet
    ####
    def new_input_set()
      return CreateServerInputSet.new()
    end

    def make_result_set()
      return CreateServerResultSet.new()
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
      results = CreateServerResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateServer
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateServerInputSet < Choreography::InputSet

      #### 
      # Set the value of the AKIImage input for this Choreo. 
      # 
      # @param String - (optional, string) The URL to the AKI image.
      ###

      def set_AKIImage(value)
        set_input("AKIImage", value)
      end
      #### 
      # Set the value of the ARIImage input for this Choreo. 
      # 
      # @param String - (optional, string) The URL to the ARI Image.
      ###

      def set_ARIImage(value)
        set_input("ARIImage", value)
      end
      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the CloudID input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The cloud region identifier. If undefined, the default is 1 (us-east).
      ###

      def set_CloudID(value)
        set_input("CloudID", value)
      end
      #### 
      # Set the value of the EC2AvailabilityZone input for this Choreo. 
      # 
      # @param String - (optional, string) The  EC2 availablity zone, for example: us-east-1a, or any.  Do not set, if also passing the vpc_subnet_href parameter.
      ###

      def set_EC2AvailabilityZone(value)
        set_input("EC2AvailabilityZone", value)
      end
      #### 
      # Set the value of the EC2Image input for this Choreo. 
      # 
      # @param String - (optional, string) The URL to AMI image.
      ###

      def set_EC2Image(value)
        set_input("EC2Image", value)
      end
      #### 
      # Set the value of the EC2SSHKeyHref input for this Choreo. 
      # 
      # @param String - (optional, string) The URL to the SSH Key.
      ###

      def set_EC2SSHKeyHref(value)
        set_input("EC2SSHKeyHref", value)
      end
      #### 
      # Set the value of the EC2SecurityGroupsHref input for this Choreo. 
      # 
      # @param String - (optional, string) The URL(s) to security group(s). Do not set, if also passing the vpc_subnet_href parameter.
      ###

      def set_EC2SecurityGroupsHref(value)
        set_input("EC2SecurityGroupsHref", value)
      end
      #### 
      # Set the value of the InstanceType input for this Choreo. 
      # 
      # @param String - (optional, string) The AWS instance type: small, medium, etc.
      ###

      def set_InstanceType(value)
        set_input("InstanceType", value)
      end
      #### 
      # Set the value of the MaxSpotPrice input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The maximum price (a dollar value) dollars) per hour for the spot server.
      ###

      def set_MaxSpotPrice(value)
        set_input("MaxSpotPrice", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Pricing input for this Choreo. 
      # 
      # @param String - (optional, string) AWS pricing.  Specify on_demand, or spot.
      ###

      def set_Pricing(value)
        set_input("Pricing", value)
      end
      #### 
      # Set the value of the ServerDeployment input for this Choreo. 
      # 
      # @param String - (required, string) The URL of the deployment that this server wil be added to.
      ###

      def set_ServerDeployment(value)
        set_input("ServerDeployment", value)
      end
      #### 
      # Set the value of the ServerNickname input for this Choreo. 
      # 
      # @param String - (required, string) The nickname for the server being created.
      ###

      def set_ServerNickname(value)
        set_input("ServerNickname", value)
      end
      #### 
      # Set the value of the ServerTemplate input for this Choreo. 
      # 
      # @param String - (required, string) The URL to a server template.
      ###

      def set_ServerTemplate(value)
        set_input("ServerTemplate", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The username obtained from RightScale.
      ###

      def set_Username(value)
        set_input("Username", value)
      end
      #### 
      # Set the value of the VPCSubnet input for this Choreo. 
      # 
      # @param String - (optional, string) The href to the VPC subnet.
      ###

      def set_VPCSubnet(value)
        set_input("VPCSubnet", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateServer Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateServerResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateServer



  ##############################################################################
  #
  # CreateServerXMLInput
  #
  # Creates a RightScale server instance using a given XML template.
  #
  ##############################################################################

  class CreateServerXMLInput < Choreography

    ####
    #  Create a new instance of the CreateServerXMLInput Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/CreateServerXMLInput")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateServerXMLInputInputSet
    ####
    def new_input_set()
      return CreateServerXMLInputInputSet.new()
    end

    def make_result_set()
      return CreateServerXMLInputResultSet.new()
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
      results = CreateServerXMLInputResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateServerXMLInput
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateServerXMLInputInputSet < Choreography::InputSet

      #### 
      # Set the value of the ServerParameters input for this Choreo. 
      # 
      # @param String - (required, xml) The XML file containing the required parameters for the server creation. See documentation for XML schema.
      ###

      def set_ServerParameters(value)
        set_input("ServerParameters", value)
      end
      #### 
      # Set the value of the ARIImage input for this Choreo. 
      # 
      # @param String - (required, string) The URL to the ARI Image.
      ###

      def set_ARIImage(value)
        set_input("ARIImage", value)
      end
      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The Account ID obtained from RightScale.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the CloudID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The cloud region identifier. If undefined, the default is: 1 (us-east).
      ###

      def set_CloudID(value)
        set_input("CloudID", value)
      end
      #### 
      # Set the value of the EC2AvailabilityZone input for this Choreo. 
      # 
      # @param String - (optional, any) The  EC2 availablity zone, for example: us-east-1a, or any.  Do not set, if also passing the vpc_subnet_href parameter.
      ###

      def set_EC2AvailabilityZone(value)
        set_input("EC2AvailabilityZone", value)
      end
      #### 
      # Set the value of the EC2Image input for this Choreo. 
      # 
      # @param String - (required, string) The URL to AMI image.
      ###

      def set_EC2Image(value)
        set_input("EC2Image", value)
      end
      #### 
      # Set the value of the EC2SSHKeyHref input for this Choreo. 
      # 
      # @param String - (optional, any) The URL to the SSH Key.
      ###

      def set_EC2SSHKeyHref(value)
        set_input("EC2SSHKeyHref", value)
      end
      #### 
      # Set the value of the EC2SecurityGroupsHref input for this Choreo. 
      # 
      # @param String - (optional, any) The URL(s) to security group(s). Do not set, if also passing the vpc_subnet_href parameter.
      ###

      def set_EC2SecurityGroupsHref(value)
        set_input("EC2SecurityGroupsHref", value)
      end
      #### 
      # Set the value of the InstanceType input for this Choreo. 
      # 
      # @param String - (optional, any) The AWS instance type: small, medium, etc.
      ###

      def set_InstanceType(value)
        set_input("InstanceType", value)
      end
      #### 
      # Set the value of the MaxSpotPrice input for this Choreo. 
      # 
      # @param Integer - (required, integer) The maximum price (a dollar value) dollars) per hour for the spot server.
      ###

      def set_MaxSpotPrice(value)
        set_input("MaxSpotPrice", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Pricing input for this Choreo. 
      # 
      # @param String - (required, string) AWS pricing.  Specify on_demand, or spot.
      ###

      def set_Pricing(value)
        set_input("Pricing", value)
      end
      #### 
      # Set the value of the ServerDeployment input for this Choreo. 
      # 
      # @param String - (optional, any) The URL of the deployment that this server wil be added to.
      ###

      def set_ServerDeployment(value)
        set_input("ServerDeployment", value)
      end
      #### 
      # Set the value of the ServerNickname input for this Choreo. 
      # 
      # @param String - (optional, any) The nickname for the server being created.
      ###

      def set_ServerNickname(value)
        set_input("ServerNickname", value)
      end
      #### 
      # Set the value of the ServerTemplate input for this Choreo. 
      # 
      # @param String - (optional, any) The URL to a server template.
      ###

      def set_ServerTemplate(value)
        set_input("ServerTemplate", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end
      #### 
      # Set the value of the VPCSubnet input for this Choreo. 
      # 
      # @param String - (required, string) The href to the VPC subnet
      ###

      def set_VPCSubnet(value)
        set_input("VPCSubnet", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateServerXMLInput Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateServerXMLInputResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateServerXMLInput



  ##############################################################################
  #
  # GetArrayIndex
  #
  # Retrieve a list of server assets grouped within a particular RightScale Array. 
  #
  ##############################################################################

  class GetArrayIndex < Choreography

    ####
    #  Create a new instance of the GetArrayIndex Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/GetArrayIndex")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetArrayIndexInputSet
    ####
    def new_input_set()
      return GetArrayIndexInputSet.new()
    end

    def make_result_set()
      return GetArrayIndexResultSet.new()
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
      results = GetArrayIndexResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetArrayIndex
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetArrayIndexInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetArrayIndex Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetArrayIndexResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetArrayIndex



  ##############################################################################
  #
  # GetServerSettings
  #
  # Retrieve server settings for a specified RightScale Server ID.
  #
  ##############################################################################

  class GetServerSettings < Choreography

    ####
    #  Create a new instance of the GetServerSettings Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/GetServerSettings")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetServerSettingsInputSet
    ####
    def new_input_set()
      return GetServerSettingsInputSet.new()
    end

    def make_result_set()
      return GetServerSettingsResultSet.new()
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
      results = GetServerSettingsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetServerSettings
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetServerSettingsInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ServerID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The RightScale Server ID that is to be stopped.
      ###

      def set_ServerID(value)
        set_input("ServerID", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetServerSettings Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetServerSettingsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetServerSettings



  ##############################################################################
  #
  # IndexDeployments
  #
  # Retrieve a list of server assets grouped within a particular RightScale Deployment. 
  #
  ##############################################################################

  class IndexDeployments < Choreography

    ####
    #  Create a new instance of the IndexDeployments Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/IndexDeployments")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return IndexDeploymentsInputSet
    ####
    def new_input_set()
      return IndexDeploymentsInputSet.new()
    end

    def make_result_set()
      return IndexDeploymentsResultSet.new()
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
      results = IndexDeploymentsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the IndexDeployments
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class IndexDeploymentsInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the Filter input for this Choreo. 
      # 
      # @param String - (optional, string) An attributeName=AttributeValue filter pair. For example: nickname=mynick; OR description<>mydesc
      ###

      def set_Filter(value)
        set_input("Filter", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end
      #### 
      # Set the value of the inputFile input for this Choreo. 
      # 
      # @param TembooPath - 
      ###

      def set_inputFile(value)
        set_alias("inputFile", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the IndexDeployments Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class IndexDeploymentsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class IndexDeployments



  ##############################################################################
  #
  # LaunchArrayInstance
  #
  # Start an array instance.
  #
  ##############################################################################

  class LaunchArrayInstance < Choreography

    ####
    #  Create a new instance of the LaunchArrayInstance Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/LaunchArrayInstance")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return LaunchArrayInstanceInputSet
    ####
    def new_input_set()
      return LaunchArrayInstanceInputSet.new()
    end

    def make_result_set()
      return LaunchArrayInstanceResultSet.new()
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
      results = LaunchArrayInstanceResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the LaunchArrayInstance
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class LaunchArrayInstanceInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ServerArrayID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of a server array.
      ###

      def set_ServerArrayID(value)
        set_input("ServerArrayID", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the LaunchArrayInstance Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class LaunchArrayInstanceResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class LaunchArrayInstance



  ##############################################################################
  #
  # ListAllOperationalArrayInstances
  #
  # List all operational instances in an array.
  #
  ##############################################################################

  class ListAllOperationalArrayInstances < Choreography

    ####
    #  Create a new instance of the ListAllOperationalArrayInstances Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/ListAllOperationalArrayInstances")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListAllOperationalArrayInstancesInputSet
    ####
    def new_input_set()
      return ListAllOperationalArrayInstancesInputSet.new()
    end

    def make_result_set()
      return ListAllOperationalArrayInstancesResultSet.new()
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
      results = ListAllOperationalArrayInstancesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListAllOperationalArrayInstances
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListAllOperationalArrayInstancesInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ServerArrayID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of a server array.
      ###

      def set_ServerArrayID(value)
        set_input("ServerArrayID", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListAllOperationalArrayInstances Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListAllOperationalArrayInstancesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListAllOperationalArrayInstances



  ##############################################################################
  #
  # RunRightScript
  #
  # Executes a specified RightScript.
  #
  ##############################################################################

  class RunRightScript < Choreography

    ####
    #  Create a new instance of the RunRightScript Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/RunRightScript")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RunRightScriptInputSet
    ####
    def new_input_set()
      return RunRightScriptInputSet.new()
    end

    def make_result_set()
      return RunRightScriptResultSet.new()
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
      results = RunRightScriptResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RunRightScript
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RunRightScriptInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the RightScriptID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of the RightScript.
      ###

      def set_RightScriptID(value)
        set_input("RightScriptID", value)
      end
      #### 
      # Set the value of the ServerID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The RightScale Server ID that is to be stopped.
      ###

      def set_ServerID(value)
        set_input("ServerID", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RunRightScript Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RunRightScriptResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RunRightScript



  ##############################################################################
  #
  # ShowArray
  #
  # Display a comrephensive set of information about the querried array such as: server(s) state information, array templates used, array state, etc.
  #
  ##############################################################################

  class ShowArray < Choreography

    ####
    #  Create a new instance of the ShowArray Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/ShowArray")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ShowArrayInputSet
    ####
    def new_input_set()
      return ShowArrayInputSet.new()
    end

    def make_result_set()
      return ShowArrayResultSet.new()
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
      results = ShowArrayResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ShowArray
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ShowArrayInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ServerArrayID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of a server array.
      ###

      def set_ServerArrayID(value)
        set_input("ServerArrayID", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ShowArray Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ShowArrayResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ShowArray



  ##############################################################################
  #
  # ShowDeploymentIndex
  #
  # Retrieve a list of server assets grouped within a particular RightScale Deployment ID. 
  #
  ##############################################################################

  class ShowDeploymentIndex < Choreography

    ####
    #  Create a new instance of the ShowDeploymentIndex Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/ShowDeploymentIndex")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ShowDeploymentIndexInputSet
    ####
    def new_input_set()
      return ShowDeploymentIndexInputSet.new()
    end

    def make_result_set()
      return ShowDeploymentIndexResultSet.new()
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
      results = ShowDeploymentIndexResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ShowDeploymentIndex
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ShowDeploymentIndexInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the DeploymentID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The DeploymentID to only list servers in this particular RightScale deployment.
      ###

      def set_DeploymentID(value)
        set_input("DeploymentID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ServerSettings input for this Choreo. 
      # 
      # @param String - (optional, string) Display additional information about this RightScale deployment. Set True to enable.
      ###

      def set_ServerSettings(value)
        set_input("ServerSettings", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ShowDeploymentIndex Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ShowDeploymentIndexResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ShowDeploymentIndex



  ##############################################################################
  #
  # ShowServer
  #
  # Display a comrephensive set of information about the querried server such as: state information, server templates used, SSH key href, etc.
  #
  ##############################################################################

  class ShowServer < Choreography

    ####
    #  Create a new instance of the ShowServer Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/ShowServer")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ShowServerInputSet
    ####
    def new_input_set()
      return ShowServerInputSet.new()
    end

    def make_result_set()
      return ShowServerResultSet.new()
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
      results = ShowServerResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ShowServer
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ShowServerInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ServerID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The RightScale Server ID that is to be stopped.
      ###

      def set_ServerID(value)
        set_input("ServerID", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ShowServer Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ShowServerResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ShowServer



  ##############################################################################
  #
  # ShowServerIndex
  #
  # Display an index of all servers in a RightScale account.
  #
  ##############################################################################

  class ShowServerIndex < Choreography

    ####
    #  Create a new instance of the ShowServerIndex Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/ShowServerIndex")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ShowServerIndexInputSet
    ####
    def new_input_set()
      return ShowServerIndexInputSet.new()
    end

    def make_result_set()
      return ShowServerIndexResultSet.new()
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
      results = ShowServerIndexResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ShowServerIndex
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ShowServerIndexInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ShowServerIndex Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ShowServerIndexResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ShowServerIndex



  ##############################################################################
  #
  # StartServer
  #
  # Start a server associated with a particular Server ID.  Optionally, this Choreo can also poll the startup process and verify server startup.
  #
  ##############################################################################

  class StartServer < Choreography

    ####
    #  Create a new instance of the StartServer Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/StartServer")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return StartServerInputSet
    ####
    def new_input_set()
      return StartServerInputSet.new()
    end

    def make_result_set()
      return StartServerResultSet.new()
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
      results = StartServerResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the StartServer
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class StartServerInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the PollingTimeLimit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Server status polling.  Enable by specifying a time limit - in minutes - for the duration of the server state polling.
      ###

      def set_PollingTimeLimit(value)
        set_input("PollingTimeLimit", value)
      end
      #### 
      # Set the value of the ServerID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The RightScale Server ID that is to be stopped.
      ###

      def set_ServerID(value)
        set_input("ServerID", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the StartServer Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class StartServerResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "State" output from this Choreo execution
    	#
    	# @return String - (string) The server 'state' parsed from the Rightscale response.
    	####
    	def get_State()
    	  return @outputs["State"]
    	end
    end

  end # class StartServer



  ##############################################################################
  #
  # StopServer
  #
  # Stop a RightScale server instance. Optionally, this Choreo can also poll the stop process and verify server termination.
  #
  ##############################################################################

  class StopServer < Choreography

    ####
    #  Create a new instance of the StopServer Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/StopServer")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return StopServerInputSet
    ####
    def new_input_set()
      return StopServerInputSet.new()
    end

    def make_result_set()
      return StopServerResultSet.new()
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
      results = StopServerResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the StopServer
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class StopServerInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the PollingTimeLimit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Server status polling.  Enable by specifying a time limit - in minutes - for the duration of the server state polling.
      ###

      def set_PollingTimeLimit(value)
        set_input("PollingTimeLimit", value)
      end
      #### 
      # Set the value of the ServerID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The RightScale Server ID that is to be stopped.
      ###

      def set_ServerID(value)
        set_input("ServerID", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the StopServer Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class StopServerResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "State" output from this Choreo execution
    	#
    	# @return String - (string) The server 'state' parsed from the Rightscale response.
    	####
    	def get_State()
    	  return @outputs["State"]
    	end
    end

  end # class StopServer



  ##############################################################################
  #
  # TerminateArrayInstances
  #
  # Terminate an array instance.

  #
  ##############################################################################

  class TerminateArrayInstances < Choreography

    ####
    #  Create a new instance of the TerminateArrayInstances Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/RightScale/TerminateArrayInstances")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return TerminateArrayInstancesInputSet
    ####
    def new_input_set()
      return TerminateArrayInstancesInputSet.new()
    end

    def make_result_set()
      return TerminateArrayInstancesResultSet.new()
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
      results = TerminateArrayInstancesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the TerminateArrayInstances
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class TerminateArrayInstancesInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountID input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale Account ID.
      ###

      def set_AccountID(value)
        set_input("AccountID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The RightScale account password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ServerArrayID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of a server array.
      ###

      def set_ServerArrayID(value)
        set_input("ServerArrayID", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The RightScale username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the TerminateArrayInstances Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class TerminateArrayInstancesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Rightscale in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class TerminateArrayInstances




end # module RightScale