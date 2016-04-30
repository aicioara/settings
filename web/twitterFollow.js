/**
 * Created by [Andrei Cioara](http://andrei.cioara.me)
 *
 * You need to be on the /followers page
 *
 * Last updated 2016 April 30
 */

(function() {
    function fullScroll() {
        return new Promise(function(resolve, reject) {
            var oldHeight = 0;
            var retries = 0;
            var BASE_RETRY_TIMEOUT = 300;
            var retryTimeout = BASE_RETRY_TIMEOUT;
            var RETRY_STEP = 100;
            var MAX_RETRIES = 3;
            (function scrollDown() {
                if (oldHeight == document.body.scrollHeight) {
                    if (retries == MAX_RETRIES) {
                        window.scrollTo(0, 0);
                        resolve();
                    }
                    retries ++;
                    retryTimeout += RETRY_STEP;
                    setTimeout(scrollDown, retryTimeout);
                    return;
                };
                retries = 0;
                retryTimeout = BASE_RETRY_TIMEOUT;
                window.scrollTo(0,document.body.scrollHeight);
                oldHeight = document.body.scrollHeight;
                setTimeout(scrollDown, retryTimeout);
            })();
        })
    }

    function fullLike() {
        return new Promise(function(resolve, reject) {
            var profiles = $('.ProfileCard').find('.not-following').find('.follow-button')
            var FOLLOW_DELAY = 1000;
            (function iterator(i) {
                window.scrollTo(0,$(profiles[i]).offset());
                $(profiles[i]).click();

                if (++i < profiles.length) {
                    setTimeout(function() { iterator(i) }, FOLLOW_DELAY);
                } else {
                    resolve();
                }
            })(0);
        });
    }


    fullScroll().then(fullLike)
})();
