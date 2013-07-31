part of taskqueue_v1beta2_api;

class TaskqueuesResource_ {

  final Client _client;

  TaskqueuesResource_(Client client) :
      _client = client;

  /**
   * Get detailed information about a TaskQueue.
   *
   * [project] - The project under which the queue lies.
   *
   * [taskqueue] - The id of the taskqueue to get the properties of.
   *
   * [getStats] - Whether to get stats. Optional.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TaskQueue> get(core.String project, core.String taskqueue, {core.bool getStats, core.Map optParams}) {
    var url = "{project}/taskqueues/{taskqueue}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (getStats != null) queryParams["getStats"] = getStats;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (taskqueue == null) paramErrors.add("taskqueue is required");
    if (taskqueue != null) urlParams["taskqueue"] = taskqueue;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TaskQueue.fromJson(data));
  }
}

class TasksResource_ {

  final Client _client;

  TasksResource_(Client client) :
      _client = client;

  /**
   * Delete a task from a TaskQueue.
   *
   * [project] - The project under which the queue lies.
   *
   * [taskqueue] - The taskqueue to delete a task from.
   *
   * [task] - The id of the task to delete.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String project, core.String taskqueue, core.String task, {core.Map optParams}) {
    var url = "{project}/taskqueues/{taskqueue}/tasks/{task}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (task == null) paramErrors.add("task is required");
    if (task != null) urlParams["task"] = task;
    if (taskqueue == null) paramErrors.add("taskqueue is required");
    if (taskqueue != null) urlParams["taskqueue"] = taskqueue;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Get a particular task from a TaskQueue.
   *
   * [project] - The project under which the queue lies.
   *
   * [taskqueue] - The taskqueue in which the task belongs.
   *
   * [task] - The task to get properties of.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Task> get(core.String project, core.String taskqueue, core.String task, {core.Map optParams}) {
    var url = "{project}/taskqueues/{taskqueue}/tasks/{task}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (task == null) paramErrors.add("task is required");
    if (task != null) urlParams["task"] = task;
    if (taskqueue == null) paramErrors.add("taskqueue is required");
    if (taskqueue != null) urlParams["taskqueue"] = taskqueue;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Task.fromJson(data));
  }

  /**
   * Insert a new task in a TaskQueue
   *
   * [request] - Task to send in this request
   *
   * [project] - The project under which the queue lies
   *
   * [taskqueue] - The taskqueue to insert the task into
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Task> insert(Task request, core.String project, core.String taskqueue, {core.Map optParams}) {
    var url = "{project}/taskqueues/{taskqueue}/tasks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (taskqueue == null) paramErrors.add("taskqueue is required");
    if (taskqueue != null) urlParams["taskqueue"] = taskqueue;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Task.fromJson(data));
  }

  /**
   * Lease 1 or more tasks from a TaskQueue.
   *
   * [project] - The project under which the queue lies.
   *
   * [taskqueue] - The taskqueue to lease a task from.
   *
   * [numTasks] - The number of tasks to lease.
   *
   * [leaseSecs] - The lease in seconds.
   *
   * [groupByTag] - When true, all returned tasks will have the same tag
   *
   * [tag] - The tag allowed for tasks in the response. Must only be specified if group_by_tag is true. If group_by_tag is true and tag is not specified the tag will be that of the oldest task by eta, i.e. the first available tag
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Tasks> lease(core.String project, core.String taskqueue, core.int numTasks, core.int leaseSecs, {core.bool groupByTag, core.String tag, core.Map optParams}) {
    var url = "{project}/taskqueues/{taskqueue}/tasks/lease";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (groupByTag != null) queryParams["groupByTag"] = groupByTag;
    if (leaseSecs == null) paramErrors.add("leaseSecs is required");
    if (leaseSecs != null) queryParams["leaseSecs"] = leaseSecs;
    if (numTasks == null) paramErrors.add("numTasks is required");
    if (numTasks != null) queryParams["numTasks"] = numTasks;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (tag != null) queryParams["tag"] = tag;
    if (taskqueue == null) paramErrors.add("taskqueue is required");
    if (taskqueue != null) urlParams["taskqueue"] = taskqueue;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Tasks.fromJson(data));
  }

  /**
   * List Tasks in a TaskQueue
   *
   * [project] - The project under which the queue lies.
   *
   * [taskqueue] - The id of the taskqueue to list tasks from.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Tasks2> list(core.String project, core.String taskqueue, {core.Map optParams}) {
    var url = "{project}/taskqueues/{taskqueue}/tasks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (taskqueue == null) paramErrors.add("taskqueue is required");
    if (taskqueue != null) urlParams["taskqueue"] = taskqueue;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Tasks2.fromJson(data));
  }

  /**
   * Update tasks that are leased out of a TaskQueue. This method supports patch semantics.
   *
   * [request] - Task to send in this request
   *
   * [project] - The project under which the queue lies.
   *
   * [taskqueue]
   *
   * [task]
   *
   * [newLeaseSeconds] - The new lease in seconds.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Task> patch(Task request, core.String project, core.String taskqueue, core.String task, core.int newLeaseSeconds, {core.Map optParams}) {
    var url = "{project}/taskqueues/{taskqueue}/tasks/{task}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (newLeaseSeconds == null) paramErrors.add("newLeaseSeconds is required");
    if (newLeaseSeconds != null) queryParams["newLeaseSeconds"] = newLeaseSeconds;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (task == null) paramErrors.add("task is required");
    if (task != null) urlParams["task"] = task;
    if (taskqueue == null) paramErrors.add("taskqueue is required");
    if (taskqueue != null) urlParams["taskqueue"] = taskqueue;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Task.fromJson(data));
  }

  /**
   * Update tasks that are leased out of a TaskQueue.
   *
   * [request] - Task to send in this request
   *
   * [project] - The project under which the queue lies.
   *
   * [taskqueue]
   *
   * [task]
   *
   * [newLeaseSeconds] - The new lease in seconds.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Task> update(Task request, core.String project, core.String taskqueue, core.String task, core.int newLeaseSeconds, {core.Map optParams}) {
    var url = "{project}/taskqueues/{taskqueue}/tasks/{task}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (newLeaseSeconds == null) paramErrors.add("newLeaseSeconds is required");
    if (newLeaseSeconds != null) queryParams["newLeaseSeconds"] = newLeaseSeconds;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (task == null) paramErrors.add("task is required");
    if (task != null) urlParams["task"] = task;
    if (taskqueue == null) paramErrors.add("taskqueue is required");
    if (taskqueue != null) urlParams["taskqueue"] = taskqueue;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Task.fromJson(data));
  }
}

