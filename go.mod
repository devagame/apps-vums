module github.com/devagame/apps-vums

go 1.15

require (
	github.com/PuerkitoBio/goquery v1.5.1
	github.com/beego/beego/v2 v2.0.2-0.20210322114547-10ea897525a5
	github.com/boombuler/barcode v1.0.0
	github.com/howeyc/fsnotify v0.9.0
	github.com/kardianos/service v1.1.0
	github.com/lifei6671/gocaptcha v0.1.1
	github.com/mattn/go-sqlite3 v2.0.3+incompatible
	github.com/nfnt/resize v0.0.0-20180221191011-83c6a9932646
	github.com/russross/blackfriday/v2 v2.1.0
	github.com/shurcooL/sanitized_anchor_name v1.0.0 // indirect
	gopkg.in/asn1-ber.v1 v1.0.0-00010101000000-000000000000 // indirect
	gopkg.in/ldap.v2 v2.5.1
)

replace gopkg.in/asn1-ber.v1 => github.com/go-asn1-ber/asn1-ber v1.5.0
