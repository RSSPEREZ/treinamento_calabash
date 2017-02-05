E(/^clico em procurar emprego$/) do
  touch("* id:'btAllJobs'")
  touch("* id:'tvCompanyName' index:0")
  touch("* id:'btConfirm'")
end


Então(/^agendo uma entrevista$/) do
  touch("* id:'btConfirm'")
  touch("* id:'tvDayMonth' index:0")
  touch("* id:'button1'")
  press_back_button
  touch("* id:'btMoreJobs'")
  touch('ActionMenuPresenter$OverflowMenuButton')
  ap_mark 'Sair'
end
