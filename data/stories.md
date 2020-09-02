## happy path greet 
* greet
  - utter_greet

## happy path without 4g sim
* thanks
  - utter_goodbye

## say goodbye
* goodbye
  - utter_goodbye

## bot challenge
* bot_challenge
  - utter_iamabot

## New Story

* greet
    - utter_greet
* network_issue
    - form_info
    - form{"name":"form_info"}
    - slot{"requested_slot":"NAME"}
* my_name_is{"NAME":"Ajay"}
    - slot{"NAME":"Ajay"}
    - slot{"NAME":"Ajay"}
    - form_info
    - slot{"NAME":"Ajay"}
    - slot{"requested_slot":"BRAND"}
* headset{"BRAND":"samsung"}
    - slot{"BRAND":"samsung"}
    - slot{"BRAND":"samsung"}
    - form_info
    - slot{"BRAND":"samsung"}
    - form{"name":null}
    - slot{"requested_slot":null}
* affirm
    - utter_tell_issue
* facing_issue{"NETWORK":"call drop"}
    - utter_change_settings
* guide_me{"HELP":"guide"}
    - slot{"NAME":"Ajay"}
    - slot{"BRAND":"samsung"}
    - utter_solution
* have_to_do
    - utter_solution_4G
* thanks
    - slot{"NAME":"Ajay"}
    - slot{"BRAND":"samsung"}
    - utter_anything_else
* deny
    - utter_thanks
* goodbye
    - utter_goodbye
    - action_restart
