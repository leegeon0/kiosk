
    $(document).ready(function(){
        var categoryValue = 1;

        // 메뉴 정보와 별점 아이콘을 저장하는 객체 배열
        var menuData = [];

        var starAjax = $.ajax({
            async: true,
            cache: false,
            type: "post",
            url: "/star",
            data: {"averageStar": 0},
            success: function(response) {
                if (response.rts == "success") {
                    if (response.rtStar.length > 0) {
                        $.each(response.rtStar, function(index, item) {
                            // 메뉴 별 평균 별점 값 가져오기
                            const avgStarValue = parseFloat(item.averageStar);
                            // 최대 별점 개수 (여기서는 5개)
                            const maxStars = 5;
                            // 별 아이콘을 담을 변수
                            let starIcons = '';
                            // 각 별 아이콘을 생성하고 스타일을 적용
                            for (let i = 1; i <= maxStars; i++) {
                                if (i <= avgStarValue) {
                                    starIcons += '<i class="fa-solid fa-star"></i>';
                                } else {
                                    starIcons += '<i class="fa-solid fa-star" style="color: grey;"></i>';
                                }
                            }

                            // 메뉴 정보와 별점 아이콘을 객체에 저장
                            menuData.push({ avgStarIcons: starIcons });
                        });
                        // 메뉴 정보 업데이트
                        updateMenuList();
                    } else {
                        alert("다시해");
                    }
                }
            },
            error: function(jqXHR, textStatus, errorThrown){
                alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        });

        function updateMenuList() {
            $.ajax({
                async: true,
                cache: false,
                type: "post",
                url: "/menu",
                data: {"category": categoryValue},
                success: function(response1) {
                    if (response1.rt == "success") {
                        var htmlContent = '';
                        if (response1.rtMenu.length > 0) {
                            $.each(response1.rtMenu, function(index, item) {
                                // 해당 메뉴의 별점 아이콘 가져오기
                                var avgStarIcons = menuData[index].avgStarIcons;

                                htmlContent += '<li class="popup_btn" data-category="' + item.category + '">';
                                htmlContent += '<img alt="" src="' + item.menuImg + '">';
                                htmlContent += '<div class="menuNames">';
                                htmlContent += '<div class="stars">' + avgStarIcons + '</div>';
                                htmlContent += '<p class="menuName" data-menuName="'+ item.menuName +'">' + item.menuName + '</p>';
                                htmlContent += '<p class="menuPrice" data-menuPrice="'+ item.menuPrice +'">' + item.menuPrice + '</p>';
                                htmlContent += '<p style="display : none;" class="menuSeq" data-menuSeq="'+ item.seq +'">' + item.seq + '</p>';
                                htmlContent += '</div>';
                                htmlContent += '</li>';
                            });
                        } else {
                            htmlContent = '<p>데이터가 없습니다!</p>';
                        }
                        $("#menuList").html(htmlContent);
                    }
                },
                error: function(jqXHR, textStatus, errorThrown){
                    alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                }
            });
        }
    });
    
    
    
    
    
    
    
    
    
    
    
    $(document).ready(function(){
        var categoryValue = 1;

        // 메뉴 정보와 별점 아이콘을 저장하는 객체 배열
        var menuData = [];

        var starAjax = $.ajax({
            async: true,
            cache: false,
            type: "post",
            url: "/star",
            data: {"averageStar": 0},
            success: function(response) {
                if (response.rts == "success") {
                    if (response.rtStar.length > 0) {
                        $.each(response.rtStar, function(index, item) {
                            // 메뉴 별 평균 별점 값 가져오기
                            const avgStarValue = parseFloat(item.averageStar);
                            // 최대 별점 개수 (여기서는 5개)
                            const maxStars = 5;
                            // 별 아이콘을 담을 변수
                            let starIcons = '';
                            // 각 별 아이콘을 생성하고 스타일을 적용
                            for (let i = 1; i <= maxStars; i++) {
                                if (i <= avgStarValue) {
                                    starIcons += '<i class="fa-solid fa-star"></i>';
                                } else {
                                    starIcons += '<i class="fa-solid fa-star" style="color: grey;"></i>';
                                }
                            }

                            // 메뉴 정보와 별점 아이콘을 객체에 저장
                            menuData.push({ avgStarIcons: starIcons });
                        });
                        // 메뉴 정보 업데이트
                        updateMenuList();
                    } else {
                        alert("다시해");
                    }
                }
            },
            error: function(jqXHR, textStatus, errorThrown){
                alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        });

        function updateMenuList() {
            $.ajax({
                async: true,
                cache: false,
                type: "post",
                url: "/menu",
                data: {"category": categoryValue},
                success: function(response1) {
                    if (response1.rt == "success") {
                        var htmlContent = '';
                        if (response1.rtMenu.length > 0) {
                            $.each(response1.rtMenu, function(index, item) {
                                // 해당 메뉴의 별점 아이콘 가져오기
                                var avgStarIcons = menuData[index].avgStarIcons;
                                
                             // 해당 메뉴의 평균 별점 값 가져오기
                                const avgStarValue = parseFloat(item.averageStar);
                                // 최대 별점 개수 (여기서는 5개)
                                const maxStars = 5;
                                // 별 아이콘을 담을 변수
                                let starIcons = '';
                                // 각 별 아이콘을 생성하고 스타일을 적용
                                for (let i = 1; i <= maxStars; i++) {
                                    if (i <= avgStarValue) {
                                        starIcons += '<i class="fa-solid fa-star"></i>';
                                    } else {
                                        starIcons += '<i class="fa-solid fa-star" style="color: grey;"></i>';
                                    }
                                }

                                htmlContent += '<li class="popup_btn" data-category="' + item.category + '">';
                                htmlContent += '<img alt="" src="' + item.menuImg + '">';
                                htmlContent += '<div class="menuNames">';
                                htmlContent += '<div class="stars">' + avgStarIcons + '</div>';
                                htmlContent += '<p class="menuName" data-menuName="'+ item.menuName +'">' + item.menuName + '</p>';
                                htmlContent += '<p class="menuPrice" data-menuPrice="'+ item.menuPrice +'">' + item.menuPrice + '</p>';
                                htmlContent += '<p style="display : none;" class="menuSeq" data-menuSeq="'+ item.seq +'">' + item.seq + '</p>';
                                htmlContent += '</div>';
                                htmlContent += '</li>';
                            });
                        } else {
                            htmlContent = '<p>데이터가 없습니다!</p>';
                        }
                        $("#menuList").html(htmlContent);
                    }
                },
                error: function(jqXHR, textStatus, errorThrown){
                    alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                }
            });
        }
    });
