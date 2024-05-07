<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    let type = 'deposit'
    let now = []
    let sortby = 'bestIntr'
    let productSort = function () {
        now.sort((a, b) => b[sortby] - a[sortby])
        checkbox.draw(now)
    }
        // li 요소를 클릭했을 때
    let checkbox = {
        click : function () {
            $('.ProductButtonBoxFilter_label__OOSMj').click(function () {
                // 해당 li 요소에 ProductButtonBoxFilter_is-checked__OueIY 클래스를 토글합니다.
                $(this).toggleClass('ProductButtonBoxFilter_is-checked__OueIY');
                // 체크된 체크박스의 값을 업데이트합니다.
                checkbox.update();
            });

        },
        update : function(){
            let checkedValues = []; // 배열 초기화

            // 모든 체크박스를 선택합니다.
            $('.ProductButtonBoxFilter_label__OOSMj').each(function () {
                // 체크박스가 체크된 상태라면
                if ($(this).hasClass('ProductButtonBoxFilter_is-checked__OueIY')) {
                    // 체크된 체크박스의 값을 checkedValues 배열에 추가합니다.
                    checkedValues.push($(this).parent().find('input').val());
                }
            });

            // 체크된 값들을 출력합니다.
                checkbox.get(checkedValues);
        },
        draw: function(products){
            var dynamicHTML = '';
            products.forEach(function(product) {
                dynamicHTML += '<li class="ProductList_item__QXNrf">';
                dynamicHTML += '<a class="ProductList_link__pMmxO" data-nclicks="deposit.listing" href="#">';
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
            $('#depositList').html(dynamicHTML);
            return dynamicHTML;
        },
        get : function(checkedValues){
            if(checkedValues.length==0){
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
                data: {"termclassList": checkedValues},
                success: function (res) {
                    if (res.length === 0) {
                        $('#depositList').html('<li class="ProductList_item__QXNrf">검색 결과가 없습니다.</li>');
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

  $(function (){
      checkbox.click();
      checkbox.update();
      $('.LineTab-module_link__MCdtL').click(function(){
          type = $(this).data('type');
          $.ajax({
              url: '/'+type+'/all',
              success: function(res){
                  now = res;
                  productSort()
                  checkbox.draw(now)
              }
          })
      })
  })
</script>
<script src="https://financial.pstatic.net/savings/_next/static/chunks/2c27f6e1-3ea448d62dcba154.js"></script>
<script src="https://financial.pstatic.net/savings/_next/static/chunks/pages/detail/%5BproductCode%5D-66d92cc6917edbdf.js"></script>
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
    <p class="ProductButtonBoxFilter_guide__a8Csp">*신협 상품에는 적용되지 않습니다</p>
</div>
<div class="ProductFilterTags_article__LS1Oc">
    <div class="ProductFilterTags_area-keyword__AmEYF">
        <button type="button" class="ProductFilterTags_button__6cYTY"
                data-nclicks="deposit.selectfilterdelete">1금융권
            <svg width="10" height="9" viewBox="0 0 10 9">
                <path d="m1.152.653 7.784 7.784M8.936.653 1.152 8.437" stroke="#f6f8fa"></path>
            </svg>
            <span class="blind">삭제</span></button>
        <button type="button" class="ProductFilterTags_button__6cYTY"
                data-nclicks="deposit.selectfilterdelete">누구나가입
            <svg width="10" height="9" viewBox="0 0 10 9">
                <path d="m1.152.653 7.784 7.784M8.936.653 1.152 8.437" stroke="#f6f8fa"></path>
            </svg>
            <span class="blind">삭제</span></button>
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
    <ul id="depositList">
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

