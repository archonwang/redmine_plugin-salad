Redmine::Plugin.register :redmine_issue_tabs do
  name 'Redmine Issue Tabs plugin'
  author 'Pitin Vladimir, Alexey Glukhov'
  description 'Plugin enhances issue interface by adding several useful tabs: timelog, time spent, code commits, history'
  version '1.1.1'
  url 'http://rmplus.pro/redmine/plugins/issue_tabs'
  author_url 'http://rmplus.pro/'
end

require 'redmine_issue_tabs/view_hooks'

Rails.application.config.to_prepare do
  IssuesController.send(:include, RedmineIssueTabs::IssuesControllerPatch)
end

