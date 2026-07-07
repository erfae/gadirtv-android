.class public final Lcom/verimatrix/vdc/MetadataNetworkService;
.super Landroid/app/IntentService;
.source "MetadataNetworkService.java"


# static fields
.field public static final EVENT_PARAM_1:Ljava/lang/String; = "event_param_1"

.field public static final EVENT_PARAM_2:Ljava/lang/String; = "event_param_2"

.field public static final EVENT_PARAM_3:Ljava/lang/String; = "event_param_3"

.field public static final EVENT_PARAM_4:Ljava/lang/String; = "event_param_4"

.field public static final EVENT_PARAM_5:Ljava/lang/String; = "event_param_5"

.field public static final EVENT_PARAM_6:Ljava/lang/String; = "event_param_6"

.field public static final EVENT_PARAM_7:Ljava/lang/String; = "event_param_7"

.field public static final EVENT_TYPE:Ljava/lang/String; = "event_type"

.field public static final FLAG_SEND_METADATA:I = 0x6

.field public static final TAG:Ljava/lang/String; = "MetadataNetworkService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    const-class v0, Lcom/verimatrix/vdc/MetadataNetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    const-string v0, "event_type"

    const/4 v1, -0x1

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 58
    sget-object p1, Lcom/verimatrix/vdc/MetadataNetworkService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "event_param_1"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verimatrix/vdc/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    const-string v0, "event_param_2"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/verimatrix/vdc/Monitor$MediaType;

    const-string v0, "event_param_3"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    const-string v0, "event_param_4"

    const-wide/16 v2, 0x0

    .line 49
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v0, "event_param_5"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "event_param_6"

    .line 51
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v0, "event_param_7"

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 54
    invoke-virtual {p0}, Lcom/verimatrix/vdc/MetadataNetworkService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorAgent;->getCurrentConfig()Lcom/verimatrix/vdc/Configuration;

    move-result-object v5

    move-object v2, p0

    invoke-virtual/range {v2 .. v13}, Lcom/verimatrix/vdc/MetadataNetworkService;->sendMetadata(Landroid/content/Context;ILcom/verimatrix/vdc/Configuration;Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$IdentifiedType;JLjava/lang/String;J)Z

    :goto_0
    return-void
.end method

.method sendMetadata(Landroid/content/Context;ILcom/verimatrix/vdc/Configuration;Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$IdentifiedType;JLjava/lang/String;J)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/verimatrix/vdc/Configuration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "J",
            "Ljava/lang/String;",
            "J)Z"
        }
    .end annotation

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-wide/from16 v3, p10

    const-string v0, "metadata_active"

    .line 68
    invoke-virtual {v1, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_10

    .line 70
    sget-object v6, Lcom/verimatrix/vdc/MetadataNetworkService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendMetadata request (size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "metadata_server"

    .line 73
    invoke-virtual {v1, v8}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 74
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "://"

    const-string v11, "http://"

    const-string v12, "/"

    if-nez v9, :cond_2

    .line 75
    invoke-static {v8}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 76
    invoke-virtual/range {p3 .. p3}, Lcom/verimatrix/vdc/Configuration;->hasLoginProtocol()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 77
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/verimatrix/vdc/Configuration;->getLoginProtocol()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 79
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 82
    :cond_1
    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 84
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v8, "mds_server"

    .line 87
    invoke-virtual {v1, v8}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 88
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 91
    :cond_3
    invoke-static {v8}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 92
    invoke-virtual/range {p3 .. p3}, Lcom/verimatrix/vdc/Configuration;->hasLoginProtocol()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 93
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/verimatrix/vdc/Configuration;->getLoginProtocol()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 95
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 98
    :cond_5
    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 100
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v8, "put/"

    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    if-eqz v0, :cond_f

    .line 108
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 110
    :try_start_0
    invoke-static/range {p9 .. p9}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 114
    sget-object v6, Lcom/verimatrix/vdc/MetadataNetworkService;->TAG:Ljava/lang/String;

    const-string v8, "Error while encoding param \'user_id\'"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :cond_8
    :goto_3
    sget-object v0, Lcom/verimatrix/vdc/Monitor$MediaType;->ON_DEMAND:Lcom/verimatrix/vdc/Monitor$MediaType;

    const-string v6, ".xml"

    if-ne v2, v0, :cond_9

    const-string v0, "vods-"

    .line 119
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 122
    :cond_9
    sget-object v0, Lcom/verimatrix/vdc/Monitor$MediaType;->LINEAR_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-eq v2, v0, :cond_a

    sget-object v0, Lcom/verimatrix/vdc/Monitor$MediaType;->BROADCAST_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-ne v2, v0, :cond_b

    :cond_a
    const-string v0, "channels-"

    .line 124
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_b
    :goto_4
    :try_start_1
    invoke-static/range {p3 .. p6}, Lcom/verimatrix/vdc/XmlHelper;->hashtableToXmlString(Lcom/verimatrix/vdc/Configuration;Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$IdentifiedType;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 134
    sget-object v0, Lcom/verimatrix/vdc/MetadataNetworkService;->TAG:Ljava/lang/String;

    const-string v6, "Error in sendEvent method. hashtableToXmlString error"

    invoke-static {v0, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    :goto_5
    const-string v2, "delay_communication"

    .line 137
    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/Configuration;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 138
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "application/xml;charset=UTF-8"

    invoke-static {v6, v2, v0, v7}, Lcom/verimatrix/vdc/NetworkUtils;->doPostRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/NetworkUtils$Response;

    move-result-object v2

    .line 140
    iget v6, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    const/4 v7, -0x2

    const/4 v8, 0x1

    if-eq v6, v7, :cond_e

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_c

    .line 157
    sget-object v0, Lcom/verimatrix/vdc/MetadataNetworkService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad HTTP answer: statusCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 143
    :cond_c
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v2

    move v6, p2

    invoke-virtual {v2, p2}, Lcom/verimatrix/vdc/MonitorAgent;->getSentMetadataMap(I)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 145
    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    new-array v2, v8, [Ljava/lang/String;

    aput-object v0, v2, v5

    const-string v0, "SendMetadata successful"

    move-object v3, p1

    .line 148
    invoke-static {p1, v1, v0, v2}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_6

    .line 153
    :cond_e
    sget-object v0, Lcom/verimatrix/vdc/MetadataNetworkService;->TAG:Ljava/lang/String;

    const-string v1, "send metadata to server error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_f
    const-string v0, "Metadata Server not active"

    .line 161
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_6
    return v5
.end method
