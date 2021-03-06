#!/bin/sh

#   Copyright © 2017 Teclib. All rights reserved.
#
# fastlane_config.sh is part of Glpi
#
# Glpi is a subproject of Flyve MDM. Flyve MDM is a mobile
# device management software.
#
# Glpi is Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ------------------------------------------------------------------------------
# @author    Hector Rondon
# @date      25/08/17
# @copyright Copyright © 2017 Teclib. All rights reserved.
# @license   Apache License, Version 2.0 https://www.apache.org/licenses/LICENSE-2.0
# @link      https://github.com/flyve-mdm/ios-library-glpi
# @link      https://flyve-mdm.com
# ------------------------------------------------------------------------------

echo ----------- Create Fastlane environment variables ------------
# Create Fastlane environment variables
echo TELEGRAM_WEBHOOKS=$TELEGRAM_WEBHOOKS >> .env
echo GIT_REPO=$GITHUB_REPO_SLUG >> .env
echo GIT_BRANCH=$CIRCLE_BRANCH >> .env
echo XCODE_PROJECT=$XCODE_PROJECT >> .env
echo XCODE_SCHEME=$XCODE_SCHEME >> .env
