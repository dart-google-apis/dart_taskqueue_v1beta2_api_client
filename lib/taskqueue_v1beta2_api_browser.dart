library taskqueue_v1beta2_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_taskqueue_v1beta2_api/src/browser_client.dart';
import "package:google_taskqueue_v1beta2_api/taskqueue_v1beta2_api_client.dart";

/** Lets you access a Google App Engine Pull Task Queue over REST. */
class Taskqueue extends Client with BrowserClient {

  /** OAuth Scope2: Manage your Tasks and Taskqueues */
  static const String TASKQUEUE_SCOPE = "https://www.googleapis.com/auth/taskqueue";

  /** OAuth Scope2: Consume Tasks from your Taskqueues */
  static const String TASKQUEUE_CONSUMER_SCOPE = "https://www.googleapis.com/auth/taskqueue.consumer";

  final oauth.OAuth2 auth;

  Taskqueue([oauth.OAuth2 this.auth]);
}
