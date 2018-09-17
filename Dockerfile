# Copyright 2018 ChemAxon Ltd.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM tomcat:8.5.34-jre8
MAINTAINER JCB Support "jcb-support@chemaxon.com"

# copy files
COPY webservices.war /usr/local/tomcat/webapps/webservices.war
COPY license.cxl /usr/local/tomcat/.chemaxon/license.cxl
COPY ws-config.xml /usr/local/tomcat/.chemaxon/ws-config.cml

# set ChemAxon environemtn variables
ENV CHEMAXON_LICENSE_URL /usr/local/tomcat/.chemaxon/license.cxl
ENV CHEMAXON_HOME /usr/local/tomcat/.chemaxon/

# provide enough memory to Tomcat
ENV CATALINA_OPTS -Xmx1500m
