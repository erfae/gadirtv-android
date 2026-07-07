.class public final Lcom/verimatrix/vdc/ProfileNetworkService;
.super Landroid/app/IntentService;
.source "ProfileNetworkService.java"


# static fields
.field static final EVENT_MESSENGER:Ljava/lang/String; = "com.verimatrix.vdc.EXTRA_MESSENGER"

.field static final EVENT_PARAM_1:Ljava/lang/String; = "event_param_1"

.field static final EVENT_PARAM_10:Ljava/lang/String; = "event_param_10"

.field static final EVENT_PARAM_11:Ljava/lang/String; = "event_param_11"

.field static final EVENT_PARAM_12:Ljava/lang/String; = "event_param_12"

.field static final EVENT_PARAM_13:Ljava/lang/String; = "event_param_13"

.field static final EVENT_PARAM_2:Ljava/lang/String; = "event_param_2"

.field static final EVENT_PARAM_3:Ljava/lang/String; = "event_param_3"

.field static final EVENT_PARAM_4:Ljava/lang/String; = "event_param_4"

.field static final EVENT_PARAM_5:Ljava/lang/String; = "event_param_5"

.field static final EVENT_PARAM_6:Ljava/lang/String; = "event_param_6"

.field static final EVENT_PARAM_7:Ljava/lang/String; = "event_param_7"

.field static final EVENT_PARAM_8:Ljava/lang/String; = "event_param_8"

.field static final EVENT_PARAM_9:Ljava/lang/String; = "event_param_9"

.field static final EVENT_PARAM_SERVER_IP:Ljava/lang/String; = "event_param_server_ip"

.field static final EVENT_PARAM_SERVER_URL:Ljava/lang/String; = "event_param_server_url"

.field static final EVENT_TYPE:Ljava/lang/String; = "event_type"

.field static final FLAG_BIND_DEVICE:I = 0xc

.field static final FLAG_INIT_CONFIG:I = 0x3

.field static final FLAG_LOAD_IP_ADDRESS:I = 0xa

.field static final FLAG_LOGIN:I = 0x0

.field static final FLAG_LOGOUT:I = 0x1

.field static final FLAG_MULTIPLE_PROFILE_SET:I = 0x9

.field static final FLAG_PROFILE_GET:I = 0x8

.field static final FLAG_PROFILE_SET:I = 0x7

.field static final FLAG_SEND_CONTENT:I = 0xb

.field public static final TAG:Ljava/lang/String; = "ProfileNetworkService"


# instance fields
.field private communicationTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    const-class v0, Lcom/verimatrix/vdc/ProfileNetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static sendCallbackMessage(Landroid/os/Messenger;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1023
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1024
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1026
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1028
    sget-object p1, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v0, "Exception sending callback message from network service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1031
    :cond_0
    sget-object p0, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string p1, "Messenger is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method bindDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 2

    .line 1037
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "authToken"

    .line 1041
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "guid"

    .line 1042
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "Content-Type"

    const-string p3, "application/json"

    .line 1043
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1044
    iget p2, p0, Lcom/verimatrix/vdc/ProfileNetworkService;->communicationTimeout:I

    invoke-static {p1, v0, p2}, Lcom/verimatrix/vdc/NetworkUtils;->doPostInHeaderRequest(Ljava/lang/String;Lorg/json/JSONObject;I)Lcom/verimatrix/vdc/NetworkUtils$Response;

    move-result-object p1

    .line 1046
    sget-object p2, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response code of HTTP bind device request"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget p2, p1, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    const/4 v0, 0x0

    .line 1051
    iget p2, p1, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    const/16 p3, 0xc8

    if-eq p2, p3, :cond_0

    .line 1060
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p3, "statusCode"

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP ERROR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    .line 1055
    :cond_0
    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/verimatrix/vdc/NetworkUtils$Response;->responseString:Ljava/lang/String;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1067
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, v0

    .line 1070
    :goto_1
    invoke-static {p4, p2}, Lcom/verimatrix/vdc/ProfileNetworkService;->sendCallbackMessage(Landroid/os/Messenger;Ljava/lang/Object;)V

    return-void
.end method

.method config(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;ZLandroid/os/Messenger;)V
    .locals 11

    move-object v9, p3

    .line 943
    new-instance v10, Lcom/verimatrix/vdc/HoldOffStrategy;

    invoke-virtual {p0}, Lcom/verimatrix/vdc/ProfileNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "holdoff"

    .line 946
    invoke-virtual {p3, v0}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v0, "holdoff_limit"

    .line 947
    invoke-virtual {p3, v0}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v0, "attempts_max_login"

    .line 948
    invoke-virtual {p3, v0}, Lcom/verimatrix/vdc/Configuration;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v3, "config"

    move-object v0, v10

    move-object v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/verimatrix/vdc/HoldOffStrategy;-><init>(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;JJI)V

    .line 949
    new-instance v7, Lcom/verimatrix/vdc/ProfileNetworkService$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/verimatrix/vdc/ProfileNetworkService$2;-><init>(Lcom/verimatrix/vdc/ProfileNetworkService;Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Z)V

    invoke-virtual {v10, v7}, Lcom/verimatrix/vdc/HoldOffStrategy;->performAction(Lcom/verimatrix/vdc/HoldOffStrategy$RetryAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v1, p6

    .line 965
    invoke-static {v1, v0}, Lcom/verimatrix/vdc/ProfileNetworkService;->sendCallbackMessage(Landroid/os/Messenger;Ljava/lang/Object;)V

    return-void
.end method

.method configRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Z)I
    .locals 6

    .line 970
    sget-object v0, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v1, "GetConfig request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 978
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "monitor_server"

    if-nez p2, :cond_1

    .line 979
    invoke-virtual {p4, p3}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Error MIRIMON_SERVER is deprecated : Use MIRIMON_URL - setting to default"

    .line 980
    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 982
    :cond_1
    invoke-virtual {p4, p3}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 984
    :goto_0
    invoke-static {p2}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 985
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 987
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    .line 988
    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 989
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p3, "mirimon"

    .line 991
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    new-array p5, p3, [Ljava/lang/String;

    .line 994
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p5, v3

    const-string v2, "Config url"

    invoke-static {p1, p4, v2, p5}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 996
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iget v1, p0, Lcom/verimatrix/vdc/ProfileNetworkService;->communicationTimeout:I

    const-string v2, "application/x-www-form-urlencoded"

    invoke-static {p5, v1, v2}, Lcom/verimatrix/vdc/NetworkUtils;->doGetRequest(Ljava/lang/String;ILjava/lang/String;)Lcom/verimatrix/vdc/NetworkUtils$Response;

    move-result-object p5

    .line 997
    iget v1, p5, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    .line 998
    iget v2, p5, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    const/4 v4, -0x2

    const/16 v5, 0xc8

    if-eq v2, v4, :cond_6

    if-eq v2, v5, :cond_4

    .line 1015
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad HTTP answer: statusCode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p5, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-array p3, p3, [Ljava/lang/String;

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p5, Lcom/verimatrix/vdc/NetworkUtils$Response;->responseString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    const-string v0, "responseString"

    invoke-static {p1, p4, v0, p3}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1003
    iget-object p1, p5, Lcom/verimatrix/vdc/NetworkUtils$Response;->responseString:Ljava/lang/String;

    invoke-virtual {p4, p1, p6, p2}, Lcom/verimatrix/vdc/Configuration;->parseConfig(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 v1, 0xc8

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    :cond_6
    :goto_1
    return v1
.end method

.method loadIpAddressFromDomain(Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 2

    .line 937
    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorUtils;->getIpAddress(Ljava/lang/String;)J

    move-result-wide v0

    .line 938
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/verimatrix/vdc/ProfileNetworkService;->sendCallbackMessage(Landroid/os/Messenger;Ljava/lang/Object;)V

    return-void
.end method

.method login(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLandroid/os/Messenger;)V
    .locals 20

    move-object/from16 v9, p3

    if-eqz p17, :cond_0

    const-string v0, "attempts_max_login"

    .line 176
    invoke-virtual {v9, v0}, Lcom/verimatrix/vdc/Configuration;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v8, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const/4 v8, -0x1

    .line 177
    :goto_0
    new-instance v15, Lcom/verimatrix/vdc/HoldOffStrategy;

    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/ProfileNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "holdoff"

    .line 180
    invoke-virtual {v9, v0}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v0, "holdoff_limit"

    .line 181
    invoke-virtual {v9, v0}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v3, "login"

    move-object v0, v15

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/verimatrix/vdc/HoldOffStrategy;-><init>(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;JJI)V

    .line 183
    new-instance v14, Lcom/verimatrix/vdc/ProfileNetworkService$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v18, v14

    move-object/from16 v14, p13

    move-object/from16 v19, v15

    move-object/from16 v15, p14

    move-wide/from16 v16, p15

    invoke-direct/range {v0 .. v17}, Lcom/verimatrix/vdc/ProfileNetworkService$1;-><init>(Lcom/verimatrix/vdc/ProfileNetworkService;Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v1, v18

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/HoldOffStrategy;->performAction(Lcom/verimatrix/vdc/HoldOffStrategy$RetryAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verimatrix/vdc/XmlParser$LoginResponse;

    move-object/from16 v1, p18

    .line 200
    invoke-static {v1, v0}, Lcom/verimatrix/vdc/ProfileNetworkService;->sendCallbackMessage(Landroid/os/Messenger;Ljava/lang/Object;)V

    return-void
.end method

.method loginRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/verimatrix/vdc/XmlParser$LoginResponse;
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const-string v3, "retrieval failed"

    const-string v4, "pk "

    const-string v5, "pk"

    const-string v6, "s"

    const-string v7, "r"

    const-string v8, "Error while encoding param \'serial\', exception was: "

    const-string v9, "UnsupportedEncodingException"

    const-string v10, "GenericException"

    .line 207
    sget-object v0, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v11, "Login request"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;

    invoke-direct {v11}, Lcom/verimatrix/vdc/XmlParser$LoginResponse;-><init>()V

    .line 210
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, "monitor_server"

    if-nez v13, :cond_0

    move-object/from16 v0, p2

    goto :goto_0

    .line 215
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "Error MIRIMON_SERVER is deprecated : Use MIRIMON_URL - setting to default"

    .line 216
    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v2, v14}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {v2, v14}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_0
    invoke-static {v0}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 222
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "http://"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_2
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    .line 226
    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 227
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "mirimon/cgi-bin/me.pl"

    .line 229
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?a="

    .line 232
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "login"

    .line 233
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&type="

    .line 236
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "multiscreen"

    .line 237
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v13, ""

    if-nez v0, :cond_5

    const-string v15, "Error while encoding param \'sid\'"

    const-string v0, "&sid="

    if-eqz p11, :cond_4

    .line 242
    invoke-virtual/range {p4 .. p4}, Lcom/verimatrix/vdc/Configuration;->getSubscriberIdEncoded()Ljava/lang/String;

    move-result-object v16

    .line 243
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 p16, v6

    .line 245
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 246
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 249
    sget-object v6, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    invoke-static {v6, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    move-object/from16 p16, v6

    .line 253
    invoke-virtual {v2, v13}, Lcom/verimatrix/vdc/Configuration;->setSubscriberIdEncoded(Ljava/lang/String;)V

    .line 255
    :try_start_1
    invoke-static/range {p5 .. p5}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 256
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 259
    sget-object v6, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    invoke-static {v6, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_5
    move-object/from16 p16, v6

    .line 266
    :goto_1
    :try_start_2
    new-instance v0, Lcom/verimatrix/vdc/StoreFile;

    sget-object v15, Lcom/verimatrix/vdc/MonitorAgent;->storeFilePath:Ljava/lang/String;

    invoke-direct {v0, v15}, Lcom/verimatrix/vdc/StoreFile;-><init>(Ljava/lang/String;)V

    .line 267
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    invoke-virtual {v0, v15}, Lcom/verimatrix/vdc/StoreFile;->readPrivacyKey(Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v0

    .line 270
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/verimatrix/vdc/AESCryptoUtils;->getKey()Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 p17, v7

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v16, v9

    const/4 v9, 0x2

    :try_start_4
    invoke-static {v7, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v6, p16

    goto :goto_2

    :cond_6
    move-object/from16 v6, p17

    .line 271
    :goto_2
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v6, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v6, v0, :cond_7

    .line 274
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 277
    :cond_7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v6, 0x2

    invoke-static {v0, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    const/4 v6, 0x0

    .line 278
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 280
    new-instance v7, Lcom/verimatrix/vdc/AESCryptoUtils;

    invoke-static {}, Lcom/verimatrix/vdc/AESCryptoUtils;->getIV()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lcom/verimatrix/vdc/AESCryptoUtils;-><init>([B[B)V

    .line 281
    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 284
    invoke-static/range {p1 .. p1}, Lcom/verimatrix/vdc/MonitorUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/verimatrix/vdc/AESCryptoUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "&serial="

    .line 285
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 p17, v7

    :goto_3
    move-object/from16 v16, v9

    .line 290
    :goto_4
    instance-of v6, v0, Ljava/io/UnsupportedEncodingException;

    if-eqz v6, :cond_8

    move-object/from16 v6, v16

    goto :goto_5

    :cond_8
    move-object v6, v10

    .line 296
    :goto_5
    sget-object v7, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    :goto_6
    :try_start_5
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getAgentVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "&agent_version="

    .line 301
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    .line 304
    sget-object v6, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v7, "Error while encoding param \'agent_version\'"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    const-string v0, "&softwarevsn="

    .line 308
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->versionToLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 313
    :try_start_6
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "&manufacturer="

    .line 314
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    .line 317
    sget-object v6, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v7, "Error while encoding param \'manufacturer\'"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    :goto_8
    :try_start_7
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "&model="

    .line 323
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    .line 326
    sget-object v6, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v7, "Error while encoding param \'model\'"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    :goto_9
    invoke-static/range {p15 .. p15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v6, "Error while encoding param \'ME\'"

    if-eqz v0, :cond_9

    .line 333
    :try_start_8
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorAgent;->getIUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_b

    :catch_8
    move-exception v0

    .line 335
    sget-object v7, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 340
    :cond_9
    :try_start_9
    invoke-static/range {p15 .. p15}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_b

    :catch_9
    move-exception v0

    move-object v7, v0

    .line 342
    sget-object v0, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    invoke-static {v0, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    move-object/from16 v0, p15

    :goto_b
    const-string v6, "&ME="

    .line 345
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_a
    const-string v0, "mac_address_active"

    .line 351
    invoke-virtual {v2, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 352
    invoke-static/range {p1 .. p1}, Lcom/verimatrix/vdc/MonitorUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_a
    const-string v0, "00:00:00:00:00:00"

    .line 356
    :goto_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Mac address : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v6, Lcom/verimatrix/vdc/StoreFile;

    sget-object v7, Lcom/verimatrix/vdc/MonitorAgent;->storeFilePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/verimatrix/vdc/StoreFile;-><init>(Ljava/lang/String;)V

    .line 358
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    invoke-virtual {v6, v7}, Lcom/verimatrix/vdc/StoreFile;->readPrivacyKey(Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v6

    .line 361
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/verimatrix/vdc/AESCryptoUtils;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    move-object/from16 v17, v10

    const/4 v10, 0x2

    :try_start_b
    invoke-static {v15, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    move-object/from16 v9, p16

    goto :goto_d

    :cond_b
    move-object/from16 v9, p17

    .line 362
    :goto_d
    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v5, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v5, v6, :cond_c

    .line 365
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 368
    :cond_c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    const/4 v4, 0x0

    .line 369
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 370
    invoke-static {}, Lcom/verimatrix/vdc/AESCryptoUtils;->getIV()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 372
    new-instance v6, Lcom/verimatrix/vdc/AESCryptoUtils;

    invoke-direct {v6, v3, v5}, Lcom/verimatrix/vdc/AESCryptoUtils;-><init>([B[B)V

    .line 373
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 376
    invoke-virtual {v6, v0}, Lcom/verimatrix/vdc/AESCryptoUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&MAC="

    .line 379
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    goto :goto_e

    :catch_b
    move-exception v0

    move-object/from16 v17, v10

    .line 383
    :goto_e
    instance-of v3, v0, Ljava/io/UnsupportedEncodingException;

    if-eqz v3, :cond_d

    move-object/from16 v9, v16

    goto :goto_f

    :cond_d
    move-object/from16 v9, v17

    .line 389
    :goto_f
    sget-object v3, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    :goto_10
    :try_start_c
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&os_version="

    .line 395
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_11

    :catch_c
    move-exception v0

    .line 398
    sget-object v3, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v4, "Error while encoding param \'os_version\'"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    :goto_11
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 404
    :try_start_d
    invoke-static/range {p6 .. p6}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&player_type="

    .line 405
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_12

    :catch_d
    move-exception v0

    .line 409
    sget-object v3, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v4, "Error while encoding param \'player_type\'"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    :cond_e
    :goto_12
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 415
    :try_start_e
    invoke-static/range {p7 .. p7}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&player_version="

    .line 416
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_13

    :catch_e
    move-exception v0

    .line 419
    sget-object v3, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v4, "Error while encoding param \'player_version\'"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    :cond_f
    :goto_13
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 425
    :try_start_f
    invoke-static/range {p8 .. p8}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&app_version="

    .line 426
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_14

    :catch_f
    move-exception v0

    .line 429
    sget-object v3, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v4, "Error while encoding param \'app_version\'"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    :cond_10
    :goto_14
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v3, "Error while encoding param \'user_id\'"

    const-string v0, "&user_id="

    if-eqz p10, :cond_11

    .line 435
    invoke-virtual/range {p4 .. p4}, Lcom/verimatrix/vdc/Configuration;->getUserIdEncoded()Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 438
    :try_start_10
    invoke-static {v4}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_15

    :catch_10
    move-exception v0

    .line 442
    sget-object v4, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 446
    :cond_11
    invoke-virtual {v2, v13}, Lcom/verimatrix/vdc/Configuration;->setUserIdEncoded(Ljava/lang/String;)V

    .line 448
    :try_start_11
    invoke-static/range {p9 .. p9}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    .line 452
    sget-object v4, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    :cond_12
    :goto_15
    invoke-static/range {p12 .. p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 459
    :try_start_12
    invoke-static/range {p12 .. p12}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&app_id="

    .line 460
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    .line 463
    sget-object v3, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v4, "Error while encoding param \'app_id\'"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    :cond_13
    :goto_16
    invoke-static/range {p13 .. p13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 469
    :try_start_13
    invoke-static/range {p13 .. p13}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&user_type="

    .line 470
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_17

    :catch_13
    move-exception v0

    .line 473
    sget-object v3, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v4, "Error while encoding param \'user_type\'"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    :cond_14
    :goto_17
    invoke-static/range {p14 .. p14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 479
    :try_start_14
    invoke-static/range {p14 .. p14}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&gdpr_consent="

    .line 480
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    .line 483
    sget-object v3, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v4, "Error while encoding param \'gdpr_consent\'"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    :goto_18
    :try_start_15
    const-string v0, "Android"

    .line 488
    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&os="

    .line 489
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    .line 491
    sget-object v3, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v4, "Error while encoding param OS Android"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logging in to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "monitor_server_ip"

    invoke-virtual {v2, v3}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v0, v4}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 496
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p0

    iget v5, v4, Lcom/verimatrix/vdc/ProfileNetworkService;->communicationTimeout:I

    const-string v7, "application/x-www-form-urlencoded"

    invoke-static {v0, v5, v7}, Lcom/verimatrix/vdc/NetworkUtils;->doGetRequest(Ljava/lang/String;ILjava/lang/String;)Lcom/verimatrix/vdc/NetworkUtils$Response;

    move-result-object v0

    .line 497
    iget v5, v0, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    iput v5, v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->httpCode:I

    .line 498
    iget v5, v0, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    const/16 v7, 0xc8

    if-eq v5, v7, :cond_16

    .line 523
    iput-boolean v6, v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->success:Z

    goto/16 :goto_1a

    .line 502
    :cond_16
    iget-object v0, v0, Lcom/verimatrix/vdc/NetworkUtils$Response;->responseString:Ljava/lang/String;

    invoke-static {v0}, Lcom/verimatrix/vdc/XmlParser;->parseLoginResponse(Ljava/lang/String;)Lcom/verimatrix/vdc/XmlParser$LoginResponse;

    move-result-object v11

    .line 503
    iget-object v0, v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->result:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean v0, v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->success:Z

    if-eqz v0, :cond_17

    .line 505
    iput v7, v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->httpCode:I

    .line 506
    iget-object v0, v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/verimatrix/vdc/Configuration;->setMeId(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    .line 507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "meid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    const-string v3, "Log in successful"

    invoke-static {v1, v2, v3, v0}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 508
    sget-object v0, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login done: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->success:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", , meId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", conf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->config:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_17
    const/4 v0, -0x2

    .line 514
    iput v0, v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->httpCode:I

    const/4 v1, 0x0

    .line 515
    iput-boolean v1, v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->success:Z

    .line 516
    sget-object v0, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login error, server answer result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return-object v11
.end method

.method logout(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Landroid/os/Messenger;)V
    .locals 2

    .line 530
    sget-object p2, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v0, "Logout request"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "monitor_server"

    .line 537
    invoke-virtual {p3, p1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 539
    :goto_0
    invoke-static {p1}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 542
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    .line 543
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 544
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p1, "mirimon/cgi-bin/me.pl"

    .line 546
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?a="

    .line 549
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "logout"

    .line 550
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :try_start_0
    invoke-virtual {p3}, Lcom/verimatrix/vdc/Configuration;->getMeId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&m="

    .line 555
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 558
    sget-object v0, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v1, "Error while encoding param \'serverId\'"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/verimatrix/vdc/ProfileNetworkService;->communicationTimeout:I

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {p1, p2, v0}, Lcom/verimatrix/vdc/NetworkUtils;->doGetRequest(Ljava/lang/String;ILjava/lang/String;)Lcom/verimatrix/vdc/NetworkUtils$Response;

    move-result-object p1

    .line 562
    iget p2, p1, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    const/4 v0, -0x2

    const-string v1, ""

    if-eq p2, v0, :cond_5

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_3

    .line 583
    sget-object p2, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad HTTP answer: statusCode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 566
    :cond_3
    iget-object p1, p1, Lcom/verimatrix/vdc/NetworkUtils$Response;->responseString:Ljava/lang/String;

    invoke-static {p1}, Lcom/verimatrix/vdc/XmlParser;->parseLogoutResponse(Ljava/lang/String;)Lcom/verimatrix/vdc/XmlParser$LogoutResponse;

    move-result-object p1

    .line 568
    iget-object p2, p1, Lcom/verimatrix/vdc/XmlParser$LogoutResponse;->result:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-boolean p2, p1, Lcom/verimatrix/vdc/XmlParser$LogoutResponse;->success:Z

    if-eqz p2, :cond_4

    .line 570
    sget-object p1, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string p2, "logout success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p3, v1}, Lcom/verimatrix/vdc/Configuration;->setUserId(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p3, v1}, Lcom/verimatrix/vdc/Configuration;->setSubscriberId(Ljava/lang/String;)V

    goto :goto_2

    .line 575
    :cond_4
    sget-object p2, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "logout error, server answer result="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/verimatrix/vdc/XmlParser$LogoutResponse;->result:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_5
    :goto_2
    invoke-static {p4, v1}, Lcom/verimatrix/vdc/ProfileNetworkService;->sendCallbackMessage(Landroid/os/Messenger;Ljava/lang/Object;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    .line 83
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/verimatrix/vdc/MonitorAgent;->getCurrentConfig()Lcom/verimatrix/vdc/Configuration;

    move-result-object v3

    const-string v1, "delay_communication"

    .line 85
    invoke-virtual {v3, v1}, Lcom/verimatrix/vdc/Configuration;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v10, Lcom/verimatrix/vdc/ProfileNetworkService;->communicationTimeout:I

    const-string v1, "event_type"

    const/4 v2, -0x1

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v9, "event_param_7"

    const-string v11, "event_param_6"

    const-string v8, "event_param_5"

    const-string v7, "event_param_4"

    const-string v2, "event_param_server_ip"

    const-string v4, "event_param_server_url"

    const/4 v15, 0x0

    const-string v12, "com.verimatrix.vdc.EXTRA_MESSENGER"

    const-string v6, "event_param_3"

    const-string v5, "event_param_2"

    const-string v13, "event_param_1"

    if-eqz v1, :cond_2

    const/4 v14, 0x1

    if-eq v1, v14, :cond_1

    const/4 v14, 0x3

    if-eq v1, v14, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 160
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 161
    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v10, v0, v3, v4, v2}, Lcom/verimatrix/vdc/ProfileNetworkService;->bindDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    .line 166
    :goto_0
    sget-object v0, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported event type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 154
    :pswitch_1
    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-wide/16 v1, 0x0

    .line 155
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 156
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/ProfileNetworkService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v4

    move-wide v4, v7

    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/ProfileNetworkService;->sendContent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJLjava/lang/String;)V

    goto/16 :goto_1

    .line 149
    :pswitch_2
    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 151
    invoke-virtual {v10, v1, v0}, Lcom/verimatrix/vdc/ProfileNetworkService;->loadIpAddressFromDomain(Ljava/lang/String;Landroid/os/Messenger;)V

    goto/16 :goto_1

    .line 128
    :pswitch_3
    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 132
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/ProfileNetworkService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/ProfileNetworkService;->profileSet(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 136
    :pswitch_4
    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Messenger;

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/ProfileNetworkService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/ProfileNetworkService;->profileGet(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    goto/16 :goto_1

    .line 118
    :pswitch_5
    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 124
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/ProfileNetworkService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v11

    invoke-virtual/range {v0 .. v9}, Lcom/verimatrix/vdc/ProfileNetworkService;->profileSet(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 110
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    .line 113
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Messenger;

    move-object/from16 v0, p0

    .line 115
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/ProfileNetworkService;->config(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;ZLandroid/os/Messenger;)V

    goto/16 :goto_1

    .line 143
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 146
    invoke-virtual {v10, v1, v2, v3, v0}, Lcom/verimatrix/vdc/ProfileNetworkService;->logout(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Landroid/os/Messenger;)V

    goto/16 :goto_1

    :cond_2
    const-wide/16 v16, 0x0

    .line 89
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 96
    invoke-virtual {v0, v11, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 97
    invoke-virtual {v0, v9, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const-string v9, "event_param_8"

    .line 98
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v9, "event_param_9"

    .line 99
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v13, v12

    move-object v12, v9

    const-string v9, "event_param_10"

    .line 100
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v9, v16

    const-string v15, "event_param_11"

    .line 101
    invoke-virtual {v0, v15, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v18, v13

    const/4 v13, 0x0

    move-wide v15, v9

    const-string v9, "event_param_12"

    .line 102
    invoke-virtual {v0, v9, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    const-string v9, "event_param_13"

    .line 103
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v9, v18

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Messenger;

    .line 106
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object/from16 v0, p0

    .line 105
    invoke-virtual/range {v0 .. v18}, Lcom/verimatrix/vdc/ProfileNetworkService;->login(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLandroid/os/Messenger;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method profileGet(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 6

    .line 831
    sget-object v0, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v1, "Profile get request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "set_get_active"

    .line 832
    invoke-virtual {p2, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_get_server"

    .line 837
    invoke-virtual {p2, v1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 838
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "mds_server"

    .line 839
    invoke-virtual {p2, v2}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 841
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 842
    invoke-static {v2}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 843
    invoke-virtual {p2}, Lcom/verimatrix/vdc/Configuration;->hasLoginProtocol()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 844
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/verimatrix/vdc/Configuration;->getLoginProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 846
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 849
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "get/"

    .line 851
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v2, "/get/"

    .line 853
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 859
    :try_start_0
    invoke-static {p4}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 860
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p4

    .line 863
    sget-object v2, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v5, "Error while encoding param \'user_id\'"

    invoke-static {v2, v5, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    :cond_4
    :goto_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 870
    :try_start_1
    invoke-static {p5}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 871
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p4

    .line 874
    sget-object p5, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v2, "Error while encoding param \'app_id\'"

    invoke-static {p5, v2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    :cond_5
    :goto_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_6

    .line 881
    :try_start_2
    invoke-static {p3}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 882
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p3

    .line 884
    sget-object p4, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string p5, "Error while encoding param \'setType\'"

    invoke-static {p4, p5, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 888
    :cond_6
    :goto_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Get profile request to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const/4 v1, 0x0

    aput-object p5, p4, v1

    invoke-static {p1, p2, p3, p4}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 890
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget p4, p0, Lcom/verimatrix/vdc/ProfileNetworkService;->communicationTimeout:I

    const-string p5, "application/json"

    invoke-static {p3, p4, p5}, Lcom/verimatrix/vdc/NetworkUtils;->doGetRequest(Ljava/lang/String;ILjava/lang/String;)Lcom/verimatrix/vdc/NetworkUtils$Response;

    move-result-object p3

    .line 891
    new-instance p4, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;

    invoke-direct {p4}, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;-><init>()V

    .line 892
    iget p5, p3, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    const/4 v0, -0x2

    if-eq p5, v0, :cond_a

    const/16 v0, 0xc8

    if-eq p5, v0, :cond_7

    .line 927
    sget-object p1, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Bad HTTP answer: statusCode="

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iput-boolean v1, p4, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->success:Z

    .line 929
    invoke-static {p6, p4}, Lcom/verimatrix/vdc/ProfileNetworkService;->sendCallbackMessage(Landroid/os/Messenger;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 895
    :cond_7
    sget-object p5, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpGet response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/verimatrix/vdc/NetworkUtils$Response;->responseString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :try_start_3
    new-instance p5, Lorg/json/JSONObject;

    iget-object v0, p3, Lcom/verimatrix/vdc/NetworkUtils$Response;->responseString:Ljava/lang/String;

    invoke-direct {p5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "appId"

    .line 900
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->setAppId(Ljava/lang/String;)V

    const-string v0, "key"

    .line 901
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->setKey(Ljava/lang/String;)V

    const-string v0, "value"

    .line 902
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->setValue(Ljava/lang/Object;)V

    const-string v0, "type"

    .line 903
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->setType(Ljava/lang/String;)V

    const-string v0, "lastModified"

    .line 904
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->setLastModified(J)V

    .line 906
    invoke-virtual {p4}, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->getValue()Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_8

    const/4 p5, 0x1

    goto :goto_5

    :cond_8
    const/4 p5, 0x0

    :goto_5
    iput-boolean p5, p4, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->success:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception p5

    .line 908
    sget-object v0, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v2, "Error parse Get profile response json"

    invoke-static {v0, v2, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 909
    iput-boolean v1, p4, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->success:Z

    .line 912
    :goto_6
    iget-boolean p5, p4, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->success:Z

    if-eqz p5, :cond_9

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    .line 914
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "key="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->getKey()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p3, v1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "value="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v4

    const-string p4, "Profile get successful"

    invoke-static {p1, p2, p4, p3}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_7

    .line 917
    :cond_9
    sget-object p1, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Profile get error, server answer result="

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/verimatrix/vdc/NetworkUtils$Response;->responseString:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-static {p6, p4}, Lcom/verimatrix/vdc/ProfileNetworkService;->sendCallbackMessage(Landroid/os/Messenger;Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    const/4 p1, 0x0

    .line 923
    invoke-static {p6, p1}, Lcom/verimatrix/vdc/ProfileNetworkService;->sendCallbackMessage(Landroid/os/Messenger;Ljava/lang/Object;)V

    :cond_b
    :goto_7
    return-void
.end method

.method profileSet(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 752
    sget-object v0, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v1, "Profile set request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "set_get_active"

    .line 754
    invoke-virtual {p2, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_get_server"

    .line 759
    invoke-virtual {p2, v1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 760
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "mds_server"

    .line 761
    invoke-virtual {p2, v2}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 764
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 765
    invoke-static {v2}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 766
    invoke-virtual {p2}, Lcom/verimatrix/vdc/Configuration;->hasLoginProtocol()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/verimatrix/vdc/Configuration;->getLoginProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 769
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 772
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "set/"

    .line 774
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v2, "/set/"

    .line 776
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    :goto_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 782
    :try_start_0
    invoke-static {p6}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 783
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p6

    .line 786
    sget-object v2, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v3, "Error while encoding param \'user_id\'"

    invoke-static {v2, v3, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 791
    :cond_4
    :goto_2
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_5

    .line 793
    :try_start_1
    invoke-static {p7}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 794
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p6

    .line 796
    sget-object p7, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v2, "Error while encoding param \'app_id\'"

    invoke-static {p7, v2, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    const-string p6, "?set_type="

    .line 801
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "&privacy_type="

    .line 805
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Set profile request to "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/String;

    const/4 p6, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    aput-object p7, p5, p6

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "JSON: "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    aput-object p6, p5, v4

    invoke-static {p1, p2, p4, p5}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 810
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget p5, p0, Lcom/verimatrix/vdc/ProfileNetworkService;->communicationTimeout:I

    const-string p6, "application/json"

    invoke-static {p4, p5, p3, p6}, Lcom/verimatrix/vdc/NetworkUtils;->doPostRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/NetworkUtils$Response;

    move-result-object p3

    .line 812
    iget p4, p3, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    const/4 p5, -0x2

    if-eq p4, p5, :cond_7

    const/16 p5, 0xc8

    if-eq p4, p5, :cond_6

    .line 822
    sget-object p1, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad HTTP answer: statusCode="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const/4 p3, 0x0

    const-string p4, "Set profile successful"

    .line 815
    invoke-static {p1, p2, p4, p3}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method profileSet(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 591
    sget-object v0, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v1, "Profile set request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_get_server"

    .line 595
    invoke-virtual {p2, v1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 596
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "mds_server"

    .line 597
    invoke-virtual {p2, v2}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 599
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 600
    invoke-static {v2}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 601
    invoke-virtual {p2}, Lcom/verimatrix/vdc/Configuration;->hasLoginProtocol()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/verimatrix/vdc/Configuration;->getLoginProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 604
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 607
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "set/"

    .line 609
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v2, "/set/"

    .line 611
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :goto_1
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 617
    :try_start_0
    invoke-static {p8}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    .line 618
    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p8

    .line 621
    sget-object v2, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v3, "Error while encoding param \'user_id\'"

    invoke-static {v2, v3, p8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    :cond_4
    :goto_2
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p8

    if-nez p8, :cond_5

    .line 628
    :try_start_1
    invoke-static {p9}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    .line 629
    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p8

    .line 631
    sget-object p9, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v2, "Error while encoding param \'app_id\'"

    invoke-static {p9, v2, p8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    const-string p8, "?set_type="

    .line 636
    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "&privacy_type="

    .line 640
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string p7, "key"

    .line 645
    invoke-virtual {p5, p7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "value"

    .line 646
    invoke-virtual {p5, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "type"

    .line 647
    invoke-virtual {p5, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p3

    .line 649
    sget-object p4, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string p6, "Error in profileSet method"

    invoke-static {p4, p6, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    :goto_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Set profile request to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/String;

    const/4 p6, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    aput-object p7, p4, p6

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "JSON: "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    aput-object p6, p4, v4

    invoke-static {p1, p2, p3, p4}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 654
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget p4, p0, Lcom/verimatrix/vdc/ProfileNetworkService;->communicationTimeout:I

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "application/json"

    invoke-static {p3, p4, p5, p6}, Lcom/verimatrix/vdc/NetworkUtils;->doPostRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/NetworkUtils$Response;

    move-result-object p3

    .line 656
    iget p4, p3, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    const/4 p5, -0x2

    if-eq p4, p5, :cond_7

    const/16 p5, 0xc8

    if-eq p4, p5, :cond_6

    .line 666
    sget-object p1, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad HTTP answer: statusCode="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    const/4 p3, 0x0

    const-string p4, "Set profile successful"

    .line 659
    invoke-static {p1, p2, p4, p3}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_7
    :goto_5
    return-void
.end method

.method sendContent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJLjava/lang/String;)V
    .locals 6

    .line 673
    sget-object v0, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v1, "Send content request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "monitor_server"

    .line 677
    invoke-virtual {p2, v2}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "monitor_server_ip"

    .line 678
    invoke-virtual {p2, v3}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 680
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 686
    :goto_0
    invoke-static {v2}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    .line 690
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 691
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, "mirimon/cgi-bin/devicestring.cgi"

    .line 693
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    .line 694
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {p2}, Lcom/verimatrix/vdc/Configuration;->getMeId()Ljava/lang/String;

    move-result-object v2

    .line 705
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "&"

    if-nez v3, :cond_3

    .line 707
    :try_start_0
    invoke-static {v2}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "me="

    .line 708
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 712
    sget-object v3, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string v5, "Error while encoding param \'meId\'"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    const-string v2, "type="

    .line 718
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p3, "fnv="

    .line 724
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 731
    :try_start_1
    invoke-static {p6}, Lcom/verimatrix/vdc/MonitorUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "content="

    .line 732
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p3

    .line 736
    sget-object p4, Lcom/verimatrix/vdc/ProfileNetworkService;->TAG:Ljava/lang/String;

    const-string p5, "Error while encoding param \'content\'"

    invoke-static {p4, p5, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    const/16 p5, 0x3f

    if-eq p3, p5, :cond_6

    .line 741
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    sub-int/2addr p3, p4

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    const/16 p5, 0x26

    if-ne p3, p5, :cond_7

    .line 742
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    sub-int/2addr p3, p4

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_7
    new-array p3, p4, [Ljava/lang/String;

    const/4 p4, 0x0

    .line 746
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p3, p4

    .line 745
    invoke-static {p1, p2, v1, p3}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 747
    invoke-static {}, Lcom/verimatrix/vdc/DeviceStringQueue;->getInstance()Lcom/verimatrix/vdc/DeviceStringQueue;

    move-result-object p3

    iget p4, p0, Lcom/verimatrix/vdc/ProfileNetworkService;->communicationTimeout:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/verimatrix/vdc/DeviceStringQueue;->add_request(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;ILjava/lang/String;)V

    return-void
.end method
