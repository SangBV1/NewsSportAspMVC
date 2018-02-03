var common = {
    init: function () {
        common.hiddenElement();
        common.addClasstoImg();
        common.clickContent();
        common.shareContent();
        common.clickAdvertisement();
    },

    hiddenElement: function () {
        $(function () {
            var windowWidth = $(window).width();

            if (windowWidth < 800) {
                var elements = document.getElementsByClassName('titlepost-breadcrumb');
                for (var i = 0, length = elements.length; i < length; i++) {
                    if (elements[i].textContent != '') {
                        elements[i].style.display = 'none';
                    }
                }
            }

            if (windowWidth < 700) {
                var elements = document.getElementsByClassName('post-description');
                for (var i = 0, length = elements.length; i < length; i++) {
                    if (elements[i].textContent != '') {
                        elements[i].style.display = 'none';
                    }
                }
            }
            if (windowWidth < 350) {
                var elements = document.getElementsByClassName('post-time');
                for (var i = 0, length = elements.length; i < length; i++) {
                    if (elements[i].textContent != '') {
                        elements[i].style.display = 'none';
                    }
                }
                var elements = document.getElementsByClassName('td-post-date');
                for (var i = 0, length = elements.length; i < length; i++) {
                    if (elements[i].textContent != '') {
                        elements[i].style.display = 'none';
                    }
                }
            }

            if (windowWidth < 281) {
                var elements = document.getElementsByClassName('td-post-share-title');
                for (var i = 0, length = elements.length; i < length; i++) {
                    if (elements[i].textContent != '') {
                        elements[i].style.display = 'none';
                    }
                }
            }
        });
    },

    addClasstoImg: function () {
        $(function () {
            $('.entry-content').find('img').addClass('img-responsive');
        });
    },

    clickContent: function () {
        $('.click-content').on('click', function (e) {
            e.preventDefault();
            var btn = $(this);
            var id = btn.data('id');
            var url = btn.attr('href');
            
            $.ajax({
                url: "/Content/IncreaseViewCount",
                data: { id: id },
                dataType: "json",
                type: "POST",
                success: function (response) {
                    window.location = url;
                }
            });
        });
    },

    shareContent: function () {
        $('.share-content').on('click', function (e) {
            e.preventDefault();
            var btn = $(this);
            var id = btn.data('id');
            var url = btn.attr('href');
            $.ajax({
                url: "/Content/IncreaseShareCount",
                data: { id: id },
                dataType: "json",
                type: "POST",
                success: function (response) {
                    //
                }
            });
        });
    },

    clickAdvertisement: function () {
        $('.click-ad').on('click', function (e) {
            e.preventDefault();
            var btn = $(this);
            var id = btn.data('id');
            var url = btn.attr('href');
            window.open(url, "_blank");
            $.ajax({
                url: "/Content/IncreaseClickAd",
                data: { id: id },
                dataType: "json",
                type: "POST",
                success: function (response) {
                    //
                }
            });
        });
    }
       
}
common.init();