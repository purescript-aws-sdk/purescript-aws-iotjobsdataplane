## Module AWS.IoTJobsDataPlane.Requests

#### `describeJobExecution`

``` purescript
describeJobExecution :: forall eff. Service -> DescribeJobExecutionRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobExecutionResponse
```

<p>Gets details of a job execution.</p>

#### `getPendingJobExecutions`

``` purescript
getPendingJobExecutions :: forall eff. Service -> GetPendingJobExecutionsRequest -> Aff (exception :: EXCEPTION | eff) GetPendingJobExecutionsResponse
```

<p>Gets the list of all jobs for a thing that are not in a terminal status.</p>

#### `startNextPendingJobExecution`

``` purescript
startNextPendingJobExecution :: forall eff. Service -> StartNextPendingJobExecutionRequest -> Aff (exception :: EXCEPTION | eff) StartNextPendingJobExecutionResponse
```

<p>Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.</p>

#### `updateJobExecution`

``` purescript
updateJobExecution :: forall eff. Service -> UpdateJobExecutionRequest -> Aff (exception :: EXCEPTION | eff) UpdateJobExecutionResponse
```

<p>Updates the status of a job execution.</p>


