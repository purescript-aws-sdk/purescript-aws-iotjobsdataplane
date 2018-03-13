## Module AWS.IoTJobsDataPlane

<p>AWS IoT Jobs is a service that allows you to define a set of jobs — remote operations that are sent to and executed on one or more devices connected to AWS IoT. For example, you can define a job that instructs a set of devices to download and install application or firmware updates, reboot, rotate certificates, or perform remote troubleshooting operations.</p> <p> To create a job, you make a job document which is a description of the remote operations to be performed, and you specify a list of targets that should perform the operations. The targets can be individual things, thing groups or both.</p> <p> AWS IoT Jobs sends a message to inform the targets that a job is available. The target starts the execution of the job by downloading the job document, performing the operations it specifies, and reporting its progress to AWS IoT. The Jobs service provides commands to track the progress of a job on a specific target and for all the targets of the job</p>

#### `describeJobExecution`

``` purescript
describeJobExecution :: forall eff. DescribeJobExecutionRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobExecutionResponse
```

<p>Gets details of a job execution.</p>

#### `getPendingJobExecutions`

``` purescript
getPendingJobExecutions :: forall eff. GetPendingJobExecutionsRequest -> Aff (exception :: EXCEPTION | eff) GetPendingJobExecutionsResponse
```

<p>Gets the list of all jobs for a thing that are not in a terminal status.</p>

#### `startNextPendingJobExecution`

``` purescript
startNextPendingJobExecution :: forall eff. StartNextPendingJobExecutionRequest -> Aff (exception :: EXCEPTION | eff) StartNextPendingJobExecutionResponse
```

<p>Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.</p>

#### `updateJobExecution`

``` purescript
updateJobExecution :: forall eff. UpdateJobExecutionRequest -> Aff (exception :: EXCEPTION | eff) UpdateJobExecutionResponse
```

<p>Updates the status of a job execution.</p>

#### `CertificateValidationException`

``` purescript
newtype CertificateValidationException
  = CertificateValidationException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The certificate is invalid.</p>

##### Instances
``` purescript
Newtype CertificateValidationException _
Generic CertificateValidationException _
Show CertificateValidationException
Decode CertificateValidationException
Encode CertificateValidationException
```

#### `newCertificateValidationException`

``` purescript
newCertificateValidationException :: CertificateValidationException
```

Constructs CertificateValidationException from required parameters

#### `newCertificateValidationException'`

``` purescript
newCertificateValidationException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> CertificateValidationException
```

Constructs CertificateValidationException's fields from required parameters

#### `DescribeJobExecutionJobId`

``` purescript
newtype DescribeJobExecutionJobId
  = DescribeJobExecutionJobId String
```

##### Instances
``` purescript
Newtype DescribeJobExecutionJobId _
Generic DescribeJobExecutionJobId _
Show DescribeJobExecutionJobId
Decode DescribeJobExecutionJobId
Encode DescribeJobExecutionJobId
```

#### `DescribeJobExecutionRequest`

``` purescript
newtype DescribeJobExecutionRequest
  = DescribeJobExecutionRequest { jobId :: DescribeJobExecutionJobId, thingName :: ThingName, includeJobDocument :: NullOrUndefined (IncludeJobDocument), executionNumber :: NullOrUndefined (ExecutionNumber) }
```

##### Instances
``` purescript
Newtype DescribeJobExecutionRequest _
Generic DescribeJobExecutionRequest _
Show DescribeJobExecutionRequest
Decode DescribeJobExecutionRequest
Encode DescribeJobExecutionRequest
```

#### `newDescribeJobExecutionRequest`

``` purescript
newDescribeJobExecutionRequest :: DescribeJobExecutionJobId -> ThingName -> DescribeJobExecutionRequest
```

Constructs DescribeJobExecutionRequest from required parameters

#### `newDescribeJobExecutionRequest'`

``` purescript
newDescribeJobExecutionRequest' :: DescribeJobExecutionJobId -> ThingName -> ({ jobId :: DescribeJobExecutionJobId, thingName :: ThingName, includeJobDocument :: NullOrUndefined (IncludeJobDocument), executionNumber :: NullOrUndefined (ExecutionNumber) } -> { jobId :: DescribeJobExecutionJobId, thingName :: ThingName, includeJobDocument :: NullOrUndefined (IncludeJobDocument), executionNumber :: NullOrUndefined (ExecutionNumber) }) -> DescribeJobExecutionRequest
```

Constructs DescribeJobExecutionRequest's fields from required parameters

#### `DescribeJobExecutionResponse`

``` purescript
newtype DescribeJobExecutionResponse
  = DescribeJobExecutionResponse { execution :: NullOrUndefined (JobExecution) }
```

##### Instances
``` purescript
Newtype DescribeJobExecutionResponse _
Generic DescribeJobExecutionResponse _
Show DescribeJobExecutionResponse
Decode DescribeJobExecutionResponse
Encode DescribeJobExecutionResponse
```

#### `newDescribeJobExecutionResponse`

``` purescript
newDescribeJobExecutionResponse :: DescribeJobExecutionResponse
```

Constructs DescribeJobExecutionResponse from required parameters

#### `newDescribeJobExecutionResponse'`

``` purescript
newDescribeJobExecutionResponse' :: ({ execution :: NullOrUndefined (JobExecution) } -> { execution :: NullOrUndefined (JobExecution) }) -> DescribeJobExecutionResponse
```

Constructs DescribeJobExecutionResponse's fields from required parameters

#### `DetailsKey`

``` purescript
newtype DetailsKey
  = DetailsKey String
```

##### Instances
``` purescript
Newtype DetailsKey _
Generic DetailsKey _
Show DetailsKey
Decode DetailsKey
Encode DetailsKey
```

#### `DetailsMap`

``` purescript
newtype DetailsMap
  = DetailsMap (StrMap DetailsValue)
```

##### Instances
``` purescript
Newtype DetailsMap _
Generic DetailsMap _
Show DetailsMap
Decode DetailsMap
Encode DetailsMap
```

#### `DetailsValue`

``` purescript
newtype DetailsValue
  = DetailsValue String
```

##### Instances
``` purescript
Newtype DetailsValue _
Generic DetailsValue _
Show DetailsValue
Decode DetailsValue
Encode DetailsValue
```

#### `ExecutionNumber`

``` purescript
newtype ExecutionNumber
  = ExecutionNumber Number
```

##### Instances
``` purescript
Newtype ExecutionNumber _
Generic ExecutionNumber _
Show ExecutionNumber
Decode ExecutionNumber
Encode ExecutionNumber
```

#### `ExpectedVersion`

``` purescript
newtype ExpectedVersion
  = ExpectedVersion Number
```

##### Instances
``` purescript
Newtype ExpectedVersion _
Generic ExpectedVersion _
Show ExpectedVersion
Decode ExpectedVersion
Encode ExpectedVersion
```

#### `GetPendingJobExecutionsRequest`

``` purescript
newtype GetPendingJobExecutionsRequest
  = GetPendingJobExecutionsRequest { thingName :: ThingName }
```

##### Instances
``` purescript
Newtype GetPendingJobExecutionsRequest _
Generic GetPendingJobExecutionsRequest _
Show GetPendingJobExecutionsRequest
Decode GetPendingJobExecutionsRequest
Encode GetPendingJobExecutionsRequest
```

#### `newGetPendingJobExecutionsRequest`

``` purescript
newGetPendingJobExecutionsRequest :: ThingName -> GetPendingJobExecutionsRequest
```

Constructs GetPendingJobExecutionsRequest from required parameters

#### `newGetPendingJobExecutionsRequest'`

``` purescript
newGetPendingJobExecutionsRequest' :: ThingName -> ({ thingName :: ThingName } -> { thingName :: ThingName }) -> GetPendingJobExecutionsRequest
```

Constructs GetPendingJobExecutionsRequest's fields from required parameters

#### `GetPendingJobExecutionsResponse`

``` purescript
newtype GetPendingJobExecutionsResponse
  = GetPendingJobExecutionsResponse { inProgressJobs :: NullOrUndefined (JobExecutionSummaryList), queuedJobs :: NullOrUndefined (JobExecutionSummaryList) }
```

##### Instances
``` purescript
Newtype GetPendingJobExecutionsResponse _
Generic GetPendingJobExecutionsResponse _
Show GetPendingJobExecutionsResponse
Decode GetPendingJobExecutionsResponse
Encode GetPendingJobExecutionsResponse
```

#### `newGetPendingJobExecutionsResponse`

``` purescript
newGetPendingJobExecutionsResponse :: GetPendingJobExecutionsResponse
```

Constructs GetPendingJobExecutionsResponse from required parameters

#### `newGetPendingJobExecutionsResponse'`

``` purescript
newGetPendingJobExecutionsResponse' :: ({ inProgressJobs :: NullOrUndefined (JobExecutionSummaryList), queuedJobs :: NullOrUndefined (JobExecutionSummaryList) } -> { inProgressJobs :: NullOrUndefined (JobExecutionSummaryList), queuedJobs :: NullOrUndefined (JobExecutionSummaryList) }) -> GetPendingJobExecutionsResponse
```

Constructs GetPendingJobExecutionsResponse's fields from required parameters

#### `IncludeExecutionState`

``` purescript
newtype IncludeExecutionState
  = IncludeExecutionState Boolean
```

##### Instances
``` purescript
Newtype IncludeExecutionState _
Generic IncludeExecutionState _
Show IncludeExecutionState
Decode IncludeExecutionState
Encode IncludeExecutionState
```

#### `IncludeJobDocument`

``` purescript
newtype IncludeJobDocument
  = IncludeJobDocument Boolean
```

##### Instances
``` purescript
Newtype IncludeJobDocument _
Generic IncludeJobDocument _
Show IncludeJobDocument
Decode IncludeJobDocument
Encode IncludeJobDocument
```

#### `InvalidRequestException`

``` purescript
newtype InvalidRequestException
  = InvalidRequestException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The contents of the request were invalid. For example, this code is returned when an UpdateJobExecution request contains invalid status details. The message contains details about the error.</p>

##### Instances
``` purescript
Newtype InvalidRequestException _
Generic InvalidRequestException _
Show InvalidRequestException
Decode InvalidRequestException
Encode InvalidRequestException
```

#### `newInvalidRequestException`

``` purescript
newInvalidRequestException :: InvalidRequestException
```

Constructs InvalidRequestException from required parameters

#### `newInvalidRequestException'`

``` purescript
newInvalidRequestException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> InvalidRequestException
```

Constructs InvalidRequestException's fields from required parameters

#### `InvalidStateTransitionException`

``` purescript
newtype InvalidStateTransitionException
  = InvalidStateTransitionException { message :: NullOrUndefined (ErrorMessage') }
```

<p>An update attempted to change the job execution to a state that is invalid because of the job execution's current state (for example, an attempt to change a request in state SUCCESS to state IN_PROGRESS). In this case, the body of the error message also contains the executionState field.</p>

##### Instances
``` purescript
Newtype InvalidStateTransitionException _
Generic InvalidStateTransitionException _
Show InvalidStateTransitionException
Decode InvalidStateTransitionException
Encode InvalidStateTransitionException
```

#### `newInvalidStateTransitionException`

``` purescript
newInvalidStateTransitionException :: InvalidStateTransitionException
```

Constructs InvalidStateTransitionException from required parameters

#### `newInvalidStateTransitionException'`

``` purescript
newInvalidStateTransitionException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> InvalidStateTransitionException
```

Constructs InvalidStateTransitionException's fields from required parameters

#### `JobDocument`

``` purescript
newtype JobDocument
  = JobDocument String
```

##### Instances
``` purescript
Newtype JobDocument _
Generic JobDocument _
Show JobDocument
Decode JobDocument
Encode JobDocument
```

#### `JobExecution`

``` purescript
newtype JobExecution
  = JobExecution { jobId :: NullOrUndefined (JobId), thingName :: NullOrUndefined (ThingName), status :: NullOrUndefined (JobExecutionStatus), statusDetails :: NullOrUndefined (DetailsMap), queuedAt :: NullOrUndefined (QueuedAt), startedAt :: NullOrUndefined (StartedAt), lastUpdatedAt :: NullOrUndefined (LastUpdatedAt), versionNumber :: NullOrUndefined (VersionNumber), executionNumber :: NullOrUndefined (ExecutionNumber), jobDocument :: NullOrUndefined (JobDocument) }
```

<p>Contains data about a job execution.</p>

##### Instances
``` purescript
Newtype JobExecution _
Generic JobExecution _
Show JobExecution
Decode JobExecution
Encode JobExecution
```

#### `newJobExecution`

``` purescript
newJobExecution :: JobExecution
```

Constructs JobExecution from required parameters

#### `newJobExecution'`

``` purescript
newJobExecution' :: ({ jobId :: NullOrUndefined (JobId), thingName :: NullOrUndefined (ThingName), status :: NullOrUndefined (JobExecutionStatus), statusDetails :: NullOrUndefined (DetailsMap), queuedAt :: NullOrUndefined (QueuedAt), startedAt :: NullOrUndefined (StartedAt), lastUpdatedAt :: NullOrUndefined (LastUpdatedAt), versionNumber :: NullOrUndefined (VersionNumber), executionNumber :: NullOrUndefined (ExecutionNumber), jobDocument :: NullOrUndefined (JobDocument) } -> { jobId :: NullOrUndefined (JobId), thingName :: NullOrUndefined (ThingName), status :: NullOrUndefined (JobExecutionStatus), statusDetails :: NullOrUndefined (DetailsMap), queuedAt :: NullOrUndefined (QueuedAt), startedAt :: NullOrUndefined (StartedAt), lastUpdatedAt :: NullOrUndefined (LastUpdatedAt), versionNumber :: NullOrUndefined (VersionNumber), executionNumber :: NullOrUndefined (ExecutionNumber), jobDocument :: NullOrUndefined (JobDocument) }) -> JobExecution
```

Constructs JobExecution's fields from required parameters

#### `JobExecutionState`

``` purescript
newtype JobExecutionState
  = JobExecutionState { status :: NullOrUndefined (JobExecutionStatus), statusDetails :: NullOrUndefined (DetailsMap), versionNumber :: NullOrUndefined (VersionNumber) }
```

<p>Contains data about the state of a job execution.</p>

##### Instances
``` purescript
Newtype JobExecutionState _
Generic JobExecutionState _
Show JobExecutionState
Decode JobExecutionState
Encode JobExecutionState
```

#### `newJobExecutionState`

``` purescript
newJobExecutionState :: JobExecutionState
```

Constructs JobExecutionState from required parameters

#### `newJobExecutionState'`

``` purescript
newJobExecutionState' :: ({ status :: NullOrUndefined (JobExecutionStatus), statusDetails :: NullOrUndefined (DetailsMap), versionNumber :: NullOrUndefined (VersionNumber) } -> { status :: NullOrUndefined (JobExecutionStatus), statusDetails :: NullOrUndefined (DetailsMap), versionNumber :: NullOrUndefined (VersionNumber) }) -> JobExecutionState
```

Constructs JobExecutionState's fields from required parameters

#### `JobExecutionStatus`

``` purescript
newtype JobExecutionStatus
  = JobExecutionStatus String
```

##### Instances
``` purescript
Newtype JobExecutionStatus _
Generic JobExecutionStatus _
Show JobExecutionStatus
Decode JobExecutionStatus
Encode JobExecutionStatus
```

#### `JobExecutionSummary`

``` purescript
newtype JobExecutionSummary
  = JobExecutionSummary { jobId :: NullOrUndefined (JobId), queuedAt :: NullOrUndefined (QueuedAt), startedAt :: NullOrUndefined (StartedAt), lastUpdatedAt :: NullOrUndefined (LastUpdatedAt), versionNumber :: NullOrUndefined (VersionNumber), executionNumber :: NullOrUndefined (ExecutionNumber) }
```

<p>Contains a subset of information about a job execution.</p>

##### Instances
``` purescript
Newtype JobExecutionSummary _
Generic JobExecutionSummary _
Show JobExecutionSummary
Decode JobExecutionSummary
Encode JobExecutionSummary
```

#### `newJobExecutionSummary`

``` purescript
newJobExecutionSummary :: JobExecutionSummary
```

Constructs JobExecutionSummary from required parameters

#### `newJobExecutionSummary'`

``` purescript
newJobExecutionSummary' :: ({ jobId :: NullOrUndefined (JobId), queuedAt :: NullOrUndefined (QueuedAt), startedAt :: NullOrUndefined (StartedAt), lastUpdatedAt :: NullOrUndefined (LastUpdatedAt), versionNumber :: NullOrUndefined (VersionNumber), executionNumber :: NullOrUndefined (ExecutionNumber) } -> { jobId :: NullOrUndefined (JobId), queuedAt :: NullOrUndefined (QueuedAt), startedAt :: NullOrUndefined (StartedAt), lastUpdatedAt :: NullOrUndefined (LastUpdatedAt), versionNumber :: NullOrUndefined (VersionNumber), executionNumber :: NullOrUndefined (ExecutionNumber) }) -> JobExecutionSummary
```

Constructs JobExecutionSummary's fields from required parameters

#### `JobExecutionSummaryList`

``` purescript
newtype JobExecutionSummaryList
  = JobExecutionSummaryList (Array JobExecutionSummary)
```

##### Instances
``` purescript
Newtype JobExecutionSummaryList _
Generic JobExecutionSummaryList _
Show JobExecutionSummaryList
Decode JobExecutionSummaryList
Encode JobExecutionSummaryList
```

#### `JobId`

``` purescript
newtype JobId
  = JobId String
```

##### Instances
``` purescript
Newtype JobId _
Generic JobId _
Show JobId
Decode JobId
Encode JobId
```

#### `LastUpdatedAt`

``` purescript
newtype LastUpdatedAt
  = LastUpdatedAt Number
```

##### Instances
``` purescript
Newtype LastUpdatedAt _
Generic LastUpdatedAt _
Show LastUpdatedAt
Decode LastUpdatedAt
Encode LastUpdatedAt
```

#### `QueuedAt`

``` purescript
newtype QueuedAt
  = QueuedAt Number
```

##### Instances
``` purescript
Newtype QueuedAt _
Generic QueuedAt _
Show QueuedAt
Decode QueuedAt
Encode QueuedAt
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The specified resource does not exist.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `ServiceUnavailableException`

``` purescript
newtype ServiceUnavailableException
  = ServiceUnavailableException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The service is temporarily unavailable.</p>

##### Instances
``` purescript
Newtype ServiceUnavailableException _
Generic ServiceUnavailableException _
Show ServiceUnavailableException
Decode ServiceUnavailableException
Encode ServiceUnavailableException
```

#### `newServiceUnavailableException`

``` purescript
newServiceUnavailableException :: ServiceUnavailableException
```

Constructs ServiceUnavailableException from required parameters

#### `newServiceUnavailableException'`

``` purescript
newServiceUnavailableException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> ServiceUnavailableException
```

Constructs ServiceUnavailableException's fields from required parameters

#### `StartNextPendingJobExecutionRequest`

``` purescript
newtype StartNextPendingJobExecutionRequest
  = StartNextPendingJobExecutionRequest { thingName :: ThingName, statusDetails :: NullOrUndefined (DetailsMap) }
```

##### Instances
``` purescript
Newtype StartNextPendingJobExecutionRequest _
Generic StartNextPendingJobExecutionRequest _
Show StartNextPendingJobExecutionRequest
Decode StartNextPendingJobExecutionRequest
Encode StartNextPendingJobExecutionRequest
```

#### `newStartNextPendingJobExecutionRequest`

``` purescript
newStartNextPendingJobExecutionRequest :: ThingName -> StartNextPendingJobExecutionRequest
```

Constructs StartNextPendingJobExecutionRequest from required parameters

#### `newStartNextPendingJobExecutionRequest'`

``` purescript
newStartNextPendingJobExecutionRequest' :: ThingName -> ({ thingName :: ThingName, statusDetails :: NullOrUndefined (DetailsMap) } -> { thingName :: ThingName, statusDetails :: NullOrUndefined (DetailsMap) }) -> StartNextPendingJobExecutionRequest
```

Constructs StartNextPendingJobExecutionRequest's fields from required parameters

#### `StartNextPendingJobExecutionResponse`

``` purescript
newtype StartNextPendingJobExecutionResponse
  = StartNextPendingJobExecutionResponse { execution :: NullOrUndefined (JobExecution) }
```

##### Instances
``` purescript
Newtype StartNextPendingJobExecutionResponse _
Generic StartNextPendingJobExecutionResponse _
Show StartNextPendingJobExecutionResponse
Decode StartNextPendingJobExecutionResponse
Encode StartNextPendingJobExecutionResponse
```

#### `newStartNextPendingJobExecutionResponse`

``` purescript
newStartNextPendingJobExecutionResponse :: StartNextPendingJobExecutionResponse
```

Constructs StartNextPendingJobExecutionResponse from required parameters

#### `newStartNextPendingJobExecutionResponse'`

``` purescript
newStartNextPendingJobExecutionResponse' :: ({ execution :: NullOrUndefined (JobExecution) } -> { execution :: NullOrUndefined (JobExecution) }) -> StartNextPendingJobExecutionResponse
```

Constructs StartNextPendingJobExecutionResponse's fields from required parameters

#### `StartedAt`

``` purescript
newtype StartedAt
  = StartedAt Number
```

##### Instances
``` purescript
Newtype StartedAt _
Generic StartedAt _
Show StartedAt
Decode StartedAt
Encode StartedAt
```

#### `TerminalStateException`

``` purescript
newtype TerminalStateException
  = TerminalStateException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The job is in a terminal state.</p>

##### Instances
``` purescript
Newtype TerminalStateException _
Generic TerminalStateException _
Show TerminalStateException
Decode TerminalStateException
Encode TerminalStateException
```

#### `newTerminalStateException`

``` purescript
newTerminalStateException :: TerminalStateException
```

Constructs TerminalStateException from required parameters

#### `newTerminalStateException'`

``` purescript
newTerminalStateException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> TerminalStateException
```

Constructs TerminalStateException's fields from required parameters

#### `ThingName`

``` purescript
newtype ThingName
  = ThingName String
```

##### Instances
``` purescript
Newtype ThingName _
Generic ThingName _
Show ThingName
Decode ThingName
Encode ThingName
```

#### `ThrottlingException`

``` purescript
newtype ThrottlingException
  = ThrottlingException { message :: NullOrUndefined (ErrorMessage') }
```

<p>The rate exceeds the limit.</p>

##### Instances
``` purescript
Newtype ThrottlingException _
Generic ThrottlingException _
Show ThrottlingException
Decode ThrottlingException
Encode ThrottlingException
```

#### `newThrottlingException`

``` purescript
newThrottlingException :: ThrottlingException
```

Constructs ThrottlingException from required parameters

#### `newThrottlingException'`

``` purescript
newThrottlingException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> ThrottlingException
```

Constructs ThrottlingException's fields from required parameters

#### `UpdateJobExecutionRequest`

``` purescript
newtype UpdateJobExecutionRequest
  = UpdateJobExecutionRequest { jobId :: JobId, thingName :: ThingName, status :: JobExecutionStatus, statusDetails :: NullOrUndefined (DetailsMap), expectedVersion :: NullOrUndefined (ExpectedVersion), includeJobExecutionState :: NullOrUndefined (IncludeExecutionState), includeJobDocument :: NullOrUndefined (IncludeJobDocument), executionNumber :: NullOrUndefined (ExecutionNumber) }
```

##### Instances
``` purescript
Newtype UpdateJobExecutionRequest _
Generic UpdateJobExecutionRequest _
Show UpdateJobExecutionRequest
Decode UpdateJobExecutionRequest
Encode UpdateJobExecutionRequest
```

#### `newUpdateJobExecutionRequest`

``` purescript
newUpdateJobExecutionRequest :: JobId -> JobExecutionStatus -> ThingName -> UpdateJobExecutionRequest
```

Constructs UpdateJobExecutionRequest from required parameters

#### `newUpdateJobExecutionRequest'`

``` purescript
newUpdateJobExecutionRequest' :: JobId -> JobExecutionStatus -> ThingName -> ({ jobId :: JobId, thingName :: ThingName, status :: JobExecutionStatus, statusDetails :: NullOrUndefined (DetailsMap), expectedVersion :: NullOrUndefined (ExpectedVersion), includeJobExecutionState :: NullOrUndefined (IncludeExecutionState), includeJobDocument :: NullOrUndefined (IncludeJobDocument), executionNumber :: NullOrUndefined (ExecutionNumber) } -> { jobId :: JobId, thingName :: ThingName, status :: JobExecutionStatus, statusDetails :: NullOrUndefined (DetailsMap), expectedVersion :: NullOrUndefined (ExpectedVersion), includeJobExecutionState :: NullOrUndefined (IncludeExecutionState), includeJobDocument :: NullOrUndefined (IncludeJobDocument), executionNumber :: NullOrUndefined (ExecutionNumber) }) -> UpdateJobExecutionRequest
```

Constructs UpdateJobExecutionRequest's fields from required parameters

#### `UpdateJobExecutionResponse`

``` purescript
newtype UpdateJobExecutionResponse
  = UpdateJobExecutionResponse { executionState :: NullOrUndefined (JobExecutionState), jobDocument :: NullOrUndefined (JobDocument) }
```

##### Instances
``` purescript
Newtype UpdateJobExecutionResponse _
Generic UpdateJobExecutionResponse _
Show UpdateJobExecutionResponse
Decode UpdateJobExecutionResponse
Encode UpdateJobExecutionResponse
```

#### `newUpdateJobExecutionResponse`

``` purescript
newUpdateJobExecutionResponse :: UpdateJobExecutionResponse
```

Constructs UpdateJobExecutionResponse from required parameters

#### `newUpdateJobExecutionResponse'`

``` purescript
newUpdateJobExecutionResponse' :: ({ executionState :: NullOrUndefined (JobExecutionState), jobDocument :: NullOrUndefined (JobDocument) } -> { executionState :: NullOrUndefined (JobExecutionState), jobDocument :: NullOrUndefined (JobDocument) }) -> UpdateJobExecutionResponse
```

Constructs UpdateJobExecutionResponse's fields from required parameters

#### `VersionNumber`

``` purescript
newtype VersionNumber
  = VersionNumber Number
```

##### Instances
``` purescript
Newtype VersionNumber _
Generic VersionNumber _
Show VersionNumber
Decode VersionNumber
Encode VersionNumber
```

#### `ErrorMessage'`

``` purescript
newtype ErrorMessage'
  = ErrorMessage' String
```

##### Instances
``` purescript
Newtype ErrorMessage' _
Generic ErrorMessage' _
Show ErrorMessage'
Decode ErrorMessage'
Encode ErrorMessage'
```


