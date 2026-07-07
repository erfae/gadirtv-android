.class public Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$MagowareApi;
.super Ljava/lang/Object;
.source "RetrofitHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MagowareApi"
.end annotation


# static fields
.field public static final ACCOUNT_CHANGE_PASSWORD:Ljava/lang/String; = "apiv2/customer_app/change_password"

.field public static final ACCOUNT_EDIT_CHANNEL:Ljava/lang/String; = "apiv2/customer_app/edit_channel"

.field public static final ACCOUNT_GET_CHANNEL_LIST:Ljava/lang/String; = "customer_app/genre"

.field public static final ACCOUNT_GET_PURCHASES:Ljava/lang/String; = "apiv2/customer_app/salereport"

.field public static final ACCOUNT_GET_SETTINGS:Ljava/lang/String; = "apiv2/customer_app/settings"

.field public static final ACCOUNT_GET_SUBSCRIPTION:Ljava/lang/String; = "apiv2/customer_app/subscription"

.field public static final ACCOUNT_GET_USER_DATA:Ljava/lang/String; = "apiv2/customer_app/user_data"

.field public static final ACCOUNT_KIT_CALLBACK:Ljava/lang/String; = "/apiv2/account-kit/callback/"

.field public static final ACCOUNT_RESET_PIN:Ljava/lang/String; = "apiv2/customer_app/reset_pin"

.field public static final ACCOUNT_SET_SETTINGS:Ljava/lang/String; = "apiv2/customer_app/update_user_settings"

.field public static final ACCOUNT_SET_USER_DATA:Ljava/lang/String; = "apiv2/customer_app/update_user_data"

.field public static final ADD_CHANNEL:Ljava/lang/String; = "/apiv2/customer_app/add_channel"

.field public static final AUTH_GET_SMS:Ljava/lang/String; = "/apiv2/sites_web/yesnet/send_message"

.field public static final AUTH_SMS_VERIFICATION:Ljava/lang/String; = "apiv2/sites_web/yesnet/confirmNewAccountToken"

.field public static final CATCHUP_STREAM_DATA:Ljava/lang/String; = "apiv2/channels/catchup_stream"

.field public static final CHANGE_USER_PASSWORD:Ljava/lang/String; = "apiv2/customer_app/change_password"

.field public static final CHANNEL_CATEGORIES:Ljava/lang/String; = "/apiv2/channels/genre"

.field public static final CHANNEL_INFO:Ljava/lang/String; = "apiv2/channels/event"

.field public static final CHANNEL_OSD:Ljava/lang/String; = "apiv2/channels/osd"

.field public static final COMMAND_RESPONSE:Ljava/lang/String; = "/apiv2/command/response"

.field public static final CUSTOMER_CHANNEL_CATEGORIES:Ljava/lang/String; = "/apiv2/customer_app/genre"

.field public static final CUSTOMER_CHANNEL_LIST:Ljava/lang/String; = "/apiv2/customer_app/channel_list"

.field public static final DASHBOARD_GET_SETTINGS:Ljava/lang/String; = "apiv2/settings/settings"

.field public static final DASHBOARD_MENU_LIST:Ljava/lang/String; = "apiv2/main/device_menu"

.field public static final DB_TEST:Ljava/lang/String; = "/apiv2/network/dbtest"

.field public static final DELETE_CHANNEL:Ljava/lang/String; = "/apiv2/customer_app/delete_channel"

.field public static final DEVICE_MENU:Ljava/lang/String; = "/apiv2/main/device_menu"

.field public static final EVENTS_EVENT:Ljava/lang/String; = "/apiv2/events/event"

.field public static final EVENTS_SCREEN:Ljava/lang/String; = "/apiv2/events/screen"

.field public static final EVENTS_TIMING:Ljava/lang/String; = "/apiv2/events/timing"

.field public static final FAVORITE_CHANNEL:Ljava/lang/String; = "/apiv2/channels/favorites"

.field public static final FORGOT_PASSWORD:Ljava/lang/String; = "/apiv2/password/forgot"

.field public static final GET_ASSETS_LIST:Ljava/lang/String; = "apiv3/assets/assets_list"

.field public static final GET_ASSETS_MENU:Ljava/lang/String; = "apiv3/assets/assets_menu"

.field public static final GET_ASSET_DETAIL:Ljava/lang/String; = "apiv3/assets/asset_details/{asset_id}"

.field public static final GET_BOOKING_INFO:Ljava/lang/String; = "apiv3/hospitality/customerbooking/{companyid}/{roomnumber}"

.field public static final GET_CHANNELS_EPG:Ljava/lang/String; = "apiv2/channels/epgdata"

.field public static final GET_CHANNEL_LIST:Ljava/lang/String; = "/apiv2/channels/list"

.field public static final GET_CUSTOMER_INFO:Ljava/lang/String; = "apiv3/hospitality/hotelinfo"

.field public static final GET_CUSTOMER_ORDERS:Ljava/lang/String; = "apiv3/hospitality/customerorders/{companyid}/{roomnumber}"

.field public static final GET_HOTEL_DASHBOARD:Ljava/lang/String; = "apiv3/homepage/{companyid}"

.field public static final GET_HOTEL_INFO:Ljava/lang/String; = "apiv3/hospitality/hotelinfo/{companyid}"

.field public static final GET_PALLYCON_TOKEN:Ljava/lang/String; = "apiv2/pallycon/TokenIssue"

.field public static final GET_PAYMENT_COMBO_LIST:Ljava/lang/String; = "/apiv2/combos/list"

.field public static final GET_PAYMENT_WEBVIEW:Ljava/lang/String; = "/apiv2/payments/paypal"

.field public static final GET_TIMEZONE:Ljava/lang/String; = "apiv2/geoip/mytimezone"

.field public static final GET_WEATHER_DATA:Ljava/lang/String; = "apiv3/weather/{ip}"

.field public static final IS_USER_AUTHORIZED:Ljava/lang/String; = "apiv2/credentials/login"

.field public static final LOGIN:Ljava/lang/String; = "apiv2/credentials/login"

.field public static final LOGIN_ACCOUNT_KIT:Ljava/lang/String; = "apiv2/credentials/login_account_kit"

.field public static final LOGIN_COMPANY_LIST:Ljava/lang/String; = "apiv2/credentials/company_list"

.field public static final LOGIN_HOTEL:Ljava/lang/String; = "apiv2/credentials/login_device_mac"

.field public static final LOGOUT:Ljava/lang/String; = "/apiv2/credentials/logout"

.field public static final LOGOUT_OTHER_USERS:Ljava/lang/String; = "apiv2/credentials/logout_user"

.field public static final LOGOUT_USER:Ljava/lang/String; = "apiv2/credentials/logout"

.field public static final MAIN_HTML_CONTENT:Ljava/lang/String; = "/api/htmlContentApp/1"

.field public static final POST_GUEST_CHECKOUT:Ljava/lang/String; = "apiv3/hospitality/customercheckout/{companyid}/{roomnumber}"

.field public static final PROGRAM_INFO:Ljava/lang/String; = "/apiv2/channels/program_info"

.field public static final QR_CODE_API:Ljava/lang/String; = "/apiv2/qrcode"

.field public static final RELATED_MOVIES:Ljava/lang/String; = "apiv3/vod/vod_related/{vod_id}"

.field public static final RELATED_TV_SHOWS:Ljava/lang/String; = "apiv3/tv_show/related_shows/{tv_show_id}"

.field public static final SCHEDULE_PROGRAM:Ljava/lang/String; = "/apiv2/channels/schedule"

.field public static final SEND_FIREBASE_TOKEN:Ljava/lang/String; = "apiv2/network/gcm"

.field public static final SETTINGS:Ljava/lang/String; = "/apiv2/settings/settings"

.field public static final SET_VMX_ID:Ljava/lang/String; = "apiv2/token/vmx/{id}"

.field public static final SET_VOUCHER:Ljava/lang/String; = "/apiv2/voucher/activate"

.field public static final SIGN_UP:Ljava/lang/String; = "/apiv2/sites_web/registration"

.field public static final SIGN_UP_YESNET:Ljava/lang/String; = "/apiv2/sites_web/yesnet/registration"

.field public static final THUMB_REACTION:Ljava/lang/String; = "apiv3/vod/reaction/{vod_id}/{reaction}"

.field public static final TMDB_API:Ljava/lang/String; = "https://api.themoviedb.org/3"

.field public static final TMDB_API2:Ljava/lang/String; = "apiv3/vod/cast/{tmdbId}"

.field public static final TMDB_API_KEY:Ljava/lang/String; = "e76289b7e0306b6e6b6088148b804f01"

.field public static final TMDB_IMAGE_API:Ljava/lang/String; = "https://image.tmdb.org/t/p/original"

.field public static final TOTAL_HITS:Ljava/lang/String; = "/apiv2/vod/totalhits"

.field public static final TV_PROGRAMS:Ljava/lang/String; = "/apiv3/epg_data/epg_data_list"

.field static final TV_SHOW_FAVORITE:Ljava/lang/String; = "/apiv3/tv_show/favorite/{tv_show_id}/{favorite}"

.field public static final UPGRADE:Ljava/lang/String; = "/apiv2/settings/upgrade"

.field public static final VOD_CATEGORIES:Ljava/lang/String; = "/apiv2/vod/categories"

.field public static final VOD_DETAILS:Ljava/lang/String; = "apiv3/vod/vod_details/{vod_id}"

.field static final VOD_FAVORITE:Ljava/lang/String; = "/apiv3/vod/favorite/{vod_id}/{favorite}"

.field public static final VOD_LIST:Ljava/lang/String; = "apiv3/vod/vod_list"

.field public static final VOD_MENU:Ljava/lang/String; = "apiv3/vod/vod_menu"

.field public static final VOD_RANDOM_MOVIE:Ljava/lang/String; = "/apiv3/vod/get_random_movie"

.field public static final VOD_RECOMMENDATIONS:Ljava/lang/String; = "apiv3/vod/vod_details/{vod_id}/recommendations"

.field public static final VOD_RESUME:Ljava/lang/String; = "apiv2/vod/resume_movie"

.field public static final VOD_SIMILAR:Ljava/lang/String; = "apiv3/vod/vod_details/{vod_id}/similar"

.field public static final VOD_SUBTITLES:Ljava/lang/String; = "/apiv2/vod/subtitles"

.field public static final VOD_TV_SHOWS:Ljava/lang/String; = "apiv3/tv_show/tv_show_list"

.field public static final VOD_TV_SHOW_DETAILS:Ljava/lang/String; = "apiv3/tv_show/tv_show_details/{tv_show_id}"

.field public static final VOD_TV_SHOW_EPISODES:Ljava/lang/String; = "apiv3/tv_show/episode_list/{tv_show_id}/{season_number}"

.field public static final VOD_TV_SHOW_EPISODE_DETAIL:Ljava/lang/String; = "apiv3/tv_show/episode_details/{episode_id}"

.field public static final WELCOME_MSG:Ljava/lang/String; = "apiv2/welcomeMessage"


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$MagowareApi;->this$0:Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
