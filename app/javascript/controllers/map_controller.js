import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {

  static values ={
    apiKey: String,
    markers: Array,
    marker: Array,
  }

  connect() {


    mapboxgl.accessToken = this.apiKeyValue;
    this.map = new mapboxgl.Map({
      container: this.element, // container ID
      style: 'mapbox://styles/mapbox/streets-v12', // style URL
    });

    this.#addMarkersToMap();
    this.#fitMarkersToMap();
    this.#addMarkerToMap();
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    })
  }

  #addMarkerToMap () {
    const popup = new mapboxgl.Popup().setHTML(this.markerValue[0].info_window)
    var marker = new mapboxgl.Marker({color:"#FF3BB8"})
      .setLngLat([this.markerValue[0].lng, this.markerValue[0].lat])
      .setPopup(popup)
      .addTo(this.map)

    //marker.getElement().style.color = 'red'
    //console.log(marker)
  }

  #fitMarkersToMap() {
    const bounds = new mapboxgl.LngLatBounds( );
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
