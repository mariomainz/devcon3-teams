module TeamsHelper

  def users_list
    User.pluck(:first_name, :last_name).map{ |name_array| "#{name_array.first} #{name_array.last}" }
  end

end