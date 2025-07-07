/**
 * Polis Embed with XID Management
 * Based on the basic-typeform-embed example pattern
 * Handles user identity persistence across sessions
 */

(function() {
  'use strict';

  // Generate a UUID for the XID
  function generateUUID() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
      var r = Math.random() * 16 | 0;
      var v = c == 'x' ? r : (r & 0x3 | 0x8);
      return v.toString(16);
    });
  }

  // Get or create XID from localStorage
  function getOrCreateXID() {
    var xid = localStorage.getItem('polis_xid');
    if (!xid) {
      xid = generateUUID();
      localStorage.setItem('polis_xid', xid);
    }
    return xid;
  }

  // Initialize Polis embed with XID
  function initializePolis() {
    var polisElement = document.querySelector('.polis');
    if (!polisElement) {
      console.log('Polis element not found');
      return;
    }

    var xid = getOrCreateXID();
    polisElement.setAttribute('data-xid', xid);
    
    console.log('Polis initialized with XID:', xid);

    // Add event listener for Polis messages
    window.addEventListener('message', function(event) {
      var data = event.data || {};
      
      // Only process messages from pol.is
      if (!event.origin.match(/pol\.is$/)) {
        return;
      }

      // Log Polis events for debugging
      console.log('Polis message received:', data);
      
      // Handle specific Polis events
      switch(data.name) {
        case 'polis_height':
          // Handle height changes if needed
          break;
        case 'polis_vote':
          console.log('Vote cast:', data);
          break;
        case 'polis_submit':
          console.log('Comment submitted:', data);
          break;
        default:
          // Handle other events
          break;
      }
    });
  }

  // Initialize when DOM is ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initializePolis);
  } else {
    initializePolis();
  }

  // Debug function to reset XID (useful for testing)
  window.resetPolisXID = function() {
    localStorage.removeItem('polis_xid');
    console.log('Polis XID reset. Refresh page to get new XID.');
  };

  // Debug function to get current XID
  window.getPolisXID = function() {
    return localStorage.getItem('polis_xid');
  };

})(); 