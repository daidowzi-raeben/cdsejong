// let partial_video = "";
// partial_video += "<video id='my-video' class='' controls autoplay='true' preload='auto' width='1010' height='568' poster='' data-setup='{}'>"
// partial_video += "</video>"

var button = videojs.getComponent('Button');

var is_opened_index = false;
var is_opened_script = false;
var is_opened_map = false;

var indexButton = videojs.extend(button, {
  constructor: function () {
    button.apply(this, arguments);
    this.controlText("인덱스");
    this.addClass('vjs-icon-index');
  },
  handleClick: function () {
    if(is_opened_script) {
      // is_opened_script = false;
      $('.vjs-icon-script').click();
    }
    if(is_opened_index) {
      $('#index').removeClass('flipInX');
      $('#index').addClass('flipOutX');
      // $('#index').hide();
      is_opened_index = false;
    } else {
      $('#index').removeClass('flipOutX');
      $('#index').addClass('flipInX');
      $('#index').show();
      is_opened_index = true;
    }
  }
});
var replayButton = videojs.extend(button, {
  constructor: function () {
    button.apply(this, arguments);
    this.controlText("처음으로");
    this.addClass('vjs-icon-replay');
  },
  handleClick: function () {
    if(currentPage === "06") {
      document.location.reload();
    } else {
      this.player().currentTime(0);
      this.player().play();
    }
  }
});
var scriptButton = videojs.extend(button, {
  constructor: function () {
    button.apply(this, arguments);
    this.controlText("스크립트");
    this.addClass('vjs-icon-script');
    this.addClass('vjs-icon-control');
  },
  handleClick: function () {
    if(is_opened_index) {
      // is_opened_index = false;
      $('.vjs-icon-index').click();
    }

    if(is_opened_script) {
      $('#script').removeClass('fadeIn');
      $('#script').addClass('fadeOut');
      $('#script').hide();
      is_opened_script = false;
    } else {
      $('#script').removeClass('fadeOut');
      $('#script').addClass('fadeIn');
      $('#script').show();
      is_opened_script = true;
    }
  }
});
var mapButton = videojs.extend(button, {
  constructor: function () {
    button.apply(this, arguments);
    this.controlText("러닝맵");
    this.addClass('vjs-icon-map');
    this.addClass('vjs-icon-control');
  },
  handleClick: function () {
    $('section#map').fadeIn();

    if (is_opened_index) {
      // is_opened_index = false;
      $('.vjs-icon-index').click();
    }

    if (is_opened_map) {
      $('section#map').removeClass('fadeIn');
      $('section#map').addClass('fadeOut');
      $('section#map').hide();
      is_opened_map = false;
    } else {
      $('section#map').removeClass('fadeOut');
      $('section#map').addClass('fadeIn');
      $('section#map').show();
      is_opened_map = true;
    }
  }
});
var helpButton = videojs.extend(button, {
  constructor: function () {
    button.apply(this, arguments);
    this.controlText("Toggle Help");
    this.addClass('vjs-icon-help');
    this.addClass('vjs-icon-control');
  },
  handleClick: function () {
    alert("HELP");
  }
});
var prevButton = videojs.extend(button, {
  constructor: function () {
    button.apply(this, arguments);
    this.controlText("이전 페이지");
    this.addClass('vjs-icon-prev');
    this.addClass('vjs-icon-control');
  },
  handleClick: function () {
    // alert("PREV");
    goPrevPage();
  }
});
var nextButton = videojs.extend(button, {
  constructor: function () {
    button.apply(this, arguments);
    this.controlText("다음 페이지");
    this.addClass('vjs-icon-next')
    this.addClass('vjs-icon-control');
  },
  handleClick: function () {
    // alert("NEXT");
    goNextPage();
  }
});
var currentPage = videojs.extend(button, {
  constructor: function () {
    button.apply(this, arguments);
    this.controlText("Current Page");
    this.addClass('vjs-icon-current');
  }
});

videojs.registerComponent('indexButton',  indexButton);
videojs.registerComponent('replayButton', replayButton);
videojs.registerComponent('scriptButton', scriptButton);
videojs.registerComponent('mapButton',    mapButton);
videojs.registerComponent('helpButton',   helpButton);
videojs.registerComponent('prevButton',   prevButton);
videojs.registerComponent('prevButton',   prevButton);
videojs.registerComponent('currentPage',  currentPage);
videojs.registerComponent('nextButton',   nextButton);

var options = {
  // controlBar: {
  //   children: [
  //     "progressControl",
  //     "volumePanel"
  //   ]
  // }
  controlBar: {
    children: [
      { name: "indexButton" },
      { name: "progressControl" },
      { name: "currentTimeDisplay" },
      { name: "timeDivider" },
      { name: "durationDisplay" },
      { name: "playToggle", addClass: 'vjs-icon-control' },
      { name: "replayButton" },
      // { name: "playbackRateMenuButton" },
      { name: "scriptButton" },
      { name: "volumePanel" },
      { name: "fullscreenToggle" },
      { name: "mapButton" },
      // { name: "helpButton" },
      { name: "prevButton" },
      { name: "currentPage" },
      { name: "nextButton" },
    ],
    volumePanel: {
      inline: false,
      vertical: true
    },
    
  },
  playbackRates: ['0.5', '1', '1.5', '2.0']
}
