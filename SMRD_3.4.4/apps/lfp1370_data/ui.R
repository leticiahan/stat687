ui = navbarPage(title = 'lfp1370 Example',
                collapsible = T, 
                position = 'fixed-top',
                theme  = teachingApps::add_theme(getShinyOption('theme')),
                header = teachingApps::add_css(),
                footer = teachingApps::add_logo(),

tabPanel('Data Set', DT::dataTableOutput('lfp1370')),
tabPanel('Event Plot',
   sidebarLayout(
      sidebarPanel(
         shinyAce::aceEditor(fontSize = 16, 
                             wordWrap = T,
                             outputId = 'lfpeventplot', 
                             mode = 'r', 
                             theme = 'github', 
                             value = 
"par(family = 'serif', font = 2, cex = 1.15)

library(SMRD)

lfp.ld<- frame.to.ld(SMRD::lfp1370,
                     response.column = 1,
                     censor.column = 2,
                     case.weight.column=3,
                     data.title = 'Integrated Circuit Failure Data',
                     time.units = 'Hours')
event.plot(lfp.ld)"),

        actionButton('evallfpevent', 'Evaluate')),

        mainPanel(plotOutput('plotlfpevent')))),

tabPanel('CDF Plot',
   sidebarLayout(
      sidebarPanel(
         shinyAce::aceEditor(fontSize = 16, 
                             wordWrap = T,
                             outputId = 'lfpcdfplot', 
                             mode = 'r', 
                             theme = 'github', 
                             value = 
"par(family = 'serif', font = 2, cex = 1.15)

library(SMRD)
lfp.ld<- frame.to.ld(SMRD::lfp1370,
                     response.column = 1,
                     censor.column = 2,
                     case.weight.column=3,
                     data.title = 'Integrated Circuit Failure Data',
                     time.units = 'Hours')
plot(lfp.ld)"),

        actionButton('evallfpcdf', 'Evaluate')),

        mainPanel(plotOutput('plotlfpcdf')))))
