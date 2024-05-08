<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
<header>
</header>
<link rel="stylesheet" href="<c:url value="/css/naver1.css"/>">
<link rel="stylesheet" href="<c:url value="/css/naver2.css"/>">
<link rel="stylesheet" href="<c:url value="/css/naver3.css"/>">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

    $(document).ready(function () {
        $('.ProductFilter_item__PhP2B').click(function () {
            // data-nclicks 속성값을 가져옵니다.
            var nclicksValue = $(this).data('nclicks');

            // data-nclicks 값이 'deposit.benefit'인 경우에만 처리합니다.
            if (nclicksValue === 'deposit.benefit') {
                // 체크박스 디파짓 베네피트 요소를 찾습니다.
                var depositBenefitCheckbox = $('#checkbox-depositBenefit');

                // 체크박스가 보이는 상태인지 확인합니다.
                if (depositBenefitCheckbox.is(":visible")) {
                    // 보이는 상태라면 숨깁니다.
                    depositBenefitCheckbox.hide();
                } else {
                    // 안 보이는 상태라면 보이게 합니다.
                    depositBenefitCheckbox.show();
                }
            }
        });

        // 체크된 체크박스의 값을 저장할 배열을 선언합니다.
        // var checkedValues = [];


    });

    let now = []
    let sortby = 'bestIntr'
    let productSort = function () {
        now.sort((a, b) => b[sortby] - a[sortby])
        checkbox.draw(now)
    }
    let checkedValues = []; // 배열 초기화
    let checkedBanks = [];
    let type='deposit'
    // li 요소를 클릭했을 때
    let checkbox = {
        click : function () {
            $('.ProductButtonBoxFilter_label__OOSMj').click(function () {
                // 해당 li 요소에 ProductButtonBoxFilter_is-checked__OueIY 클래스를 토글합니다.
                $(this).toggleClass('ProductButtonBoxFilter_is-checked__OueIY');
                if($(this).hasClass('ProductButtonBoxFilter_is-checked__OueIY')){
                    $(this).find('.ProductButtonBoxFilter_icon__cz1Fg').html('<svg width="12" height="10" viewBox="0 0 12 10" fill="none"><path d="M.5 4.203 4.368 8 11.5 1" stroke="#2D9596" stroke-width="1.3"></path></svg>');
                    checkedValues.push($(this).parent().find('input').val())
                }
                else{
                    $(this).find('.ProductButtonBoxFilter_icon__cz1Fg').html('<svg width="10" height="10" viewBox="0 0 10 10"><path fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0" d="M4.615 0h1v10h-1z"></path></svg>');
                    checkedValues.pop($(this).parent().find('input').val())
                }
                // 체크된 체크박스의 값을 업데이트합니다.
                checkbox.update();
            });
            $('.CompanyGroupFilter_label__a4gIa').click(function(){
                $(this).toggleClass('CompanyGroupFilter_is-checked__0kOlO');
                if($(this).hasClass('CompanyGroupFilter_is-checked__0kOlO')){
                    $(this).find('.CompanyGroupFilter_icon__f7UPi').html('<svg width="12" height="10" viewBox="0 0 12 10" fill="none"><path d="M.5 4.203 4.368 8 11.5 1" stroke="#2D9596" stroke-width="1.3"></path></svg>');
                    checkedBanks.push($(this).parent().find('input').attr('id'))
                }
                else{
                    $(this).find('.CompanyGroupFilter_icon__f7UPi').html('<svg width="10" height="10" viewBox="0 0 10 10"><path fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0" d="M4.615 0h1v10h-1z"></path></svg>');
                    checkedBanks.pop($(this).parent().find('input').attr('id'))
                }
                checkbox.update();
            })
            $('.PcScrollButton_right__dDmM_ > .PcScrollButton_button__8YJq3').click(function(){
                $('.CompanyGroupFilter_list__LTekK').scrollLeft($('.CompanyGroupFilter_list__LTekK').scrollLeft()+550)
            })
            $('.PcScrollButton_left__Vwio6 > .PcScrollButton_button__8YJq3').click(function(){
                $('.CompanyGroupFilter_list__LTekK').scrollLeft($('.CompanyGroupFilter_list__LTekK').scrollLeft()-550)
            })
            $('.ProductFilterTags_button-reset__2MVZg').click(function(){
                checkedValues = []
                checkedBanks = []
                $('.ProductButtonBoxFilter_label__OOSMj').removeClass('ProductButtonBoxFilter_is-checked__OueIY')
                $('.ProductButtonBoxFilter_icon__cz1Fg').html('<svg width="10" height="10" viewBox="0 0 10 10"><path fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0" d="M4.615 0h1v10h-1z"></path></svg>')
                $('.CompanyGroupFilter_label__a4gIa').removeClass('CompanyGroupFilter_is-checked__0kOlO')
                $('.CompanyGroupFilter_icon__f7UPi').html('<svg width="10" height="10" viewBox="0 0 10 10"><path fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0" d="M4.615 0h1v10h-1z"></path></svg>')
                checkbox.update();
            })

        },
        update : function(){
            checkbox.get(checkedValues,checkedBanks);
        },
        draw: function(products){
            var dynamicHTML = '';
            products.forEach(function(product) {
                dynamicHTML += '<li class="ProductList_item__QXNrf">';
                dynamicHTML += '<a class="ProductList_link__pMmxO" data-nclicks="deposit.listing" href="/'+type+'/detail?fpc='+ product.finPrdtCd+'">';
                dynamicHTML += '<div class="ProductInfo_article__HX1ob">';
                dynamicHTML += '<span class="ProductInfo_bi-circle__ngPKu">';
                dynamicHTML += '<span class="sc-dmyCSP hQyNX bi-element" style="width: 42px; height: 42px;">';
                dynamicHTML += '<img src='+product.imgUrl+' alt="' + product.finPrdtCd + '" width="42" height="42" loading="eager">';
                dynamicHTML += '</span></span>';
                dynamicHTML += '<div class="ProductInfo_area-info__LPXq9">';
                dynamicHTML += '<div class="ProductInfo_info-text__3Bv24">';
                dynamicHTML += '<div class="ProductInfo_title-box__rhHbP">';
                dynamicHTML += '<strong class="ProductInfo_title__tomzd">' + product.finPrdtNm + '</strong>';
                dynamicHTML += '</div>';
                dynamicHTML += '<p class="ProductInfo_bank-name__UNj3m">' + product.korCoNm + '</p>';
                dynamicHTML += '</div>';
                dynamicHTML += '<div class="ProductInfo_info-rates__h8fgP">';
                dynamicHTML += '<em class="ProductInfo_top-rate__JKyeA">최고 <b class="ProductInfo_number__KjJso">'+product.bestIntr+'</b><span class="ProductInfo_percent__3571f">%</span></em>';
                dynamicHTML += '<span class="ProductInfo_rate__ruWXq"> 기본'+product.basicIntr+'%</span>';
                dynamicHTML += '</div></div></div></a></li>';
            });
            $('.ProductListHeader_highlight__V_U8l').html(products.length);
            $('#productList').html(dynamicHTML);
            return dynamicHTML;
        },
        get : function(checkedValues,checkedBanks){
            if(type=='deposit')
            {
                if(checkedValues.length==0 && checkedBanks.length==0){
                    $.ajax({
                        url:'/deposit/all',
                        success: function(res){
                            now= res;
                            productSort()
                            checkbox.draw(now)
                        }
                    })
                    return;
                }
                $.ajax({
                    url: '/deposit/benefit',
                    data: {"termclassList": checkedValues,"bankList":checkedBanks},
                    success: function (res) {
                        if (res.length === 0) {
                            $('#productList').html('<li class="ProductList_item__QXNrf">검색 결과가 없습니다.</li>');
                            $('.ProductListHeader_highlight__V_U8l').html(res.length);
                            return;
                        }
                        now = res;
                        productSort()
                        checkbox.draw(now)
                    },
                    error: function (e) {
                        console.log(e);
                    }
                });
            }
            else{
                if(checkedValues.length==0 && checkedBanks.length==0){
                    $.ajax({
                        url:'/saving/all',
                        success: function(res){
                            now= res;
                            productSort()
                            checkbox.draw(now)
                        }
                    })
                    return;
                }
                $.ajax({
                    url: '/saving/benefit',
                    data: {"termclassList": checkedValues,"bankList":checkedBanks},
                    success: function (res) {
                        if (res.length === 0) {
                            $('#productList').html('<li class="ProductList_item__QXNrf">검색 결과가 없습니다.</li>');
                            $('.ProductListHeader_highlight__V_U8l').html(res.length);
                            return;
                        }
                        now = res;
                        productSort()
                        checkbox.draw(now)
                    },
                    error: function (e) {
                        console.log(e);
                    }
                });
            }

        }
    }

    $(function (){
        checkbox.click();
        checkbox.update();
        $('.LineTab-module_link__MCdtL').click(function(){
            if($(this).hasClass('LineTab-module_is-selected__Uty3h')){
                return;
            }
            $('.LineTab-module_is-selected__Uty3h').removeClass('LineTab-module_is-selected__Uty3h')
            $(this).addClass('LineTab-module_is-selected__Uty3h')
            type = $(this).text()=='예금'?'deposit':'saving'
            checkbox.update();
        })
        $('.ProductListHeader_button-select___A4vQ').click(function(){
            if(sortby=='bestIntr'){
                sortby='basicIntr'
                $(this).html('기본금리순 <svg width="10" height="6" viewBox="0 0 10 6" fill="none"><path d="m1 1 4 4 4-4" stroke="#767678" stroke-width="1.2" stroke-linecap="round"stroke-linejoin="round"></path></svg>')
            }
            else{
                sortby='bestIntr'
                $(this).html('최고금리순 <svg width="10" height="6" viewBox="0 0 10 6" fill="none"><path d="m1 1 4 4 4-4" stroke="#767678" stroke-width="1.2" stroke-linecap="round"stroke-linejoin="round"></path></svg>')
            }
            productSort()
        })
    })
</script>
<script src="https://financial.pstatic.net/savings/_next/static/chunks/2c27f6e1-3ea448d62dcba154.js"></script>
<script src="https://financial.pstatic.net/savings/_next/static/chunks/pages/detail/%5BproductCode%5D-66d92cc6917edbdf.js"></script>

<body>
<div id="__next">
    <div class="SkipNavigation-module_article__e-Te9"><a href="#content" class="SkipNavigation-module_link__vqXAe">본문
        바로가기</a><a href="#bottom-navigation" class="SkipNavigation-module_link__vqXAe">페이 서비스메뉴 바로가기</a></div>
    <div class="FlexibleLayout-module_article__bwPeF FlexibleLayout-module_type-gray150__l7e7q">
        <div class="FlexibleLayout-module_row__P4p6X">
            <div style="height:96px">
                <div class="StickyHeaderArea-module_article__hVjGg" style="transform:translateY(0)">
                    <div>
                        <header class="CommonHeader-module_article__sFY73 CommonHeader-module_left__lnT7u">
                            <div class="CommonHeader-module_inner__CNjq5">
                                <h1><a data-nclicks="navi.gnbnlogo" href="https://naver.com/"
                                       class="HeaderNpayButton-module_link__dCMvi">
                                    <svg width="22" height="22" viewBox="0 0 22 22" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M22 11C22 13.1756 21.3549 15.3023 20.1462 17.1113C18.9375 18.9202 17.2195 20.3301 15.2095 21.1627C13.1995 21.9952 10.9878 22.2131 8.85401 21.7886C6.72022 21.3642 4.76021 20.3166 3.22183 18.7782C1.68345 17.2398 0.635805 15.2798 0.211368 13.146C-0.213069 11.0122 0.00476298 8.80047 0.837327 6.79048C1.66989 4.78049 3.07979 3.06253 4.88873 1.85383C6.69768 0.645137 8.82441 0 11 0C13.9174 0 16.7153 1.15893 18.7782 3.22183C20.8411 5.28473 22 8.08262 22 11ZM12.8398 5.83V11.3602L8.98976 5.83H5.83V16.1838H9.1575V10.637L13.0075 16.17H16.1783V5.83H12.8398Z"
                                              fill="black"></path>
                                    </svg>
                                    <span class="blind">네이버</span></a><a data-nclicks="navi.gnbplogo"
                                                                         href="https://new-m.pay.naver.com/mydata/home"
                                                                         class="HeaderNpayButton-module_link__dCMvi">
                                    <svg width="39" height="22" viewBox="0 0 39 22" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M34.4319 5.21944L31.3913 12.1478L27.9518 5.21944H25.3072L30.1783 14.8317L28.1703 19.3358H30.7384L37 5.2331L34.4319 5.21944ZM23.6171 15.9331H21.1037V14.9328C20.1894 15.7342 19.0108 16.1685 17.7953 16.1518C14.7901 16.1518 12.4379 13.692 12.4379 10.5763C12.4379 7.46057 14.7874 5.00079 17.7953 5.00079C19.0104 4.9833 20.189 5.41657 21.1037 6.21701V5.21944H23.6171V15.9331ZM21.3987 10.5899C21.3987 8.57019 19.9891 7.03694 18.1204 7.03694C16.2517 7.03694 14.842 8.57019 14.842 10.5899C14.842 12.6097 16.249 14.1429 18.1204 14.1429C19.9918 14.1429 21.3987 12.596 21.3987 10.5899ZM0.00819554 19.3358H2.63088V15.023C3.52823 15.7695 4.66309 16.1699 5.83001 16.1518C8.83516 16.1518 11.1901 13.692 11.1901 10.5763C11.1901 7.46057 8.83789 5.00079 5.83001 5.00079C4.61166 4.9789 3.42899 5.4126 2.51341 6.21701V5.21944H0L0.00819554 19.3358ZM5.51856 7.03694C7.38722 7.03694 8.79691 8.57019 8.79691 10.5899C8.79691 12.6097 7.38722 14.1429 5.51856 14.1429C3.6499 14.1429 2.24021 12.6097 2.24021 10.5899C2.24021 8.57019 3.63351 7.03694 5.51856 7.03694Z"
                                              fill="black"></path>
                                    </svg>
                                    <span class="blind">네이버 페이</span></a><a href="/finance"
                                                                            class="HeaderName-module_article__-dT0a"
                                                                            data-nclicks="navi.gnbplogo">
                                    <svg width="37" height="22" viewBox="0 0 37 22" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M14.8 8.60001C15.08 6.78001 15.22 4.84001 15.22 3.26001V2.02001H2.1V4.36001H12.66C12.62 5.38001 12.48 7.02001 12.22 8.60001H0V10.86H17.6V8.60001H14.8ZM15.56 20.18V12.76H2.06V20.18H15.56ZM13 14.96V17.94H4.6V14.96H13Z"
                                              fill="black"></path>
                                        <path d="M29.1048 8.58001C32.1648 8.58001 34.3248 7.42001 34.3248 5.08001C34.3248 2.76001 32.1648 1.64001 29.1048 1.64001H25.8448C22.7648 1.64001 20.6248 2.76001 20.6248 5.08001C20.6248 7.42001 22.7648 8.58001 25.8448 8.58001H29.1048ZM28.6248 3.76001C30.6248 3.76001 31.7648 4.20001 31.7648 5.10001C31.7648 6.02001 30.6248 6.48001 28.6248 6.48001H26.3248C24.3048 6.48001 23.1648 6.02001 23.1648 5.10001C23.1648 4.20001 24.3048 3.76001 26.3248 3.76001H28.6248ZM36.2648 9.72001H18.6648V11.9H22.9848V13.78C21.4048 14.34 20.5248 15.5 20.5248 16.9C20.5248 18.9 22.2648 20.36 25.2448 20.36H29.6848C32.6848 20.36 34.4248 18.9 34.4248 16.9C34.4248 15.5 33.5648 14.36 31.9848 13.8V11.9H36.2648V9.72001ZM25.4648 13.44V11.9H29.5048V13.44H25.4648ZM25.7248 18.14C23.8648 18.14 23.0648 17.66 23.0648 16.88C23.0648 16.1 23.8648 15.64 25.7248 15.64H29.2248C31.0848 15.64 31.8648 16.1 31.8648 16.88C31.8648 17.66 31.0848 18.14 29.2248 18.14H25.7248Z"
                                              fill="black"></path>
                                    </svg>
                                    <span class="blind">금융</span></a></h1>
                                <div class="CommonHeader-module_aside-right__auJsW"><span class="blind">메뉴모음</span>
                                    <button type="button" data-nclicks="navi.gnbsearch"
                                            class="HeaderButton-module_article__KwTay">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M10.5001 3.89985C6.85502 3.89985 3.9001 6.85477 3.9001 10.4999C3.9001 14.1449 6.85502 17.0999 10.5001 17.0999C14.1452 17.0999 17.1001 14.1449 17.1001 10.4999C17.1001 6.85477 14.1452 3.89985 10.5001 3.89985ZM2.1001 10.4999C2.1001 5.86066 5.86091 2.09985 10.5001 2.09985C15.1393 2.09985 18.9001 5.86066 18.9001 10.4999C18.9001 15.139 15.1393 18.8999 10.5001 18.8999C5.86091 18.8999 2.1001 15.139 2.1001 10.4999Z"
                                                  fill="#1E1E23"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M15.3637 15.3635C15.7152 15.012 16.285 15.012 16.6365 15.3635L21.6365 20.3635C21.988 20.7149 21.988 21.2848 21.6365 21.6363C21.285 21.9877 20.7152 21.9877 20.3637 21.6362L15.3637 16.6362C15.0122 16.2848 15.0122 15.7149 15.3637 15.3635Z"
                                                  fill="#1E1E23"></path>
                                        </svg>
                                        <span class="blind">검색</span></button>
                                    <a href="https://new-m.pay.naver.com/payservice?rPath%3D%2F"
                                       data-nclicks="navi.gnbmenu" class="HeaderButton-module_article__KwTay">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M2 4.5C2 3.94772 2.44772 3.5 3 3.5H21C21.5523 3.5 22 3.94772 22 4.5C22 5.05228 21.5523 5.5 21 5.5H3C2.44772 5.5 2 5.05228 2 4.5Z"
                                                  fill="#1E1E23"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M2 12.5C2 11.9477 2.44772 11.5 3 11.5H21C21.5523 11.5 22 11.9477 22 12.5C22 13.0523 21.5523 13.5 21 13.5H3C2.44772 13.5 2 13.0523 2 12.5Z"
                                                  fill="#1E1E23"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M2 20.5C2 19.9477 2.44772 19.5 3 19.5H21C21.5523 19.5 22 19.9477 22 20.5C22 21.0523 21.5523 21.5 21 21.5H3C2.44772 21.5 2 21.0523 2 20.5Z"
                                                  fill="#1E1E23"></path>
                                        </svg>
                                        <span class="blind">전체메뉴</span></a></div>
                            </div>
                        </header>
                    </div>
                    <div class="">
                        <div class="LineTab-module_article__IxSsG LineTab-module_bg-white__l-Qhm">
                            <ul class="LineTab-module_list__hJZ3g LineTab-module_main__Hebbk LineTab-module_flexible__svdK1 LineTab-module_max-width-basic__bz406">
                                <li class="LineTab-module_item__Q0W6v"><a class="LineTab-module_link__MCdtL"
                                                                          data-nclicks="navi.Inbloan"
                                                                          ><span></span></a>
                                </li>
                                <li class="LineTab-module_item__Q0W6v"><a
                                        class="LineTab-module_link__MCdtL LineTab-module_is-selected__Uty3h"
                                        data-nclicks="navi.Inbsavings" ><span>예금</span><span
                                        class="blind"></span></a></li>
                                <li class="LineTab-module_item__Q0W6v"><a
                                        class="LineTab-module_link__MCdtL"
                                        data-nclicks="navi.Inbsavings" ><span>적금</span><span
                                        class="blind"></span></a></li>
                                <li class="LineTab-module_item__Q0W6v"><a class="LineTab-module_link__MCdtL"
                                                                          data-nclicks="navi.Inbloan"
                                                                          ><span></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="FlexibleLayout-module_wrapper__9uXan">
            <div id="content" class="FlexibleLayout-module_inner__hGuDc"><h2 class="blind">예적금</h2>
                <div class="Navigation_article__t42yM">
                    <div class="ProductListHeader_area-filter-info__9YO5n">
                        <strong class="ProductListHeader_count__xQGto" style="padding-left: 20px">은행별 보기</strong>
                    </div>
                    <div class="CompanyGroupFilter_article___x1Xq">
                        <ul class="CompanyGroupFilter_list__LTekK">
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="10927" type="checkbox" class="hidden"><label for="10927"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_KB_Profile.png"
                                    alt="BK_KB_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">KB국민</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="11625" type="checkbox" class="hidden"><label for="11625"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_SHINHAN_Profile.png"
                                    alt="BK_SHINHAN_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">신한</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="13909" type="checkbox" class="hidden"><label for="13909"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_HANA_Profile.png"
                                    alt="BK_HANA_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">하나</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="10001" type="checkbox" class="hidden"><label for="10001"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_WOORI_Profile.png"
                                    alt="BK_WOORI_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">우리</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="13175" type="checkbox" class="hidden"><label for="13175"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_NH_Profile.png"
                                    alt="BK_NH_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">NH농협</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden=""><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="10026" type="checkbox" class="hidden"><label for="10026"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_IBK_Profile.png"
                                    alt="BK_IBK_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">IBK기업</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="10030" type="checkbox" class="hidden"><label for="10030"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_KDB_Profile.png"
                                    alt="BK_KDB_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">KDB산업</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="10002" type="checkbox" class="hidden"><label for="10002"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_SC_Profile.png"
                                    alt="BK_SC_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">SC제일</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="10017" type="checkbox" class="hidden"><label for="10017"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_BUSAN_Profile.png"
                                    alt="BK_BUSAN_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">부산</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="10016" type="checkbox" class="hidden"><label for="10016"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/IS_DGB_Profile.png"
                                    alt="IS_DGB_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">DGB대구</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="14807" type="checkbox" class="hidden"><label for="14807"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_SH_Profile.png"
                                    alt="BK_SH_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">SH수협</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="10024" type="checkbox" class="hidden"><label for="10024"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_KYOUNGNAM_Profile.png"
                                    alt="BK_KYOUNGNAM_Profile" width="26" height="26"
                                    loading="eager"></span></span><span class="CompanyGroupFilter_name__oQoHu">경남</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="15130" type="checkbox" class="hidden"><label for="15130"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_KAKAO_Profile.png"
                                    alt="BK_KAKAO_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">카카오뱅크</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="10019" type="checkbox" class="hidden"><label for="10019"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_KWANGJU_Profile.png"
                                    alt="BK_KWANGJU_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">광주</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="17801" type="checkbox" class="hidden"><label for="17801"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_TOSS_Profile.png"
                                    alt="BK_TOSS_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">토스뱅크</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="10022" type="checkbox" class="hidden"><label for="10022"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_JEONBUK_Profile.png"
                                    alt="BK_JEONBUK_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">전북</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="14674" type="checkbox" class="hidden"><label for="14674"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_K_Profile.png"
                                    alt="BK_K_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">케이뱅크</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="CompanyGroupFilter_item__xtbdc CompanyGroupFilter_bank__xXyzb"><input
                                    id="10020" type="checkbox" class="hidden"><label for="10020"
                                                                                       class="CompanyGroupFilter_label__a4gIa"
                                                                                       data-nclicks="deposit.highbank"><span
                                    class="CompanyGroupFilter_bi-circle__bPB_c"><span class="sc-dmyCSP hQyNX bi-element"
                                                                                      style="width:26px;height:26px"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_JEJU_Profile.png"
                                    alt="BK_JEJU_Profile" width="26" height="26" loading="eager"></span></span><span
                                    class="CompanyGroupFilter_name__oQoHu">제주</span><span
                                    class="CompanyGroupFilter_icon__f7UPi" aria-hidden="true"><svg width="10"
                                                                                                   height="10"
                                                                                                   viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                        </ul>
                        <div class="CompanyGroupFilter_pc-scroll-button-wrapper__mTUip">
                            <div class="PcScrollButton_article__R0n47 PcScrollButton_left__Vwio6">
                                <button type="button" class="PcScrollButton_button__8YJq3">
                                    <svg width="10" height="10" viewBox="0 0 10 10" fill="none">
                                        <path d="m3 1.2 4 3.828-4 3.809" stroke="#1e1e23" stroke-width="1.2"
                                              stroke-linejoin="round"></path>
                                    </svg>
                                    <span class="blind">왼쪽 스크롤</span></button>
                            </div>
                            <div class="PcScrollButton_article__R0n47 PcScrollButton_right__dDmM_">
                                <button type="button" class="PcScrollButton_button__8YJq3">
                                    <svg width="10" height="10" viewBox="0 0 10 10" fill="none">
                                        <path d="m3 1.2 4 3.828-4 3.809" stroke="#1e1e23" stroke-width="1.2"
                                              stroke-linejoin="round"></path>
                                    </svg>
                                    <span class="blind">오른쪽 스크롤</span></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ProductFilterSection_article__0nJDV">
                    <ul>
                        <li data-nclicks="deposit.benefit" class="ProductFilter_item__PhP2B">
                            <button type="button"
                                    class="ProductFilter_button___BQM5 ProductFilter_type-expand___jUS2">우대조건
                                <svg width="10" height="6" viewBox="0 0 10 6" fill="none">
                                    <path d="m1 1 4 4 4-4" stroke="#bbbbb0" stroke-width="1.2"
                                          stroke-linecap="round" stroke-linejoin="round"></path>
                                </svg>
                            </button>
                        </li>
                    </ul>
                    <div class="ProductFilter_pc-scroll-button-wrapper__wtani">
                        <div class="PcScrollButton_article__R0n47 PcScrollButton_left__Vwio6">
                            <button type="button" class="PcScrollButton_button__8YJq3">
                                <svg width="10" height="10" viewBox="0 0 10 10" fill="none">
                                    <path d="m3 1.2 4 3.828-4 3.809" stroke="#1e1e23" stroke-width="1.2"
                                          stroke-linejoin="round"></path>
                                </svg>
                                <span class="blind">왼쪽 스크롤</span></button>
                        </div>
                        <div class="PcScrollButton_article__R0n47 PcScrollButton_right__dDmM_">
                            <button type="button" class="PcScrollButton_button__8YJq3">
                                <svg width="10" height="10" viewBox="0 0 10 10" fill="none">
                                    <path d="m3 1.2 4 3.828-4 3.809" stroke="#1e1e23" stroke-width="1.2"
                                          stroke-linejoin="round"></path>
                                </svg>
                                <span class="blind">오른쪽 스크롤</span></button>
                        </div>
                    </div>
                </div>
                <div id="checkbox-depositBenefit" class="ProductButtonBoxFilter_article__Jetia" style="display: none;">
                    <div class="ProductButtonBoxFilter_inner__G7UCr">
                        <ul class="ProductButtonBoxFilter_list__hkcbi">
                            <li class="ProductButtonBoxFilter_item__RIt_0"><input type="checkbox"
                                                                                  name="product_type" class="hidden"
                                                                                  id="checkbox-online" value="9"><label
                                    for="checkbox-online" class="ProductButtonBoxFilter_label__OOSMj">비대면가입<span
                                    class="ProductButtonBoxFilter_icon__cz1Fg" aria-hidden="true"><svg width="10"
                                                                                                       height="10"
                                                                                                       viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="ProductButtonBoxFilter_item__RIt_0"><input type="checkbox"
                                                                                  name="product_type" class="hidden"
                                                                                  id="checkbox-bankApp" value="2"><label
                                    for="checkbox-bankApp" class="ProductButtonBoxFilter_label__OOSMj">은행앱사용<span
                                    class="ProductButtonBoxFilter_icon__cz1Fg" aria-hidden="true"><svg width="10"
                                                                                                       height="10"
                                                                                                       viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="ProductButtonBoxFilter_item__RIt_0"><input type="checkbox"
                                                                                  name="product_type" class="hidden"
                                                                                  id="checkbox-usingSalaryAccount" value="4"><label
                                    for="checkbox-usingSalaryAccount" class="ProductButtonBoxFilter_label__OOSMj">급여연동<span
                                    class="ProductButtonBoxFilter_icon__cz1Fg" aria-hidden="true"><svg width="10"
                                                                                                       height="10"
                                                                                                       viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="ProductButtonBoxFilter_item__RIt_0"><input type="checkbox"
                                                                                  name="product_type" class="hidden"
                                                                                  id="checkbox-pension" value="6"><label
                                    for="checkbox-pension" class="ProductButtonBoxFilter_label__OOSMj">연금<span
                                    class="ProductButtonBoxFilter_icon__cz1Fg" aria-hidden="true"><svg width="10"
                                                                                                       height="10"
                                                                                                       viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="ProductButtonBoxFilter_item__RIt_0"><input type="checkbox"
                                                                                  name="product_type" class="hidden"
                                                                                  id="checkbox-usingUtilityBill" value="5"><label
                                    for="checkbox-usingUtilityBill" class="ProductButtonBoxFilter_label__OOSMj">공과금연동<span
                                    class="ProductButtonBoxFilter_icon__cz1Fg" aria-hidden="true"><svg width="10"
                                                                                                       height="10"
                                                                                                       viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="ProductButtonBoxFilter_item__RIt_0"><input type="checkbox"
                                                                                  name="product_type" class="hidden"
                                                                                  id="checkbox-usingCard" value="8"><label
                                    for="checkbox-usingCard" class="ProductButtonBoxFilter_label__OOSMj">카드사용<span
                                    class="ProductButtonBoxFilter_icon__cz1Fg" aria-hidden="true"><svg width="10"
                                                                                                       height="10"
                                                                                                       viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="ProductButtonBoxFilter_item__RIt_0"><input type="checkbox"
                                                                                  name="product_type" class="hidden"
                                                                                  id="checkbox-firstBanking" value="1"><label
                                    for="checkbox-firstBanking" class="ProductButtonBoxFilter_label__OOSMj">첫거래<span
                                    class="ProductButtonBoxFilter_icon__cz1Fg" aria-hidden="true"><svg width="10"
                                                                                                       height="10"
                                                                                                       viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="ProductButtonBoxFilter_item__RIt_0"><input type="checkbox"
                                                                                  name="product_type" class="hidden"
                                                                                  id="checkbox-depositAccount" value="7"><label
                                    for="checkbox-depositAccount"
                                    class="ProductButtonBoxFilter_label__OOSMj">입출금통장<span
                                    class="ProductButtonBoxFilter_icon__cz1Fg" aria-hidden="true"><svg width="10"
                                                                                                       height="10"
                                                                                                       viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                            <li class="ProductButtonBoxFilter_item__RIt_0"><input type="checkbox"
                                                                                  name="product_type" class="hidden"
                                                                                  id="checkbox-depositAgain" value="3"><label
                                    for="checkbox-depositAgain" class="ProductButtonBoxFilter_label__OOSMj">재예치<span
                                    class="ProductButtonBoxFilter_icon__cz1Fg" aria-hidden="true"><svg width="10"
                                                                                                       height="10"
                                                                                                       viewBox="0 0 10 10"><path
                                    fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                                     d="M4.615 0h1v10h-1z"></path></svg></span></label>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="ProductFilterTags_article__LS1Oc">
                    <div class="ProductFilterTags_area-keyword__AmEYF">
                    </div>
                    <button type="button" class="ProductFilterTags_button-reset__2MVZg"
                            data-nclicks="deposit.filterrefresh">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M3.28857 12.0112C3.28857 7.20918 7.14749 3.29985 11.9268 3.29985C15.7892 3.29985 19.0514 5.85403 20.1602 9.36711L18.4436 9.90886C17.5616 7.11406 14.972 5.09985 11.9268 5.09985C8.15775 5.09985 5.08857 8.18707 5.08857 12.0112L3.28857 12.0112Z"
                                  fill="#767678"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M20.3171 4.89256C20.5691 4.64057 21 4.81904 21 5.1754V9.92297C21 10.1439 20.8209 10.323 20.6 10.323H15.8524C15.496 10.323 15.3176 9.89211 15.5696 9.64012L20.3171 4.89256Z"
                                  fill="#767678"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M20.7114 12.3511C20.7114 17.1531 16.8525 21.0625 12.0732 21.0625C8.21085 21.0625 4.94859 18.5083 3.83984 14.9952L5.55638 14.4534C6.43844 17.2482 9.02801 19.2625 12.0732 19.2625C15.8422 19.2625 18.9114 16.1752 18.9114 12.3511H20.7114Z"
                                  fill="#767678"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M3.68287 19.4697C3.43089 19.7217 3.00003 19.5433 3.00003 19.1869L3.00003 14.4393C3.00003 14.2184 3.17912 14.0393 3.40003 14.0393L8.1476 14.0393C8.50396 14.0393 8.68242 14.4702 8.43044 14.7222L3.68287 19.4697Z"
                                  fill="#767678"></path>
                        </svg>
                        <span class="blind">검색어 초기화</span></button>
                </div>
                <div class="ProductListSection_article__kDyT3"><h3 class="blind">은행상품 목록</h3>
                    <div class="ProductListHeader_area-filter-info__9YO5n"><strong
                            class="ProductListHeader_count__xQGto"><span
                            class="ProductListHeader_highlight__V_U8l">${all.size()}</span>개</strong>
                        <div>
                            <button class="ProductListHeader_button-select___A4vQ">최고금리순
                                <svg width="10" height="6" viewBox="0 0 10 6" fill="none">
                                    <path d="m1 1 4 4 4-4" stroke="#767678" stroke-width="1.2" stroke-linecap="round"
                                          stroke-linejoin="round"></path>
                                </svg>
                            </button>
                        </div>
                    </div>
                    <ul id="productList">
                    </ul>
                </div>
                    <div style="padding-bottom: 50px;"></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>