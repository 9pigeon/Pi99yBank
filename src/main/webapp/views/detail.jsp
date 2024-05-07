<%--
  Created by IntelliJ IDEA.
  User: 졍
  Date: 2024-04-25
  Time: 오전 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="<c:url value="/css/detail1.css"/>">
<link rel="stylesheet" href="<c:url value="/css/detail2.css"/>">
<link rel="stylesheet" href="<c:url value="/css/detail3.css"/>">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script>
    let fpc = '${depositDetail.finPrdtCd}';

    $(document).ready(function () {
        console.log(fpc);
        $.ajax({
            url:'http://127.0.0.1:5000/recommendation?target_fin_prdt_cd=' + fpc +'&rownum=5&type=deposit',
            success:function(data){
                console.log(data);
                recommendation.info(data);
            },
            error:function (e){
                console.log(e);
            }
        });
    });

    let recommendation = {
        info:function(data){

            $.ajax({
                url:'<c:url value="/deposit/recommmend"/>',
                data:{"similar":data},
                success:function (res){
                    console.log(res);
                },
                error:function (e){
                    console.log(e);
                }
            });
        }
    }
</script>
<body>
<div id="__next">
    <div class="FlexibleLayout-module_article__bwPeF FlexibleLayout-module_type-gray150__l7e7q">
        <div class="FlexibleLayout-module_row__P4p6X">
            <div style="height: 56px;">
                <div class="StickyHeaderArea-module_article__hVjGg" style="transform: translateY(0px);">
                    <div>
                        <header class="CommonHeader-module_article__sFY73 CommonHeader-module_left__lnT7u">
                            <div class="CommonHeader-module_inner__CNjq5">
                                <h1><a href="https://new-m.pay.naver.com/mydata/home"
                                       class="HeaderNpayButton-module_link__dCMvi">
                                    <svg width="66" height="22" viewBox="0 0 66 22" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M22 11C22 13.1756 21.3549 15.3023 20.1462 17.1113C18.9375 18.9202 17.2195 20.3301 15.2095 21.1627C13.1995 21.9952 10.9878 22.2131 8.85401 21.7886C6.72022 21.3642 4.76021 20.3166 3.22183 18.7782C1.68345 17.2398 0.635805 15.2798 0.211368 13.146C-0.213069 11.0122 0.00476298 8.80047 0.837327 6.79048C1.66989 4.78049 3.07979 3.06253 4.88873 1.85383C6.69768 0.645137 8.82441 0 11 0C13.9174 0 16.7153 1.15893 18.7782 3.22183C20.8411 5.28473 22 8.08262 22 11ZM12.8398 5.83V11.3602L8.98976 5.83H5.83V16.1838H9.1575V10.637L13.0075 16.17H16.1783V5.83H12.8398Z"
                                              fill="black"></path>
                                        <path d="M61.4319 5.21944L58.3913 12.1478L54.9518 5.21944H52.3072L57.1783 14.8317L55.1703 19.3358H57.7384L64 5.2331L61.4319 5.21944ZM50.6171 15.9331H48.1037V14.9328C47.1894 15.7342 46.0108 16.1685 44.7953 16.1518C41.7901 16.1518 39.4379 13.692 39.4379 10.5763C39.4379 7.46057 41.7874 5.00079 44.7953 5.00079C46.0104 4.9833 47.189 5.41657 48.1037 6.21701V5.21944H50.6171V15.9331ZM48.3987 10.5899C48.3987 8.57019 46.9891 7.03694 45.1204 7.03694C43.2517 7.03694 41.842 8.57019 41.842 10.5899C41.842 12.6097 43.249 14.1429 45.1204 14.1429C46.9918 14.1429 48.3987 12.596 48.3987 10.5899ZM27.0082 19.3358H29.6309V15.023C30.5282 15.7695 31.6631 16.1699 32.83 16.1518C35.8352 16.1518 38.1901 13.692 38.1901 10.5763C38.1901 7.46057 35.8379 5.00079 32.83 5.00079C31.6117 4.9789 30.429 5.4126 29.5134 6.21701V5.21944H27L27.0082 19.3358ZM32.5186 7.03694C34.3872 7.03694 35.7969 8.57019 35.7969 10.5899C35.7969 12.6097 34.3872 14.1429 32.5186 14.1429C30.6499 14.1429 29.2402 12.6097 29.2402 10.5899C29.2402 8.57019 30.6335 7.03694 32.5186 7.03694Z"
                                              fill="black"></path>
                                    </svg>
                                </a><a href="/finance" class="HeaderName-module_article__-dT0a">
                                    <svg width="28" height="22" viewBox="0 0 37 22" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M14.8 8.60001C15.08 6.78001 15.22 4.84001 15.22 3.26001V2.02001H2.1V4.36001H12.66C12.62 5.38001 12.48 7.02001 12.22 8.60001H0V10.86H17.6V8.60001H14.8ZM15.56 20.18V12.76H2.06V20.18H15.56ZM13 14.96V17.94H4.6V14.96H13Z"
                                              fill="black"></path>
                                        <path d="M29.1048 8.58001C32.1648 8.58001 34.3248 7.42001 34.3248 5.08001C34.3248 2.76001 32.1648 1.64001 29.1048 1.64001H25.8448C22.7648 1.64001 20.6248 2.76001 20.6248 5.08001C20.6248 7.42001 22.7648 8.58001 25.8448 8.58001H29.1048ZM28.6248 3.76001C30.6248 3.76001 31.7648 4.20001 31.7648 5.10001C31.7648 6.02001 30.6248 6.48001 28.6248 6.48001H26.3248C24.3048 6.48001 23.1648 6.02001 23.1648 5.10001C23.1648 4.20001 24.3048 3.76001 26.3248 3.76001H28.6248ZM36.2648 9.72001H18.6648V11.9H22.9848V13.78C21.4048 14.34 20.5248 15.5 20.5248 16.9C20.5248 18.9 22.2648 20.36 25.2448 20.36H29.6848C32.6848 20.36 34.4248 18.9 34.4248 16.9C34.4248 15.5 33.5648 14.36 31.9848 13.8V11.9H36.2648V9.72001ZM25.4648 13.44V11.9H29.5048V13.44H25.4648ZM25.7248 18.14C23.8648 18.14 23.0648 17.66 23.0648 16.88C23.0648 16.1 23.8648 15.64 25.7248 15.64H29.2248C31.0848 15.64 31.8648 16.1 31.8648 16.88C31.8648 17.66 31.0848 18.14 29.2248 18.14H25.7248Z"
                                              fill="black"></path>
                                    </svg>
                                    <span class="blind">금융</span></a></h1>
                                <span class="Divider-module_article__rEFKi"></span>
                                <h2 class="HeaderBrandDepth-module_area-sub-name__iq2fo"><a href="/savings/"
                                                                                            class="HeaderBrandDepth-module_sub-name__t-5rA">
                                    <svg width="51" height="22" viewBox="0 0 51 22" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M13.2659 18.844V2.03198H15.4979V18.844H13.2659ZM9.61195 5.68598V2.30198H11.7899V18.448H9.61195V12.958H7.84795C7.64395 14.23 7.24195 15.172 6.64195 15.784C6.04195 16.396 5.30395 16.702 4.42795 16.702C3.34795 16.702 2.47795 16.24 1.81795 15.316C1.16995 14.392 0.845947 12.958 0.845947 11.014V8.43998C0.845947 6.49598 1.16995 5.06198 1.81795 4.13798C2.47795 3.21398 3.34795 2.75198 4.42795 2.75198C5.20795 2.75198 5.87995 2.99198 6.44395 3.47198C7.00795 3.93998 7.42195 4.67798 7.68595 5.68598H9.61195ZM5.81395 8.43998C5.81395 6.03998 5.35195 4.83998 4.42795 4.83998C3.49195 4.83998 3.02395 6.03998 3.02395 8.43998V11.014C3.02395 13.414 3.49195 14.614 4.42795 14.614C5.35195 14.614 5.81395 13.414 5.81395 11.014V8.43998ZM7.99195 10.942H9.61195V7.71998H7.97395C7.98595 7.87598 7.99195 8.11598 7.99195 8.43998V10.942Z"
                                              fill="#1E1E23"></path>
                                        <path d="M29.4563 5.68598V2.04998H31.7603V11.464H29.4563V7.64798H26.5043V5.68598H29.4563ZM22.3103 8.58398C21.4583 9.69998 20.1503 10.708 18.3863 11.608L17.2883 9.78998C18.6923 9.03398 19.7183 8.25998 20.3663 7.46798C21.0143 6.67598 21.3623 5.78198 21.4103 4.78598H17.9543V2.75198H27.1163V4.78598H23.6423C23.6303 5.43398 23.5163 6.09398 23.3003 6.76598L27.7463 9.48398L26.6123 11.356L22.3103 8.58398ZM29.4563 14.452H20.1503V12.382H31.7603V19.024H29.4563V14.452Z"
                                              fill="#1E1E23"></path>
                                        <path d="M49.5887 8.43998V10.474H33.7487V8.43998H44.7467C44.9627 7.13198 45.0947 5.85998 45.1427 4.62398H35.6387V2.51798H47.4467V3.63398C47.4467 5.19398 47.3207 6.79598 47.0687 8.43998H49.5887ZM47.7527 18.862H35.6027V12.184H47.7527V18.862ZM45.4487 14.164H37.8887V16.846H45.4487V14.164Z"
                                              fill="#1E1E23"></path>
                                    </svg>
                                    <span class="blind">예적금</span></a></h2>
                                <div class="CommonHeader-module_aside-right__auJsW">
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
                                </div>
                            </div>
                        </header>
                    </div>
                    <div class=""></div>
                </div>
            </div>
        </div>
        <div class="FlexibleLayout-module_wrapper__9uXan">
            <div id="content" class="FlexibleLayout-module_inner__hGuDc">
                <div class="MainInfo_article__iQqCh">
                    <div class="MainInfo_area-title__hzVI3"><span class="MainInfo_bi-image__PJeZY"><span
                            class="sc-dmyCSP hQyNX bi-element" style="width: 50px; height: 50px;"><img
                            src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_SH_Profile.png"
                            alt="BK_SH_Profile" width="50" height="50" loading="eager"></span></span>
                        <h3 class="MainInfo_title__AHL1g">${depositDetail.finPrdtNm}</h3><span class="MainInfo_text__V_Fkd">${depositDetail.korCoNm}</span>
                        <ul class="TagList_article__gRL9O MainInfo_area-tag__xO9lF">
                            <li class="TagList_tag__xQBbK TagList_highlight__mX4ib">특판</li>
                            <li class="TagList_tag__xQBbK">방문없이가입</li>
                            <li class="TagList_tag__xQBbK">누구나가입</li>
                        </ul>
                    </div>
                    <div class="MainInfo_area-rates__ZlyVd">
                        <dl class="MainInfo_rate-info__nQpPA">
                            <div class="MainInfo_item__e2TqV">
                                <dt class="MainInfo_name__KyHe4"><span class="blind">이율</span>최고</dt>
                                <dd class="MainInfo_rate__em52j">${depositDetail.bestIntr}</dd>
                            </div>
                            <div class="MainInfo_item__e2TqV">
                                <dt class="MainInfo_name__KyHe4"><span class="blind">이율</span>기본</dt>
                                <dd class="MainInfo_rate__em52j">${String.format("%.2f",depositDetail.basicIntr)}%<span
                                        class="MainInfo_sub-text__VGvM7">(12개월,세전)</span></dd>
                            </div>
                        </dl>
                    </div>
                    <div class="MainInfo_area-event__REIlH"><strong class="MainInfo_title__AHL1g">특판</strong>
                        <div class="MainInfo_desc__vh6bu"><p>${depositDetail.mtrtInt}</p><p>${depositDetail.spclCnd}</p></div>
                    </div>
                    <div class="MainInfo_area-button__v__hB"><a href="tel:1588-1515"
                                                                class="MainInfo_button__Vw9Eq MainInfo_color-light-green__BzZHT"
                                                                data-nclicks="cma_contents.call">전화 문의</a><a
                            href="https://www.suhyup-bank.com/"
                            class="MainInfo_button__Vw9Eq MainInfo_color-green__vTFG1" target="_blank"
                            rel="noopener noreferrer" data-nclicks="sv_contents.homepage">공식홈에서 더 알아보기</a></div>
                </div>
                <div>
                    <div class="TabDetail_article__RPRMY TabDetail_top-space__gv95l">
                        <ul class="TabDetail_list__PG8nQ">
                            <li class="TabDetail_tab__yz5C1" data-nclicks="sv_contents.producttap">
                                <button type="button" class="TabDetail_link__aD107 TabDetail_is-selected__uqGdC">상품 안내
                                </button>
                            </li>
                            <li class="TabDetail_tab__yz5C1" data-nclicks="sv_contents.interestap">
                                <button type="button" class="TabDetail_link__aD107">금리 안내</button>
                            </li>
                            <li class="TabDetail_tab__yz5C1" data-nclicks="sv_contents.relatedtap">
                                <button type="button" class="TabDetail_link__aD107">관련 상품</button>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="TabPanel_article__avbnv" id="PRODUCT_GUIDE"><h4 class="TabPanel_title__DVLRd">상품 안내</h4>
                    <dl class="TextList_article__CngKS">
                        <div class="TextList_item__5sJpR">
                            <dt class="TextList_label__MxF08">기간</dt>
                            <dd class="TextList_description__xhuFz"><p>1년</p></dd>
                        </div>
                        <div class="TextList_item__5sJpR">
                            <dt class="TextList_label__MxF08">금액</dt>
                            <dd class="TextList_description__xhuFz"><p>100만원이상 1,000만원이하</p></dd>
                        </div>
                        <div class="TextList_item__5sJpR">
                            <dt class="TextList_label__MxF08">가입방법</dt>
                            <dd class="TextList_description__xhuFz"><p>비대면(인터넷뱅킹, 스마트폰뱅킹)</p></dd>
                        </div>
                        <div class="TextList_item__5sJpR">
                            <dt class="TextList_label__MxF08">대상</dt>
                            <dd class="TextList_description__xhuFz"><p>실명의 개인(1인 1계좌)</p></dd>
                        </div>
                    </dl>
                    <div class="TabPanelButton_article__SHBq5" data-nclicks="sv_contents.productmore">
                        <button type="button" class="TabPanelButton_button__JjUkq TabPanelButton_more__4d1pu">더보기
                            <svg width="10" height="6" viewBox="0 0 10 6" fill="none">
                                <path d="m1 1 4 4 4-4" stroke="#929294" stroke-width="1.2" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="TabPanel_article__avbnv" id="INTEREST_RATE_GUIDE"><h4 class="TabPanel_title__DVLRd">금리
                    안내</h4><strong class="InterestRateGuide_title__in5Wl">12개월 만기시 세후수령액 (단리)</strong>
                    <div class="InterestRateReceipt_area-price__CArE_"><em
                            class="InterestRateReceipt_input-title__ce4T6">예치금액</em>
                        <div class="InputPrice_article__oiwrr InputPrice_type-detail__j09c1 InputPrice_is-activated__HYoZS">
                            <div class="InputPrice_input-underline__1rGXe" data-nclicks="sv_contents.calculator">
                                <div class="InputPrice_input__d2t0e"><input title="금액입력" placeholder="금액을 입력해주세요"
                                                                            class="InputPrice_input-value__yim9T"
                                                                            type="tel" value="10,000,000원"
                                                                            inputmode="numeric"></div>
                                <button type="button" class="InputPrice_button-delete__w1P7l">
                                    <svg width="18" height="18" viewBox="0 0 18 18">
                                        <circle cx="9" cy="9" r="9" fill="#929294"></circle>
                                        <path d="m5.89 5.182 3.18 3.183 3.183-3.183.707.707-3.184 3.182 3.184 3.182-.707.707L9.07 9.778 5.89 12.96l-.708-.707 3.181-3.181-3.181-3.184.707-.706z"
                                              fill="#fff"></path>
                                    </svg>
                                    <span class="blind">입력삭제</span></button>
                            </div>
                            <p class="InputPrice_text__7iSSD">1,000만원</p></div>
                    </div>
                    <ul class="InterestRateReceipt_rate-select__nM0Ev">
                        <li class="InterestRateReceipt_item__wu1EV"><input type="radio" class="hidden"
                                                                           id="PRIME_INTEREST_RATE" checked=""><label
                                for="PRIME_INTEREST_RATE"
                                class="InterestRateReceipt_label__0DlpA InterestRateReceipt_is-selected__dMNH9">최고금리 <b>3.90%</b></label>
                        </li>
                        <li class="InterestRateReceipt_item__wu1EV"><input type="radio" class="hidden"
                                                                           id="INTEREST_RATE"><label for="INTEREST_RATE"
                                                                                                     class="InterestRateReceipt_label__0DlpA">기본금리
                            <b>2.85%</b></label></li>
                    </ul>
                    <dl class="InterestRateReceipt_receipt-info__sXkC2">
                        <div class="InterestRateReceipt_item__wu1EV">
                            <dt class="InterestRateReceipt_info-title__FGU_m">원금합계</dt>
                            <dd class="InterestRateReceipt_info-desc__Vx2Zw">10,000,000원</dd>
                        </div>
                        <div class="InterestRateReceipt_item__wu1EV">
                            <dt class="InterestRateReceipt_info-title__FGU_m">세전이자</dt>
                            <dd class="InterestRateReceipt_info-desc__Vx2Zw">+390,000원</dd>
                        </div>
                        <div class="InterestRateReceipt_item__wu1EV">
                            <dt class="InterestRateReceipt_info-title__FGU_m">이자과세(15.4%)</dt>
                            <dd class="InterestRateReceipt_info-desc__Vx2Zw">-60,060원</dd>
                        </div>
                        <div class="InterestRateReceipt_item__wu1EV InterestRateReceipt_total__XHAig">
                            <dt class="InterestRateReceipt_info-title__FGU_m">세후수령액</dt>
                            <dd class="InterestRateReceipt_info-desc__Vx2Zw">10,329,940원</dd>
                        </div>
                    </dl>

                    <c:if test="${options != null}">

                        <div class="InterestRateGuide_area-table__yJozi"><strong class="InterestRateGuide_title__in5Wl">기간별
                            금리</strong>
                            <div class="InterestRateTable_article__BDcnb">
                                <div class="InterestRateTable_inner__z6d53">
                                    <table class="InterestRateTable_table__jAfYr">
                                        <caption class="blind">기본 금리</caption>
                                        <thead>
                                        <tr>
                                            <th scope="col">기간</th>
                                            <th scope="col">금리</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <c:forEach items="${options}" var="op">
                                                <th scope="row"
                                                    class="InterestRateTable_cell__QR7x_ InterestRateTable_row-head__ejfZd"><p>
                                                    ${op.saveTrm}개월</p></th>
                                                <td class="InterestRateTable_cell__QR7x_">${op.intrRate}</td>
                                            </c:forEach>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </c:if>

                    <div class="InterestRateGuide_area-text-info__Ym4VI">
                        <dl class="TextList_article__CngKS">
                            <div class="TextList_item__5sJpR">
                                <dt class="TextList_label__MxF08">조건별</dt>
                                <dd class="TextList_description__xhuFz"><p>우대금리 최대 연 1.05%p를 만기해지시 제공</p></dd>
                            </div>
                            <div class="TextList_item__5sJpR">
                                <dt class="TextList_label__MxF08"></dt>
                                <dd class="TextList_description__xhuFz TextList_color-gray__ye_b3">
                                    <ul class="number-list">
                                        <li><b>1</b>
                                            <p>수협은행 예·적금(입출금이자유로운예금 제외) 첫거래 고객(신규시 확정)<br>- 최근 1년간 수협은행 예·적금 활동계좌 미보유 고객
                                                포함 : 1%</p></li>
                                    </ul>
                                </dd>
                            </div>
                            <div class="TextList_item__5sJpR">
                                <dt class="TextList_label__MxF08"></dt>
                                <dd class="TextList_description__xhuFz TextList_color-gray__ye_b3">
                                    <ul class="number-list">
                                        <li><b>2</b>
                                            <p>개인(신용)정보 수집‧이용 동의서(상품서비스 안내 등)내 상품서비스 안내수단 전체 동의한 경우(신규시 확정) : 0.05%</p>
                                        </li>
                                    </ul>
                                </dd>
                            </div>
                            <div class="TextList_item__5sJpR">
                                <dt class="TextList_label__MxF08"></dt>
                                <dd class="TextList_description__xhuFz TextList_color-gray__ye_b3">
                                    <ul class="number-list">
                                        <li><b>3</b>
                                            <p>이 예금 신규일부터 만기 전일까지 당행 ‘스마트폰뱅킹의 상품 알리기’를 통해 이 상품 추천 시(만기해지시 확정) : 0.8%</p>
                                        </li>
                                    </ul>
                                </dd>
                            </div>
                            <div class="TextList_item__5sJpR">
                                <dt class="TextList_label__MxF08">유형</dt>
                                <dd class="TextList_description__xhuFz">고정금리</dd>
                            </div>
                        </dl>
                    </div>
                </div>
                <div class="TabPanel_article__avbnv" id="RELATED_PRODUCT"><h4 class="TabPanel_title__DVLRd">비슷한 상품</h4>
                    <ul>
                        <li class="RelatedProduct_item__N6uvx"><a class="RelatedProduct_link__w9F7P"
                                                                  data-nclicks="sv_contents.relatedlisting"
                                                                  href="/savings/detail/0cd65923ff8f3ac2be03a340b686c62c">
                            <div class="ProductInfo_article__HX1ob ProductInfo_type-related__Z_khs"><span
                                    class="ProductInfo_bi-circle__ngPKu"><span class="sc-dmyCSP hQyNX bi-element"
                                                                               style="width: 40px; height: 40px;"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_KWANGJU_Profile.png"
                                    alt="BK_KWANGJU_Profile" width="40" height="40" loading="eager"></span></span>
                                <div class="ProductInfo_area-info__LPXq9">
                                    <div class="ProductInfo_info-text__3Bv24">
                                        <div class="ProductInfo_title-box__rhHbP"><strong
                                                class="ProductInfo_title__tomzd">KJB아파트사랑정기예금</strong></div>
                                        <p class="ProductInfo_bank-name__UNj3m">광주은행</p></div>
                                    <div class="ProductInfo_info-rates__h8fgP"><em class="ProductInfo_top-rate__JKyeA">최고
                                        <b class="ProductInfo_number__KjJso">4.10</b><span
                                                class="ProductInfo_percent__3571f">%</span></em></div>
                                </div>
                            </div>
                        </a></li>
                        <li class="RelatedProduct_item__N6uvx"><a class="RelatedProduct_link__w9F7P"
                                                                  data-nclicks="sv_contents.relatedlisting"
                                                                  href="/savings/detail/069af00ee35bfb90fbf19245e36e543e">
                            <div class="ProductInfo_article__HX1ob ProductInfo_type-related__Z_khs"><span
                                    class="ProductInfo_bi-circle__ngPKu"><span class="sc-dmyCSP hQyNX bi-element"
                                                                               style="width: 40px; height: 40px;"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/SB_CHUNGJU_Profile.png"
                                    alt="SB_CHUNGJU_Profile" width="40" height="40" loading="eager"></span></span>
                                <div class="ProductInfo_area-info__LPXq9">
                                    <div class="ProductInfo_info-text__3Bv24">
                                        <div class="ProductInfo_title-box__rhHbP"><strong
                                                class="ProductInfo_title__tomzd">펫팸 정기예금(단리, 복리)_천안지점</strong></div>
                                        <p class="ProductInfo_bank-name__UNj3m">청주저축은행</p></div>
                                    <div class="ProductInfo_info-rates__h8fgP"><em class="ProductInfo_top-rate__JKyeA">최고
                                        <b class="ProductInfo_number__KjJso">4.10</b><span
                                                class="ProductInfo_percent__3571f">%</span></em></div>
                                </div>
                            </div>
                        </a></li>
                        <li class="RelatedProduct_item__N6uvx"><a class="RelatedProduct_link__w9F7P"
                                                                  data-nclicks="sv_contents.relatedlisting"
                                                                  href="/savings/detail/aba9c72ee7cfc989f40b3ed645cc3d96">
                            <div class="ProductInfo_article__HX1ob ProductInfo_type-related__Z_khs"><span
                                    class="ProductInfo_bi-circle__ngPKu"><span class="sc-dmyCSP hQyNX bi-element"
                                                                               style="width: 40px; height: 40px;"><img
                                    src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/SB_OHTOO_Profile.png"
                                    alt="SB_OHTOO_Profile" width="40" height="40" loading="eager"></span></span>
                                <div class="ProductInfo_area-info__LPXq9">
                                    <div class="ProductInfo_info-text__3Bv24">
                                        <div class="ProductInfo_title-box__rhHbP"><strong
                                                class="ProductInfo_title__tomzd">e-복리정기예금</strong></div>
                                        <p class="ProductInfo_bank-name__UNj3m">오투저축은행</p></div>
                                    <div class="ProductInfo_info-rates__h8fgP"><em class="ProductInfo_top-rate__JKyeA">최고
                                        <b class="ProductInfo_number__KjJso">4.01</b><span
                                                class="ProductInfo_percent__3571f">%</span></em></div>
                                </div>
                            </div>
                        </a></li>
                    </ul>
                    <div class="TabPanelButton_article__SHBq5" data-nclicks="sv_contents.relatedmore"><a
                            class="TabPanelButton_button__JjUkq TabPanelButton_link__VKouK"
                            href="https://new-m.pay.naver.com/savings/list/deposit">더 많은 상품보기
                        <svg width="10" height="6" viewBox="0 0 10 6" fill="none">
                            <path d="m1 1 4 4 4-4" stroke="#929294" stroke-width="1.2" stroke-linecap="round"
                                  stroke-linejoin="round"></path>
                        </svg>
                    </a></div>
                </div>
                <div class="AssetManagement_article__MvMUD"><h4 class="AssetManagement_title__atpvR">편리한 내 금융자산 관리</h4>
                    <ul class="AssetManagement_list__2OUUT">
                        <li class="AssetManagement_item__PDdzE" data-nclicks="sv_contents.other_credit"><a
                                href="https://new-m.pay.naver.com/creditscoring" data-auclick="click_ban_csm"
                                class="AssetManagement_link__gbDqa" target="_blank" rel="noopener noreferrer"><img
                                src="https://financial.pstatic.net/savings/_next/static/media/img_detail_asset1.ddad5968.png"
                                width="50" height="50" alt=""><b class="AssetManagement_text__xcO0E">내 신용점수 알아보기</b></a>
                        </li>
                        <li class="AssetManagement_item__PDdzE" data-nclicks="sv_contents.other_insu"><a
                                href="https://new-m.pay.naver.com/mydata/myasset/insurance/my"
                                data-auclick="click_ban_insu" class="AssetManagement_link__gbDqa" target="_blank"
                                rel="noopener noreferrer"><img
                                src="https://financial.pstatic.net/savings/_next/static/media/img_detail_asset2.03a7edc6.png"
                                width="50" height="50" alt=""><b class="AssetManagement_text__xcO0E">잊고 있던 내 보험
                            찾기</b></a></li>
                        <li class="AssetManagement_item__PDdzE" data-nclicks="sv_contents.other_myasset"><a
                                href="https://new-m.pay.naver.com/mymoney" data-auclick="click_ban_myasset"
                                class="AssetManagement_link__gbDqa" target="_blank" rel="noopener noreferrer"><img
                                src="https://financial.pstatic.net/savings/_next/static/media/img_detail_asset3.9a7dea8a.png"
                                width="50" height="50" alt=""><b class="AssetManagement_text__xcO0E">계좌 속 숨은 돈
                            찾기</b></a></li>
                        <li class="AssetManagement_item__PDdzE" data-nclicks="sv_contents.other_loan"><a
                                href="https://new-m.pay.naver.com/loan/credit?from=cf0021" data-auclick="click_ban_loan"
                                class="AssetManagement_link__gbDqa" target="_blank" rel="noopener noreferrer"><img
                                src="https://financial.pstatic.net/savings/_next/static/media/img_detail_asset4.666eb66f.png"
                                width="50" height="50" alt=""><b class="AssetManagement_text__xcO0E">신용 대출 비교하기</b></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="FlexibleLayout-module_row__P4p6X">
            <div class="Footer-module_article__P38DG Footer-module_type-gray150__6VPmE Footer-module_width-type-basic__5ibFl Footer-module_border-type-padding__-N6WM Footer-module_is-bottom-margin__ZtHqT">
                <div class="Footer-module_inner__J3glp">
                    <ul class="FooterQuickMenu-module_article__UX9-p">
                        <li class="FooterQuickMenu-module_item__UTOXd"><a href="#"
                                                                          class="FooterQuickMenu-module_link__t0NIA"
                                                                          target="_self">로그아웃</a></li>
                        <li class="FooterQuickMenu-module_item__UTOXd"><a href="https://www.naver.com/more.html"
                                                                          class="FooterQuickMenu-module_link__t0NIA"
                                                                          target="_self">전체서비스</a></li>
                        <li class="FooterQuickMenu-module_item__UTOXd FooterQuickMenu-module_type-tooltip__mLh41"><span
                                class="FooterQuickMenu-module_link__t0NIA">유의사항</span>
                            <div class="FooterQuickMenu-module_area-button__dxWLf">
                                <button type="button" class="Tooltip-module_button__FiiTD">
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                              d="M12 21C16.9706 21 21 16.9706 21 12C21 7.02944 16.9706 3 12 3C7.02944 3 3 7.02944 3 12C3 16.9706 7.02944 21 12 21ZM12 22.5C17.799 22.5 22.5 17.799 22.5 12C22.5 6.20101 17.799 1.5 12 1.5C6.20101 1.5 1.5 6.20101 1.5 12C1.5 17.799 6.20101 22.5 12 22.5Z"
                                              fill="#767678"></path>
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                              d="M12.0481 6.42896C9.77255 6.42896 8.60705 7.82096 8.51855 9.56996H9.90305C9.99155 8.41196 10.7686 7.69196 11.9926 7.69196C13.1986 7.69196 13.9771 8.42846 13.9771 9.43345C13.9771 10.299 13.6111 10.809 12.6721 11.385C11.5621 12.048 11.0446 12.777 11.0521 13.8465V14.5905H12.4696V14.0655C12.4696 13.215 12.7606 12.7605 13.7896 12.1545C14.8261 11.5305 15.4831 10.632 15.4831 9.35996C15.4831 7.69196 14.0881 6.42896 12.0481 6.42896ZM11.0629 18.0326C11.2764 18.2461 11.5693 18.361 11.8711 18.3495V18.348C12.5266 18.348 12.9886 17.8785 12.9886 17.223C12.9886 16.5585 12.5266 16.089 11.8711 16.089C11.2141 16.089 10.7461 16.5585 10.7461 17.2245C10.7346 17.5262 10.8494 17.8191 11.0629 18.0326Z"
                                              fill="#767678"></path>
                                    </svg>
                                    <span class="blind">툴팁 보기</span></button>
                            </div>
                        </li>
                        <li class="FooterQuickMenu-module_item__UTOXd"><a
                                href="https://m.help.pay.naver.com/faq/alias/interestrate.help"
                                class="FooterQuickMenu-module_link__t0NIA" target="_self">예적금 금리정보</a></li>
                    </ul>
                    <div class="FooterInfo-module_article__NFe97 FooterInfo-module_type-gray700__CWZ1x"><a
                            href="https://www.naverfincorp.com/main" class="FooterInfo-module_link__oCxwK"
                            target="_self">
                        <svg width="96" height="26" viewBox="0 0 96 26" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M0 13.8125V25.1875H3.50903V21.327H6.95239L7.954 18.6484H3.50903V16.6912H8.68554L9.76271 13.8125H0Z"
                                  fill="#aaaaac"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M11.3899 25.1875H14.6441V13.8125H11.3899V25.1875Z" fill="#aaaaac"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M24.808 13.8125V19.9003L20.5849 13.8125H17.0847V25.1875H20.7519V19.0997L24.9744 25.1875H28.4745V13.8125H24.808Z"
                                  fill="#aaaaac"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M68.3389 25.1875H71.5931V13.8125H68.3389V25.1875Z" fill="#aaaaac"></path>
                            <mask id="mask0_2364_21840" maskUnits="userSpaceOnUse" x="55" y="13" width="12" height="13"
                                  style="mask-type: alpha;">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M55.8296 13.6853H66.8702V25.1876H55.8296V13.6853Z" fill="white"></path>
                            </mask>
                            <g mask="url(#mask0_2364_21840)">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M55.8296 19.4677V19.4369C55.8296 16.1436 58.4229 13.6853 61.7479 13.6853C64.1975 13.6853 65.8517 14.8666 66.7908 16.5529L63.72 18.3337C63.3068 17.5453 62.7181 16.9943 61.6996 16.9943C60.4427 16.9943 59.6162 18.0812 59.6162 19.4048V19.4369C59.6162 20.8707 60.4751 21.8788 61.6996 21.8788C62.7499 21.8788 63.3386 21.3114 63.8001 20.4922L66.8702 22.2094C65.9318 23.8485 64.373 25.1878 61.6042 25.1878C58.5182 25.1878 55.8296 22.8876 55.8296 19.4677Z"
                                      fill="#aaaaac"></path>
                            </g>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M34.5916 20.842L35.8364 17.3964L37.0806 20.842H34.5916ZM33.8713 13.9211L29.5049 24.9514H33.2165L33.7435 23.4918H37.9287L38.4558 24.9514H42.1673L37.8009 13.9211H33.8713Z"
                                  fill="#aaaaac"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M90.4877 22.1598V13.9216H86.8855V24.9512H94.6164L95.7213 22.1598H90.4877Z"
                                  fill="#aaaaac"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M78.1635 20.842L79.4083 17.3964L80.6531 20.842H78.1635ZM77.4432 13.9211L73.0774 24.9514H76.7883L77.316 23.4918H81.5006L82.0276 24.9514H85.7392L81.3728 13.9211H77.4432Z"
                                  fill="#aaaaac"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M50.8998 19.8246L46.7521 13.9213H43.3132V24.9515H46.9155V19.0482L51.0632 24.9515H54.502V13.9213H50.8998V19.8246Z"
                                  fill="#aaaaac"></path>
                            <mask id="mask1_2364_21840" maskUnits="userSpaceOnUse" x="0" y="0" width="12" height="12"
                                  style="mask-type: alpha;">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M0 0.0378418H11.1888V11.068H0V0.0378418Z" fill="white"></path>
                            </mask>
                            <g mask="url(#mask1_2364_21840)">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M7.58654 5.94104L3.43883 0.0377197H0V11.068H3.60223V5.16464L7.74993 11.068H11.1888V0.0377197H7.58654V5.94104Z"
                                      fill="#aaaaac"></path>
                            </g>
                            <mask id="mask2_2364_21840" maskUnits="userSpaceOnUse" x="12" y="0" width="13" height="12"
                                  style="mask-type: alpha;">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M12.3352 0.0378418H24.997V11.0678H12.3352V0.0378418Z" fill="white"></path>
                            </mask>
                            <g mask="url(#mask2_2364_21840)">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M17.4213 6.95849L18.6661 3.51284L19.9109 6.95849H17.4213ZM16.701 0.0375977L12.3352 11.0678H16.0461L16.5738 9.60822H20.7584L21.2855 11.0678H24.997L20.6306 0.0375977H16.701Z"
                                      fill="#aaaaac"></path>
                            </g>
                            <mask id="mask3_2364_21840" maskUnits="userSpaceOnUse" x="36" y="0" width="10" height="12"
                                  style="mask-type: alpha;">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M36.8953 0.0378418H45.6821V11.0679H36.8953V0.0378418Z" fill="white"></path>
                            </mask>
                            <g mask="url(#mask3_2364_21840)">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M40.4428 6.87726H45.5187V4.22817H40.4428V2.74148H45.5734V0.0375977H36.8953V11.0678H45.6821V8.36396H40.4428V6.87726Z"
                                      fill="#aaaaac"></path>
                            </g>
                            <mask id="mask4_2364_21840" maskUnits="userSpaceOnUse" x="23" y="0" width="13" height="12"
                                  style="mask-type: alpha;">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M23.0869 0.0378418H35.7487V11.0678H23.0869V0.0378418Z" fill="white"></path>
                            </mask>
                            <g mask="url(#mask4_2364_21840)">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M29.4178 7.29022L26.7979 0.0374756H23.0869L27.4533 11.0677H31.3823L35.7487 0.0374756H32.0378L29.4178 7.29022Z"
                                      fill="#aaaaac"></path>
                            </g>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M52.7774 5.17432H50.8675V2.84952H52.7774C53.4258 2.84952 53.951 3.36964 53.951 4.01192C53.951 4.65357 53.4258 5.17432 52.7774 5.17432ZM55.2022 7.28378L55.5398 7.14399C56.8335 6.60749 57.4922 5.44635 57.4922 3.97288C57.4922 2.57938 56.9785 1.54921 55.967 0.909451C55.0267 0.315026 53.8073 0.0379639 52.1289 0.0379639H47.4287V11.0676H50.9216V7.98588H52.1772L54.3057 11.0676H58.0173L55.2022 7.28378Z"
                                  fill="#aaaaac"></path>
                        </svg>
                        <span class="blind">Naver Financial</span></a>
                        <div class="FooterInfo-module_description__afB71">금융정보는 금융회사 홈페이지 등에 게시된 정보를 기초로 한 참고사항이며, 이는
                            수시로 변경될 수 있으므로 거래 전 해당 금융회사에 확인 바랍니다.<br>최종 업데이트 2024.05.03
                        </div>
                        <div class="FooterInfo-module_area-fold__-VV5Q">
                            <button type="button" class="FooterInfo-module_button__MRyzl">네이버파이낸셜㈜ 사업자 정보<span
                                    class="FooterInfo-module_icon__pyqRF"><svg width="8" height="4" viewBox="0 0 10 6"
                                                                               fill="none"
                                                                               xmlns="http://www.w3.org/2000/svg"><path
                                    d="M1 1L5 5L9 1" stroke="#767678" stroke-width="1.2" stroke-linecap="round"
                                    stroke-linejoin="round"></path></svg><span class="blind">펼치기</span></span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="__portal"></div>
<div id="portal__3xefv56tu98"></div>
<div id="portal__nnr3d2g0s8i"></div>
<next-route-announcer><p aria-live="assertive" id="__next-route-announcer__" role="alert"
                         style="border: 0px; clip: rect(0px, 0px, 0px, 0px); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; top: 0px; width: 1px; white-space: nowrap; overflow-wrap: normal;">
    예적금 비교</p></next-route-announcer>
<script src="https://financial.pstatic.net/savings/_next/static/chunks/2c27f6e1-3ea448d62dcba154.js"></script>
<script src="https://financial.pstatic.net/savings/_next/static/chunks/pages/detail/%5BproductCode%5D-66d92cc6917edbdf.js"></script>
</body>
</html>
