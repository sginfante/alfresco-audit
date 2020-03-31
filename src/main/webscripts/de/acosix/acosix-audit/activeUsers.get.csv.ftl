<#-- 
 * Copyright 2017 - 2020 Acosix GmbH
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
  -->
"userName","firstName","lastName","email","authorisation","firstActive","lastActive"<#list users as activeUser>
"${activeUser.node.properties.userName}","${(activeUser.node.properties.firstName!"")?replace("\"", "\"\"")}","${(activeUser.node.properties.lastName!"")?replace("\"", "\"\"")}","${(activeUser.node.properties.email!"")?replace("\"", "\"\"")}","${activeUser.info.authorisedState?string}","${xmldate(activeUser.info.firstActive)}","${xmldate(activeUser.info.lastActive)}"</#list>