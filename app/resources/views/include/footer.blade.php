<footer class="footer hr">
	<div class="copy-right text-align-center mt20 mb20">
		<p class="text-center">© 2021 Roughlang, INC. All Rights Reserved</p>
	</div>
</footer>
@if(env('APP_ENV') == 'local' || env('APP_ENV') == 'develop')
<script type="text/javascript" src="/assets/js/vue/vue.js"></script>
@else
<script type="text/javascript" src="/assets/js/vue/vue.min.js"></script>
@endif