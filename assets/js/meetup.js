/*
 * This script makes a request to meetup.com to check for details about upcoming events and then modifies DOM items to add those
 * details as appropriate.
 */
document.addEventListener("DOMContentLoaded", function () {
  $.ajax({
    type: "GET",
    dataType: "jsonp",
    url: "https://api.meetup.com/civic-tech-dc/events?&page=2",
    crossDomain: true,
    xhrFields: {
      withCredentials: true,
    },
    beforeSend: function () {
      $("#meetup").addClass("loading"); // Show loader icon
    },
    complete: function () {
      $("#meetup").removeClass("loading"); // Hide loader icon
    },
  }).done((xhr) => {
    const nextMeetup = xhr.data[0];
    const futureMeetup = xhr.data[1];

    if (nextMeetup) {
      // There's at least one upcoming event! Fill out the DOM with details about it.
      $("#meetup-next-event-date").html(
        `${moment(nextMeetup.time).format("dddd, MMMM D, YYYY @ h:mm a")}`,
      );
      $("#meetup-next-event-title").html(nextMeetup.name);
      if (nextMeetup.is_online_event) {
        $("#meetup-next-event-location").html("Online event");
      } else {
        $("#meetup-next-event-location").html(
          `
                      <a href="https://www.google.com/maps/search/?api=1&query=${nextMeetup.venue.name}%2C%20${nextMeetup.venue.address_1}%2C%20${nextMeetup.venue.city}%2C%20${nextMeetup.venue.state}" target="_blank">${nextMeetup.venue.address_1}</a>
                      `,
        );
      }
      $("#meetup-next-event-num-rsvps").html(nextMeetup.yes_rsvp_count);
      $("#meetup-next-event-rsvp-button").attr(
        "href",
        `https://www.meetup.com/civic-tech-dc/events/${nextMeetup.id}`,
      );
      $("#meetup-next-event-rsvp-button").html("RSVP on Meetup »");
      $("#meetup-next-event-details").show();

      if (futureMeetup) {
        // There are at least two upcoming events! Fill out the DOM with details about the latter of them and then unhide
        // the "future event" card.
        $("#meetup-future-event-date").html(
          `${moment(futureMeetup.time).format("dddd, MMMM D, YYYY @ h:mm a")}`,
        );
        $("#meetup-future-event-title").html(futureMeetup.name);
        if (futureMeetup.is_online_event) {
          $("#meetup-future-event-location").html("Online event");
        } else {
          $("#meetup-future-event-location").html(
            `
                      <a href="https://www.google.com/maps/search/?api=1&query=${futureMeetup.venue.name}%2C%20${futureMeetup.venue.address_1}%2C%20${futureMeetup.venue.city}%2C%20${futureMeetup.venue.state}" target="_blank">${futureMeetup.venue.address_1}</a>
                          `,
          );
        }
        $("#meetup-future-event-num-rsvps").html(futureMeetup.yes_rsvp_count);
        $("#meetup-future-event-rsvp-button").attr("href", futureMeetup.link);
        $("#meetup-future-event-card").show();
      }
    }
  });
});
