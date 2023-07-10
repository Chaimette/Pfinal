
def time_string(seconds)
    hours = seconds / 3600
    minutes = (seconds % 3600) / 60
    seconds = seconds % 60
  
    format("%02d:%02d:%02d", hours, minutes, seconds)
end

=begin
La méthode divise le nombre total de secondes en heures
, minutes et secondes individuelles à l'aide des opérations 
de division entière (/) et du modulo (%).
=end