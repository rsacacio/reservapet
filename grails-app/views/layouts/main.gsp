<!DOCTYPE html>
<html>
<head>
	<meta/>
	<title>ReservaPet</title>
	<link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}" type="image/x-icon">
	<asset:javascript src="reservapetClient/application.js"/>
</head>

<asset:stylesheet src="application.css"/>
<body id="ng-app" ng-app="reservapetApp" class="gray-bg">
<g:if env="development">
	<g:renderException exception="${exception}" />
</g:if>

<div class="wrapper">
	<div id="wrapper" class="gray-bg" ui-view="master" ngsf-fullscreen></div>
	<spinner name="mainLoadingSpinner" class="loading" style="z-index:999999999999999" on-loaded="handleShowMainLoadingSpinnerWaytout()">
		<span class="mainLoadingSpinnerWayout" ng-if="showMainLoadingSpinnerWaytout">Demorando demais? <a href ng-click="handleMainLoadingSpinnerWayout()">Atualize a página</a></span>
	</spinner>
</div>
</body>
</html>
