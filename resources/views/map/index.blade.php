@extends('main')

@section('content')

 


            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-lg-12">
                        <div id="map-container" class="fullwidth-home-map">
                            <div id="map" data-map-zoom="9"></div>
                        </div>
                    </div>
                </div>
            </div>


@endsection




@section('script')

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjF8tXV35Zu_dkzWcV0EDWmUBeClDgzbM"></script>
    <script src="{{ aurl() }}/assets/js/map-cluster/infobox.min.js"></script>
    <script src="{{ aurl() }}/assets/js/map-cluster/markerclusterer.js"></script>
    <script src="{{ aurl() }}/assets/js/map-cluster/maps.js"></script>
  
@endsection