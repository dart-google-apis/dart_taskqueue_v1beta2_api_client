# google_taskqueue_v1beta2_api

### Description

Auto-generated client library for accessing the taskqueue v1beta2 API.

#### ![Logo](http://www.google.com/images/icons/product/app_engine-16.png) TaskQueue API - taskqueue v1beta2

Lets you access a Google App Engine Pull Task Queue over REST.

Official API documentation: https://developers.google.com/appengine/docs/python/taskqueue/rest

Adding dependency to pubspec.yaml

```
  dependencies:
    google_taskqueue_v1beta2_api: '>=0.4.11'
```

For web applications:

```
  import "package:google_taskqueue_v1beta2_api/taskqueue_v1beta2_api_browser.dart" as taskqueueclient;
```

For console application:

```
  import "package:google_taskqueue_v1beta2_api/taskqueue_v1beta2_api_console.dart" as taskqueueclient;
```

Working without authentication the following constructor can be called:

```
  var taskqueue = new taskqueueclient.Taskqueue();
```

To use authentication create a new `GoogleOAuth2` object and pass it to the constructor:


```
  GoogleOAuth2 auth = new GoogleOAuth2(CLIENT_ID, SCOPES);
  var taskqueue = new taskqueueclient.Taskqueue(auth);
```

### Licenses

```
Copyright (c) 2013 Gerwin Sturm & Adam Singer

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a 
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

------------------------
Based on http://code.google.com/p/google-api-dart-client

Copyright 2012 Google Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

```
