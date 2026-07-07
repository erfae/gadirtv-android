.class public Lcom/magoware/magoware/webtv/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/util/Constants$NotificationType;,
        Lcom/magoware/magoware/webtv/util/Constants$IntentActions;,
        Lcom/magoware/magoware/webtv/util/Constants$EvoMedia;,
        Lcom/magoware/magoware/webtv/util/Constants$Players;,
        Lcom/magoware/magoware/webtv/util/Constants$ActionNames;,
        Lcom/magoware/magoware/webtv/util/Constants$ActionIds;,
        Lcom/magoware/magoware/webtv/util/Constants$Notification;,
        Lcom/magoware/magoware/webtv/util/Constants$AdUnitId;,
        Lcom/magoware/magoware/webtv/util/Constants$AppId;,
        Lcom/magoware/magoware/webtv/util/Constants$ApplicationIds;,
        Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;
    }
.end annotation


# static fields
.field public static final ADULT_RESULT_REQUEST_CODE:I = 0x2

.field public static final ANALYTICS_DISPLAY_NULL:Ljava/lang/String; = "Analytics Null"

.field public static final ANALYTICS_DISPLAY_PLAYER:Ljava/lang/String; = "Analytics Player"

.field public static final ANALYTICS_DISPLAY_RENDER:Ljava/lang/String; = "Analytics Render"

.field public static final ANALYTICS_DISPLAY_SOURCE:Ljava/lang/String; = "Analytics Source"

.field public static final ANALYTICS_DISPLAY_TYPE:Ljava/lang/String; = "Analytics Type"

.field public static final ASSETS_CARD_TYPE:Ljava/lang/String; = "assets_type"

.field public static final BUY_REQUEST_CODE:I = 0x12

.field public static final DEFAULT_VALUE:Ljava/lang/String; = "-"

.field public static final DRM_VERIMATRIX:Ljava/lang/String; = "verimatrix"

.field public static final HEADER_ID_KEY:Ljava/lang/String; = "header_id"

.field public static final HEADER_PIN_KEY:Ljava/lang/String; = "header_protected"

.field public static final HEADER_TITLE_KEY:Ljava/lang/String; = "header_title"

.field public static final INTENT_KEY_VOD_ID:Ljava/lang/String; = "vod_id"

.field public static final MOVIE:Ljava/lang/String; = "movie"

.field public static final MOVIE_ID:Ljava/lang/String; = "movie_id"

.field public static final PAYMENT_URL:Ljava/lang/String; = "payment_url"

.field public static final PIN_RESULT_REQUEST_CODE:I = 0x1

.field public static final ROW_LENGTH:I = 0x14

.field public static final SHARED_PREFS_KEY:Ljava/lang/String; = "Settings"

.field public static final TV_SHOW:Ljava/lang/String; = "tvShow"

.field public static final VOD_POSITION:Ljava/lang/String; = "vod_position"

.field public static final VOD_RESPONSE_KEY:Ljava/lang/String; = "prefs_vod_key"

.field public static final VOD_TYPE:Ljava/lang/String; = "vod_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionIdsHashMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "play"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "coming_soon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "trailer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "buy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "videos"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cast"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "recommended"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "similar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "seasons"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "episodes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "thumbup"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "thumbdown"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "related"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
