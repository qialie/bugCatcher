<%@ include file="../common/IncludeHead.jsp"%>
<link href="../css/EditCaselistForm.css" rel="stylesheet">
<%@ include file="../common/IncludeNavbar.jsp"%>



<div id="Content" class="container">
  <form:form class="form-newtask" modelAttribute="caselist" action="${pageContext.request.contextPath}/caselist/editCaselist">
    <h2 class="form-newtask-heading">用例信息</h2>

    <label for="caseid" class="sr-only">用例id</label>
    <form:input path="caseid" id="caseid" class="form-control" placeholder="用例id" value="${caselist.caseid}" required="true" readonly="true"/>
    <label for="casename" class="sr-only">用例名称</label>
    <form:input path="casename" id="casename" class="form-control" placeholder="用例名称" value="${caselist.casename}" required="true" autofocus="true" />
    <label for="belongmodulea" class="sr-only">一级模块</label>
    <form:input path="belongmodulea" id="belongmodulea" class="form-control" placeholder="一级模块" value="${caselist.belongmodulea}" required="true" />
    <label for="belongmoduleb" class="sr-only">二级模块</label>
    <form:input path="belongmoduleb" id="belongmoduleb" class="form-control" placeholder="二级模块" value="${caselist.belongmoduleb}" required="true" />
    <label for="belongmodulec" class="sr-only">三级模块</label>
    <form:input path="belongmodulec" id="belongmodulec" class="form-control" placeholder="三级模块" value="${caselist.belongmodulec}" required="true" />
    <label for="priority" class="sr-only">用例优先级</label>
    <div>
      用例优先级:
      <form:select path="priority" id="priority" class="form-control" required="true">
        <option value="1" <c:if test="${caselist.priority == 1}">selected</c:if>>1</option>
        <option value="2" <c:if test="${caselist.priority == 2}">selected</c:if>>2</option>
        <option value="3" <c:if test="${caselist.priority == 3}">selected</c:if>>3</option>
        <option value="4" <c:if test="${caselist.priority == 4}">selected</c:if>>4</option>
        <option value="5" <c:if test="${caselist.priority == 5}">selected</c:if>>5</option>
      </form:select>
    </div>
    <label for="casestep" class="sr-only">用例步骤</label>
    <form:textarea path="casestep" id="casestep" class="form-control" placeholder="用例步骤" value="${caselist.casestep}" required="true" />
    <div class="checkbox">
      <label>
        <form:checkbox path="reviewed" checked="${caselist.reviewed}" /> 已评审?
      </label>
    </div>
    <div class="checkbox">
      <label>
        <form:checkbox path="automated" checked="${caselist.automated}" /> 已自动化?
      </label>
    </div>

    <button class="btn btn-lg btn-primary btn-block" type="submit">提交</button>
  </form:form>
</div> <!-- /container -->


<%@ include file="../common/IncludeJsVendor.jsp"%>
</body>
</html>