<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->

<#if requestParameters?? && genericLinkName?? && genericLinkTarget?? && genericLinkText??>
<form name="${escapePart(genericLinkName, 'html')}"<#if genericLinkWindow??> target="${escapePart(genericLinkWindow, 'html')}"</#if> action="${escapePart(makeOfbizUrl(genericLinkTarget), 'html')}" method="post">
<#if (!excludeParameters?? || excludeParameters != "N") && requestParameters??>
<#assign requestParameterKeys = requestParameters.keySet().iterator()>
<#list requestParameterKeys as requestParameterKey>
<#assign requestParameterValue = requestParameters.get(requestParameterKey)!>
<#if requestParameterValue?has_content>
<input type="hidden" name="${escapePart(requestParameterKey, 'html')}" value="${escapePart(requestParameterValue, 'html')}"/>
</#if>
</#list>
</#if>
<a href="javascript:document['${escapePart(genericLinkName, 'js-html')}'].submit();"<#if genericLinkStyle??> class="${escapePart(genericLinkStyle, 'html')}"</#if>>${escapePart(genericLinkText, 'htmlmarkup')}</a>
</form>
</#if>
