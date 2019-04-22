**PREMISE**

A client that processes data from wind farms has a hypothesis that larger wind farms tend to be less efficient, since
they experience higher "wake loss".  (Larger farms have more rows of turbines
that obstruct the wind for each downwind turbine.) I've been tasked with constructing an interactive web
application that will help the client test this hypothesis.

The application will be hosted on Heroku at https://wind-farm-stats-20190422.herokuapp.com/

**SOURCE DATA**

The data displayed in the application was supplied by the client in csv format, containing information about every wind farm in the US, as described below:

* ID - a numeric unique ID
* Name - the name of the farm
* Latitude/Longitude - GPS coordinate
* CapacityMW - maximum possible 'nameplate capacity' power generation in MW
* GenerationMWhPerYear - average annual energy generation in MW-hours

A farm's efficiency is defined by its 'net capacity factor', which is
generation / (capacity * time).  In this case, time is 1 year or 8760 hours.
Because the wind doesn't always blow, wind farms tend to produce ~30-50%
of their maximum potential.

**TECHNOLOGIES USED**
- Ruby
- Rails
- Heroku
- Chartkick
- Google Charts

Note: Data for average net capacity by state taken from http://www.windaction.org/posts/37255-u-s-average-annual-capacity-factors-by-project-and-state#.XL4ZEZNKi9s and https://www.eia.gov/electricity/data/eia923/
