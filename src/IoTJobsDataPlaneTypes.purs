
module AWS.IoTJobsDataPlane.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>The certificate is invalid.</p>
newtype CertificateValidationException = CertificateValidationException 
  { "message" :: NullOrUndefined (ErrorMessage')
  }
derive instance newtypeCertificateValidationException :: Newtype CertificateValidationException _
derive instance repGenericCertificateValidationException :: Generic CertificateValidationException _
instance showCertificateValidationException :: Show CertificateValidationException where show = genericShow
instance decodeCertificateValidationException :: Decode CertificateValidationException where decode = genericDecode options
instance encodeCertificateValidationException :: Encode CertificateValidationException where encode = genericEncode options

-- | Constructs CertificateValidationException from required parameters
newCertificateValidationException :: CertificateValidationException
newCertificateValidationException  = CertificateValidationException { "message": (NullOrUndefined Nothing) }

-- | Constructs CertificateValidationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCertificateValidationException' :: ( { "message" :: NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined (ErrorMessage') } ) -> CertificateValidationException
newCertificateValidationException'  customize = (CertificateValidationException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype DescribeJobExecutionJobId = DescribeJobExecutionJobId String
derive instance newtypeDescribeJobExecutionJobId :: Newtype DescribeJobExecutionJobId _
derive instance repGenericDescribeJobExecutionJobId :: Generic DescribeJobExecutionJobId _
instance showDescribeJobExecutionJobId :: Show DescribeJobExecutionJobId where show = genericShow
instance decodeDescribeJobExecutionJobId :: Decode DescribeJobExecutionJobId where decode = genericDecode options
instance encodeDescribeJobExecutionJobId :: Encode DescribeJobExecutionJobId where encode = genericEncode options



newtype DescribeJobExecutionRequest = DescribeJobExecutionRequest 
  { "jobId" :: (DescribeJobExecutionJobId)
  , "thingName" :: (ThingName)
  , "includeJobDocument" :: NullOrUndefined (IncludeJobDocument)
  , "executionNumber" :: NullOrUndefined (ExecutionNumber)
  }
derive instance newtypeDescribeJobExecutionRequest :: Newtype DescribeJobExecutionRequest _
derive instance repGenericDescribeJobExecutionRequest :: Generic DescribeJobExecutionRequest _
instance showDescribeJobExecutionRequest :: Show DescribeJobExecutionRequest where show = genericShow
instance decodeDescribeJobExecutionRequest :: Decode DescribeJobExecutionRequest where decode = genericDecode options
instance encodeDescribeJobExecutionRequest :: Encode DescribeJobExecutionRequest where encode = genericEncode options

-- | Constructs DescribeJobExecutionRequest from required parameters
newDescribeJobExecutionRequest :: DescribeJobExecutionJobId -> ThingName -> DescribeJobExecutionRequest
newDescribeJobExecutionRequest _jobId _thingName = DescribeJobExecutionRequest { "jobId": _jobId, "thingName": _thingName, "executionNumber": (NullOrUndefined Nothing), "includeJobDocument": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobExecutionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobExecutionRequest' :: DescribeJobExecutionJobId -> ThingName -> ( { "jobId" :: (DescribeJobExecutionJobId) , "thingName" :: (ThingName) , "includeJobDocument" :: NullOrUndefined (IncludeJobDocument) , "executionNumber" :: NullOrUndefined (ExecutionNumber) } -> {"jobId" :: (DescribeJobExecutionJobId) , "thingName" :: (ThingName) , "includeJobDocument" :: NullOrUndefined (IncludeJobDocument) , "executionNumber" :: NullOrUndefined (ExecutionNumber) } ) -> DescribeJobExecutionRequest
newDescribeJobExecutionRequest' _jobId _thingName customize = (DescribeJobExecutionRequest <<< customize) { "jobId": _jobId, "thingName": _thingName, "executionNumber": (NullOrUndefined Nothing), "includeJobDocument": (NullOrUndefined Nothing) }



newtype DescribeJobExecutionResponse = DescribeJobExecutionResponse 
  { "execution" :: NullOrUndefined (JobExecution)
  }
derive instance newtypeDescribeJobExecutionResponse :: Newtype DescribeJobExecutionResponse _
derive instance repGenericDescribeJobExecutionResponse :: Generic DescribeJobExecutionResponse _
instance showDescribeJobExecutionResponse :: Show DescribeJobExecutionResponse where show = genericShow
instance decodeDescribeJobExecutionResponse :: Decode DescribeJobExecutionResponse where decode = genericDecode options
instance encodeDescribeJobExecutionResponse :: Encode DescribeJobExecutionResponse where encode = genericEncode options

-- | Constructs DescribeJobExecutionResponse from required parameters
newDescribeJobExecutionResponse :: DescribeJobExecutionResponse
newDescribeJobExecutionResponse  = DescribeJobExecutionResponse { "execution": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobExecutionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobExecutionResponse' :: ( { "execution" :: NullOrUndefined (JobExecution) } -> {"execution" :: NullOrUndefined (JobExecution) } ) -> DescribeJobExecutionResponse
newDescribeJobExecutionResponse'  customize = (DescribeJobExecutionResponse <<< customize) { "execution": (NullOrUndefined Nothing) }



newtype DetailsKey = DetailsKey String
derive instance newtypeDetailsKey :: Newtype DetailsKey _
derive instance repGenericDetailsKey :: Generic DetailsKey _
instance showDetailsKey :: Show DetailsKey where show = genericShow
instance decodeDetailsKey :: Decode DetailsKey where decode = genericDecode options
instance encodeDetailsKey :: Encode DetailsKey where encode = genericEncode options



newtype DetailsMap = DetailsMap (StrMap.StrMap DetailsValue)
derive instance newtypeDetailsMap :: Newtype DetailsMap _
derive instance repGenericDetailsMap :: Generic DetailsMap _
instance showDetailsMap :: Show DetailsMap where show = genericShow
instance decodeDetailsMap :: Decode DetailsMap where decode = genericDecode options
instance encodeDetailsMap :: Encode DetailsMap where encode = genericEncode options



newtype DetailsValue = DetailsValue String
derive instance newtypeDetailsValue :: Newtype DetailsValue _
derive instance repGenericDetailsValue :: Generic DetailsValue _
instance showDetailsValue :: Show DetailsValue where show = genericShow
instance decodeDetailsValue :: Decode DetailsValue where decode = genericDecode options
instance encodeDetailsValue :: Encode DetailsValue where encode = genericEncode options



newtype ExecutionNumber = ExecutionNumber Number
derive instance newtypeExecutionNumber :: Newtype ExecutionNumber _
derive instance repGenericExecutionNumber :: Generic ExecutionNumber _
instance showExecutionNumber :: Show ExecutionNumber where show = genericShow
instance decodeExecutionNumber :: Decode ExecutionNumber where decode = genericDecode options
instance encodeExecutionNumber :: Encode ExecutionNumber where encode = genericEncode options



newtype ExpectedVersion = ExpectedVersion Number
derive instance newtypeExpectedVersion :: Newtype ExpectedVersion _
derive instance repGenericExpectedVersion :: Generic ExpectedVersion _
instance showExpectedVersion :: Show ExpectedVersion where show = genericShow
instance decodeExpectedVersion :: Decode ExpectedVersion where decode = genericDecode options
instance encodeExpectedVersion :: Encode ExpectedVersion where encode = genericEncode options



newtype GetPendingJobExecutionsRequest = GetPendingJobExecutionsRequest 
  { "thingName" :: (ThingName)
  }
derive instance newtypeGetPendingJobExecutionsRequest :: Newtype GetPendingJobExecutionsRequest _
derive instance repGenericGetPendingJobExecutionsRequest :: Generic GetPendingJobExecutionsRequest _
instance showGetPendingJobExecutionsRequest :: Show GetPendingJobExecutionsRequest where show = genericShow
instance decodeGetPendingJobExecutionsRequest :: Decode GetPendingJobExecutionsRequest where decode = genericDecode options
instance encodeGetPendingJobExecutionsRequest :: Encode GetPendingJobExecutionsRequest where encode = genericEncode options

-- | Constructs GetPendingJobExecutionsRequest from required parameters
newGetPendingJobExecutionsRequest :: ThingName -> GetPendingJobExecutionsRequest
newGetPendingJobExecutionsRequest _thingName = GetPendingJobExecutionsRequest { "thingName": _thingName }

-- | Constructs GetPendingJobExecutionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPendingJobExecutionsRequest' :: ThingName -> ( { "thingName" :: (ThingName) } -> {"thingName" :: (ThingName) } ) -> GetPendingJobExecutionsRequest
newGetPendingJobExecutionsRequest' _thingName customize = (GetPendingJobExecutionsRequest <<< customize) { "thingName": _thingName }



newtype GetPendingJobExecutionsResponse = GetPendingJobExecutionsResponse 
  { "inProgressJobs" :: NullOrUndefined (JobExecutionSummaryList)
  , "queuedJobs" :: NullOrUndefined (JobExecutionSummaryList)
  }
derive instance newtypeGetPendingJobExecutionsResponse :: Newtype GetPendingJobExecutionsResponse _
derive instance repGenericGetPendingJobExecutionsResponse :: Generic GetPendingJobExecutionsResponse _
instance showGetPendingJobExecutionsResponse :: Show GetPendingJobExecutionsResponse where show = genericShow
instance decodeGetPendingJobExecutionsResponse :: Decode GetPendingJobExecutionsResponse where decode = genericDecode options
instance encodeGetPendingJobExecutionsResponse :: Encode GetPendingJobExecutionsResponse where encode = genericEncode options

-- | Constructs GetPendingJobExecutionsResponse from required parameters
newGetPendingJobExecutionsResponse :: GetPendingJobExecutionsResponse
newGetPendingJobExecutionsResponse  = GetPendingJobExecutionsResponse { "inProgressJobs": (NullOrUndefined Nothing), "queuedJobs": (NullOrUndefined Nothing) }

-- | Constructs GetPendingJobExecutionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPendingJobExecutionsResponse' :: ( { "inProgressJobs" :: NullOrUndefined (JobExecutionSummaryList) , "queuedJobs" :: NullOrUndefined (JobExecutionSummaryList) } -> {"inProgressJobs" :: NullOrUndefined (JobExecutionSummaryList) , "queuedJobs" :: NullOrUndefined (JobExecutionSummaryList) } ) -> GetPendingJobExecutionsResponse
newGetPendingJobExecutionsResponse'  customize = (GetPendingJobExecutionsResponse <<< customize) { "inProgressJobs": (NullOrUndefined Nothing), "queuedJobs": (NullOrUndefined Nothing) }



newtype IncludeExecutionState = IncludeExecutionState Boolean
derive instance newtypeIncludeExecutionState :: Newtype IncludeExecutionState _
derive instance repGenericIncludeExecutionState :: Generic IncludeExecutionState _
instance showIncludeExecutionState :: Show IncludeExecutionState where show = genericShow
instance decodeIncludeExecutionState :: Decode IncludeExecutionState where decode = genericDecode options
instance encodeIncludeExecutionState :: Encode IncludeExecutionState where encode = genericEncode options



newtype IncludeJobDocument = IncludeJobDocument Boolean
derive instance newtypeIncludeJobDocument :: Newtype IncludeJobDocument _
derive instance repGenericIncludeJobDocument :: Generic IncludeJobDocument _
instance showIncludeJobDocument :: Show IncludeJobDocument where show = genericShow
instance decodeIncludeJobDocument :: Decode IncludeJobDocument where decode = genericDecode options
instance encodeIncludeJobDocument :: Encode IncludeJobDocument where encode = genericEncode options



-- | <p>The contents of the request were invalid. For example, this code is returned when an UpdateJobExecution request contains invalid status details. The message contains details about the error.</p>
newtype InvalidRequestException = InvalidRequestException 
  { "message" :: NullOrUndefined (ErrorMessage')
  }
derive instance newtypeInvalidRequestException :: Newtype InvalidRequestException _
derive instance repGenericInvalidRequestException :: Generic InvalidRequestException _
instance showInvalidRequestException :: Show InvalidRequestException where show = genericShow
instance decodeInvalidRequestException :: Decode InvalidRequestException where decode = genericDecode options
instance encodeInvalidRequestException :: Encode InvalidRequestException where encode = genericEncode options

-- | Constructs InvalidRequestException from required parameters
newInvalidRequestException :: InvalidRequestException
newInvalidRequestException  = InvalidRequestException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRequestException' :: ( { "message" :: NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined (ErrorMessage') } ) -> InvalidRequestException
newInvalidRequestException'  customize = (InvalidRequestException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>An update attempted to change the job execution to a state that is invalid because of the job execution's current state (for example, an attempt to change a request in state SUCCESS to state IN_PROGRESS). In this case, the body of the error message also contains the executionState field.</p>
newtype InvalidStateTransitionException = InvalidStateTransitionException 
  { "message" :: NullOrUndefined (ErrorMessage')
  }
derive instance newtypeInvalidStateTransitionException :: Newtype InvalidStateTransitionException _
derive instance repGenericInvalidStateTransitionException :: Generic InvalidStateTransitionException _
instance showInvalidStateTransitionException :: Show InvalidStateTransitionException where show = genericShow
instance decodeInvalidStateTransitionException :: Decode InvalidStateTransitionException where decode = genericDecode options
instance encodeInvalidStateTransitionException :: Encode InvalidStateTransitionException where encode = genericEncode options

-- | Constructs InvalidStateTransitionException from required parameters
newInvalidStateTransitionException :: InvalidStateTransitionException
newInvalidStateTransitionException  = InvalidStateTransitionException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidStateTransitionException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidStateTransitionException' :: ( { "message" :: NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined (ErrorMessage') } ) -> InvalidStateTransitionException
newInvalidStateTransitionException'  customize = (InvalidStateTransitionException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype JobDocument = JobDocument String
derive instance newtypeJobDocument :: Newtype JobDocument _
derive instance repGenericJobDocument :: Generic JobDocument _
instance showJobDocument :: Show JobDocument where show = genericShow
instance decodeJobDocument :: Decode JobDocument where decode = genericDecode options
instance encodeJobDocument :: Encode JobDocument where encode = genericEncode options



-- | <p>Contains data about a job execution.</p>
newtype JobExecution = JobExecution 
  { "jobId" :: NullOrUndefined (JobId)
  , "thingName" :: NullOrUndefined (ThingName)
  , "status" :: NullOrUndefined (JobExecutionStatus)
  , "statusDetails" :: NullOrUndefined (DetailsMap)
  , "queuedAt" :: NullOrUndefined (QueuedAt)
  , "startedAt" :: NullOrUndefined (StartedAt)
  , "lastUpdatedAt" :: NullOrUndefined (LastUpdatedAt)
  , "versionNumber" :: NullOrUndefined (VersionNumber)
  , "executionNumber" :: NullOrUndefined (ExecutionNumber)
  , "jobDocument" :: NullOrUndefined (JobDocument)
  }
derive instance newtypeJobExecution :: Newtype JobExecution _
derive instance repGenericJobExecution :: Generic JobExecution _
instance showJobExecution :: Show JobExecution where show = genericShow
instance decodeJobExecution :: Decode JobExecution where decode = genericDecode options
instance encodeJobExecution :: Encode JobExecution where encode = genericEncode options

-- | Constructs JobExecution from required parameters
newJobExecution :: JobExecution
newJobExecution  = JobExecution { "executionNumber": (NullOrUndefined Nothing), "jobDocument": (NullOrUndefined Nothing), "jobId": (NullOrUndefined Nothing), "lastUpdatedAt": (NullOrUndefined Nothing), "queuedAt": (NullOrUndefined Nothing), "startedAt": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "statusDetails": (NullOrUndefined Nothing), "thingName": (NullOrUndefined Nothing), "versionNumber": (NullOrUndefined Nothing) }

-- | Constructs JobExecution's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobExecution' :: ( { "jobId" :: NullOrUndefined (JobId) , "thingName" :: NullOrUndefined (ThingName) , "status" :: NullOrUndefined (JobExecutionStatus) , "statusDetails" :: NullOrUndefined (DetailsMap) , "queuedAt" :: NullOrUndefined (QueuedAt) , "startedAt" :: NullOrUndefined (StartedAt) , "lastUpdatedAt" :: NullOrUndefined (LastUpdatedAt) , "versionNumber" :: NullOrUndefined (VersionNumber) , "executionNumber" :: NullOrUndefined (ExecutionNumber) , "jobDocument" :: NullOrUndefined (JobDocument) } -> {"jobId" :: NullOrUndefined (JobId) , "thingName" :: NullOrUndefined (ThingName) , "status" :: NullOrUndefined (JobExecutionStatus) , "statusDetails" :: NullOrUndefined (DetailsMap) , "queuedAt" :: NullOrUndefined (QueuedAt) , "startedAt" :: NullOrUndefined (StartedAt) , "lastUpdatedAt" :: NullOrUndefined (LastUpdatedAt) , "versionNumber" :: NullOrUndefined (VersionNumber) , "executionNumber" :: NullOrUndefined (ExecutionNumber) , "jobDocument" :: NullOrUndefined (JobDocument) } ) -> JobExecution
newJobExecution'  customize = (JobExecution <<< customize) { "executionNumber": (NullOrUndefined Nothing), "jobDocument": (NullOrUndefined Nothing), "jobId": (NullOrUndefined Nothing), "lastUpdatedAt": (NullOrUndefined Nothing), "queuedAt": (NullOrUndefined Nothing), "startedAt": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "statusDetails": (NullOrUndefined Nothing), "thingName": (NullOrUndefined Nothing), "versionNumber": (NullOrUndefined Nothing) }



-- | <p>Contains data about the state of a job execution.</p>
newtype JobExecutionState = JobExecutionState 
  { "status" :: NullOrUndefined (JobExecutionStatus)
  , "statusDetails" :: NullOrUndefined (DetailsMap)
  , "versionNumber" :: NullOrUndefined (VersionNumber)
  }
derive instance newtypeJobExecutionState :: Newtype JobExecutionState _
derive instance repGenericJobExecutionState :: Generic JobExecutionState _
instance showJobExecutionState :: Show JobExecutionState where show = genericShow
instance decodeJobExecutionState :: Decode JobExecutionState where decode = genericDecode options
instance encodeJobExecutionState :: Encode JobExecutionState where encode = genericEncode options

-- | Constructs JobExecutionState from required parameters
newJobExecutionState :: JobExecutionState
newJobExecutionState  = JobExecutionState { "status": (NullOrUndefined Nothing), "statusDetails": (NullOrUndefined Nothing), "versionNumber": (NullOrUndefined Nothing) }

-- | Constructs JobExecutionState's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobExecutionState' :: ( { "status" :: NullOrUndefined (JobExecutionStatus) , "statusDetails" :: NullOrUndefined (DetailsMap) , "versionNumber" :: NullOrUndefined (VersionNumber) } -> {"status" :: NullOrUndefined (JobExecutionStatus) , "statusDetails" :: NullOrUndefined (DetailsMap) , "versionNumber" :: NullOrUndefined (VersionNumber) } ) -> JobExecutionState
newJobExecutionState'  customize = (JobExecutionState <<< customize) { "status": (NullOrUndefined Nothing), "statusDetails": (NullOrUndefined Nothing), "versionNumber": (NullOrUndefined Nothing) }



newtype JobExecutionStatus = JobExecutionStatus String
derive instance newtypeJobExecutionStatus :: Newtype JobExecutionStatus _
derive instance repGenericJobExecutionStatus :: Generic JobExecutionStatus _
instance showJobExecutionStatus :: Show JobExecutionStatus where show = genericShow
instance decodeJobExecutionStatus :: Decode JobExecutionStatus where decode = genericDecode options
instance encodeJobExecutionStatus :: Encode JobExecutionStatus where encode = genericEncode options



-- | <p>Contains a subset of information about a job execution.</p>
newtype JobExecutionSummary = JobExecutionSummary 
  { "jobId" :: NullOrUndefined (JobId)
  , "queuedAt" :: NullOrUndefined (QueuedAt)
  , "startedAt" :: NullOrUndefined (StartedAt)
  , "lastUpdatedAt" :: NullOrUndefined (LastUpdatedAt)
  , "versionNumber" :: NullOrUndefined (VersionNumber)
  , "executionNumber" :: NullOrUndefined (ExecutionNumber)
  }
derive instance newtypeJobExecutionSummary :: Newtype JobExecutionSummary _
derive instance repGenericJobExecutionSummary :: Generic JobExecutionSummary _
instance showJobExecutionSummary :: Show JobExecutionSummary where show = genericShow
instance decodeJobExecutionSummary :: Decode JobExecutionSummary where decode = genericDecode options
instance encodeJobExecutionSummary :: Encode JobExecutionSummary where encode = genericEncode options

-- | Constructs JobExecutionSummary from required parameters
newJobExecutionSummary :: JobExecutionSummary
newJobExecutionSummary  = JobExecutionSummary { "executionNumber": (NullOrUndefined Nothing), "jobId": (NullOrUndefined Nothing), "lastUpdatedAt": (NullOrUndefined Nothing), "queuedAt": (NullOrUndefined Nothing), "startedAt": (NullOrUndefined Nothing), "versionNumber": (NullOrUndefined Nothing) }

-- | Constructs JobExecutionSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobExecutionSummary' :: ( { "jobId" :: NullOrUndefined (JobId) , "queuedAt" :: NullOrUndefined (QueuedAt) , "startedAt" :: NullOrUndefined (StartedAt) , "lastUpdatedAt" :: NullOrUndefined (LastUpdatedAt) , "versionNumber" :: NullOrUndefined (VersionNumber) , "executionNumber" :: NullOrUndefined (ExecutionNumber) } -> {"jobId" :: NullOrUndefined (JobId) , "queuedAt" :: NullOrUndefined (QueuedAt) , "startedAt" :: NullOrUndefined (StartedAt) , "lastUpdatedAt" :: NullOrUndefined (LastUpdatedAt) , "versionNumber" :: NullOrUndefined (VersionNumber) , "executionNumber" :: NullOrUndefined (ExecutionNumber) } ) -> JobExecutionSummary
newJobExecutionSummary'  customize = (JobExecutionSummary <<< customize) { "executionNumber": (NullOrUndefined Nothing), "jobId": (NullOrUndefined Nothing), "lastUpdatedAt": (NullOrUndefined Nothing), "queuedAt": (NullOrUndefined Nothing), "startedAt": (NullOrUndefined Nothing), "versionNumber": (NullOrUndefined Nothing) }



newtype JobExecutionSummaryList = JobExecutionSummaryList (Array JobExecutionSummary)
derive instance newtypeJobExecutionSummaryList :: Newtype JobExecutionSummaryList _
derive instance repGenericJobExecutionSummaryList :: Generic JobExecutionSummaryList _
instance showJobExecutionSummaryList :: Show JobExecutionSummaryList where show = genericShow
instance decodeJobExecutionSummaryList :: Decode JobExecutionSummaryList where decode = genericDecode options
instance encodeJobExecutionSummaryList :: Encode JobExecutionSummaryList where encode = genericEncode options



newtype JobId = JobId String
derive instance newtypeJobId :: Newtype JobId _
derive instance repGenericJobId :: Generic JobId _
instance showJobId :: Show JobId where show = genericShow
instance decodeJobId :: Decode JobId where decode = genericDecode options
instance encodeJobId :: Encode JobId where encode = genericEncode options



newtype LastUpdatedAt = LastUpdatedAt Number
derive instance newtypeLastUpdatedAt :: Newtype LastUpdatedAt _
derive instance repGenericLastUpdatedAt :: Generic LastUpdatedAt _
instance showLastUpdatedAt :: Show LastUpdatedAt where show = genericShow
instance decodeLastUpdatedAt :: Decode LastUpdatedAt where decode = genericDecode options
instance encodeLastUpdatedAt :: Encode LastUpdatedAt where encode = genericEncode options



newtype QueuedAt = QueuedAt Number
derive instance newtypeQueuedAt :: Newtype QueuedAt _
derive instance repGenericQueuedAt :: Generic QueuedAt _
instance showQueuedAt :: Show QueuedAt where show = genericShow
instance decodeQueuedAt :: Decode QueuedAt where decode = genericDecode options
instance encodeQueuedAt :: Encode QueuedAt where encode = genericEncode options



-- | <p>The specified resource does not exist.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: NullOrUndefined (ErrorMessage')
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "message" :: NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined (ErrorMessage') } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The service is temporarily unavailable.</p>
newtype ServiceUnavailableException = ServiceUnavailableException 
  { "message" :: NullOrUndefined (ErrorMessage')
  }
derive instance newtypeServiceUnavailableException :: Newtype ServiceUnavailableException _
derive instance repGenericServiceUnavailableException :: Generic ServiceUnavailableException _
instance showServiceUnavailableException :: Show ServiceUnavailableException where show = genericShow
instance decodeServiceUnavailableException :: Decode ServiceUnavailableException where decode = genericDecode options
instance encodeServiceUnavailableException :: Encode ServiceUnavailableException where encode = genericEncode options

-- | Constructs ServiceUnavailableException from required parameters
newServiceUnavailableException :: ServiceUnavailableException
newServiceUnavailableException  = ServiceUnavailableException { "message": (NullOrUndefined Nothing) }

-- | Constructs ServiceUnavailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceUnavailableException' :: ( { "message" :: NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined (ErrorMessage') } ) -> ServiceUnavailableException
newServiceUnavailableException'  customize = (ServiceUnavailableException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype StartNextPendingJobExecutionRequest = StartNextPendingJobExecutionRequest 
  { "thingName" :: (ThingName)
  , "statusDetails" :: NullOrUndefined (DetailsMap)
  }
derive instance newtypeStartNextPendingJobExecutionRequest :: Newtype StartNextPendingJobExecutionRequest _
derive instance repGenericStartNextPendingJobExecutionRequest :: Generic StartNextPendingJobExecutionRequest _
instance showStartNextPendingJobExecutionRequest :: Show StartNextPendingJobExecutionRequest where show = genericShow
instance decodeStartNextPendingJobExecutionRequest :: Decode StartNextPendingJobExecutionRequest where decode = genericDecode options
instance encodeStartNextPendingJobExecutionRequest :: Encode StartNextPendingJobExecutionRequest where encode = genericEncode options

-- | Constructs StartNextPendingJobExecutionRequest from required parameters
newStartNextPendingJobExecutionRequest :: ThingName -> StartNextPendingJobExecutionRequest
newStartNextPendingJobExecutionRequest _thingName = StartNextPendingJobExecutionRequest { "thingName": _thingName, "statusDetails": (NullOrUndefined Nothing) }

-- | Constructs StartNextPendingJobExecutionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartNextPendingJobExecutionRequest' :: ThingName -> ( { "thingName" :: (ThingName) , "statusDetails" :: NullOrUndefined (DetailsMap) } -> {"thingName" :: (ThingName) , "statusDetails" :: NullOrUndefined (DetailsMap) } ) -> StartNextPendingJobExecutionRequest
newStartNextPendingJobExecutionRequest' _thingName customize = (StartNextPendingJobExecutionRequest <<< customize) { "thingName": _thingName, "statusDetails": (NullOrUndefined Nothing) }



newtype StartNextPendingJobExecutionResponse = StartNextPendingJobExecutionResponse 
  { "execution" :: NullOrUndefined (JobExecution)
  }
derive instance newtypeStartNextPendingJobExecutionResponse :: Newtype StartNextPendingJobExecutionResponse _
derive instance repGenericStartNextPendingJobExecutionResponse :: Generic StartNextPendingJobExecutionResponse _
instance showStartNextPendingJobExecutionResponse :: Show StartNextPendingJobExecutionResponse where show = genericShow
instance decodeStartNextPendingJobExecutionResponse :: Decode StartNextPendingJobExecutionResponse where decode = genericDecode options
instance encodeStartNextPendingJobExecutionResponse :: Encode StartNextPendingJobExecutionResponse where encode = genericEncode options

-- | Constructs StartNextPendingJobExecutionResponse from required parameters
newStartNextPendingJobExecutionResponse :: StartNextPendingJobExecutionResponse
newStartNextPendingJobExecutionResponse  = StartNextPendingJobExecutionResponse { "execution": (NullOrUndefined Nothing) }

-- | Constructs StartNextPendingJobExecutionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartNextPendingJobExecutionResponse' :: ( { "execution" :: NullOrUndefined (JobExecution) } -> {"execution" :: NullOrUndefined (JobExecution) } ) -> StartNextPendingJobExecutionResponse
newStartNextPendingJobExecutionResponse'  customize = (StartNextPendingJobExecutionResponse <<< customize) { "execution": (NullOrUndefined Nothing) }



newtype StartedAt = StartedAt Number
derive instance newtypeStartedAt :: Newtype StartedAt _
derive instance repGenericStartedAt :: Generic StartedAt _
instance showStartedAt :: Show StartedAt where show = genericShow
instance decodeStartedAt :: Decode StartedAt where decode = genericDecode options
instance encodeStartedAt :: Encode StartedAt where encode = genericEncode options



-- | <p>The job is in a terminal state.</p>
newtype TerminalStateException = TerminalStateException 
  { "message" :: NullOrUndefined (ErrorMessage')
  }
derive instance newtypeTerminalStateException :: Newtype TerminalStateException _
derive instance repGenericTerminalStateException :: Generic TerminalStateException _
instance showTerminalStateException :: Show TerminalStateException where show = genericShow
instance decodeTerminalStateException :: Decode TerminalStateException where decode = genericDecode options
instance encodeTerminalStateException :: Encode TerminalStateException where encode = genericEncode options

-- | Constructs TerminalStateException from required parameters
newTerminalStateException :: TerminalStateException
newTerminalStateException  = TerminalStateException { "message": (NullOrUndefined Nothing) }

-- | Constructs TerminalStateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTerminalStateException' :: ( { "message" :: NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined (ErrorMessage') } ) -> TerminalStateException
newTerminalStateException'  customize = (TerminalStateException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype ThingName = ThingName String
derive instance newtypeThingName :: Newtype ThingName _
derive instance repGenericThingName :: Generic ThingName _
instance showThingName :: Show ThingName where show = genericShow
instance decodeThingName :: Decode ThingName where decode = genericDecode options
instance encodeThingName :: Encode ThingName where encode = genericEncode options



-- | <p>The rate exceeds the limit.</p>
newtype ThrottlingException = ThrottlingException 
  { "message" :: NullOrUndefined (ErrorMessage')
  }
derive instance newtypeThrottlingException :: Newtype ThrottlingException _
derive instance repGenericThrottlingException :: Generic ThrottlingException _
instance showThrottlingException :: Show ThrottlingException where show = genericShow
instance decodeThrottlingException :: Decode ThrottlingException where decode = genericDecode options
instance encodeThrottlingException :: Encode ThrottlingException where encode = genericEncode options

-- | Constructs ThrottlingException from required parameters
newThrottlingException :: ThrottlingException
newThrottlingException  = ThrottlingException { "message": (NullOrUndefined Nothing) }

-- | Constructs ThrottlingException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThrottlingException' :: ( { "message" :: NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined (ErrorMessage') } ) -> ThrottlingException
newThrottlingException'  customize = (ThrottlingException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype UpdateJobExecutionRequest = UpdateJobExecutionRequest 
  { "jobId" :: (JobId)
  , "thingName" :: (ThingName)
  , "status" :: (JobExecutionStatus)
  , "statusDetails" :: NullOrUndefined (DetailsMap)
  , "expectedVersion" :: NullOrUndefined (ExpectedVersion)
  , "includeJobExecutionState" :: NullOrUndefined (IncludeExecutionState)
  , "includeJobDocument" :: NullOrUndefined (IncludeJobDocument)
  , "executionNumber" :: NullOrUndefined (ExecutionNumber)
  }
derive instance newtypeUpdateJobExecutionRequest :: Newtype UpdateJobExecutionRequest _
derive instance repGenericUpdateJobExecutionRequest :: Generic UpdateJobExecutionRequest _
instance showUpdateJobExecutionRequest :: Show UpdateJobExecutionRequest where show = genericShow
instance decodeUpdateJobExecutionRequest :: Decode UpdateJobExecutionRequest where decode = genericDecode options
instance encodeUpdateJobExecutionRequest :: Encode UpdateJobExecutionRequest where encode = genericEncode options

-- | Constructs UpdateJobExecutionRequest from required parameters
newUpdateJobExecutionRequest :: JobId -> JobExecutionStatus -> ThingName -> UpdateJobExecutionRequest
newUpdateJobExecutionRequest _jobId _status _thingName = UpdateJobExecutionRequest { "jobId": _jobId, "status": _status, "thingName": _thingName, "executionNumber": (NullOrUndefined Nothing), "expectedVersion": (NullOrUndefined Nothing), "includeJobDocument": (NullOrUndefined Nothing), "includeJobExecutionState": (NullOrUndefined Nothing), "statusDetails": (NullOrUndefined Nothing) }

-- | Constructs UpdateJobExecutionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateJobExecutionRequest' :: JobId -> JobExecutionStatus -> ThingName -> ( { "jobId" :: (JobId) , "thingName" :: (ThingName) , "status" :: (JobExecutionStatus) , "statusDetails" :: NullOrUndefined (DetailsMap) , "expectedVersion" :: NullOrUndefined (ExpectedVersion) , "includeJobExecutionState" :: NullOrUndefined (IncludeExecutionState) , "includeJobDocument" :: NullOrUndefined (IncludeJobDocument) , "executionNumber" :: NullOrUndefined (ExecutionNumber) } -> {"jobId" :: (JobId) , "thingName" :: (ThingName) , "status" :: (JobExecutionStatus) , "statusDetails" :: NullOrUndefined (DetailsMap) , "expectedVersion" :: NullOrUndefined (ExpectedVersion) , "includeJobExecutionState" :: NullOrUndefined (IncludeExecutionState) , "includeJobDocument" :: NullOrUndefined (IncludeJobDocument) , "executionNumber" :: NullOrUndefined (ExecutionNumber) } ) -> UpdateJobExecutionRequest
newUpdateJobExecutionRequest' _jobId _status _thingName customize = (UpdateJobExecutionRequest <<< customize) { "jobId": _jobId, "status": _status, "thingName": _thingName, "executionNumber": (NullOrUndefined Nothing), "expectedVersion": (NullOrUndefined Nothing), "includeJobDocument": (NullOrUndefined Nothing), "includeJobExecutionState": (NullOrUndefined Nothing), "statusDetails": (NullOrUndefined Nothing) }



newtype UpdateJobExecutionResponse = UpdateJobExecutionResponse 
  { "executionState" :: NullOrUndefined (JobExecutionState)
  , "jobDocument" :: NullOrUndefined (JobDocument)
  }
derive instance newtypeUpdateJobExecutionResponse :: Newtype UpdateJobExecutionResponse _
derive instance repGenericUpdateJobExecutionResponse :: Generic UpdateJobExecutionResponse _
instance showUpdateJobExecutionResponse :: Show UpdateJobExecutionResponse where show = genericShow
instance decodeUpdateJobExecutionResponse :: Decode UpdateJobExecutionResponse where decode = genericDecode options
instance encodeUpdateJobExecutionResponse :: Encode UpdateJobExecutionResponse where encode = genericEncode options

-- | Constructs UpdateJobExecutionResponse from required parameters
newUpdateJobExecutionResponse :: UpdateJobExecutionResponse
newUpdateJobExecutionResponse  = UpdateJobExecutionResponse { "executionState": (NullOrUndefined Nothing), "jobDocument": (NullOrUndefined Nothing) }

-- | Constructs UpdateJobExecutionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateJobExecutionResponse' :: ( { "executionState" :: NullOrUndefined (JobExecutionState) , "jobDocument" :: NullOrUndefined (JobDocument) } -> {"executionState" :: NullOrUndefined (JobExecutionState) , "jobDocument" :: NullOrUndefined (JobDocument) } ) -> UpdateJobExecutionResponse
newUpdateJobExecutionResponse'  customize = (UpdateJobExecutionResponse <<< customize) { "executionState": (NullOrUndefined Nothing), "jobDocument": (NullOrUndefined Nothing) }



newtype VersionNumber = VersionNumber Number
derive instance newtypeVersionNumber :: Newtype VersionNumber _
derive instance repGenericVersionNumber :: Generic VersionNumber _
instance showVersionNumber :: Show VersionNumber where show = genericShow
instance decodeVersionNumber :: Decode VersionNumber where decode = genericDecode options
instance encodeVersionNumber :: Encode VersionNumber where encode = genericEncode options



newtype ErrorMessage' = ErrorMessage' String
derive instance newtypeErrorMessage' :: Newtype ErrorMessage' _
derive instance repGenericErrorMessage' :: Generic ErrorMessage' _
instance showErrorMessage' :: Show ErrorMessage' where show = genericShow
instance decodeErrorMessage' :: Decode ErrorMessage' where decode = genericDecode options
instance encodeErrorMessage' :: Encode ErrorMessage' where encode = genericEncode options

