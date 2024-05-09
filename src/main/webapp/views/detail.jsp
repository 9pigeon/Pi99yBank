<%--
  Created by IntelliJ IDEA.
  User: 졍
  Date: 2024-04-25
  Time: 오전 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>피기뱅크</title>
</head>
<link rel="stylesheet" href="<c:url value="/css/naver1.css"/>">
<link rel="stylesheet" href="<c:url value="/css/naver2.css"/>">
<link rel="stylesheet" href="<c:url value="/css/naver3.css"/>">
<style data-n-href="https://financial.pstatic.net/savings/_next/static/css/b20387f8baba197b.css">
    .BubbleTooltip_article__HszaS {
    position: absolute;
    top: auto;
    left: 50%;
    transform: translateX(-50%);
    z-index: 10
}

.BubbleTooltip_article__HszaS.BubbleTooltip_bottom__C1uhc {
    top: 100%
}

.BubbleTooltip_article__HszaS.BubbleTooltip_bottom__C1uhc .BubbleTooltip_tooltip__h3rx4 {
    padding-top: 4px;
    transform-origin: top
}

.BubbleTooltip_article__HszaS.BubbleTooltip_bottom__C1uhc .BubbleTooltip_inner__h8sgU:after {
    top: -5px;
    border-color: transparent transparent #2c333a
}

.BubbleTooltip_tooltip__h3rx4 {
    display: block;
    transition: opacity .2s cubic-bezier(.33, 0, .2, 1);
    animation: BubbleTooltip_scale-easing__nBQgv .6s
}

.BubbleTooltip_tooltip__h3rx4.BubbleTooltip_hide__37qkO {
    transform: scale(0);
    transition: transform .1s cubic-bezier(.33, 0, .2, 1), opacity .3s cubic-bezier(.33, 0, .2, 1);
    opacity: 0
}

.BubbleTooltip_tooltip__h3rx4 .BubbleTooltip_inner__h8sgU {
    display: block;
    padding: 5px 10px 4px;
    border-radius: 4px;
    box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .05);
    background-color: #2c333a;
    font-size: 14px;
    font-weight: 700;
    line-height: 20px;
    white-space: nowrap;
    color: #fff
}

.BubbleTooltip_tooltip__h3rx4 .BubbleTooltip_inner__h8sgU:after {
    position: absolute;
    top: auto;
    left: 50%;
    transform: translateX(-50%);
    content: "";
    border: 5px solid #2c333a
}

.BubbleTooltip_tooltip__h3rx4 em {
    color: #3ce085
}

@keyframes BubbleTooltip_scale-easing__nBQgv {
    0% {
        transform: scale(0)
    }
    30% {
        transform: scale(1.08)
    }
    45% {
        transform: scale(.94)
    }
    75% {
        transform: scale(1.01)
    }
    90% {
        transform: scale(1)
    }
    to {
        transform: scale(1)
    }
}

.AssetManagement_article__MvMUD {
    margin: 40px 0 20px;
    padding: 0 20px
}

.AssetManagement_title__atpvR {
    font-size: 19px;
    line-height: 25px;
    color: #767678
}

.AssetManagement_list__2OUUT {
    margin: 15px -5px -5px
}

.AssetManagement_list__2OUUT:after {
    content: "";
    display: block;
    clear: both
}

.AssetManagement_list__2OUUT .AssetManagement_item__PDdzE {
    float: left;
    width: 50%
}

.AssetManagement_list__2OUUT .AssetManagement_link__gbDqa {
    display: block;
    margin: 5px;
    padding: 8px 8px 12px;
    border-radius: 8px;
    box-sizing: border-box;
    box-shadow: 0 2px 12px 0 rgba(0, 0, 0, .05);
    background-color: #fff
}

.AssetManagement_list__2OUUT .AssetManagement_text__xcO0E {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    display: block;
    margin-top: 4px;
    padding-left: 6px;
    font-size: 16px;
    font-weight: 700;
    line-height: 22px;
    word-break: keep-all;
    color: #1e1e23
}

@media (min-width: 600px) {
    .AssetManagement_article__MvMUD {
        margin-top: 14px;
        border-radius: 12px;
        box-shadow: 0 4px 16px rgba(0, 0, 0, .05);
        padding-top: 25px;
        padding-bottom: 20px;
        background-color: #fff
    }

    .AssetManagement_title__atpvR {
        color: #1e1e23
    }

    .AssetManagement_link__gbDqa {
        border: 1px solid #f3f5f7
    }
}

.TabDetail_article__RPRMY {
    height: 52px
}

.TabDetail_article__RPRMY.TabDetail_top-space__gv95l {
    margin-top: 10px
}

.TabDetail_list__PG8nQ {
    display: flex;
    width: 100%;
    padding-top: 10px;
    border-bottom: 1px solid #edeff2;
    background-color: #fff
}

.TabDetail_tab__yz5C1 {
    flex: 1 1
}

.TabDetail_link__aD107 {
    position: relative;
    width: 100%;
    font-size: 16px;
    line-height: 41px;
    text-align: center;
    color: #929294
}

.TabDetail_link__aD107.TabDetail_is-selected__uqGdC {
    font-weight: 700;
    color: #1e1e23
}

.TabDetail_link__aD107.TabDetail_is-selected__uqGdC:before {
    content: "";
    position: absolute;
    right: 0;
    bottom: -1px;
    left: 0;
    border-bottom: 2px solid #1e1e23
}

@media (min-width: 600px) {
    .TabDetail_article__RPRMY {
        display: none
    }
}

.TabPanel_article__avbnv {
    scroll-margin-top: 108px;
    padding: 30px 20px;
    background-color: #fff
}

.TabPanel_article__avbnv ~ .TabPanel_article__avbnv {
    margin-top: 10px
}

.TabPanel_title__DVLRd {
    margin-bottom: 20px;
    padding-bottom: 12px;
    border-bottom: 1px solid #f3f5f7;
    font-size: 19px;
    font-style: normal;
    font-weight: 700;
    line-height: 22px;
    color: #1e1e23
}

@media (min-width: 600px) {
    .TabPanel_article__avbnv {
        margin-top: 14px;
        border-radius: 12px;
        box-shadow: 0 4px 16px rgba(0, 0, 0, .05)
    }
}

.TextList_article__CngKS {
    display: table;
    width: 100%;
    font-size: 15px;
    line-height: 21px
}

.TextList_article__CngKS .number-list {
    color: #767678
}

.TextList_article__CngKS .number-list li {
    position: relative;
    padding-left: 13px
}

.TextList_article__CngKS .number-list b {
    position: absolute;
    top: 0;
    right: 100%;
    margin-right: -7px
}

.TextList_article__CngKS .title-list li ~ li {
    margin-top: 10px
}

.TextList_article__CngKS .title-list strong {
    display: block;
    margin-bottom: 6px
}

.TextList_item__5sJpR {
    display: table-row
}

.TextList_item__5sJpR ~ .TextList_item__5sJpR .TextList_description__xhuFz, .TextList_item__5sJpR ~ .TextList_item__5sJpR .TextList_label__MxF08 {
    padding-top: 6px
}

.TextList_label__MxF08 {
    display: table-cell;
    width: 1%;
    padding-right: 10px;
    font-size: 15px;
    white-space: nowrap;
    color: #929294
}

.TextList_description__xhuFz {
    display: table-cell;
    color: #1e1e23
}

.TextList_description__xhuFz.TextList_color-gray__ye_b3 {
    color: #767678
}

.ProductAmountFilter_button__7X_CW {
    background-color: #09aa5c;
    text-shadow: 0 1px 0 rgba(0, 0, 0, .2);
    color: #fff
}

.ProductAmountFilter_is-disabled__5bqp6.ProductAmountFilter_button__7X_CW {
    background-color: #dcdee0;
    text-shadow: none;
    color: #bbbbbd;
    cursor: default
}

.ProductAmountFilter_article__ztawa {
    padding: 20px 14px 14px
}

.ProductAmountFilter_inner__DeTf8 {
    padding: 14px 16px;
    border: 1px solid #dcdee0;
    border-radius: 8px;
    background-color: #fff
}

.ProductAmountFilter_button__7X_CW {
    width: 100%;
    margin-top: 15px;
    border-radius: 4px;
    font-weight: 700;
    line-height: 40px
}

@media (min-width: 600px) {
    .ProductAmountFilter_inner__DeTf8 {
        position: relative;
        padding-right: 146px
    }

    .ProductAmountFilter_button__7X_CW {
        position: absolute;
        top: 16px;
        right: 16px;
        width: 110px;
        margin-top: 0
    }
}

.InputPrice_article__oiwrr {
    position: relative;
    padding-bottom: 24px
}

.InputPrice_article__oiwrr.InputPrice_is-activated__HYoZS .InputPrice_input__d2t0e:before {
    display: block
}

.InputPrice_article__oiwrr.InputPrice_has-error__tMGZX .InputPrice_input__d2t0e:before {
    display: block;
    border-color: #ff5252
}

.InputPrice_article__oiwrr.InputPrice_has-error__tMGZX .InputPrice_input-value__yim9T, .InputPrice_article__oiwrr.InputPrice_has-error__tMGZX .InputPrice_text__7iSSD {
    color: #ff5252
}

.InputPrice_article__oiwrr.InputPrice_type-filter__T9c1e .InputPrice_input-value__yim9T {
    font-size: 22px;
    line-height: 28px
}

.InputPrice_article__oiwrr.InputPrice_type-detail__j09c1 .InputPrice_input-value__yim9T {
    font-size: 28px;
    line-height: 34px
}

.InputPrice_input-underline__1rGXe {
    position: relative;
    padding-right: 35px;
    border-bottom: 2px solid #c8cacc
}

.InputPrice_input__d2t0e {
    position: relative;
    padding-bottom: 5px
}

.InputPrice_input__d2t0e:before {
    content: "";
    position: absolute;
    right: 0;
    bottom: -2px;
    left: 0;
    display: none;
    border-bottom: 2px solid #1e1e23
}

.InputPrice_input-value__yim9T {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    width: 100%;
    font-weight: 700;
    color: #1e1e23
}

.InputPrice_input-value__yim9T::placeholder {
    font-size: 22px;
    font-weight: 400;
    line-height: 28px;
    color: #aaaaac
}

.InputPrice_input-value__yim9T::-webkit-inner-spin-button {
    display: none
}

.InputPrice_input-value__yim9T::-ms-clear {
    display: none
}

.InputPrice_button-delete__w1P7l {
    position: absolute;
    top: 0;
    right: -5px;
    bottom: 0;
    padding: 6px 5px 9px 12px
}

.InputPrice_text__7iSSD {
    position: absolute;
    bottom: 0;
    left: 0;
    font-size: 13px;
    line-height: 18px;
    color: #767678
}

.InterestRateReceipt_area-price__CArE_ {
    margin-top: 29px
}

.InterestRateReceipt_area-price__CArE_ .InterestRateReceipt_input-title__ce4T6 {
    display: block;
    margin-bottom: 6px;
    font-size: 15px;
    font-weight: 500;
    color: #1e1e23
}

.InterestRateReceipt_rate-select__nM0Ev {
    display: flex;
    margin-top: 30px
}

.InterestRateReceipt_rate-select__nM0Ev .InterestRateReceipt_item__wu1EV {
    flex: 1 1
}

.InterestRateReceipt_rate-select__nM0Ev .InterestRateReceipt_item__wu1EV:first-child .InterestRateReceipt_label__0DlpA {
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px
}

.InterestRateReceipt_rate-select__nM0Ev .InterestRateReceipt_item__wu1EV:last-child .InterestRateReceipt_label__0DlpA {
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px
}

.InterestRateReceipt_rate-select__nM0Ev .InterestRateReceipt_item__wu1EV ~ .InterestRateReceipt_item__wu1EV {
    margin-left: -1px
}

.InterestRateReceipt_rate-select__nM0Ev .InterestRateReceipt_label__0DlpA {
    position: relative;
    display: flex;
    justify-content: space-between;
    padding: 12px;
    border: 1px solid #dcdee0;
    font-size: 16px;
    font-weight: 500;
    line-height: 22px;
    color: #767678;
    cursor: pointer
}

.InterestRateReceipt_rate-select__nM0Ev .InterestRateReceipt_label__0DlpA.InterestRateReceipt_is-selected__dMNH9 {
    z-index: 10;
    border-color: #09aa5c;
    font-weight: 700;
    color: #09aa5c
}

.InterestRateReceipt_receipt-info__sXkC2 {
    margin-top: 16px;
    padding: 20px 16px 17px;
    border-radius: 12px;
    background-color: #eef9f3;
    line-height: 20px
}

.InterestRateReceipt_receipt-info__sXkC2 .InterestRateReceipt_item__wu1EV {
    display: flex;
    justify-content: space-between
}

.InterestRateReceipt_receipt-info__sXkC2 .InterestRateReceipt_item__wu1EV ~ .InterestRateReceipt_item__wu1EV {
    margin-top: 6px
}

.InterestRateReceipt_receipt-info__sXkC2 .InterestRateReceipt_item__wu1EV.InterestRateReceipt_total__XHAig {
    margin-top: 17px;
    padding-top: 13px;
    border-top: 1px solid #edeff2;
    line-height: 26px
}

.InterestRateReceipt_receipt-info__sXkC2 .InterestRateReceipt_item__wu1EV.InterestRateReceipt_total__XHAig .InterestRateReceipt_info-desc__Vx2Zw {
    font-size: 20px;
    color: #09aa5c
}

.InterestRateReceipt_receipt-info__sXkC2 .InterestRateReceipt_info-title__FGU_m {
    color: #767678
}

.InterestRateReceipt_receipt-info__sXkC2 .InterestRateReceipt_info-desc__Vx2Zw {
    font-size: 15px;
    font-weight: 700
}

.InterestRateTable_article__BDcnb {
    margin-top: 10px;
    margin-right: -20px
}

.InterestRateTable_article__BDcnb .InterestRateTable_inner__z6d53 {
    overflow-x: auto;
    overflow-y: hidden
}

.InterestRateTable_table__jAfYr {
    position: relative;
    width: 100%;
    padding-right: 20px;
    border-radius: 6px;
    font-weight: 700;
    line-height: 20px;
    text-align: center;
    color: #1e1e23;
    border-collapse: separate;
    border-spacing: 0
}

.InterestRateTable_table__jAfYr:before {
    content: "";
    position: absolute;
    top: 0;
    right: 20px;
    bottom: 0;
    left: 0;
    border: 1px solid #edeff2;
    border-radius: 6px
}

.InterestRateTable_table__jAfYr tbody tr:first-child .InterestRateTable_cell__QR7x_ {
    border-top: 0
}

.InterestRateTable_table__jAfYr thead th {
    min-width: 111px;
    padding: 10px 0 7px;
    border-right: 1px solid #edeff2;
    box-sizing: border-box;
    background-color: #f6f8fa;
    color: #767678
}

.InterestRateTable_table__jAfYr thead th:last-child {
    border-right: 0
}

.InterestRateTable_table__jAfYr thead th[colspan] {
    border-bottom: 1px solid #edeff2
}

.InterestRateTable_cell__QR7x_ {
    padding: 14px;
    border-top: 1px solid #edeff2;
    border-right: 1px solid #edeff2;
    box-sizing: border-box
}

.InterestRateTable_cell__QR7x_:last-child {
    border-right: 0
}

.InterestRateTable_cell__QR7x_:empty:before {
    content: "-"
}

.InterestRateTable_cell__QR7x_.InterestRateTable_row-head__ejfZd {
    font-weight: 400;
    white-space: nowrap;
    color: #767678
}

.InterestRateTable_cell__QR7x_ strong {
    color: #09aa5c
}

.InterestRateTable_cell__QR7x_ p {
    min-width: 197px;
    font-weight: 400
}

.InterestRateGuide_title__in5Wl {
    display: block;
    font-size: 15px;
    line-height: 21px;
    color: #767678
}

.InterestRateGuide_title__in5Wl ~ .InterestRateGuide_area-table__yJozi, .InterestRateGuide_title__in5Wl ~ .InterestRateGuide_title__in5Wl {
    margin-top: 40px
}

.InterestRateGuide_area-text-info__Ym4VI {
    margin-top: 30px
}

.InterestRateGuide_area-table__yJozi + .InterestRateGuide_area-text-info__Ym4VI {
    margin-top: 20px;
    padding-top: 20px;
    border-top: 1px solid #f6f8fa
}

.QRBridge_article__bvOAT {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 2000;
    background-color: rgba(0, 0, 0, .5)
}

.QRBridge_popup__HLDek {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
    max-width: 290px;
    padding-top: 24px;
    border-radius: 8px;
    background-color: #fff;
    text-align: center
}

.QRBridge_title__1bnqE {
    font-size: 18px;
    line-height: 24px;
    letter-spacing: -.5px;
    color: #404048
}

.QRBridge_area-qr__Xznxh {
    width: 114px;
    height: 114px;
    margin: 18px auto 0;
    padding: 12px;
    border: 1px solid #dcdee0;
    border-radius: 8px;
    box-sizing: border-box
}

.QRBridge_area-button__fTUj8 {
    margin-top: 34px
}

.QRBridge_area-button__fTUj8 .QRBridge_button-close__98xun {
    font-size: 16px;
    line-height: 22px;
    letter-spacing: -.3px;
    width: 100%;
    padding: 15px 0;
    border-top: 1px solid #edeff2;
    font-weight: 500;
    color: #767678
}

.TagList_article__gRL9O {
    font-size: 12px;
    line-height: 18px;
    letter-spacing: -.3px
}

.TagList_tag__xQBbK {
    display: inline-block;
    margin: 4px 5px 0 0;
    padding: 1px 4px;
    border-radius: 4px;
    background-color: #f6f8fa;
    line-height: 18px;
    vertical-align: top;
    color: #767678
}

.TagList_tag__xQBbK.TagList_highlight__mX4ib {
    background-color: #e5f3fe;
    color: #058bd7
}

.MainInfo_area-button__v__hB .MainInfo_button__Vw9Eq.MainInfo_color-green__vTFG1 {
    background-color: #09aa5c;
    text-shadow: 0 1px 0 rgba(0, 0, 0, .2);
    color: #fff
}

.MainInfo_area-button__v__hB .MainInfo_is-disabled__l_RH7.MainInfo_button__Vw9Eq.MainInfo_color-green__vTFG1 {
    background-color: #dcdee0;
    text-shadow: none;
    color: #bbbbbd;
    cursor: default
}

.MainInfo_article__iQqCh {
    padding: 20px 20px 21px;
    background-color: #fff
}

.MainInfo_area-title__hzVI3 {
    position: relative;
    padding-right: 70px;
    color: #1e1e23
}

.MainInfo_area-title__hzVI3 .MainInfo_bi-image__PJeZY {
    position: absolute;
    top: 0;
    right: 2px
}

.MainInfo_area-title__hzVI3 .MainInfo_title__AHL1g {
    font-size: 22px;
    line-height: 28px;
    letter-spacing: -.5px;
    word-break: break-word
}

.MainInfo_area-title__hzVI3 .MainInfo_icon-npay__IdEPL {
    display: inline-block;
    margin: 7px 0 0 4px;
    line-height: 1px;
    vertical-align: top
}

.MainInfo_area-title__hzVI3 .MainInfo_text__V_Fkd {
    font-size: 15px;
    line-height: 21px;
    letter-spacing: -.3px;
    display: block;
    margin-top: 2px
}

.MainInfo_area-title__hzVI3 .MainInfo_area-tag__xO9lF {
    margin-top: 2px
}

.MainInfo_area-rates__ZlyVd {
    font-size: 22px;
    line-height: 28px;
    letter-spacing: -.5px;
    margin-top: 24px
}

.MainInfo_area-rates__ZlyVd .MainInfo_rate__em52j {
    display: inline-block;
    font-weight: 700;
    vertical-align: top;
    color: #09aa5c
}

.MainInfo_rate-info__nQpPA {
    display: flex
}

.MainInfo_rate-info__nQpPA .MainInfo_item__e2TqV {
    flex: none
}

.MainInfo_rate-info__nQpPA .MainInfo_item__e2TqV + .MainInfo_item__e2TqV {
    position: relative;
    margin-left: 23px;
    padding-left: 20px
}

.MainInfo_rate-info__nQpPA .MainInfo_item__e2TqV + .MainInfo_item__e2TqV:before {
    content: "";
    position: absolute;
    top: 1px;
    left: 0;
    width: 1px;
    height: 45px;
    background-color: #edeff2
}

.MainInfo_rate-info__nQpPA .MainInfo_name__KyHe4 {
    font-size: 13px;
    line-height: 19px;
    letter-spacing: -.3px;
    font-weight: 500;
    color: #767678
}

.MainInfo_rate-info__nQpPA .MainInfo_name__KyHe4 + .MainInfo_rate__em52j {
    margin-top: 4px
}

.MainInfo_rate-info__nQpPA .MainInfo_sub-text__VGvM7 {
    font-weight: 400
}

.MainInfo_sub-text__VGvM7 {
    font-size: 12px;
    line-height: 18px;
    letter-spacing: -.3px;
    margin-left: 3px;
    color: #929294
}

.MainInfo_description__nmG82 {
    font-size: 14px;
    line-height: 20px;
    letter-spacing: -.3px;
    margin-top: 10px;
    color: #929294
}

.MainInfo_description__nmG82.MainInfo_emphasis__qVmfb {
    font-size: 16px;
    line-height: 22px;
    letter-spacing: -.3px;
    margin-top: 20px;
    font-weight: 700
}

.MainInfo_area-event__REIlH {
    position: relative;
    margin: 24px -4px 0;
    padding: 20px 18px;
    border-radius: 12px;
    background-color: #f6f8fa;
    color: #1e1e23
}

.MainInfo_area-event__REIlH .MainInfo_title__AHL1g {
    font-size: 16px;
    line-height: 19px;
    color: #058bd7
}

.MainInfo_area-event__REIlH .MainInfo_desc__vh6bu {
    margin-top: 6px;
    line-height: 20px
}

.MainInfo_area-event__REIlH .MainInfo_desc__vh6bu p + p {
    margin-top: 16px
}

.MainInfo_area-button__v__hB {
    display: flex
}

.MainInfo_area-button__v__hB .MainInfo_button__Vw9Eq {
    font-weight: 700;
    text-align: center
}

.MainInfo_area-button__v__hB .MainInfo_button__Vw9Eq.MainInfo_color-light-green__BzZHT {
    background-color: #e3f6ed;
    color: #09aa5c
}

.MainInfo_area-button__v__hB .MainInfo_icon-npay__IdEPL {
    display: inline-block;
    width: 57px;
    height: 22px;
    margin: 19px 4px 0 0;
    line-height: 1px;
    vertical-align: top
}

@media (max-width: 599px) {
    .MainInfo_area-button__v__hB {
        position: fixed;
        right: 0;
        bottom: 0;
        left: 0;
        z-index: 1000
    }

    .MainInfo_area-button__v__hB .MainInfo_button__Vw9Eq {
        font-size: 18px;
        line-height: 60px
    }

    .MainInfo_area-button__v__hB .MainInfo_button__Vw9Eq:first-child {
        width: 40%
    }

    .MainInfo_area-button__v__hB .MainInfo_button__Vw9Eq:last-child {
        width: 60%
    }
}

@media (min-width: 600px) {
    .MainInfo_article__iQqCh {
        margin-top: 14px;
        border-radius: 12px;
        box-shadow: 0 4px 16px rgba(0, 0, 0, .05);
        padding-top: 30px
    }

    .MainInfo_area-event__REIlH .MainInfo_desc__vh6bu {
        -webkit-line-clamp: 1
    }

    .MainInfo_area-button__v__hB {
        margin-top: 15px
    }

    .MainInfo_area-button__v__hB .MainInfo_button__Vw9Eq {
        flex: 1 1;
        border-radius: 4px;
        font-size: 16px;
        line-height: 43px
    }

    .MainInfo_area-button__v__hB .MainInfo_button__Vw9Eq ~ .MainInfo_button__Vw9Eq {
        margin-left: 6px
    }

    .MainInfo_area-button__v__hB .MainInfo_icon-npay__IdEPL {
        margin-top: 11px
    }
}

@media screen and (max-width: 320px) {
    .MainInfo_rate-info__nQpPA .MainInfo_sub-text__VGvM7 {
        display: block;
        margin-left: 0
    }
}

.TabPanelButton_article__SHBq5 {
    margin: 20px 0 -30px;
    border-top: 1px solid #f6f8fa
}

.TabPanelButton_button__JjUkq {
    padding: 20px 0;
    font-size: 15px;
    line-height: 17px;
    color: #929294 !important
}

.TabPanelButton_button__JjUkq svg {
    margin-left: 3px
}

.TabPanelButton_button__JjUkq.TabPanelButton_more__4d1pu {
    width: 100%
}

.TabPanelButton_button__JjUkq.TabPanelButton_more__4d1pu svg {
    margin-top: 6px
}

.TabPanelButton_button__JjUkq.TabPanelButton_link__VKouK {
    display: block;
    text-align: center
}

.TabPanelButton_button__JjUkq.TabPanelButton_link__VKouK svg {
    margin-top: 5px;
    transform: rotate(-90deg)
}

.ProductInfo_article__HX1ob {
    position: relative;
    padding-left: 52px
}

.ProductInfo_bi-circle__ngPKu {
    overflow: hidden;
    position: relative;
    display: inline-block;
    width: 42px;
    height: 42px;
    border-radius: 50%;
    vertical-align: top;
    position: absolute;
    top: 0;
    left: 0
}

.ProductInfo_bi-circle__ngPKu:before {
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    border: 1px solid rgba(0, 0, 0, .04);
    border-radius: 50%
}

.ProductInfo_area-info__LPXq9 {
    display: flex;
    justify-content: space-between
}

.ProductInfo_info-text__3Bv24 {
    flex: 1 1;
    min-width: 0
}

.ProductInfo_info-text__3Bv24 .ProductInfo_bank-name__UNj3m {
    font-size: 14px;
    line-height: 20px;
    letter-spacing: -.3px;
    margin-top: 2px;
    color: #1e1e23
}

.ProductInfo_title-box__rhHbP {
    display: flex
}

.ProductInfo_title-box__rhHbP .ProductInfo_title__tomzd {
    font-size: 17px;
    line-height: 23px;
    letter-spacing: -.3px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    display: block;
    color: #1e1e23
}

.ProductInfo_title-box__rhHbP .ProductInfo_icon-npay__PiWv6 {
    align-self: center;
    margin-left: 3px;
    line-height: 1px
}

.ProductInfo_area-tag__6a4Nt {
    margin-bottom: -6px
}

.ProductInfo_info-rates__h8fgP {
    margin-left: 3px;
    text-align: right;
    white-space: nowrap
}

.ProductInfo_info-rates__h8fgP .ProductInfo_top-rate__JKyeA {
    font-size: 14px;
    line-height: 20px;
    letter-spacing: -.3px;
    color: #09aa5c
}

.ProductInfo_info-rates__h8fgP .ProductInfo_number__KjJso {
    font-size: 18px;
    line-height: 24px;
    letter-spacing: -.5px;
    font-weight: 700
}

.ProductInfo_info-rates__h8fgP .ProductInfo_percent__3571f {
    font-size: 19px
}

.ProductInfo_info-rates__h8fgP .ProductInfo_rate__ruWXq {
    font-size: 13px;
    line-height: 19px;
    letter-spacing: -.3px;
    display: block;
    margin-top: 3px;
    color: #929294
}

.ProductInfo_info-rates__h8fgP .ProductInfo_rate__ruWXq.ProductInfo_prime__Y0IOF {
    margin-top: 0;
    margin-bottom: -10px;
    color: #576877
}

.ProductInfo_type-related__Z_khs {
    padding-left: 50px
}

.RelatedProduct_item__N6uvx {
    padding-bottom: 20px;
    border-bottom: 1px solid #f3f5f7
}

.RelatedProduct_item__N6uvx + .RelatedProduct_item__N6uvx {
    padding-top: 20px
}

.RelatedProduct_item__N6uvx:last-child {
    padding-bottom: 0;
    border-bottom: 0
}

.RelatedProduct_link__w9F7P {
    display: block
}
</style>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script>
    let fpc = '${depositDetail.finPrdtCd}';
    let bestIntr = '${depositDetail.bestIntr}';
    let basicIntr = '${depositDetail.basicIntr}';
    let maxTerm = `${options[options.size()-1].saveTrm}`;
    let path = window.location.pathname.split("/");
    let type = path[1];
    // console.log(type);
    $(document).ready(function () {
        cal.input();
        cal.delete();
        cal.selectRate();
        // 유사 상품 가져오기
        $.ajax({
            url: 'http://54.180.142.213:5000/recommendation?target_fin_prdt_cd=' + fpc + '&rownum=3&type=' + type,
            success: function (data) {
                console.log(data["similar_products"]);
                recommendation.info(data["similar_products"]);
            },
            error: function (e) {
                console.log(e);
            }
        });

        if(type == 'saving'){
            $('#withdraw').text("월 예치금액");
            $('#maxTerm').text("(" + maxTerm + "개월 기준)")
        }else{
            $('#savingType').remove()
        }
    });

    let recommendation = {
        info: function (rec) {

            // 유사 상품 정보 가져오기
            $.ajax({
                method: 'POST',
                url: "/" + type + "/recommend",
                data: {arr: rec},
                success: function (res) {
                    var dynamicHTML = '';
                    res.forEach(function (product) {
                        dynamicHTML += '<li class="ProductList_item__QXNrf">';
                        dynamicHTML += '<a class="ProductList_link__pMmxO" data-nclicks="deposit.listing" href="/' + type + '/detail?fpc=' + product.finPrdtCd + '">';
                        dynamicHTML += '<div class="ProductInfo_article__HX1ob">';
                        dynamicHTML += '<span class="ProductInfo_bi-circle__ngPKu">';
                        dynamicHTML += '<span class="sc-dmyCSP hQyNX bi-element" style="width: 42px; height: 42px;">';
                        dynamicHTML += '<img src="' + product.imgUrl + '" alt="' + product.finPrdtCd + '" width="42" height="42" loading="eager">';
                        dynamicHTML += '</span></span>';
                        dynamicHTML += '<div class="ProductInfo_area-info__LPXq9">';
                        dynamicHTML += '<div class="ProductInfo_info-text__3Bv24">';
                        dynamicHTML += '<div class="ProductInfo_title-box__rhHbP">';
                        dynamicHTML += '<strong class="ProductInfo_title__tomzd">' + product.finPrdtNm + '</strong>';
                        dynamicHTML += '</div>';
                        dynamicHTML += '<p class="ProductInfo_bank-name__UNj3m">' + product.korCoNm + '</p>';
                        dynamicHTML += '</div>';
                        dynamicHTML += '<div class="ProductInfo_info-rates__h8fgP">';
                        dynamicHTML += '<em class="ProductInfo_top-rate__JKyeA">최고 <b class="ProductInfo_number__KjJso">' + product.bestIntr + '</b><span class="ProductInfo_percent__3571f">%</span></em>';
                        dynamicHTML += '<span class="ProductInfo_rate__ruWXq"> 최저' + product.basicIntr + '%</span>';
                        dynamicHTML += '</div></div></div></a></li>';
                    });

                    $('#recommendPd').html(dynamicHTML);
                },
                error: function (e) {
                    console.log(e);
                }
            });
        }
    }


    let select = '';
    let price = 0;
    let korPriceFormatter = function(number){
            var inputNumber  = number < 0 ? false : number;
            var unitWords    = ['', '만', '억', '조', '경'];
            var splitUnit    = 10000;
            var splitCount   = unitWords.length;
            var resultArray  = [];
            var resultString = '';

            for (var i = 0; i < splitCount; i++){
                var unitResult = (inputNumber % Math.pow(splitUnit, i + 1)) / Math.pow(splitUnit, i);
                unitResult = Math.floor(unitResult);
                if (unitResult > 0){
                    resultArray[i] = unitResult;
                }
            }

            for (var i = 0; i < resultArray.length; i++){
                if(!resultArray[i]) continue;
                resultString = String(resultArray[i]) + unitWords[i] + resultString;
            }

            return resultString;
    }
    let cal = {
        input : function(){
            $('#calPrice').keyup(function () {
                price = $(this).val();
                // let formattedPrice = price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                price = price.replace(/,/g, '');

                let formattedPrice = new Intl.NumberFormat('ko-KR').format(price);
                $(this).val(formattedPrice);
                $('#korPrice').remove();
                if(price>0)
                {
                    $('.InterestRateReceipt_area-price__CArE_').append(
                        '<div id="korPrice"><span class="InterestRateReceipt_input-title__ce4T6">' + korPriceFormatter(price) + '원</span></div>'
                    )
                }

                if(type == 'saving'){
                    formattedPrice = new Intl.NumberFormat('ko-KR').format(price*maxTerm);
                    cal.calSaving(price);

                }else {
                    cal.calculate(price);
                }
                $('#showPrice').text(formattedPrice + '원');

            })
        },
        selectRate:function(){
            select = $('input[name="intrRate"]').val();
            console.log(select);
            $('input[name="intrRate"]').change(function(){
                select = $(this).val();
                $('.InterestRateReceipt_label__0DlpA').removeClass('InterestRateReceipt_is-selected__dMNH9');
                $(this).siblings('label').addClass('InterestRateReceipt_is-selected__dMNH9');
            console.log("-----" + select);
                // select = $(this).val();
                if(type == 'saving'){
                    cal.calSaving(price);

                }else {
                    cal.calculate(price);
                }
            })
        },
        delete : function(){
            $('#delbtn').click(function(){
                $('#calPrice').val('');
            })
        },
        calculate: function(price){
            price = Number(price);
            let intr = 0;
            if(select == 'best'){
                intr = Math.floor(price*bestIntr*0.01);
            }else{
                intr = Math.floor(price*basicIntr*0.01);
            }
           // console.log(intr);
           let tax = Math.ceil(intr*0.154);
           // console.log(intr*0.154);
           let res = price + intr - tax;
            cal.calResult(intr, tax, res);
        },
        calSaving:function (price){
            price = Number(price);
            console.log("적금" + price);

            let intr = 0;
            if(select == 'best'){
                intr = bestIntr;
            }else{
                intr = basicIntr;
            }

            let savingIntr = 0;
            for(let i = maxTerm; i>=1; i--){
                let temp = Math.floor(((i/12)*intr*0.01)*price);
                // console.log(temp);
                savingIntr += temp;
            }

            let tax = Math.ceil(savingIntr*0.154);
            // console.log(intr*0.154);
            let res = (price*maxTerm) + savingIntr - tax;
            cal.calResult(savingIntr, tax, res);
        },
        calResult:function(intr, tax, res){
            intr = intr.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            tax = tax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            res = res.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            // console.log(res);
            $('#calIntr').text('+ ' + intr + '원');
            $('#calTax').text( '- ' + tax + '원' );
            $('#showRes').text(res + '원');
        }
    }

</script>

<body>
<div id="__next">
    <div class="FlexibleLayout-module_article__bwPeF FlexibleLayout-module_type-gray150__l7e7q">
        <div class="FlexibleLayout-module_row__P4p6X">
            <div style="height: 56px;">
                <div class="StickyHeaderArea-module_article__hVjGg" style="transform: translateY(0px);">
                    <div class=""></div>
                </div>
            </div>
        </div>
        <div class="FlexibleLayout-module_wrapper__9uXan">
            <div id="content" class="FlexibleLayout-module_inner__hGuDc">
                <div class="MainInfo_article__iQqCh">
                    <div class="MainInfo_area-title__hzVI3"><span class="MainInfo_bi-image__PJeZY"><span
                            class="sc-dmyCSP hQyNX bi-element" style="width: 50px; height: 50px;"><img
                            src=${depositDetail.imgUrl}
                            alt="BK_SH_Profile" width="50" height="50" loading="eager"></span></span>
                        <h3 class="MainInfo_title__AHL1g">${depositDetail.finPrdtNm}</h3><span class="MainInfo_text__V_Fkd">${depositDetail.korCoNm}</span>
                        <ul class="TagList_article__gRL9O MainInfo_area-tag__xO9lF">
                            <c:forEach var="keyword" items="${keywords}">
                                <li class="TagList_tag__xQBbK TagList_highlight__mX4ib">${keyword.getTermClassName()}</li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="MainInfo_area-rates__ZlyVd">
                        <dl class="MainInfo_rate-info__nQpPA">
                            <div class="MainInfo_item__e2TqV">
                                <dt class="MainInfo_name__KyHe4"><span class="blind">이율</span>최고</dt>
                                <dd class="MainInfo_rate__em52j">${String.format("%.2f",depositDetail.bestIntr)}%</dd>
                            </div>
                            <div class="MainInfo_item__e2TqV">
                                <dt class="MainInfo_name__KyHe4"><span class="blind">이율</span>최저</dt>
                                <dd class="MainInfo_rate__em52j">${String.format("%.2f",depositDetail.basicIntr)}%<span
                                        class="MainInfo_sub-text__VGvM7">(${options[0].saveTrm}개월,세전)</span></dd>
                            </div>
                        </dl>
                    </div>
                    <div class="MainInfo_area-event__REIlH"><strong class="MainInfo_title__AHL1g">특판</strong>
                        <div class="MainInfo_desc__vh6bu"><p>${depositDetail.mtrtInt}</p>
                                <c:if test="${depositDetail.spclCnd ne '해당무'}">
                                    <p>${depositDetail.spclCnd}</p>
                                </c:if>
                        </div>
                    </div>
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
                            <dt class="TextList_label__MxF08">가입 대상</dt>
                            <dd class="TextList_description__xhuFz"><p>${depositDetail.joinMember}</p></dd>
                        </div>
                        <div class="TextList_item__5sJpR">
                            <dt class="TextList_label__MxF08">가입 방법</dt>
                            <dd class="TextList_description__xhuFz"><p>${depositDetail.joinWay}</p></dd>
                        </div>
                        <div class="TextList_item__5sJpR">
                            <dt class="TextList_label__MxF08">상세 내용</dt>
                            <dd class="TextList_description__xhuFz"><p>${depositDetail.etcNote}</p></dd>
                        </div>
                        <div class="TextList_item__5sJpR">
                            <dt class="TextList_label__MxF08">최대 금액</dt>
                            <dd class="TextList_description__xhuFz">
                                <c:choose>
                                    <c:when test="${depositDetail.maxLimit == 0}">
                                        <p>제한 없음</p>
                                    </c:when>
                                    <c:otherwise>
                                        <p><fmt:formatNumber pattern="#,##0" value="${depositDetail.maxLimit}" />원</p>
                                    </c:otherwise>
                                </c:choose>
                            </dd>
                        </div>
                    </dl>
                    <div class="TabPanel_article__avbnv" id="INTEREST_RATE_GUIDE"><h4 class="TabPanel_title__DVLRd">금리
                        계산기</h4><strong class="InterestRateGuide_title__in5Wl">예상만기수령액</strong><span id="maxTerm"></span>
                        <div class="InterestRateReceipt_area-price__CArE_"><em
                                id="withdraw" class="InterestRateReceipt_input-title__ce4T6">예치금액</em>
                            <div class="InputPrice_article__oiwrr InputPrice_type-detail__j09c1 InputPrice_is-activated__HYoZS">
                                <div class="InputPrice_input-underline__1rGXe" data-nclicks="sv_contents.calculator">
                                    <div class="InputPrice_input__d2t0e"><input id="calPrice" title="금액입력" placeholder="금액을 입력해주세요"
                                                                                class="InputPrice_input-value__yim9T"
                                                                                type="tel"
                                                                                inputmode="numeric"></div>
                                    <button id="delbtn" type="button" class="InputPrice_button-delete__w1P7l">
                                        <svg width="18" height="18" viewBox="0 0 18 18">
                                            <circle cx="9" cy="9" r="9" fill="#929294"></circle>
                                            <path d="m5.89 5.182 3.18 3.183 3.183-3.183.707.707-3.184 3.182 3.184 3.182-.707.707L9.07 9.778 5.89 12.96l-.708-.707 3.181-3.181-3.181-3.184.707-.706z"
                                                  fill="#fff"></path>
                                        </svg>
                                        <span class="blind">입력삭제</span></button>
                                </div>
                                <p class="InputPrice_text__7iSSD"></p></div>
                        </div>
                        <ul class="InterestRateReceipt_rate-select__nM0Ev">
                            <li class="InterestRateReceipt_item__wu1EV "><input type="radio" name="intrRate" class="hidden"
                                                                                id="PRIME_INTEREST_RATE" value="best" checked=""><label
                                    for="PRIME_INTEREST_RATE"
                                    class="InterestRateReceipt_label__0DlpA InterestRateReceipt_is-selected__dMNH9">최고금리 <b>${String.format("%.2f",depositDetail.bestIntr)}%</b></label>
                            </li>
                            <li class="InterestRateReceipt_item__wu1EV"><input type="radio" name="intrRate" class="hidden"
                                                                               id="INTEREST_RATE" value="basic"><label for="INTEREST_RATE"
                                                                                                                       class="InterestRateReceipt_label__0DlpA">최저금리
                                <b>${String.format("%.2f",depositDetail.basicIntr)}%</b></label></li>
                        </ul>
                        <dl class="InterestRateReceipt_receipt-info__sXkC2">
                            <div class="InterestRateReceipt_item__wu1EV">
                                <dt class="InterestRateReceipt_info-title__FGU_m">원금합계</dt>
                                <dd id="showPrice" class="InterestRateReceipt_info-desc__Vx2Zw">0원</dd>
                            </div>
                            <div class="InterestRateReceipt_item__wu1EV">
                                <dt class="InterestRateReceipt_info-title__FGU_m">세전이자</dt>
                                <dd id="calIntr" class="InterestRateReceipt_info-desc__Vx2Zw">+ 0원</dd>
                            </div>
                            <div class="InterestRateReceipt_item__wu1EV">
                                <dt class="InterestRateReceipt_info-title__FGU_m">이자과세(15.4%)</dt>
                                <dd id="calTax" class="InterestRateReceipt_info-desc__Vx2Zw">- 0원</dd>
                            </div>
                            <div class="InterestRateReceipt_item__wu1EV InterestRateReceipt_total__XHAig">
                                <dt class="InterestRateReceipt_info-title__FGU_m">세후수령액</dt>
                                <dd id="showRes" class="InterestRateReceipt_info-desc__Vx2Zw">0원</dd>
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
                                            <c:forEach items="${options}" var="op">
                                                <tr>
                                                    <th scope="row"
                                                        class="InterestRateTable_cell__QR7x_ InterestRateTable_row-head__ejfZd">
                                                        <p>
                                                                ${op.saveTrm}개월</p></th>
                                                    <td class="InterestRateTable_cell__QR7x_">${op.intrRate}</td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </c:if>

                        <%--                    <div class="InterestRateGuide_area-text-info__Ym4VI">--%>
                        <%--                        <dl class="TextList_article__CngKS">--%>
                        <%--                            <div class="TextList_item__5sJpR">--%>
                        <%--                                <dt class="TextList_label__MxF08">조건별</dt>--%>
                        <%--                                <dd class="TextList_description__xhuFz"><p>우대금리 최대 연 1.05%p를 만기해지시 제공</p></dd>--%>
                        <%--                            </div>--%>
                        <%--                            <div class="TextList_item__5sJpR">--%>
                        <%--                                <dt class="TextList_label__MxF08"></dt>--%>
                        <%--                                <dd class="TextList_description__xhuFz TextList_color-gray__ye_b3">--%>
                        <%--                                    <ul class="number-list">--%>
                        <%--                                        <li><b>1</b>--%>
                        <%--                                            <p>수협은행 예·적금(입출금이자유로운예금 제외) 첫거래 고객(신규시 확정)<br>- 최근 1년간 수협은행 예·적금 활동계좌 미보유 고객--%>
                        <%--                                                포함 : 1%</p></li>--%>
                        <%--                                    </ul>--%>
                        <%--                                </dd>--%>
                        <%--                            </div>--%>
                        <%--                            <div class="TextList_item__5sJpR">--%>
                        <%--                                <dt class="TextList_label__MxF08"></dt>--%>
                        <%--                                <dd class="TextList_description__xhuFz TextList_color-gray__ye_b3">--%>
                        <%--                                    <ul class="number-list">--%>
                        <%--                                        <li><b>2</b>--%>
                        <%--                                            <p>개인(신용)정보 수집‧이용 동의서(상품서비스 안내 등)내 상품서비스 안내수단 전체 동의한 경우(신규시 확정) : 0.05%</p>--%>
                        <%--                                        </li>--%>
                        <%--                                    </ul>--%>
                        <%--                                </dd>--%>
                        <%--                            </div>--%>
                        <%--                            <div class="TextList_item__5sJpR">--%>
                        <%--                                <dt class="TextList_label__MxF08"></dt>--%>
                        <%--                                <dd class="TextList_description__xhuFz TextList_color-gray__ye_b3">--%>
                        <%--                                    <ul class="number-list">--%>
                        <%--                                        <li><b>3</b>--%>
                        <%--                                            <p>이 예금 신규일부터 만기 전일까지 당행 ‘스마트폰뱅킹의 상품 알리기’를 통해 이 상품 추천 시(만기해지시 확정) : 0.8%</p>--%>
                        <%--                                        </li>--%>
                        <%--                                    </ul>--%>
                        <%--                                </dd>--%>
                        <%--                            </div>--%>
                        <%--                            <div class="TextList_item__5sJpR">--%>
                        <%--                                <dt class="TextList_label__MxF08">유형</dt>--%>
                        <%--                                <dd class="TextList_description__xhuFz">고정금리</dd>--%>
                        <%--                            </div>--%>
                        <%--                        </dl>--%>
                        <%--                    </div>--%>
                    </div>
                    <div class="TabPanel_article__avbnv" id="RELATED_PRODUCT"><h4 class="TabPanel_title__DVLRd">비슷한 상품</h4>
                        <ul id="recommendPd">
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
                </div>
                <div style="padding-bottom: 50px;"></div>
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
