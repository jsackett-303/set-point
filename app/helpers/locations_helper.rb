module LocationsHelper

  def add_markers
    markers = []
    @locations.collect do |l|
      markers << l.thermostats
    end

    markers.flatten.to_gmaps4rails
  end

  def demand_circle
    "[
     {'lng': #{@center.longitude}, 'lat': #{@center.latitude}, 'radius': #{@radius*1609.34}}
    ]"
  end

  def addresses_found
    return "No thermostats found within #{@radius} miles of #{@center.address}" if @locations.size == 0
    render 'responses'
  end

  def hash_for_gmaps
    { 'circles' => {'data' => demand_circle},
      'markers' => { 'data' => add_markers,
                     'options' => { 'randomize' => true,
                                    'max_random_distance' => 1
                     }
      }}
  end
end
