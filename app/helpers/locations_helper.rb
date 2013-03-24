module LocationsHelper

  def add_markers
    markers = [@center]
    @locations.each do |l|
      l.thermostats.each do |t|
        markers << t
      end
    end

    markers.to_gmaps4rails
  end

end
