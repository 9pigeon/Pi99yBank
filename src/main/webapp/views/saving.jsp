<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<div class="ProductFilterSection_article__0nJDV">
    <div class="ProductFilter_article__5tkIg">
        <ul class="ProductFilter_list__iFYRL">
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
    <div id ="checkbox-depositBenefit" class="ProductButtonBoxFilter_article__Jetia" style="display: none;">
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
                                                                      id="checkbox-bankApp" value="4"><label
                        for="checkbox-usingSalaryAccount" class="ProductButtonBoxFilter_label__OOSMj">급여연동<span
                        class="ProductButtonBoxFilter_icon__cz1Fg" aria-hidden="true"><svg
                        width="10" height="10" viewBox="0 0 10 10"><path
                        fill="#dcdee0" d="M0 4.616h10v1H0z"></path><path fill="#dcdee0"
                                                                         d="M4.615 0h1v10h-1z"></path></svg></span></label>
                </li>
                <li class="ProductButtonBoxFilter_item__RIt_0"><input type="checkbox"
                                                                      name="product_type" class="hidden"
                                                                      id="checkbox-usingSalaryAccount" value="4"><label
                        for="checkbox-usingSalaryAccount" class="ProductButtonBoxFilter_label__OOSMj">급여연동<span
                        class="ProductButtonBoxFilter_icon__cz1Fg" aria-hidden="true"><svg
                        width="10" height="10" viewBox="0 0 10 10"><path
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
<%--            <button type="button" class="ProductFilterTags_button__6cYTY"--%>
<%--                    data-nclicks="deposit.selectfilterdelete">누구나가입--%>
<%--                <svg width="10" height="9" viewBox="0 0 10 9">--%>
<%--                    <path d="m1.152.653 7.784 7.784M8.936.653 1.152 8.437" stroke="#f6f8fa"></path>--%>
<%--                </svg>--%>
<%--                <span class="blind">삭제</span></button>--%>
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
                class="ProductListHeader_highlight__V_U8l">114</span>개</strong>
            <div>
                <button class="ProductListHeader_button-select___A4vQ">최고금리순
                    <svg width="10" height="6" viewBox="0 0 10 6" fill="none">
                        <path d="m1 1 4 4 4-4" stroke="#767678" stroke-width="1.2" stroke-linecap="round"
                              stroke-linejoin="round"></path>
                    </svg>
                </button>
            </div>
        </div>
        <ul>
            <li class="ProductList_item__QXNrf"><a class="ProductList_link__pMmxO"
                                                   data-nclicks="deposit.listing"
                                                   href="<c:url value="/"/>">
                <div class="ProductInfo_article__HX1ob"><span class="ProductInfo_bi-circle__ngPKu"><span
                        class="sc-dmyCSP hQyNX bi-element" style="width: 42px; height: 42px;"><img
                        src="https://financial.pstatic.net/pie/common-bi/0.11.0/images/BK_JEJU_Profile.png"
                        alt="BK_JEJU_Profile" width="42" height="42" loading="eager"></span></span>
                    <div class="ProductInfo_area-info__LPXq9">
                        <div class="ProductInfo_info-text__3Bv24">
                            <div class="ProductInfo_title-box__rhHbP"><strong
                                    class="ProductInfo_title__tomzd">스마일드림정기예금</strong></div>
                            <p class="ProductInfo_bank-name__UNj3m">제주은행</p></div>
                        <div class="ProductInfo_info-rates__h8fgP"><em class="ProductInfo_top-rate__JKyeA">최고
                            <b class="ProductInfo_number__KjJso">3.95</b><span
                                    class="ProductInfo_percent__3571f">%</span></em><span
                                class="ProductInfo_rate__ruWXq">기본 2.95%</span></div>
                    </div>
                    <ul class="TagList_article__gRL9O ProductInfo_area-tag__6a4Nt">
                        <li class="TagList_tag__xQBbK">방문없이가입</li>
                        <li class="TagList_tag__xQBbK">누구나가입</li>
                    </ul>
                </div>
            </a></li>
        </ul>
        <div class="Pagination_article__Rg8y3">
            <ul class="Pagination_list__XfpSy">
                <li class="Pagination_item__afma0" data-nclicks="deposit.listpage">
                    <button type="button"
                            class="Pagination_button-page__fhmTR Pagination_is-current___uUHI">1<span
                            class="blind">페이지로 이동</span></button>
                </li>
                <li class="Pagination_item__afma0" data-nclicks="deposit.listpage">
                    <button type="button" class="Pagination_button-page__fhmTR">2<span
                            class="blind">페이지로 이동</span></button>
                </li>
                <li class="Pagination_item__afma0" data-nclicks="deposit.listpage">
                    <button type="button" class="Pagination_button-page__fhmTR">3<span
                            class="blind">페이지로 이동</span></button>
                </li>
                <li class="Pagination_item__afma0" data-nclicks="deposit.listpage">
                    <button type="button" class="Pagination_button-page__fhmTR">4<span
                            class="blind">페이지로 이동</span></button>
                </li>
                <li class="Pagination_item__afma0" data-nclicks="deposit.listpage">
                    <button type="button" class="Pagination_button-page__fhmTR">5<span
                            class="blind">페이지로 이동</span></button>
                </li>
            </ul>
            <div class="Pagination_area-button__4IHU3">
                <button type="button" disabled="" data-nclicks="deposit.listpre"
                        class="Pagination_button__ukte8 Pagination_prev__EUF2_ Pagination_disabled__piP6E">
                    <span class="blind">이전페이지</span></button>
                <button type="button" data-nclicks="deposit.listnext"
                        class="Pagination_button__ukte8 Pagination_next__2yfET"><span
                        class="blind">다음페이지</span></button>
            </div>
        </div>
    </div>
</div>
<script src="https://financial.pstatic.net/savings/_next/static/chunks/2c27f6e1-3ea448d62dcba154.js"></script>
<script src="https://financial.pstatic.net/savings/_next/static/chunks/pages/detail/%5BproductCode%5D-66d92cc6917edbdf.js"></script>
<script>
    // 각 체크박스 요소를 가져옵니다.
    const checkboxes = document.querySelectorAll('input[name="product_type"]');
    const filterTagsArea = document.querySelector('.ProductFilterTags_area-keyword__AmEYF');

    // 각 체크박스에 대해 이벤트를 추가합니다.
    checkboxes.forEach(checkbox => {
        checkbox.addEventListener('change', function() {
            // 체크박스가 선택됐는지 확인합니다.
            if (this.checked) {
                // 선택된 경우, 해당 체크박스의 레이블 요소에 클래스를 추가합니다.
                this.nextElementSibling.classList.add('ProductButtonBoxFilter_is-checked__OueIY');

                // 선택된 경우, 버튼을 생성하고 추가합니다.
                const filterButton = document.createElement('button');
                filterButton.setAttribute('type', 'button');
                filterButton.classList.add('ProductFilterTags_button__6cYTY');
                filterButton.setAttribute('data-nclicks', 'deposit.selectfilterdelete');
                const buttonText = this.nextElementSibling.textContent.trim();
                filterButton.setAttribute('data-filter-name', buttonText); // 고유한 식별자 추가
                filterButton.innerHTML = buttonText;
                filterButton.innerHTML += `<svg width="10" height="9" viewBox="0 0 10 9">
                                        <path d="m1.152.653 7.784 7.784M8.936.653 1.152 8.437" stroke="#f6f8fa"></path>
                                    </svg>
                                    <span class="blind">삭제</span>`;
                filterTagsArea.appendChild(filterButton);
            } else {
                // 선택이 해제된 경우, 해당 체크박스의 레이블 요소에서 클래스를 제거합니다.
                this.nextElementSibling.classList.remove('ProductButtonBoxFilter_is-checked__OueIY');

                // 선택이 해제된 경우, 해당 버튼을 제거합니다.
                const buttonText = this.nextElementSibling.textContent.trim();
                const filterButtons = filterTagsArea.querySelectorAll('.ProductFilterTags_button__6cYTY');
                filterButtons.forEach(button => {
                    if (button.getAttribute('data-filter-name') === buttonText) {
                        button.remove();
                    }
                });
            }
        });
    });

</script>
</body>
</html>