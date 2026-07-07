.class public Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;
.super Ljava/lang/Object;
.source "MedialaanEPGService.java"


# static fields
.field public static current_category_id:I = 0x0

.field private static dateFormat:Ljava/text/SimpleDateFormat; = null

.field public static firstChannelWithEpg:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel; = null

.field public static initialPopulation:I = 0x0

.field public static is_adult_content:Z = true


# instance fields
.field private TAG:Ljava/lang/String;

.field private final URL:Ljava/lang/String;

.field channels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private currentChannelID:I

.field private current_end:I

.field private current_start:I

.field private epgEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

.field private epg_end_global:I

.field private filter_epg_by_channels:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "currentCategoryId"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/apiv2/channels/epgdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->URL:Ljava/lang/String;

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->filter_epg_by_channels:Z

    const-string v0, "MedialaanEPGService "

    .line 62
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->epgEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    .line 66
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->context:Landroid/content/Context;

    .line 67
    sput p2, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->current_category_id:I

    return-void
.end method

.method private getCurrentChannels(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;[II)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "listener",
            "channelNumbers",
            "currentChannelPosition"
        }
    .end annotation

    add-int/lit8 v0, p3, -0x5

    :goto_0
    add-int/lit8 v1, p3, 0x5

    if-ge v0, v1, :cond_2

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 380
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    div-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v3

    goto :goto_1

    :cond_0
    div-int/lit8 v2, v0, 0xa

    :goto_1
    const/4 v4, 0x0

    .line 385
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 386
    new-instance v10, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService$3;

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?channelnumbers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$PDLSl6ZKycUA20EikpN2ADnxe1s;

    invoke-direct {v8, p0, p1, v2, p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$PDLSl6ZKycUA20EikpN2ADnxe1s;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;II)V

    new-instance v9, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$dDqUyfG-47Zi6n1gXh85p1URdf8;

    invoke-direct {v9, p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$dDqUyfG-47Zi6n1gXh85p1URdf8;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;)V

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService$3;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 426
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->filter_epg_by_channels:Z

    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {v10, v3}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    const-string v1, "epgByChannelNumbers"

    .line 428
    invoke-virtual {v10, v1}, Lcom/android/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 429
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v2, 0x7530

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v10, v1}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 430
    invoke-static {}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->getInstance()Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method static synthetic lambda$requestByTime$1(Lcom/android/volley/VolleyError;)V
    .locals 0

    const-string p0, ""

    .line 106
    invoke-static {p0}, Lcom/framework/utilityframe/log/log;->i(Ljava/lang/String;)V

    return-void
.end method

.method private parseData(Lorg/json/JSONObject;I)Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;
    .locals 31
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "current_i"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 226
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v2, v0

    .line 231
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v4, "channels"

    move-object/from16 v5, p1

    .line 232
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    const/4 v10, 0x0

    .line 233
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ge v10, v11, :cond_c

    .line 234
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v11, "channel_number"

    .line 235
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "icon_url"

    .line 236
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 238
    new-instance v15, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    iget v14, v1, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->currentChannelID:I

    invoke-direct {v15, v13, v11, v14}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    iget v11, v1, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->currentChannelID:I

    add-int/2addr v11, v12

    iput v11, v1, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->currentChannelID:I

    if-nez v7, :cond_0

    .line 242
    sput-object v15, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->firstChannelWithEpg:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-object v7, v15

    :cond_0
    if-eqz v8, :cond_1

    .line 245
    invoke-virtual {v15, v8}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 246
    invoke-virtual {v8, v15}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setNextChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 249
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-interface {v0, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "epg_data"

    .line 251
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 252
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-nez v11, :cond_3

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/32 v16, 0x2932e00

    sub-long v18, v13, v16

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    add-long v20, v13, v16

    .line 258
    new-instance v11, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    const-string v13, "no epg"

    const/16 v22, 0x0

    const-string v23, "dummy long description"

    const/16 v24, 0x0

    move-object v14, v11

    move-object/from16 p1, v15

    move-wide/from16 v16, v18

    move-wide/from16 v18, v20

    move-object/from16 v20, v13

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move/from16 v23, v24

    invoke-direct/range {v14 .. v23}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v9, :cond_2

    .line 261
    invoke-virtual {v11, v9}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->setPreviousEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V

    .line 262
    invoke-virtual {v9, v11}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->setNextEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V

    :cond_2
    move-object/from16 v13, p1

    .line 265
    invoke-virtual {v13, v11}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->addEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    .line 266
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v9, v11

    goto :goto_1

    :cond_3
    move-object v13, v15

    :goto_1
    const/4 v11, 0x0

    .line 268
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v11, v14, :cond_b

    .line 269
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const/16 v24, 0x0

    .line 282
    sget-object v14, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v5, "program_start"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 283
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    add-long v25, v16, v2

    .line 284
    sget-object v5, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v14, "program_end"

    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 286
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long v27, v16, v2

    const-string v5, "title"

    cmp-long v14, v27, v25

    if-gez v14, :cond_4

    .line 288
    :try_start_1
    iget-object v14, v1, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->context:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v29, v2

    iget-object v2, v1, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140279

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 288
    invoke-static {v14, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_4
    move-wide/from16 v29, v2

    :goto_3
    const-wide/32 v2, 0x36ee80

    if-nez v10, :cond_7

    if-nez v11, :cond_7

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    cmp-long v12, v25, v16

    if-lez v12, :cond_7

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v2

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    add-long v18, v18, v2

    cmp-long v12, v25, v18

    if-gez v12, :cond_5

    move-wide/from16 v18, v25

    goto :goto_4

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    add-long v18, v18, v2

    .line 295
    :goto_4
    new-instance v12, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    const-string v20, "no epg"

    const/16 v21, 0x0

    const-string v22, "dummy long description"

    const/16 v23, 0x0

    move-object v14, v12

    move-object v2, v15

    move-object v15, v13

    invoke-direct/range {v14 .. v23}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v9, :cond_6

    .line 298
    invoke-virtual {v12, v9}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->setPreviousEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V

    .line 299
    invoke-virtual {v9, v12}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->setNextEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V

    .line 302
    :cond_6
    invoke-virtual {v13, v12}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->addEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    move-object v9, v12

    goto :goto_5

    :cond_7
    move-object v2, v15

    .line 304
    :goto_5
    new-instance v3, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v5, "long_description"

    .line 305
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move-object v14, v3

    move-object v15, v13

    move-wide/from16 v16, v25

    move-wide/from16 v18, v27

    move-object/from16 v21, v24

    invoke-direct/range {v14 .. v23}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v9, :cond_8

    .line 307
    invoke-virtual {v3, v9}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->setPreviousEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V

    .line 308
    invoke-virtual {v9, v3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->setNextEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V

    .line 311
    :cond_8
    invoke-virtual {v13, v3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->addEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    .line 312
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_a

    .line 314
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    if-ne v11, v2, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v2, v27, v14

    if-gez v2, :cond_a

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x36ee80

    add-long v18, v14, v16

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v16

    cmp-long v2, v27, v14

    if-gez v2, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v16

    move-wide/from16 v16, v14

    goto :goto_6

    :cond_9
    move-wide/from16 v16, v27

    .line 318
    :goto_6
    new-instance v2, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    const-string v20, "no epg"

    const/16 v21, 0x0

    const-string v22, "dummy long description"

    const/16 v23, 0x0

    move-object v14, v2

    move-object v15, v13

    invoke-direct/range {v14 .. v23}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 322
    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->setPreviousEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V

    .line 323
    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->setNextEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V

    .line 326
    invoke-virtual {v13, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->addEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    move-object v9, v2

    goto :goto_7

    :cond_a
    move-object v9, v3

    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v2, v29

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_b
    move-wide/from16 v29, v2

    add-int/lit8 v10, v10, 0x1

    move-object v6, v13

    move-object v8, v6

    goto/16 :goto_0

    .line 330
    :cond_c
    invoke-virtual {v6, v7}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setNextChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 331
    invoke-virtual {v7, v6}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 332
    new-instance v2, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;

    invoke-direct {v2, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;-><init>(Ljava/util/Map;)V

    .line 333
    sget v0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->initialPopulation:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    sput v0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->initialPopulation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    .line 338
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private parseDataInitial(II)Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initialIndex",
            "finalIndex"
        }
    .end annotation

    .line 347
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 348
    sget p2, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->current_category_id:I

    if-nez p2, :cond_0

    .line 349
    sget-boolean p2, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->is_adult_content:Z

    invoke-static {p2}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(Z)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    .line 350
    :cond_0
    sget-boolean v0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->is_adult_content:Z

    invoke-static {p2, v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(IZ)Ljava/util/ArrayList;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->channels:Ljava/util/ArrayList;

    const/4 p2, 0x0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 352
    :goto_1
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->channels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_3

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->channels:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v3, v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->channels:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    .line 356
    new-instance v4, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    invoke-direct {v4, v3, v0, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    if-nez v1, :cond_1

    move-object v1, v4

    :cond_1
    if-eqz v2, :cond_2

    .line 361
    invoke-virtual {v4, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 362
    invoke-virtual {v2, v4}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setNextChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 365
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    move-object v0, v4

    move-object v2, v0

    goto :goto_1

    .line 368
    :cond_3
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setNextChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 369
    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 370
    new-instance p2, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;

    invoke-direct {p2, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;-><init>(Ljava/util/Map;)V

    return-object p2
.end method

.method private requestByChannels(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;[II)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "listener",
            "channelNumbers",
            "currentChannelPosition"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const/4 v8, 0x0

    .line 169
    iput v8, v6, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->currentChannelID:I

    const-string v9, ""

    move-object v0, v9

    const/4 v10, 0x0

    .line 170
    :goto_0
    array-length v1, v7

    if-ge v10, v1, :cond_4

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v7, v10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    rem-int/lit8 v1, v10, 0xa

    const/4 v11, 0x1

    if-eqz v1, :cond_0

    array-length v1, v7

    sub-int/2addr v1, v11

    if-ne v10, v1, :cond_3

    .line 174
    :cond_0
    array-length v1, v7

    sub-int/2addr v1, v11

    if-ne v10, v1, :cond_1

    div-int/lit8 v1, v10, 0xa

    add-int/2addr v1, v11

    goto :goto_1

    :cond_1
    div-int/lit8 v1, v10, 0xa

    :goto_1
    move v3, v1

    .line 175
    array-length v1, v7

    mul-int/lit8 v2, v3, 0xa

    sub-int/2addr v1, v2

    const/16 v2, 0x9

    if-gt v1, v2, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 176
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v11

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v12, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService$2;

    const/4 v13, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?channelnumbers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$YRlU1ub7xi1j7pOW_3Wxdrg4xzE;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$YRlU1ub7xi1j7pOW_3Wxdrg4xzE;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;IIZ)V

    new-instance v5, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$T-jpEF0RjGr_0G6tJYql52QO9g0;

    invoke-direct {v5, v6}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$T-jpEF0RjGr_0G6tJYql52QO9g0;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;)V

    move-object v0, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService$2;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 210
    invoke-virtual {v12, v11}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    const-string v0, "epgByChannelNumbers"

    .line 211
    invoke-virtual {v12, v0}, Lcom/android/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 212
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x7530

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v11, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v12, v0}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 213
    invoke-static {}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->getInstance()Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    move-object v0, v9

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private requestByTime(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "listener",
            "epg_end"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x19

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x3c

    add-int/2addr v2, p2

    .line 142
    iput v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->current_start:I

    add-int/lit16 v2, v2, 0xf0

    .line 143
    iput v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->current_end:I

    .line 145
    new-instance v2, Lcom/android/volley/toolbox/StringRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?_start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->current_start:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&_end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->current_end:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$joyHoFkPDrWrRP1ACe7PW5SpANs;

    invoke-direct {v4, p0, p1, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$joyHoFkPDrWrRP1ACe7PW5SpANs;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;I)V

    new-instance v5, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$2IvdQFQk7HqEpCE6W_c11GhzLOM;

    invoke-direct {v5, p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$2IvdQFQk7HqEpCE6W_c11GhzLOM;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;)V

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 159
    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->filter_epg_by_channels:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 160
    invoke-virtual {v2, v3}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 161
    new-instance v4, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v5, 0x1388

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v3, v6}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v2, v4}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 162
    invoke-static {}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->getInstance()Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private requestByTime(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "listener",
            "epg_start",
            "epg_end"
        }
    .end annotation

    .line 92
    new-instance v6, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService$1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?_start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&_end="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$SIctXR79TVh2oe7E5APJco4Ui0U;

    invoke-direct {v4, p0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$SIctXR79TVh2oe7E5APJco4Ui0U;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;)V

    sget-object v5, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$FYtlPISZL8lNRw0wTkYsXhl3ARo;->INSTANCE:Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$FYtlPISZL8lNRw0wTkYsXhl3ARo;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService$1;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const/4 p1, 0x1

    .line 134
    invoke-virtual {v6, p1}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 135
    new-instance p2, Lcom/android/volley/DefaultRetryPolicy;

    const/16 p3, 0x1388

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, p1, v0}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v6, p2}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 136
    invoke-static {}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->getInstance()Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method


# virtual methods
.method public activityFinish()V
    .locals 2

    .line 374
    invoke-static {}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->getInstance()Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-string v1, "epgByChannelNumbers"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void
.end method

.method public getData(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;IIILjava/lang/String;[II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "listener",
            "dayOffset",
            "epg_start",
            "epg_end",
            "channels_string",
            "channelNumbers",
            "currentChannelPosition"
        }
    .end annotation

    .line 73
    iput p4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->epg_end_global:I

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p5

    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x5

    .line 76
    invoke-virtual {p5, v0, p2}, Ljava/util/Calendar;->add(II)V

    .line 78
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->filter_epg_by_channels:Z

    if-eqz p2, :cond_0

    .line 79
    invoke-direct {p0, p1, p6, p7}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->getCurrentChannels(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;[II)V

    .line 80
    invoke-direct {p0, p1, p6, p7}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->requestByChannels(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;[II)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->requestByTime(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;II)V

    :goto_0
    return-void
.end method

.method public getDataInitial(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "listener",
            "initialIndex",
            "finalIndex"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p2, p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->parseDataInitial(II)Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;->processData(Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;)V

    return-void
.end method

.method public synthetic lambda$getCurrentChannels$6$MedialaanEPGService(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;IILjava/lang/String;)V
    .locals 15

    move-object v1, p0

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"channels\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "channel_number"

    .line 392
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "icon_url"

    .line 393
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 394
    new-instance v5, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    iget v4, v1, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->currentChannelID:I

    invoke-direct {v5, v3, v0, v4}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v6, 0x2932e00

    sub-long v8, v3, v6

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v10, v3, v6

    .line 397
    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    const-string v3, "no epg"

    const/4 v12, 0x0

    const-string v13, "description"

    const/4 v14, 0x0

    move-object v4, v0

    move-wide v6, v8

    move-wide v8, v10

    move-object v10, v3

    move-object v11, v12

    move-object v12, v13

    move v13, v14

    invoke-direct/range {v4 .. v13}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 398
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v0, p2

    .line 399
    invoke-direct {p0, v2, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->parseData(Lorg/json/JSONObject;I)Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    move-result-object v0

    const/4 v2, 0x1

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-virtual {v3, v0, v4, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;->processData(Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$getCurrentChannels$7$MedialaanEPGService(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getCurrentChannels error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/framework/utilityframe/log/log;->w(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$requestByChannels$4$MedialaanEPGService(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;IIZLjava/lang/String;)V
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"channels\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "}"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 182
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, v0, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->parseData(Lorg/json/JSONObject;I)Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    move-result-object p2

    invoke-virtual {p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;->processData(Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$requestByChannels$5$MedialaanEPGService(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestByChannels error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/framework/utilityframe/log/log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$requestByTime$0$MedialaanEPGService(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;Ljava/lang/String;)V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"channels\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "}"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 97
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 99
    invoke-direct {p0, v0, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->parseData(Lorg/json/JSONObject;I)Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;->processData(Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$requestByTime$2$MedialaanEPGService(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;ILjava/lang/String;)V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"channels\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "}"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 150
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, v0, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->parseData(Lorg/json/JSONObject;I)Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;->processData(Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$requestByTime$3$MedialaanEPGService(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestByTime parseNetworkResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/framework/utilityframe/log/log;->i(Ljava/lang/String;)V

    return-void
.end method
