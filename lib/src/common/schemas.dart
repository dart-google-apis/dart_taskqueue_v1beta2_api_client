part of taskqueue_v1beta2_api_client;

class Task {

  /** Time (in seconds since the epoch) at which the task was enqueued. */
  String enqueueTimestamp;

  /** Name of the task. */
  String id;

  /** The kind of object returned, in this case set to task. */
  String kind;

  /** Time (in seconds since the epoch) at which the task lease will expire. This value is 0 if the task isnt currently leased out to a worker. */
  String leaseTimestamp;

  /** A bag of bytes which is the task payload. The payload on the JSON side is always Base64 encoded. */
  String payloadBase64;

  /** Name of the queue that the task is in. */
  String queueName;

  /** Tag for the task, could be used later to lease tasks grouped by a specific tag. */
  String tag;

  /** Create new Task from JSON data */
  Task.fromJson(Map json) {
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
    if (json.containsKey("tag")) {
      tag = json["tag"];
    }
  }

  /** Create JSON Object for Task */
  Map toJson() {
    var output = new Map();

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
    if (tag != null) {
      output["tag"] = tag;
    }

    return output;
  }

  /** Return String representation of Task */
  String toString() => JSON.stringify(this.toJson());

}

class TaskQueue {

  /** ACLs that are applicable to this TaskQueue object. */
  TaskQueueAcl acl;

  /** Name of the taskqueue. */
  String id;

  /** The kind of REST object returned, in this case taskqueue. */
  String kind;

  /** The number of times we should lease out tasks before giving up on them. If unset we lease them out forever until a worker deletes the task. */
  int maxLeases;

  /** Statistics for the TaskQueue object in question. */
  TaskQueueStats stats;

  /** Create new TaskQueue from JSON data */
  TaskQueue.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** ACLs that are applicable to this TaskQueue object. */
class TaskQueueAcl {

  /** Email addresses of users who are "admins" of the TaskQueue. This means they can control the queue, eg set ACLs for the queue. */
  List<String> adminEmails;

  /** Email addresses of users who can "consume" tasks from the TaskQueue. This means they can Dequeue and Delete tasks from the queue. */
  List<String> consumerEmails;

  /** Email addresses of users who can "produce" tasks into the TaskQueue. This means they can Insert tasks into the queue. */
  List<String> producerEmails;

  /** Create new TaskQueueAcl from JSON data */
  TaskQueueAcl.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

    if (adminEmails != null) {
      output["adminEmails"] = new List();
      adminEmails.forEach((item) {
        output["adminEmails"].add(item);
      });
    }
    if (consumerEmails != null) {
      output["consumerEmails"] = new List();
      consumerEmails.forEach((item) {
        output["consumerEmails"].add(item);
      });
    }
    if (producerEmails != null) {
      output["producerEmails"] = new List();
      producerEmails.forEach((item) {
        output["producerEmails"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of TaskQueueAcl */
  String toString() => JSON.stringify(this.toJson());

}

/** Statistics for the TaskQueue object in question. */
class TaskQueueStats {

  /** Number of tasks leased in the last hour. */
  String leasedLastHour;

  /** Number of tasks leased in the last minute. */
  String leasedLastMinute;

  /** The timestamp (in seconds since the epoch) of the oldest unfinished task. */
  String oldestTask;

  /** Number of tasks in the queue. */
  int totalTasks;

  /** Create new TaskQueueStats from JSON data */
  TaskQueueStats.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

class Tasks {

  /** The actual list of tasks returned as a result of the lease operation. */
  List<Task> items;

  /** The kind of object returned, a list of tasks. */
  String kind;

  /** Create new Tasks from JSON data */
  Tasks.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
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
  String toString() => JSON.stringify(this.toJson());

}

class Tasks2 {

  /** The actual list of tasks currently active in the TaskQueue. */
  List<Task> items;

  /** The kind of object returned, a list of tasks. */
  String kind;

  /** Create new Tasks2 from JSON data */
  Tasks2.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
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
  String toString() => JSON.stringify(this.toJson());

}

