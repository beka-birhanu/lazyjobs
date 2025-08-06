# Lazyjob v1.0

This is a job scheduler currently under development. By the end of development, it will support all reliable and long-running workflows, including support for cron jobs and stateful re-runs. For now, only the expected flows listed below will be supported.

## Expected Flows

### A successful workflow executed and triggered by the client

1. The client registers a queue and workers with the server.
2. The client registers workflows and activities on the workers.
3. The client starts the workers.
4. Workers begin polling the server for executions.
5. The client sends a start workflow request with the queue name and workflow parameters.
6. The server enqueues the information needed for the workers to start the execution.
7. The information in the queue is picked up by the first polling worker.
8. The state of the execution is reported back to the server at every `Milestone`.
9. Workers notify the server when the execution completes successfully without errors.

## Glossary

* **`Milestone`**: A point in the execution of a running workflow where one or more activities have completed, and the workflow is waiting for a signal or external input to proceed.

<div align="center">
  <img src="./assets/logo.png" alt="logo" width="150"/>
</div>
