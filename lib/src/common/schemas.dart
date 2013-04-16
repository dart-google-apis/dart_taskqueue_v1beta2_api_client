part of taskqueue_v1beta2_api_client;

class Task {

  /** Time (in seconds since the epoch) at which the task was enqueued. */
  core.String enqueueTimestamp;

  /** Name of the task. */
  core.String id;

  /** The kind of object returned, in this case set to task. */
  core.String kind;

  /** Time (in seconds since the epoch) at which the task lease will expire. This value is 0 if the task isnt currently leased out to a worker. */
  core.String leaseTimestamp;

  /** A bag of bytes which is the task payload. The payload on the JSON side is always Base64 encoded. */
  core.String payloadBase64;

  /** Name of the queue that the task is in. */
  core.String queueName;

  /** The number of leases applied to this task. */
  core.int retry_count;

  /** Tag for the task, could be used later to lease tasks grouped by a specific tag. */
  core.String tag;

  /** Create new Task from JSON data */
  Task.fromJson(core.Map json) {
    if (json.containsKey("enqueueTimestamp")) {
      enqueueTimestamp = json["enqueueTimestamp"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("leaseTimestamp")) {
      leaseTimestamp = json["leaseTimestamp"];
    }
    if (json.containsKey("payloadBase64")) {
      payloadBase64 = json["payloadBase64"];
    }
    if (json.containsKey("queueName")) {
      queueName = json["queueName"];
    }
    if (json.containsKey("retry_count")) {
      retry_count = json["retry_count"];
    }
    if (json.containsKey("tag")) {
      tag = json["tag"];
    }
  }

  /** Create JSON Object for Task */
  core.Map toJson() {
    var output = new core.Map();

    if (enqueueTimestamp != null) {
      output["enqueueTimestamp"] = enqueueTimestamp;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (leaseTimestamp != null) {
      output["leaseTimestamp"] = leaseTimestamp;
    }
    if (payloadBase64 != null) {
      output["payloadBase64"] = payloadBase64;
    }
    if (queueName != null) {
      output["queueName"] = queueName;
    }
    if (retry_count != null) {
      output["retry_count"] = retry_count;
    }
    if (tag != null) {
      output["tag"] = tag;
    }

    return output;
  }

  /** Return String representation of Task */
  core.String toString() => JSON.stringify(this.toJson());

}

class TaskQueue {

  /** ACLs that are applicable to this TaskQueue object. */
  TaskQueueAcl acl;

  /** Name of the taskqueue. */
  core.String id;

  /** The kind of REST object returned, in this case taskqueue. */
  core.String kind;

  /** The number of times we should lease out tasks before giving up on them. If unset we lease them out forever until a worker deletes the task. */
  core.int maxLeases;

  /** Statistics for the TaskQueue object in question. */
  TaskQueueStats stats;

  /** Create new TaskQueue from JSON data */
  TaskQueue.fromJson(core.Map json) {
    if (json.containsKey("acl")) {
      acl = new TaskQueueAcl.fromJson(json["acl"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maxLeases")) {
      maxLeases = json["maxLeases"];
    }
    if (json.containsKey("stats")) {
      stats = new TaskQueueStats.fromJson(json["stats"]);
    }
  }

  /** Create JSON Object for TaskQueue */
  core.Map toJson() {
    var output = new core.Map();

    if (acl != null) {
      output["acl"] = acl.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maxLeases != null) {
      output["maxLeases"] = maxLeases;
    }
    if (stats != null) {
      output["stats"] = stats.toJson();
    }

    return output;
  }

  /** Return String representation of TaskQueue */
  core.String toString() => JSON.stringify(this.toJson());

}

/** ACLs that are applicable to this TaskQueue object. */
class TaskQueueAcl {

  /** Email addresses of users who are "admins" of the TaskQueue. This means they can control the queue, eg set ACLs for the queue. */
  core.List<core.String> adminEmails;

  /** Email addresses of users who can "consume" tasks from the TaskQueue. This means they can Dequeue and Delete tasks from the queue. */
  core.List<core.String> consumerEmails;

  /** Email addresses of users who can "produce" tasks into the TaskQueue. This means they can Insert tasks into the queue. */
  core.List<core.String> producerEmails;

  /** Create new TaskQueueAcl from JSON data */
  TaskQueueAcl.fromJson(core.Map json) {
    if (json.containsKey("adminEmails")) {
      adminEmails = [];
      json["adminEmails"].forEach((item) {
        adminEmails.add(item);
      });
    }
    if (json.containsKey("consumerEmails")) {
      consumerEmails = [];
      json["consumerEmails"].forEach((item) {
        consumerEmails.add(item);
      });
    }
    if (json.containsKey("producerEmails")) {
      producerEmails = [];
      json["producerEmails"].forEach((item) {
        producerEmails.add(item);
      });
    }
  }

  /** Create JSON Object for TaskQueueAcl */
  core.Map toJson() {
    var output = new core.Map();

    if (adminEmails != null) {
      output["adminEmails"] = new core.List();
      adminEmails.forEach((item) {
        output["adminEmails"].add(item);
      });
    }
    if (consumerEmails != null) {
      output["consumerEmails"] = new core.List();
      consumerEmails.forEach((item) {
        output["consumerEmails"].add(item);
      });
    }
    if (producerEmails != null) {
      output["producerEmails"] = new core.List();
      producerEmails.forEach((item) {
        output["producerEmails"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of TaskQueueAcl */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Statistics for the TaskQueue object in question. */
class TaskQueueStats {

  /** Number of tasks leased in the last hour. */
  core.String leasedLastHour;

  /** Number of tasks leased in the last minute. */
  core.String leasedLastMinute;

  /** The timestamp (in seconds since the epoch) of the oldest unfinished task. */
  core.String oldestTask;

  /** Number of tasks in the queue. */
  core.int totalTasks;

  /** Create new TaskQueueStats from JSON data */
  TaskQueueStats.fromJson(core.Map json) {
    if (json.containsKey("leasedLastHour")) {
      leasedLastHour = json["leasedLastHour"];
    }
    if (json.containsKey("leasedLastMinute")) {
      leasedLastMinute = json["leasedLastMinute"];
    }
    if (json.containsKey("oldestTask")) {
      oldestTask = json["oldestTask"];
    }
    if (json.containsKey("totalTasks")) {
      totalTasks = json["totalTasks"];
    }
  }

  /** Create JSON Object for TaskQueueStats */
  core.Map toJson() {
    var output = new core.Map();

    if (leasedLastHour != null) {
      output["leasedLastHour"] = leasedLastHour;
    }
    if (leasedLastMinute != null) {
      output["leasedLastMinute"] = leasedLastMinute;
    }
    if (oldestTask != null) {
      output["oldestTask"] = oldestTask;
    }
    if (totalTasks != null) {
      output["totalTasks"] = totalTasks;
    }

    return output;
  }

  /** Return String representation of TaskQueueStats */
  core.String toString() => JSON.stringify(this.toJson());

}

class Tasks {

  /** The actual list of tasks returned as a result of the lease operation. */
  core.List<Task> items;

  /** The kind of object returned, a list of tasks. */
  core.String kind;

  /** Create new Tasks from JSON data */
  Tasks.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Task.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Tasks */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Tasks */
  core.String toString() => JSON.stringify(this.toJson());

}

class Tasks2 {

  /** The actual list of tasks currently active in the TaskQueue. */
  core.List<Task> items;

  /** The kind of object returned, a list of tasks. */
  core.String kind;

  /** Create new Tasks2 from JSON data */
  Tasks2.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Task.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Tasks2 */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Tasks2 */
  core.String toString() => JSON.stringify(this.toJson());

}

