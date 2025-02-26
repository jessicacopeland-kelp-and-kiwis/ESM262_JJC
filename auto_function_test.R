#' Pb Function
#'
#' @param V is velocity
#' @param A 
#' @param g 
#' @param p_air 
#' @param m 
#'


# Now my turn

pb=function(V, A, g, p_air, m, c_rolling, c_drag) {
  
  if(V<0) V=NA # velocity should not be less than zero
  if(p_air<0) p_air=NA # Should not be less than zero, that would be weird.
  
  result = c_rolling * m * g * V + (1/2)* A * p_air * c_drag * V^3
  
  return(result)
}

