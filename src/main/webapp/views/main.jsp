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
                    let val = $(this).parent().find('input').val()
                    let me = $(this)
                    checkedValues.push(val)
                    $('.ProductFilterTags_area-keyword__AmEYF').append(
                        '<button id="'+val+'_btn" type="button" class="ProductFilterTags_button__6cYTY" >'+$(this).text()+'<svg width="10" height="9" viewBox="0 0 10 9"><path d="m1.152.653 7.784 7.784M8.936.653 1.152 8.437" stroke="#f6f8fa"></path></svg><span class="blind">삭제</span></button>'
                    )
                    $('.ProductFilterTags_area-keyword__AmEYF').find('#'+val+'_btn').click(()=>{
                        me.toggleClass('ProductButtonBoxFilter_is-checked__OueIY');
                        me.find('.ProductButtonBoxFilter_icon__cz1Fg').html('<svg width="10" height="10" viewBox="0 0 10 10"><path fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0" d="M4.615 0h1v10h-1z"></path></svg>');
                        let val = me.parent().find('input').val()
                        checkedValues = checkedValues.filter((v)=>v!=val)
                        $('#'+val+'_btn').remove()
                        checkbox.update();
                    })

                }
                else{
                    $(this).find('.ProductButtonBoxFilter_icon__cz1Fg').html('<svg width="10" height="10" viewBox="0 0 10 10"><path fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0" d="M4.615 0h1v10h-1z"></path></svg>');
                    let val = $(this).parent().find('input').val()
                    checkedValues = checkedValues.filter((v)=>v!=val)
                    $('#'+val+'_btn').remove()
                }
                // 체크된 체크박스의 값을 업데이트합니다.
                checkbox.update();
            });
            $('.CompanyGroupFilter_label__a4gIa').click(function(){
                $(this).toggleClass('CompanyGroupFilter_is-checked__0kOlO');
                if($(this).hasClass('CompanyGroupFilter_is-checked__0kOlO')){
                    $(this).find('.CompanyGroupFilter_icon__f7UPi').html('<svg width="12" height="10" viewBox="0 0 12 10" fill="none"><path d="M.5 4.203 4.368 8 11.5 1" stroke="#2D9596" stroke-width="1.3"></path></svg>');
                    let id = $(this).parent().find('input').attr('id')
                    let me = $(this)
                    checkedBanks.push(id)
                    $('.ProductFilterTags_area-keyword__AmEYF').append(
                        '<button id="'+id+'_btn" type="button" class="ProductFilterTags_button__6cYTY" >'+$(this).find('.CompanyGroupFilter_name__oQoHu').text()+'<svg width="10" height="9" viewBox="0 0 10 9"><path d="m1.152.653 7.784 7.784M8.936.653 1.152 8.437" stroke="#f6f8fa"></path></svg><span class="blind">삭제</span></button>'
                    )
                    $('.ProductFilterTags_area-keyword__AmEYF').find('#'+id+'_btn').click(()=>{
                        me.toggleClass('CompanyGroupFilter_is-checked__0kOlO');
                        me.find('.CompanyGroupFilter_icon__f7UPi').html('<svg width="10" height="10" viewBox="0 0 10 10"><path fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0" d="M4.615 0h1v10h-1z"></path></svg>');
                        let id = me.parent().find('input').attr('id')
                        checkedBanks = checkedBanks.filter((v)=>v!=id)
                        $('#'+id+'_btn').remove()
                        checkbox.update();
                    })
                }
                else{
                    $(this).find('.CompanyGroupFilter_icon__f7UPi').html('<svg width="10" height="10" viewBox="0 0 10 10"><path fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0" d="M4.615 0h1v10h-1z"></path></svg>');
                    let id = $(this).parent().find('input').attr('id')
                    checkedBanks = checkedBanks.filter((v)=>v!=id)
                    $('#'+id+'_btn').remove()
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
                $('.ProductFilterTags_area-keyword__AmEYF').html('')
                checkbox.update();
            })

        },
        update : function(){
            checkbox.get(checkedValues,checkedBanks);
        },
        draw: function(products){
            var dynamicHTML = '';
            products.forEach(function(product) {
                product.bestIntr = product.bestIntr.toFixed(2)
                product.basicIntr = product.basicIntr.toFixed(2)
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
            checkbox.draw(now)
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
                            class="ProductListHeader_highlight__V_U8l"></span>개</strong>
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

            </div>
        </div>
    </div>
</div>
</body>
</html>