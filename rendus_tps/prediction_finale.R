prediction_finale <- function(x_ultime = "x_ultime", 
                              y_ultime = "y_ultime",
                              file_path = "nguyene_model_keras.hdf5"){
  #Remplacer "my_login" par votre propre login ensimag. 
  
  require(magrittr) 
  
  #tests 
  if (nrow(x_ultime) != 5000 | ncol(x_ultime) != 2000) 
    stop("Dimensions de x incorrectes.")
  
  if (nrow(y_ultime) != 5000 | ncol(y_ultime) != 2) 
    stop("Dimensions de y incorrectes.")
  
  #if keras
  require(keras) 
  
  load_model_hdf5(filepath = file_path)
  model_keras %>% evaluate(x_ultime, y_ultime)
}