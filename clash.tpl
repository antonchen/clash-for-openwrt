redir-port: 7892
allow-lan: false
mode: Rule
log-level: info
# DNS-START
dns:
  enable: true
  ipv6: false
  listen: 127.0.0.1:5333
  enhanced-mode: redir-host
  nameserver:
    - 119.29.29.29:53
  fallback:
    - tcp://8.8.8.8:53
# DNS-END

Proxy:
# Proxy-START
# Proxy-END

Proxy Group:
# Group-START
# Group-END

# - { name: "Default", type: select, proxies: ["HK"] }
# - { name: "StreamMedia", type: select, proxies: ["HK"] }
# Select-START
- { name: "Final", type: select, proxies: ["Default", "DIRECT"] }
- { name: "Apple", type: select, proxies: ["DIRECT", "Default"] }
# Select-END

Rule:
# Rule-START
# Global Area Network
# (StreamMedia)
# (Video)
# > Youtube
- DOMAIN-SUFFIX,googlevideo.com,StreamMedia
- DOMAIN-SUFFIX,youtube.com,StreamMedia
- DOMAIN,youtubei.googleapis.com,StreamMedia
# > Netflix
- DOMAIN-SUFFIX,netflix.com,StreamMedia
- DOMAIN-SUFFIX,netflix.net,StreamMedia
- DOMAIN-SUFFIX,nflxext.com,StreamMedia
- DOMAIN-SUFFIX,nflximg.com,StreamMedia
- DOMAIN-SUFFIX,nflximg.net,StreamMedia
- DOMAIN-SUFFIX,nflxso.net,StreamMedia
- DOMAIN-SUFFIX,nflxvideo.net,StreamMedia
# > Fox+ (HK|TW|SG)
- DOMAIN-SUFFIX,foxplus.com,StreamMedia
- DOMAIN-SUFFIX,theplatform.com,StreamMedia
- DOMAIN-SUFFIX,staticasiafox.akamaized.net,StreamMedia
- DOMAIN-SUFFIX,dashasiafox.akamaized.net,StreamMedia
# > (US)
# > HBO Now & HBO GO
- DOMAIN-SUFFIX,hbo.com,StreamMedia
- DOMAIN-SUFFIX,hboasia.com,StreamMedia
- DOMAIN-SUFFIX,hbogo.com,StreamMedia
- DOMAIN-SUFFIX,hbogoasia.hk,StreamMedia
# > Hulu
- DOMAIN-SUFFIX,hulu.com,StreamMedia
- DOMAIN-SUFFIX,huluim.com,StreamMedia
# > PBS
- DOMAIN-SUFFIX,pbs.org,StreamMedia
# > Fox Now
- DOMAIN-SUFFIX,fox.com,StreamMedia
- DOMAIN-SUFFIX,foxdcg.com,StreamMedia
- DOMAIN-SUFFIX,uplynk.com,StreamMedia
# > (HK)
# > myTV_SUPER
- DOMAIN-SUFFIX,mytvsuper.com,StreamMedia
- DOMAIN-SUFFIX,tvb.com,StreamMedia
# > encoreTVB
- DOMAIN-SUFFIX,encoretvb.com,StreamMedia
- DOMAIN,content.jwplatform.com,StreamMedia
- DOMAIN,videos-f.jwpsrv.com,StreamMedia
# > ViuTV
- DOMAIN-SUFFIX,viu.tv,StreamMedia
- DOMAIN,api.viu.now.com,StreamMedia
# > (JP)
# > Hulu(フールー)
- DOMAIN-SUFFIX,happyon.jp,StreamMedia
- DOMAIN-SUFFIX,hulu.jp,StreamMedia
# > AbemaTV
- DOMAIN-SUFFIX,abema.io,StreamMedia
- DOMAIN-SUFFIX,ameba.jp,StreamMedia
- DOMAIN-SUFFIX,hayabusa.io,StreamMedia
- DOMAIN,abematv.akamaized.net,StreamMedia
- DOMAIN,ds-linear-abematv.akamaized.net,StreamMedia
- DOMAIN,ds-vod-abematv.akamaized.net,StreamMedia
- DOMAIN,linear-abematv.akamaized.net,StreamMedia
# > (UK)
# > BBC iPlayer
- DOMAIN-SUFFIX,bbc.co.uk,StreamMedia
- DOMAIN-SUFFIX,bbci.co.uk,StreamMedia
- DOMAIN-KEYWORD,bbcfmt,StreamMedia
- DOMAIN-KEYWORD,uk-live,StreamMedia
# > (TW)
# > Bahamut
- DOMAIN-SUFFIX,bahamut.com.tw,StreamMedia
- DOMAIN-SUFFIX,gamer.com.tw,StreamMedia
- DOMAIN-SUFFIX,hinet.net,StreamMedia

# (Music)
# > Spotify
- DOMAIN-SUFFIX,pscdn.co,StreamMedia
- DOMAIN-SUFFIX,scdn.co,StreamMedia
- DOMAIN-SUFFIX,spotify.com,StreamMedia
- DOMAIN-SUFFIX,spoti.fi,StreamMedia
# > JOOX
- DOMAIN-SUFFIX,joox.com,StreamMedia
# > Pandora
- DOMAIN-SUFFIX,pandora.com,StreamMedia
# > KKBOX(HK|MO|TW|JP|SG|MY)
- DOMAIN-SUFFIX,kkbox.com,StreamMedia
- DOMAIN-SUFFIX,kkbox.com.tw,StreamMedia
- DOMAIN-SUFFIX,kfs.io,StreamMedia

# (DNS Cache Pollution Protection)
# > Google
- DOMAIN-SUFFIX,appspot.com,Default
- DOMAIN-SUFFIX,blogger.com,Default
- DOMAIN-SUFFIX,getoutline.org,Default
- DOMAIN-SUFFIX,gvt0.com,Default
- DOMAIN-SUFFIX,gvt1.com,Default
- DOMAIN-SUFFIX,gvt3.com,Default
- DOMAIN-SUFFIX,xn--ngstr-lra8j.com,Default
- DOMAIN-KEYWORD,google,Default
- DOMAIN-KEYWORD,blogspot,Default
# > Facebook
- DOMAIN-SUFFIX,cdninstagram.com,Default
- DOMAIN-SUFFIX,fb.com,Default
- DOMAIN-SUFFIX,fb.me,Default
- DOMAIN-SUFFIX,fbaddins.com,Default
- DOMAIN-SUFFIX,fbcdn.net,Default
- DOMAIN-SUFFIX,fbsbx.com,Default
- DOMAIN-SUFFIX,fbworkmail.com,Default
- DOMAIN-SUFFIX,instagram.com,Default
- DOMAIN-SUFFIX,m.me,Default
- DOMAIN-SUFFIX,messenger.com,Default
- DOMAIN-SUFFIX,oculus.com,Default
- DOMAIN-SUFFIX,oculuscdn.com,Default
- DOMAIN-SUFFIX,rocksdb.org,Default
- DOMAIN-SUFFIX,whatsapp.com,Default
- DOMAIN-SUFFIX,whatsapp.net,Default
- DOMAIN-KEYWORD,facebook,Default
# > Twitter
- DOMAIN-SUFFIX,pscp.tv,Default
- DOMAIN-SUFFIX,periscope.tv,Default
- DOMAIN-SUFFIX,t.co,Default
- DOMAIN-SUFFIX,twimg.co,Default
- DOMAIN-SUFFIX,twimg.com,Default
- DOMAIN-SUFFIX,twitpic.com,Default
- DOMAIN-SUFFIX,vine.co,Default
- DOMAIN-KEYWORD,twitter,Default
# > Telegram
- DOMAIN-SUFFIX,t.me,Default
- DOMAIN-SUFFIX,tdesktop.com,Default
- DOMAIN-SUFFIX,telegra.ph,Default
- DOMAIN-SUFFIX,telegram.me,Default
- DOMAIN-SUFFIX,telegram.org,Default
- IP-CIDR,91.108.4.0/22,Default
- IP-CIDR,91.108.8.0/22,Default
- IP-CIDR,91.108.12.0/22,Default
- IP-CIDR,91.108.16.0/22,Default
- IP-CIDR,91.108.56.0/22,Default
- IP-CIDR,149.154.160.0/20,Default

# (The Most Popular Sites)
# > Apple
# > Apple URL Shortener
- DOMAIN-SUFFIX,appsto.re,Default
# > TestFlight
- DOMAIN,beta.itunes.apple.com,Default
# > iBooks Store download
- DOMAIN,books.itunes.apple.com,Default
# > iTunes Store Moveis Trailers
- DOMAIN,hls.itunes.apple.com,Default
# App Store Preview
- DOMAIN,itunes.apple.com,Default
# > Spotlight
- DOMAIN,api-glb-sea.smoot.apple.com,Default
# > Dictionary
- DOMAIN,lookup-api.apple.com,Default
#PROCESS-NAME,LookupViewService,Default
# > Google
- DOMAIN-SUFFIX,abc.xyz,Default
- DOMAIN-SUFFIX,android.com,Default
- DOMAIN-SUFFIX,androidify.com,Default
- DOMAIN-SUFFIX,dialogflow.com,Default
- DOMAIN-SUFFIX,autodraw.com,Default
- DOMAIN-SUFFIX,capitalg.com,Default
- DOMAIN-SUFFIX,certificate-transparency.org,Default
- DOMAIN-SUFFIX,chrome.com,Default
- DOMAIN-SUFFIX,chromeexperiments.com,Default
- DOMAIN-SUFFIX,chromestatus.com,Default
- DOMAIN-SUFFIX,chromium.org,Default
- DOMAIN-SUFFIX,creativelab5.com,Default
- DOMAIN-SUFFIX,debug.com,Default
- DOMAIN-SUFFIX,deepmind.com,Default
- DOMAIN-SUFFIX,firebaseio.com,Default
- DOMAIN-SUFFIX,getmdl.io,Default
- DOMAIN-SUFFIX,ggpht.com,Default
- DOMAIN-SUFFIX,gmail.com,Default
- DOMAIN-SUFFIX,gmodules.com,Default
- DOMAIN-SUFFIX,godoc.org,Default
- DOMAIN-SUFFIX,golang.org,Default
- DOMAIN-SUFFIX,gstatic.com,Default
- DOMAIN-SUFFIX,gv.com,Default
- DOMAIN-SUFFIX,gwtproject.org,Default
- DOMAIN-SUFFIX,itasoftware.com,Default
- DOMAIN-SUFFIX,madewithcode.com,Default
- DOMAIN-SUFFIX,material.io,Default
- DOMAIN-SUFFIX,polymer-project.org,Default
- DOMAIN-SUFFIX,admin.recaptcha.net,Default
- DOMAIN-SUFFIX,recaptcha.net,Default
- DOMAIN-SUFFIX,shattered.io,Default
- DOMAIN-SUFFIX,synergyse.com,Default
- DOMAIN-SUFFIX,tensorflow.org,Default
- DOMAIN-SUFFIX,tiltbrush.com,Default
- DOMAIN-SUFFIX,waveprotocol.org,Default
- DOMAIN-SUFFIX,waymo.com,Default
- DOMAIN-SUFFIX,webmproject.org,Default
- DOMAIN-SUFFIX,webrtc.org,Default
- DOMAIN-SUFFIX,whatbrowser.org,Default
- DOMAIN-SUFFIX,widevine.com,Default
- DOMAIN-SUFFIX,x.company,Default
- DOMAIN-SUFFIX,youtu.be,Default
- DOMAIN-SUFFIX,yt.be,Default
- DOMAIN-SUFFIX,ytimg.com,Default
# > Steam
- DOMAIN,media.steampowered.com,Default

# China Area Network
# > App Store Download || iBooks Sample
- DOMAIN-SUFFIX,itunes.apple.com,Apple
# > Apple Music
- DOMAIN,aod.itunes.apple.com,Apple
- DOMAIN,audio.itunes.apple.com,Apple
- DOMAIN,audio-ssl.itunes.apple.com,Apple
- DOMAIN,streamingaudio.itunes.apple.com,Apple
# > Apple TV
- DOMAIN,ocvideo.apple.com,Apple
# > Apple News and Apple Map TOMTOM Version
- DOMAIN,gspe1-ssl.ls.apple.com,Apple
# > Apple
- DOMAIN-SUFFIX,aaplimg.com,Apple
- DOMAIN-SUFFIX,apple.co,Apple
- DOMAIN-SUFFIX,apple.com,Apple
- DOMAIN-SUFFIX,appstore.com,Apple
- DOMAIN-SUFFIX,cdn-apple.com,Apple
- DOMAIN-SUFFIX,crashlytics.com,Apple
- DOMAIN-SUFFIX,icloud.com,Apple
- DOMAIN-SUFFIX,icloud-content.com,Apple
- DOMAIN-SUFFIX,me.com,Apple
- DOMAIN-SUFFIX,mzstatic.com,Apple
# > Microsoft
- DOMAIN-SUFFIX,microsoft.com,DIRECT
- DOMAIN-SUFFIX,msecnd.net,DIRECT
- DOMAIN-SUFFIX,msedge.net,DIRECT
- DOMAIN-SUFFIX,office.com,DIRECT
- DOMAIN-SUFFIX,outlookmobile.com,DIRECT
- DOMAIN-SUFFIX,sfx.ms,DIRECT
- DOMAIN-SUFFIX,sharepoint.com,DIRECT
- DOMAIN-SUFFIX,s-microsoft.com,DIRECT
- DOMAIN-SUFFIX,visualstudio.com,DIRECT
- DOMAIN-SUFFIX,windows.net,DIRECT
- DOMAIN-KEYWORD,officecdn,DIRECT
# > Blizzard
- DOMAIN-SUFFIX,blizzard.com,DIRECT
- DOMAIN-SUFFIX,battle.net,DIRECT
# > Steam
- DOMAIN-SUFFIX,steamcommunity.com,Default
- DOMAIN-SUFFIX,steampowered.com,DIRECT
- DOMAIN-SUFFIX,steam-chat.com,DIRECT
- DOMAIN-KEYWORD,steamcdn,DIRECT
- DOMAIN-KEYWORD,steamstore,DIRECT
- DOMAIN-KEYWORD,steamuserimages,DIRECT
- DOMAIN-KEYWORD,steambroadcast,DIRECT
# > Tencent
- DOMAIN-SUFFIX,qq.com,DIRECT
- DOMAIN-SUFFIX,qpic.cn,DIRECT
- DOMAIN-SUFFIX,tencent.com,DIRECT
- DOMAIN-SUFFIX,gtimg.com,DIRECT
# > Alibaba
- DOMAIN-SUFFIX,alibaba.com,DIRECT
- DOMAIN-SUFFIX,amap.com,DIRECT
- DOMAIN-SUFFIX,dingtalk.com,DIRECT
- DOMAIN-SUFFIX,taobao.com,DIRECT
- DOMAIN-SUFFIX,tmall.com,DIRECT
- DOMAIN-SUFFIX,ykimg.com,DIRECT
- DOMAIN-SUFFIX,youku.com,DIRECT
- DOMAIN-SUFFIX,tbcache.com,DIRECT
- DOMAIN-SUFFIX,tbcdn.cn,DIRECT
# > Xiaomi
- DOMAIN-SUFFIX,xiami.com,DIRECT
- DOMAIN-SUFFIX,xiami.net,DIRECT
# > NetEase
- DOMAIN-SUFFIX,163.com,DIRECT
- DOMAIN-SUFFIX,126.net,DIRECT
- DOMAIN-SUFFIX,163yun.com,DIRECT
- DOMAIN-SUFFIX,netease.net,DIRECT
# > Sohu
- DOMAIN-SUFFIX,sohu.com.cn,DIRECT
- DOMAIN-SUFFIX,itc.cn,DIRECT
- DOMAIN-SUFFIX,sohu.com,DIRECT
- DOMAIN-SUFFIX,v-56.com,DIRECT
# > Sina
- DOMAIN-SUFFIX,weibo.com,DIRECT
- DOMAIN-SUFFIX,weibo.cn,DIRECT
# > JD
- DOMAIN-SUFFIX,jd.com,DIRECT
- DOMAIN-SUFFIX,jd.hk,DIRECT
- DOMAIN-SUFFIX,360buyimg.com,DIRECT
# > MI
- DOMAIN-SUFFIX,duokan.com,DIRECT
- DOMAIN-SUFFIX,mi-img.com,DIRECT
- DOMAIN-SUFFIX,mifile.cn,DIRECT
- DOMAIN-SUFFIX,xiaomi.com,DIRECT
# > bilibili
- DOMAIN-SUFFIX,acgvideo.com,DIRECT
- DOMAIN-SUFFIX,hdslb.com,DIRECT
- DOMAIN-SUFFIX,hdslb.net,DIRECT
# > iQiyi
- DOMAIN-SUFFIX,iqiyi.com,DIRECT
- DOMAIN-SUFFIX,iqiyipic.com,DIRECT
- DOMAIN-SUFFIX,71.am.com,DIRECT
# > HunanTV
- DOMAIN-SUFFIX,hitv.com,DIRECT
- DOMAIN-SUFFIX,mgtv.com,DIRECT
# > Meitu
- DOMAIN-SUFFIX,meitu.com,DIRECT
- DOMAIN-SUFFIX,meitudata.com,DIRECT
- DOMAIN-SUFFIX,meipai.com,DIRECT
# > YYeTs
- DOMAIN-SUFFIX,jstucdn.com,DIRECT
- DOMAIN-SUFFIX,zimuzu.io,DIRECT
- DOMAIN-SUFFIX,zimuzu.tv,DIRECT
- DOMAIN-SUFFIX,zmz2019.com,DIRECT
- DOMAIN-SUFFIX,zmzapi.com,DIRECT
- DOMAIN-SUFFIX,zmzapi.net,DIRECT
- DOMAIN-SUFFIX,zmzfile.com,DIRECT
# > Baidu
- DOMAIN-SUFFIX,baidu.com,DIRECT
- DOMAIN-SUFFIX,baidubcr.com,DIRECT
- DOMAIN-SUFFIX,bdstatic.com,DIRECT
- DOMAIN-SUFFIX,baidupcs.com,DIRECT
# > ChinaNet
- DOMAIN-SUFFIX,189.cn,DIRECT
- DOMAIN-SUFFIX,21cn.com,DIRECT
# > ByteDance
- DOMAIN-SUFFIX,bytecdn.cn,DIRECT
- DOMAIN-SUFFIX,pstatp.com,DIRECT
- DOMAIN-SUFFIX,snssdk.com,DIRECT
- DOMAIN-SUFFIX,toutiao.com,DIRECT
# > Content Delivery Network
# > Akamai
- DOMAIN-SUFFIX,akadns.net,DIRECT
- DOMAIN-SUFFIX,akamai.net,DIRECT
- DOMAIN-SUFFIX,akamaiedge.net,DIRECT
- DOMAIN-SUFFIX,akamaihd.net,DIRECT
- DOMAIN-SUFFIX,akamaistream.net,DIRECT
- DOMAIN-SUFFIX,akamaized.net,DIRECT
# > ChinaCache
- DOMAIN-SUFFIX,gslbsvc.net.cn,DIRECT
- DOMAIN-SUFFIX,chinacache.com.cn,DIRECT
- DOMAIN-SUFFIX,ccgslb.net,DIRECT
- DOMAIN-SUFFIX,gslbsvc.com.cn,DIRECT
- DOMAIN-SUFFIX,cdnsvc.cn,DIRECT
- DOMAIN-SUFFIX,ccgslb.cn,DIRECT
- DOMAIN-SUFFIX,cdn2cdn.net,DIRECT
- DOMAIN-SUFFIX,blueit.org.cn,DIRECT
- DOMAIN-SUFFIX,cc-1.com,DIRECT
- DOMAIN-SUFFIX,cdnsvc.net,DIRECT
- DOMAIN-SUFFIX,ccgslb.com.cn,DIRECT
- DOMAIN-SUFFIX,lxsvc.net,DIRECT
- DOMAIN-SUFFIX,chinacache.org,DIRECT
- DOMAIN-SUFFIX,gslbsvc.com,DIRECT
- DOMAIN-SUFFIX,ccgslb.com,DIRECT
- DOMAIN-SUFFIX,gslbsvc.cn,DIRECT
- DOMAIN-SUFFIX,chinacache.com,DIRECT
- DOMAIN-SUFFIX,igslb.net,DIRECT
- DOMAIN-SUFFIX,chinacache.net,DIRECT
- DOMAIN-SUFFIX,cdnsvc.net.cn,DIRECT
- DOMAIN-SUFFIX,ccgslb.net.cn,DIRECT
- DOMAIN-SUFFIX,hd-cdn.com,DIRECT
- DOMAIN-SUFFIX,cdnsvc.com.cn,DIRECT
- DOMAIN-SUFFIX,cdnsvc.com,DIRECT
- DOMAIN-SUFFIX,speedupchina.net,DIRECT
- DOMAIN-SUFFIX,b2r.com.cn,DIRECT
- DOMAIN-SUFFIX,blueit.com,DIRECT
- DOMAIN-SUFFIX,lxsvc.cn,DIRECT
- DOMAIN-SUFFIX,gslbsvc.net,DIRECT
- DOMAIN-SUFFIX,speedupchina.com,DIRECT
- DOMAIN-SUFFIX,cc-cps.com,DIRECT
- DOMAIN-SUFFIX,cc-cps.com.cn,DIRECT
- DOMAIN-SUFFIX,cc-cps.net,DIRECT
- DOMAIN-SUFFIX,cc-cps.mobi,DIRECT
- DOMAIN-SUFFIX,cc-cps.cn,DIRECT
- DOMAIN-SUFFIX,ccbench.com,DIRECT
- DOMAIN-SUFFIX,webluker.com,DIRECT
- DOMAIN-SUFFIX,ccindex.cn,DIRECT
- DOMAIN-SUFFIX,ccindex.com.cn,DIRECT
- DOMAIN-SUFFIX,ccmplus.com.cn,DIRECT
- DOMAIN-SUFFIX,ccmplus.net,DIRECT
- DOMAIN-SUFFIX,ccmplus.cn,DIRECT
# > ChinaNetCenter
- DOMAIN-SUFFIX,chinanetcenter.com,DIRECT
- DOMAIN-SUFFIX,wangsu.com,DIRECT
- DOMAIN-SUFFIX,netcenter.com.cn,DIRECT
- DOMAIN-SUFFIX,wscdns.com,DIRECT
- DOMAIN-SUFFIX,ourglb0.com,DIRECT
- DOMAIN-SUFFIX,wsngb.com,DIRECT
- DOMAIN-SUFFIX,lxdns.com,DIRECT
- DOMAIN-SUFFIX,lxdns.net,DIRECT
- DOMAIN-SUFFIX,51cdn.com,DIRECT
- DOMAIN-SUFFIX,ourwebat.com,DIRECT
- DOMAIN-SUFFIX,ourwebcdn.com,DIRECT
- DOMAIN-SUFFIX,mwcloudcdn.com,DIRECT
# > 快网
- DOMAIN-SUFFIX,fastweb.com.cn,DIRECT
- DOMAIN-SUFFIX,fwdns.net,DIRECT
- DOMAIN-SUFFIX,hadns.net,DIRECT
- DOMAIN-SUFFIX,cachecn.net,DIRECT
- DOMAIN-SUFFIX,sz-dns.net,DIRECT
- DOMAIN-SUFFIX,cachecn.com,DIRECT
- DOMAIN-SUFFIX,cloudcdn.cn,DIRECT
- DOMAIN-SUFFIX,1test.cn,DIRECT
- DOMAIN-SUFFIX,5test.cn,DIRECT
- DOMAIN-SUFFIX,fsspace.com,DIRECT
- DOMAIN-SUFFIX,fsspace.com.cn,DIRECT
- DOMAIN-SUFFIX,fsspace.cn,DIRECT
- DOMAIN-SUFFIX,cloudcdn.net,DIRECT
- DOMAIN-SUFFIX,fastwebcdn.com,DIRECT
- DOMAIN-SUFFIX,hacdn.com,DIRECT
- DOMAIN-SUFFIX,fwcdn.com,DIRECT
- DOMAIN-SUFFIX,fwcdn.net,DIRECT
- DOMAIN-SUFFIX,hacdn.net,DIRECT
- DOMAIN-SUFFIX,cloudglb.com,DIRECT
- DOMAIN-SUFFIX,cloudxns.net,DIRECT
- DOMAIN-SUFFIX,cloudglb.net,DIRECT
- DOMAIN-SUFFIX,cloudxns.com,DIRECT
- DOMAIN-SUFFIX,cloudtcp.net,DIRECT
- DOMAIN-SUFFIX,myxns.cn,DIRECT
- DOMAIN-SUFFIX,newdefend.cn,DIRECT
- DOMAIN-SUFFIX,myxns.net.cn,DIRECT
- DOMAIN-SUFFIX,myxns.com.cn,DIRECT
- DOMAIN-SUFFIX,myxns.org,DIRECT
- DOMAIN-SUFFIX,newdefend.net,DIRECT
- DOMAIN-SUFFIX,newdefend.org,DIRECT
- DOMAIN-SUFFIX,newdefend.net.cn,DIRECT
- DOMAIN-SUFFIX,newdefend.com.cn,DIRECT
- DOMAIN-SUFFIX,newdefend.org.cn,DIRECT
- DOMAIN-SUFFIX,newdefend.com,DIRECT
- DOMAIN-SUFFIX,ffdns.net,DIRECT
- DOMAIN-SUFFIX,fwmob.com,DIRECT
- DOMAIN-SUFFIX,tlgslb.com,DIRECT
- DOMAIN-SUFFIX,fastcdn.com,DIRECT
# > 阿里云
- DOMAIN-SUFFIX,kunlunea.com,DIRECT
- DOMAIN-SUFFIX,kunlunso.com,DIRECT
- DOMAIN-SUFFIX,kunlunwe.com,DIRECT
- DOMAIN-SUFFIX,kunlunno.com,DIRECT
- DOMAIN-SUFFIX,kunlunaq.com,DIRECT
- DOMAIN-SUFFIX,kunlunpi.com,DIRECT
- DOMAIN-SUFFIX,kunlunra.com,DIRECT
- DOMAIN-SUFFIX,kunlungr.com,DIRECT
- DOMAIN-SUFFIX,kunlunhuf.com,DIRECT
- DOMAIN-SUFFIX,kunlunsl.com,DIRECT
- DOMAIN-SUFFIX,kunlunar.com,DIRECT
- DOMAIN-SUFFIX,kunlunta.com,DIRECT
- DOMAIN-SUFFIX,kunlungem.com,DIRECT
- DOMAIN-SUFFIX,kunluncan.com,DIRECT
- DOMAIN-SUFFIX,kunlunle.com,DIRECT
- DOMAIN-SUFFIX,kunlunvi.com,DIRECT
- DOMAIN-SUFFIX,kunlunli.com,DIRECT
- DOMAIN-SUFFIX,kunlunsc.com,DIRECT
- DOMAIN-SUFFIX,kunlunsa.com,DIRECT
- DOMAIN-SUFFIX,kunlunca.com,DIRECT
- DOMAIN-SUFFIX,alikunlun.net,DIRECT
- DOMAIN-SUFFIX,alikunlun.com,DIRECT
- DOMAIN-SUFFIX,alicdn.com,DIRECT
# > 腾讯 CDN
- DOMAIN-SUFFIX,qcloud.com,DIRECT
- DOMAIN-SUFFIX,myqcloud.com,DIRECT
- DOMAIN-SUFFIX,tcdn.qq.com,DIRECT
- DOMAIN-SUFFIX,cdntip.com,DIRECT
# > 百度云 CDN
- DOMAIN-SUFFIX,bdydns.net,DIRECT
- DOMAIN-SUFFIX,bcedns.net,DIRECT
- DOMAIN-SUFFIX,bcedns.com,DIRECT
- DOMAIN-SUFFIX,bcedns.cn,DIRECT
- DOMAIN-SUFFIX,bdydns.com,DIRECT
- DOMAIN-SUFFIX,baiduyundns.net,DIRECT
- DOMAIN-SUFFIX,bdydns.cn,DIRECT
- DOMAIN-SUFFIX,baiduyundns.com,DIRECT
- DOMAIN-SUFFIX,baiduyundns.cn,DIRECT
# 百度云加速
- DOMAIN-SUFFIX,yunjiasu-cdn.net,DIRECT
# > 七牛云
- DOMAIN-SUFFIX,clouddn.com,DIRECT
- DOMAIN-SUFFIX,qbox.me,DIRECT
- DOMAIN-SUFFIX,qiniudn.com,DIRECT
- DOMAIN-SUFFIX,qiniudns.com,DIRECT
- DOMAIN-SUFFIX,qiniuts.com,DIRECT
# > 又拍云
- DOMAIN-SUFFIX,aicdn.com,DIRECT
- DOMAIN-SUFFIX,upaiyun.com,DIRECT
- DOMAIN-SUFFIX,upai.com,DIRECT
# > CloudFlare
- DOMAIN-SUFFIX,cloudflare.com,DIRECT
# > IP Query
- DOMAIN-SUFFIX,ipip.net,DIRECT
- DOMAIN-SUFFIX,ipv6-test.com,DIRECT
- DOMAIN-SUFFIX,test-ipv6.com,DIRECT
# > JS libs
- DOMAIN-SUFFIX,staticfile.org,DIRECT
- DOMAIN-SUFFIX,jsdelivr.com,DIRECT
- DOMAIN-SUFFIX,jsdelivr.net,DIRECT
- DOMAIN-SUFFIX,jscdn.upai.com,DIRECT
- DOMAIN-SUFFIX,libs.baidu.com,DIRECT
- DOMAIN-SUFFIX,lib.sinaapp.com,DIRECT
# > Other
- DOMAIN-SUFFIX,xgslb.net,DIRECT
- DOMAIN-SUFFIX,dnspao.com,DIRECT
- DOMAIN-SUFFIX,360wzb.cn,DIRECT
- DOMAIN-SUFFIX,cdngc.net,DIRECT
- DOMAIN-SUFFIX,cdnetworks.net,DIRECT
- DOMAIN-SUFFIX,gccdn.net,DIRECT
- DOMAIN-SUFFIX,cdnudns.com,DIRECT
- DOMAIN-SUFFIX,qingcdn.com,DIRECT
- DOMAIN-SUFFIX,40017.cn,DIRECT
- DOMAIN-SUFFIX,cailianpress.com,DIRECT
- DOMAIN-SUFFIX,chushou.tv,DIRECT
- DOMAIN-SUFFIX,cmbchina.com,DIRECT
- DOMAIN-SUFFIX,cmbimg.com,DIRECT
- DOMAIN-SUFFIX,cmvideo.cn,DIRECT
- DOMAIN-SUFFIX,doubanio.com,DIRECT
- DOMAIN-SUFFIX,douyu.com,DIRECT
- DOMAIN-SUFFIX,douyucdn.cn,DIRECT
- DOMAIN-SUFFIX,dxycdn.com,DIRECT
- DOMAIN-SUFFIX,futunn.com,DIRECT
- DOMAIN-SUFFIX,hicloud.com,DIRECT
- DOMAIN-SUFFIX,ithome.com,DIRECT
- DOMAIN-SUFFIX,kkmh.com,DIRECT
- DOMAIN-SUFFIX,ksosoft.com,DIRECT
- DOMAIN-SUFFIX,maoyun.tv,DIRECT
- DOMAIN-SUFFIX,meituan.net,DIRECT
- DOMAIN-SUFFIX,mobike.com,DIRECT
- DOMAIN-SUFFIX,mubu.com,DIRECT
- DOMAIN-SUFFIX,myzaker.com,DIRECT
- DOMAIN-SUFFIX,paypal.com,DIRECT
- DOMAIN-SUFFIX,paypalobjects.com,DIRECT
- DOMAIN-SUFFIX,ruguoapp.com,DIRECT
- DOMAIN-SUFFIX,smzdm.com,DIRECT
- DOMAIN-SUFFIX,sogou.com,DIRECT
- DOMAIN-SUFFIX,teamviewer.com,DIRECT
- DOMAIN-SUFFIX,udacity.com,DIRECT
- DOMAIN-SUFFIX,xmcdn.com,DIRECT
- DOMAIN-SUFFIX,yangkeduo.com,DIRECT
- DOMAIN-SUFFIX,zhihu.com,DIRECT
- DOMAIN-SUFFIX,zhimg.com,DIRECT

# Local Area Network
- DOMAIN-SUFFIX,local,DIRECT
- IP-CIDR,192.168.0.0/16,DIRECT
- IP-CIDR,10.0.0.0/8,DIRECT
- IP-CIDR,172.16.0.0/12,DIRECT
- IP-CIDR,127.0.0.0/8,DIRECT
- IP-CIDR,100.64.0.0/10,DIRECT

# (Extra IP-CIRD)
# > Google
- IP-CIDR,35.190.247.0/24,Default
- IP-CIDR,64.233.160.0/19,Default
- IP-CIDR,66.102.0.0/20,Default
- IP-CIDR,66.249.80.0/20,Default
- IP-CIDR,72.14.192.0/18,Default
- IP-CIDR,74.125.0.0/16,Default
- IP-CIDR,108.177.8.0/21,Default
- IP-CIDR,172.217.0.0/16,Default
- IP-CIDR,173.194.0.0/16,Default
- IP-CIDR,209.85.128.0/17,Default
- IP-CIDR,216.58.192.0/19,Default
- IP-CIDR,216.239.32.0/19,Default
# > Facebook
- IP-CIDR,31.13.24.0/21,Default
- IP-CIDR,31.13.64.0/18,Default
- IP-CIDR,45.64.40.0/22,Default
- IP-CIDR,66.220.144.0/20,Default
- IP-CIDR,69.63.176.0/20,Default
- IP-CIDR,69.171.224.0/19,Default
- IP-CIDR,74.119.76.0/22,Default
- IP-CIDR,103.4.96.0/22,Default
- IP-CIDR,129.134.0.0/17,Default
- IP-CIDR,157.240.0.0/17,Default
- IP-CIDR,173.252.64.0/19,Default
- IP-CIDR,173.252.96.0/19,Default
- IP-CIDR,179.60.192.0/22,Default
- IP-CIDR,185.60.216.0/22,Default
- IP-CIDR,204.15.20.0/22,Default
# > Twitter
- IP-CIDR,69.195.160.0/19,Default
- IP-CIDR,104.244.42.0/21,Default
- IP-CIDR,192.133.76.0/22,Default
- IP-CIDR,199.16.156.0/22,Default
- IP-CIDR,199.59.148.0/22,Default
- IP-CIDR,199.96.56.0/21,Default
- IP-CIDR,202.160.128.0/22,Default
- IP-CIDR,209.237.192.0/19,Default

# GeoIP China
- GEOIP,CN,DIRECT

- MATCH,Final
# Rule-END
