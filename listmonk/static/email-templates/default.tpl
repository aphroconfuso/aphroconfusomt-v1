<!doctype html>
<html>
	<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
			<base target="_blank">
			<style>
					@import url('https://fonts.googleapis.com/css2?family=Alegreya+Sans:wght@400&display=swap');

					body {
							background-color: #f9f9f6;
							font-family: 'Alegreya Sans', 'Helvetica Neue', 'Segoe UI', Helvetica, sans-serif;
							font-size: 16px;
							line-height: 26px;
							margin: 0;
							color: #4b4744;
					}

					p,
					a {
							color: #4b4744;
							font-size: 16px;
					}

					h1,
					h2 {
							color: #4b4744;
							font-size: 24px;
							line-height: 1.1;
							margin: 48px 0;
							padding: 0;
					}

					.wrap {
							background-color: #f9f9f6;
							padding: 30px;
							max-width: 525px;
							margin: 0 auto;
							border-radius: 5px;
					}

					.header {
							padding-bottom: 15px;
							margin-bottom: 15px;
					}

					.footer {
							text-align: center;
							font-size: 12px;
							color: #cac7c4;
					}

					.footer a {
							color: #cac7c4;
					}

					.gutter {
							padding: 30px;
					}

					a.button {
							background-color: #4b4744;
							border: 1px solid #66605c;
							border-radius: 5px;
							color: #f9f9f9;
							display: inline-block;
							font-size: 14px;
							letter-spacing: 1px;
							margin-top: 21px;
							padding: 12px;
							text-transform: uppercase;
					}

					a.button:hover {
							background: #66605c;
					}

					img {
							max-width: 100%;
					}

					a {
							text-decoration: none;
					}

					@media screen and (max-width: 600px) {
							.wrap {
									max-width: auto;
							}

							.gutter {
									padding: 10px;
							}
					}

			</style>
	</head>
    <body style="background-color: #f9f9f6; font-family: 'Alegreya Sans', 'Helvetica Neue', 'Segoe UI', Helvetica, sans-serif; font-size: 16px; line-height: 26px; margin: 0; color: #4b4744;">
    <div class="gutter">&nbsp;</div>
    <div class="wrap" style="background-color: #f9f9f3;padding: 30px;max-width: 525px;margin: 0 auto;border-radius: 5px;">
			<header class="header">
					<div class="logo">
						{{ if ne .LogoURL "" }}
						<img src="{{ .LogoURL }}" alt="{{ .Data.Title }}" />
						{{ else }}
						<img src="/public/static/logo.svg" alt="{{ .Data.Title }}" />
						{{ end }}
					</div>
				</header>
        <div>{{ template "content" . }}<div>
        <div class="footer" style="text-align: center;font-size: 12px;color: #888;">
            <p>
                {{ L.T "email.unsubHelp" }}
                <a href="{{ UnsubscribeURL }}" style="color: #888;">{{ L.T "email.unsub" }}</a>
            </p>
        </div>
        <div class="gutter" style="padding: 30px;">&nbsp;{{ TrackView }}</div>
    </div>
    </body>
</html>
