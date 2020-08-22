<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en" ng-app="app">
<head>
    <meta charset="utf-8">
    <title>Struts2 + AngularJS + Tailwindcss</title>

    <base href="<s:url forceAddSchemeHostAndPort="true" includeContext="true" value="/" namespace="/" />">

    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    
</head>
<body class="p-5">

<h2><s:property value="message"/></h2>

<div class="flex">
    
    <div class="mr-5">
        <a href="/home" class="hover:font-bold">Home</a>
    </div>

    <div>|</div>

    <div class="ml-5 mr-5">
        <a href="/projects" class="hover:font-bold">Projects</a>
    </div>

</div>

<div class="mt-5" ng-controller="AppController as app">
    <div class="p-3 bg-gray-400 rounded-lg" ng-view>

    </div>
</div>

<s:if test="useMinifiedResources">
    <script src="<s:url value="js/external.js" />"></script>
    <script src="<s:url value="js/application.js" />"></script>
</s:if>
<s:else>
    <script src="<s:url value="js/lib/angular/angular.min.js" />"></script>
    <script src="<s:url value="js/lib/angular/angular-route.min.js" />"></script>
    <script src="<s:url value="js/app.js" />"></script>
    <script src="<s:url value="js/config.js" />"></script>
    <script src="<s:url value="js/services/DataService.js" />"></script>
    <script src="<s:url value="js/controllers/AppController.js" />"></script>
    <script src="<s:url value="js/controllers/HomeController.js" />"></script>
    <script src="<s:url value="js/controllers/ApacheProjectsController.js" />"></script>
</s:else>
</body>
</html>
