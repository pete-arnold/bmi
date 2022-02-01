get_user_data_choice<-readline(prompt="Would you like to use realistic data or starwars data, please specify: ")
usr_data_choice<-if(get_user_data_choice=!"starwars"|!"realistic"){
  print("Please specify starwars or realistic")
}
