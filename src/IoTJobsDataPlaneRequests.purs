
module AWS.IoTJobsDataPlane.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.IoTJobsDataPlane as IoTJobsDataPlane
import AWS.IoTJobsDataPlane.Types as IoTJobsDataPlaneTypes


-- | <p>Gets details of a job execution.</p>
describeJobExecution :: forall eff. IoTJobsDataPlane.Service -> IoTJobsDataPlaneTypes.DescribeJobExecutionRequest -> Aff (exception :: EXCEPTION | eff) IoTJobsDataPlaneTypes.DescribeJobExecutionResponse
describeJobExecution (IoTJobsDataPlane.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeJobExecution"


-- | <p>Gets the list of all jobs for a thing that are not in a terminal status.</p>
getPendingJobExecutions :: forall eff. IoTJobsDataPlane.Service -> IoTJobsDataPlaneTypes.GetPendingJobExecutionsRequest -> Aff (exception :: EXCEPTION | eff) IoTJobsDataPlaneTypes.GetPendingJobExecutionsResponse
getPendingJobExecutions (IoTJobsDataPlane.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getPendingJobExecutions"


-- | <p>Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.</p>
startNextPendingJobExecution :: forall eff. IoTJobsDataPlane.Service -> IoTJobsDataPlaneTypes.StartNextPendingJobExecutionRequest -> Aff (exception :: EXCEPTION | eff) IoTJobsDataPlaneTypes.StartNextPendingJobExecutionResponse
startNextPendingJobExecution (IoTJobsDataPlane.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startNextPendingJobExecution"


-- | <p>Updates the status of a job execution.</p>
updateJobExecution :: forall eff. IoTJobsDataPlane.Service -> IoTJobsDataPlaneTypes.UpdateJobExecutionRequest -> Aff (exception :: EXCEPTION | eff) IoTJobsDataPlaneTypes.UpdateJobExecutionResponse
updateJobExecution (IoTJobsDataPlane.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateJobExecution"
