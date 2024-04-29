
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script>
    let deposit = {
        init: function () {
            $.ajax({
                url:'<c:url value="/getDeposit"/>',
                success:(result)=>{
                    console.log(result)
                    this.display(result);
                }
            });
        },
        display: function(result){
            console.log(result.result.baseList[0].join_member)
            $('#w1').html(result.result.baseList[0].join_member)
        }
    };
    $(function () {
        deposit.init();
    });
</script>
<div class="container">
    <h2>This is deposit.jsp</h2>
    <div id="w1"></div>
</div>
