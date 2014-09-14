library taskqueue_v1beta2_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_taskqueue_v1beta2_api/src/console_client.dart';

import "package:google_taskqueue_v1beta2_api/taskqueue_v1beta2_api_client.dart";

/** Lets you access a Google App Engine Pull Task Queue over REST. */
@deprecated
class Taskqueue extends Client with ConsoleClient {

  /** OAuth Scope2: Manage your Tasks and Taskqueues */
  static const String TASKQUEUE_SCOPE = "https://www.googleapis.com/auth/taskqueue";

  /** OAuth Scope2: Consume Tasks from your Taskqueues */
  static const String TASKQUEUE_CONSUMER_SCOPE = "https://www.googleapis.com/auth/taskqueue.consumer";

  final oauth2.OAuth2Console auth;

  Taskqueue([oauth2.OAuth2Console this.auth]);
}
