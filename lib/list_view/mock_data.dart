import 'subscribe_account_card.dart';
import 'friend_card.dart';
import 'news_card.dart';

/// 公众号列表模拟数据
const List<SubscribeAccountViewModel> subscribeAccountList = [
	SubscribeAccountViewModel(
		accountImgUrl: 'http://wx.qlogo.cn/mmhead/ver_1/ZlEUgMmdukDlDjnIRjqBCSJNBtjWpocqGKGjpA9ImBkictzNPJCllxKXk3iaJ1qHZE8xQNarsH13kPDxDwLfLO3bly9tRKxweAX6ycibpoJENY/132',
		accountName: '前端外刊评论',
		publishTime: '2小时前',
		articles: [
			Article(
				title: 'React16新特性全解（上）',
				coverImgUrl: 'http://mmbiz.qpic.cn/mmbiz_jpg/I4OWBs9UyBtjvym40lSP7MFmcgiaViaSia6iceaDutwREKcxE47k6dob7JgAicxNMVY8cenZ7e4v6jSrZ5ib4e7xC75w/640?wxtype=jpeg&wxfrom=0'
			),
			Article(
				title: '最近，前端又火了哪些技术？',
				coverImgUrl: 'http://mmbiz.qpic.cn/mmbiz_jpg/jhtEbpg4m6E58ByJhbGYG6ibHg83xPucTGs0U00bbGpfCy7LAm36ZUVgS34hSmydI8ukZyGMG7W5uA7bJFAbCTw/640?wxtype=jpeg&wxfrom=0'
			),
			Article(
				title: '开发者需要什么样的技术社区？',
				coverImgUrl: 'http://mmbiz.qpic.cn/mmbiz_jpg/I4OWBs9UyBtXq8jdK8cghjFjxhbJ9eiak751b8xc0y77L7xVGj4jGhlbI69tbiae4catwyFqE3BiaJLP0ViamOURuw/640?wxtype=jpeg&wxfrom=0'
			)
		],
	),
	SubscribeAccountViewModel(
		accountImgUrl: 'http://wx.qlogo.cn/mmhead/ver_1/lAMlzCkVacwSrl7nlgP7ye93rVa1ibDyeNTT1CnIianT2f1zoTWVylIHiaG8NZEc4Cmrm4b6OibHqu1RxZRaqXGJadOXUmI3zRMU2lkDvFmIs8U/132',
		accountName: '中国日报双语新闻',
		publishTime: '16:30',
		articles: [
			Article(
				title: '微博热搜乱象让人反思，这个时代到底需要什么样的icon？',
				coverImgUrl: 'http://mmbiz.qpic.cn/mmbiz_jpg/4UmsHtZZRbRzAY2kkJh125BsAhDVHiaOqUFRQCdFSIA6UVngnT9zTjjow2GzHTOTonYmt5xNxlRLkkbUc6ZDeTg/640?wxtype=jpeg&wxfrom=0'
			),
			Article(
				title: '伊万卡韩国见EXO秒变迷妹？一旁老父亲特朗普的表情亮了',
				coverImgUrl: 'http://mmbiz.qpic.cn/mmbiz_jpg/qibibGYHXs208l2qNZ0bjPrhicpvYk7fXy5zLyuU4U8yIicuibMaVq4WscJvbgPXibYBibTgY9wySib93IxRIcsKYc4TSQ/300?wxtype=jpeg&wxfrom=0'
			),
			Article(
				title: '想不到！贫民窟成印度最热门旅游景点',
				coverImgUrl: 'http://mmbiz.qpic.cn/mmbiz_jpg/qibibGYHXs208l2qNZ0bjPrhicpvYk7fXy50p3iav9HLY7gJGiaibcicQqZoncoLcIKMydrsGa9PSCHQKSnHYicPeyRDlQ/300?wxtype=jpeg&wxfrom=0'
			),
		],
	),
	SubscribeAccountViewModel(
		accountImgUrl: 'http://wx.qlogo.cn/mmhead/ver_1/cCicCOP5a9icPAkmEW6h6onGqicAbPmhibYq1VhtK0ws2teiaQmO7CcibFibTVeJdJEUZZ2kicXH7yZuwTnBibUUqfxPMZribq31Wq9cSvp4Nwasp6T4E/132',
		accountName: 'CSDN',
		publishTime: '08:23',
		articles: [
			Article(
				title: '微信停机断网可充话费；苹果正研发可折叠iPad',
				coverImgUrl: 'http://mmbiz.qpic.cn/mmbiz_jpg/Pn4Sm0RsAuiav1plfxDmPVM17eetJNY840CQbNTPwRh5LgYJZJAy9UCrgiccrF86HsILam7k6pPyYoNKwbza9sCw/640?wxtype=jpeg&wxfrom=0',
			),
			Article(
				title: '微软欲打造开发者联盟！',
				coverImgUrl: 'http://mmbiz.qpic.cn/mmbiz_jpg/1hReHaqafacwZBZG9b2cZjzsiacGXZia2QfUFe0kR2ylz2COK7xibdicXou3f30LlBLZq43Hl1eeA5YFFIC9XrBwtw/300?wxtype=jpeg&wxfrom=0',
			),
			Article(
				title: '关于第五届全国高校新一代信息技术暑假教师培训班的通知',
				coverImgUrl: 'http://mmbiz.qpic.cn/mmbiz_jpg/Pn4Sm0RsAuia3kKhScQicSjSfZ5ibmmGEtGR8q33JjAu3kOLzPCv6Kt24uAIlmAicicB7Ct69ZGHnibAVwHsftB4Ac0w/300?wxtype=jpeg&wxfrom=0',
			),
			Article(
				title: '阿里90后科学家研发，达摩院开源新一代AI算法模型',
				coverImgUrl: 'http://mmbiz.qpic.cn/mmbiz_jpg/BnSNEaficFAaiagbjE0MibwDhGeKND27DfQuGWCaYCv3QOMcGXz5ZAw6QZooLOEV5o7Lxsm66tWOXBl10OCHF8U3A/300?wxtype=jpeg&wxfrom=0',
			)
		],
	),
	SubscribeAccountViewModel(
		accountImgUrl: 'http://wx.qlogo.cn/mmhead/ver_1/Yp0beDghkpibRaU5xI4JkWfBK9fWddSdicIqCOaWJT23cQapfsV5iaER5KMIut1Mcs7Ay5dQw5XhdU78tZ0dNFEuAsOI7sNHFGicMzTfqLh5BRw/132',
		accountName: '瑞普PPT',
		publishTime: '昨天',
		articles: [
			Article(
				title: '巡讲游记 | 在成都的街头走一走',
				coverImgUrl: 'http://mmbiz.qpic.cn/mmbiz_jpg/iaLiboDYic5KNUlXMOibs0whRqGoyGvZGsGIQ2Qibmz6ho6ibFgIhaYBpqV9ntNVmvFKfsfFJHpxTrp4UHLK3XlkkL6Q/640?wxtype=jpeg&wxfrom=0',
			),
		],
	),
];

/// 好友列表模拟数据
const List<FriendViewModel> friendList = [
	FriendViewModel(
		userName: '生活缴费',
		userImgUrl: 'http://alipay.dl.django.t.taobao.com/rest/1.0/image?fileIds=uYFc1rftQnOzQ6UIysboFQAAACMAAQQD&zoom=original',
		msgContent: '听说，这6个人的电费被承包了！',
		msgTime: '13:50',
	),
	FriendViewModel(
		userName: '芝麻信用',
		userImgUrl: 'http://dl.django.t.taobao.com/rest/1.0/image?fileIds=3bFvYZLcSNy1TiMriy5WhAAAACMAAQED&zoom=2048w_1l',
		msgContent: '本月你的芝麻分评估已完成',
		msgTime: '07:17',
	),
	FriendViewModel(
		userName: '网商银行',
		userImgUrl: 'http://alipay.dl.django.t.taobao.com/rest/1.0/image?fileIds=eQgixqanQuOWoptE3Ut_kQAAACMAAQQD&zoom=original',
		msgContent: '如何做到日流水460万',
		msgTime: '昨天',
	),
	FriendViewModel(
		userName: '支付宝转账',
		userImgUrl: 'http://alipay.dl.django.t.taobao.com/rest/1.0/image?fileIds=eniYmF55SPGp4xhBsdDUpAAAACMAAQQD&zoom=original',
		msgContent: '请查收你的转账周报',
		msgTime: '昨天',
	),
	FriendViewModel(
		userName: '蚂蚁森林',
		userImgUrl: 'https://oalipay-dl-django.alicdn.com/rest/1.0/image?fileIds=A7j1NJRVSlW9v88b3LRrkgAAACMAAQED&zoom=original',
		msgContent: '比花棒还好看的新树种来了！',
		msgTime: '星期五',
	),
	FriendViewModel(
		userName: '蚂蚁庄园',
		userImgUrl: 'https://mdn.alipay.com/wsdk/img?fileid=A*7pQiRakjTPoAAAAAAAAAAABjAfYuAQ&bz=life_app&zoom=2048w_80q_1l',
		msgContent: '你有一封未读来信',
		msgTime: '星期四',
	),
	FriendViewModel(
		userName: '支付宝车主服务',
		userImgUrl: 'https://oalipay-dl-django.alicdn.com/rest/1.0/image?fileIds=AOFWswJjTumOAH5ttFi2gwAAACMAAQED&zoom=2048w_1l',
		msgContent: '@所有车主，7月1日起可免费办理ETC啦！',
		msgTime: '星期三',
	),
	FriendViewModel(
		userName: '城市服务',
		userImgUrl: 'https://oalipay-dl-django.alicdn.com/rest/1.0/image?fileIds=I-C2YMNfSESeqVw3CaQazQAAACMAAQED&zoom=2048w_80q_1l',
		msgContent: '有了它，垃圾再也不怕分错类啦！',
		msgTime: '星期二',
	),
	FriendViewModel(
		userName: '交通出行',
		userImgUrl: 'https://mdn.alipay.com/wsdk/img?fileid=A*6R5cQbchQKMAAAAAAAAAAABjAfYuAQ&bz=life_app&zoom=2048w_80q_1l',
		msgContent: '领取你的每周出行签 | 送防晒伞',
		msgTime: '07-01',
	),
	FriendViewModel(
		userName: '花呗',
		userImgUrl: 'https://oalipay-dl-django.alicdn.com/rest/1.0/image?fileIds=8JCRgxPlQvumNy9RDgtziQAAACMAAQED&zoom=2048w_80q_1l',
		msgContent: '帮你还花呗，离欧洲杯更近一点',
		msgTime: '06-29',
	),
];

const List<NewsViewModel> newsList = [
	NewsViewModel(
		title: '中方将派军舰赴马六甲海峡护航本国船只？外交部：那是谣言',
		source: '环球网',
		comments: 71,
		coverImgUrl: 'https://p3.pstatp.com/list/190x124/pgc-image/RGSD09itseweQ',
	),
	NewsViewModel(
		title: '211高校被误认野鸡大学发怒，名气还没“野鸡”大',
		source: '中国新闻周刊',
		comments: 980,
		coverImgUrl: 'https://p1.pstatp.com/list/190x124/pgc-image/7026a3edfe2b47f59eea94f2b8cd86a4',
	),
	NewsViewModel(
		title: '广西矿王黎东明去世：瞒报81死矿难，把记者逼到悬崖边，遭售货员白眼后买下整柜台皮鞋',
		source: '大河看法',
		comments: 2759,
		coverImgUrl: 'https://p1.pstatp.com/list/190x124/pgc-image/c14366a3b7ab4a3384e3485697d103fe',
	),
	NewsViewModel(
		title: '六旬父亲“为儿追凶”16年：“赔多少钱都不要，就要他偿命”',
		source: '中国新闻周刊',
		comments: 20645,
		coverImgUrl: 'https://p3.pstatp.com/list/190x124/pgc-image/c55f17d3a3ac4efe8eaedafdab111079',
	),
	NewsViewModel(
		title: '五问玛莎拉蒂追尾案：肇事女孩有何背景？或面临死刑？',
		source: '环球网',
		comments: 2121,
		coverImgUrl: 'https://p1.pstatp.com/list/190x124/pgc-image/RVi866A4f9cVK2',
	),
	NewsViewModel(
		title: '李若彤：当年为爱作出任性选择，如今看来都是最好的安排',
		source: '新京报',
		comments: 243,
		coverImgUrl: 'https://p3.pstatp.com/list/190x124/pgc-image/RVLwKBq5IQMvCW',
	),
	NewsViewModel(
		title: '好惨一首都！“史诗级”暴雨把华盛顿淹成了……这个样子',
		source: '环球网',
		comments: 750,
		coverImgUrl: 'https://p1.pstatp.com/list/190x124/pgc-image/RVic5NyDDeVAi0'
	),
	NewsViewModel(
		title: '原子弹爆炸半衰期动不动几万年，为何广岛和长崎现在就能居住了？',
		source: '怪罗科普',
		comments: 325,
		coverImgUrl: 'https://p1.pstatp.com/list/190x124/pgc-image/317a92302937426c999ea9a5b52121b1'
	),
	NewsViewModel(
		title: '马超和关羽到底谁强？古书记载颠覆历史，学者：根本不是一个级别',
		source: '田君良',
		comments: 856,
		coverImgUrl: 'https://p3.pstatp.com/list/190x124/pgc-image/470fb21c5c884b119116179813b82d2b'
	),
];