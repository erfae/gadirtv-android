.class Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;
.super Ljava/lang/Object;
.source "VOOSMPMediaTailorTrackingAdaptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->init()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    iput-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->val$urlString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "errorMessage"

    const-string v3, "SDK event: "

    const-string v4, "sessionLoaded"

    const-string v5, "eventType"

    const-string v6, "MediaTailor"

    const-string v7, "eventSource"

    const-string v8, "\'"

    const-string v9, "Session response does not contain \'"

    const-string v10, "trackingURL"

    const-string v11, ""

    const-string v12, "contentURL"

    const-string v13, "@@@VOOSMPMediaTailorTrackingAdaptor"

    .line 107
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    const/4 v14, 0x0

    invoke-static {v0, v14}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$002(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "manifestUrl"

    const-string v15, "trackingUrl"

    .line 108
    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v15

    .line 109
    filled-new-array {v14, v14}, [Ljava/lang/String;

    move-result-object v16

    .line 113
    :try_start_0
    new-instance v0, Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_26
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_25
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_23
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_22
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v14, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->val$urlString:Ljava/lang/String;

    invoke-direct {v0, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    check-cast v14, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_21
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_20
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_22
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object/from16 v18, v3

    const/16 v3, 0x2710

    .line 115
    :try_start_2
    invoke-virtual {v14, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v3, "POST"

    .line 116
    invoke-virtual {v14, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "User-Agent"
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_19
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v19, v2

    :try_start_3
    const-string v2, "Mozilla/5.0"

    .line 117
    invoke-virtual {v14, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Language"

    const-string v3, "en-US,en;q=0.5"

    .line 118
    invoke-virtual {v14, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip,deflate"

    .line 119
    invoke-virtual {v14, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_14
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v20, v11

    :try_start_4
    const-string v11, "POST response code: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v21, v10

    const/4 v11, 0x0

    :try_start_5
    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v13, v3, v10}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_4

    :try_start_6
    const-string v2, "gzip"

    .line 137
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 140
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 141
    :goto_0
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 143
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 145
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "POST response: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v13, v3, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v2, 0x0

    :goto_2
    const/4 v10, 0x2

    if-ge v2, v10, :cond_3

    .line 151
    :try_start_7
    aget-object v10, v15, v2

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v16, v2

    .line 152
    aget-object v10, v16, v2
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v10, :cond_2

    goto/16 :goto_3

    .line 155
    :cond_2
    :try_start_8
    new-instance v10, Ljava/net/URL;

    aget-object v11, v16, v2

    invoke-direct {v10, v0, v11}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v16, v2
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto/16 :goto_30

    :catch_0
    move-object/from16 v2, v18

    move-object/from16 v11, v19

    move-object/from16 v10, v21

    move-object/from16 v18, v14

    move-object v14, v3

    move-object/from16 v3, v20

    goto/16 :goto_14

    :catch_1
    move-object v2, v3

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto/16 :goto_1a

    :catch_2
    move-object v2, v3

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto/16 :goto_1f

    :catch_3
    move-object v2, v3

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto/16 :goto_24

    :catch_4
    move-object v2, v3

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto/16 :goto_2a

    :catch_5
    :cond_3
    :goto_3
    move-object/from16 v17, v3

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto/16 :goto_e

    :catch_6
    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto/16 :goto_10

    :catch_7
    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto/16 :goto_11

    :catch_8
    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto/16 :goto_12

    :catch_9
    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto/16 :goto_13

    :cond_4
    const/16 v17, 0x0

    :goto_4
    if-eqz v14, :cond_5

    .line 188
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    const/4 v0, 0x0

    :goto_5
    const/4 v2, 0x2

    if-ge v0, v2, :cond_8

    .line 193
    aget-object v2, v16, v0

    if-nez v2, :cond_7

    .line 194
    iget-object v2, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v2}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 195
    iget-object v2, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v15, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$002(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x1

    :goto_6
    if-nez v17, :cond_9

    .line 201
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    :cond_9
    move-object/from16 v2, v17

    const/4 v3, 0x0

    :goto_7
    const/4 v8, 0x2

    if-ge v3, v8, :cond_a

    .line 204
    aget-object v8, v15, v3

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 206
    :cond_a
    iget-object v3, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v3, v2, v7, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v3, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v3, v2, v5, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-ne v0, v3, :cond_b

    .line 209
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    const/4 v4, 0x0

    aget-object v5, v16, v4

    invoke-static {v0, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$102(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v5, v16, v3

    invoke-static {v0, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$202(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v5, v16, v4

    invoke-virtual {v0, v2, v12, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v3, v16, v3

    move-object/from16 v10, v21

    invoke-virtual {v0, v2, v10, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    move-object/from16 v10, v21

    .line 215
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    move-object/from16 v3, v20

    invoke-virtual {v0, v2, v12, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0, v2, v10, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_8
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 219
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v11, v19

    invoke-virtual {v0, v2, v11, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v13, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_29

    :catchall_2
    move-exception v0

    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto :goto_9

    :catch_a
    move-object/from16 v2, v18

    move-object/from16 v11, v19

    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto/16 :goto_f

    :catch_b
    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto :goto_a

    :catch_c
    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto :goto_b

    :catch_d
    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto :goto_c

    :catch_e
    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object/from16 v3, v20

    goto :goto_9

    :catch_f
    move-object/from16 v2, v18

    move-object/from16 v11, v19

    move-object/from16 v3, v20

    goto/16 :goto_f

    :catch_10
    move-object/from16 v3, v20

    goto :goto_a

    :catch_11
    move-object/from16 v3, v20

    goto :goto_b

    :catch_12
    move-object/from16 v3, v20

    goto :goto_c

    :catch_13
    move-object/from16 v3, v20

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v3, v11

    :goto_9
    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    goto :goto_e

    :catch_14
    move-object v3, v11

    move-object/from16 v2, v18

    move-object/from16 v11, v19

    goto :goto_f

    :catch_15
    move-object v3, v11

    :goto_a
    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    goto :goto_10

    :catch_16
    move-object v3, v11

    :goto_b
    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    goto :goto_11

    :catch_17
    move-object v3, v11

    :goto_c
    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    goto :goto_12

    :catch_18
    move-object v3, v11

    :goto_d
    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object v3, v11

    move-object v11, v2

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    :goto_e
    const/4 v2, 0x0

    goto/16 :goto_30

    :catch_19
    move-object v3, v11

    move-object v11, v2

    move-object/from16 v2, v18

    :goto_f
    move-object/from16 v18, v14

    const/4 v14, 0x0

    goto/16 :goto_14

    :catch_1a
    move-object v3, v11

    move-object v11, v2

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    :goto_10
    const/4 v2, 0x0

    goto/16 :goto_1a

    :catch_1b
    move-object v3, v11

    move-object v11, v2

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    :goto_11
    const/4 v2, 0x0

    goto/16 :goto_1f

    :catch_1c
    move-object v3, v11

    move-object v11, v2

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    :goto_12
    const/4 v2, 0x0

    goto/16 :goto_24

    :catch_1d
    move-object v3, v11

    move-object v11, v2

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    :goto_13
    const/4 v2, 0x0

    goto/16 :goto_2a

    :catch_1e
    move-object/from16 v22, v11

    move-object v11, v2

    move-object v2, v3

    move-object/from16 v3, v22

    move-object v14, v2

    const/4 v2, 0x0

    const/16 v17, 0x0

    goto/16 :goto_1a

    :catch_1f
    move-object/from16 v22, v11

    move-object v11, v2

    move-object v2, v3

    move-object/from16 v3, v22

    move-object v14, v2

    const/4 v2, 0x0

    const/16 v17, 0x0

    goto/16 :goto_1f

    :catch_20
    move-object/from16 v22, v11

    move-object v11, v2

    move-object v2, v3

    move-object/from16 v3, v22

    move-object v14, v2

    const/4 v2, 0x0

    const/16 v17, 0x0

    goto/16 :goto_24

    :catch_21
    move-object/from16 v22, v11

    move-object v11, v2

    move-object v2, v3

    move-object/from16 v3, v22

    move-object v14, v2

    const/4 v2, 0x0

    const/16 v17, 0x0

    goto/16 :goto_2a

    :catchall_6
    move-exception v0

    move-object/from16 v22, v11

    move-object v11, v2

    move-object v2, v3

    move-object/from16 v3, v22

    move-object v14, v2

    const/4 v2, 0x0

    const/16 v17, 0x0

    goto/16 :goto_30

    :catch_22
    move-object/from16 v22, v11

    move-object v11, v2

    move-object v2, v3

    move-object/from16 v3, v22

    const/4 v14, 0x0

    const/16 v18, 0x0

    :goto_14
    :try_start_9
    const-string v0, "JSON exception"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    move-object/from16 v19, v2

    move-object/from16 v20, v11

    const/4 v2, 0x0

    :try_start_a
    new-array v11, v2, [Ljava/lang/Object;

    .line 181
    invoke-static {v13, v0, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    const-string v2, "Session response is not in JSON format"

    invoke-static {v0, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$002(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    :goto_15
    const/4 v2, 0x2

    if-ge v0, v2, :cond_d

    const/4 v2, 0x0

    .line 184
    aput-object v2, v16, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_d
    if-eqz v18, :cond_e

    .line 188
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    const/4 v0, 0x0

    :goto_16
    const/4 v2, 0x2

    if-ge v0, v2, :cond_11

    .line 193
    aget-object v2, v16, v0

    if-nez v2, :cond_10

    .line 194
    iget-object v2, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v2}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    .line 195
    iget-object v2, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v15, v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$002(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    :cond_f
    const/4 v0, 0x0

    goto :goto_17

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_11
    const/4 v0, 0x1

    :goto_17
    if-nez v14, :cond_12

    .line 201
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    :cond_12
    const/4 v2, 0x0

    :goto_18
    const/4 v8, 0x2

    if-ge v2, v8, :cond_13

    .line 204
    aget-object v8, v15, v2

    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 206
    :cond_13
    iget-object v2, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v2, v14, v7, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v2, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v2, v14, v5, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    .line 209
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    const/4 v3, 0x0

    aget-object v4, v16, v3

    invoke-static {v0, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$102(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v4, v16, v2

    invoke-static {v0, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$202(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v4, v16, v3

    invoke-virtual {v0, v14, v12, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v2, v16, v2

    invoke-virtual {v0, v14, v10, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 215
    :cond_14
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0, v14, v12, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0, v14, v10, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_19
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 219
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v11, v20

    invoke-virtual {v0, v14, v11, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v13, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->getNativeContext()J

    move-result-wide v2

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$300(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;JLjava/lang/String;)V

    goto/16 :goto_2f

    :catchall_7
    move-exception v0

    move-object v2, v14

    move-object/from16 v17, v18

    move-object/from16 v14, v19

    move-object/from16 v11, v20

    goto/16 :goto_30

    :catchall_8
    move-exception v0

    move-object/from16 v17, v18

    move-object/from16 v22, v14

    move-object v14, v2

    move-object/from16 v2, v22

    goto/16 :goto_30

    :catch_23
    move-object v14, v3

    move-object v3, v11

    move-object v11, v2

    const/4 v2, 0x0

    move-object/from16 v17, v2

    :goto_1a
    :try_start_b
    const-string v0, "IO exception"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    move-object/from16 v19, v11

    move-object/from16 v18, v14

    const/4 v14, 0x0

    :try_start_c
    new-array v11, v14, [Ljava/lang/Object;

    .line 177
    invoke-static {v13, v0, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    const-string v11, "IO error"

    invoke-static {v0, v11}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$002(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    if-eqz v17, :cond_16

    .line 188
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_16
    const/4 v0, 0x0

    :goto_1b
    const/4 v11, 0x2

    if-ge v0, v11, :cond_19

    .line 193
    aget-object v11, v16, v0

    if-nez v11, :cond_18

    .line 194
    iget-object v11, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v11}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_17

    .line 195
    iget-object v11, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v15, v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$002(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    :cond_17
    const/4 v0, 0x0

    goto :goto_1c

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_19
    const/4 v0, 0x1

    :goto_1c
    if-nez v2, :cond_1a

    .line 201
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_1a
    const/4 v8, 0x0

    :goto_1d
    const/4 v9, 0x2

    if-ge v8, v9, :cond_1b

    .line 204
    aget-object v9, v15, v8

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 206
    :cond_1b
    iget-object v8, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v8, v2, v7, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v6, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v6, v2, v5, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1c

    .line 209
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    const/4 v3, 0x0

    aget-object v5, v16, v3

    invoke-static {v0, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$102(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v5, v16, v4

    invoke-static {v0, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$202(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v5, v16, v3

    invoke-virtual {v0, v2, v12, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v3, v16, v4

    invoke-virtual {v0, v2, v10, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 215
    :cond_1c
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0, v2, v12, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0, v2, v10, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_1e
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 219
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v11, v19

    invoke-virtual {v0, v2, v11, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v13, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_29

    :catch_24
    move-object v14, v3

    move-object v3, v11

    move-object v11, v2

    const/4 v2, 0x0

    move-object/from16 v17, v2

    :goto_1f
    :try_start_d
    const-string v0, "Connection timed out after 10s"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    move-object/from16 v19, v11

    move-object/from16 v18, v14

    const/4 v14, 0x0

    :try_start_e
    new-array v11, v14, [Ljava/lang/Object;

    .line 173
    invoke-static {v13, v0, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    const-string v11, "Connection timeout"

    invoke-static {v0, v11}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$002(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-eqz v17, :cond_1e

    .line 188
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1e
    const/4 v0, 0x0

    :goto_20
    const/4 v11, 0x2

    if-ge v0, v11, :cond_21

    .line 193
    aget-object v11, v16, v0

    if-nez v11, :cond_20

    .line 194
    iget-object v11, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v11}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1f

    .line 195
    iget-object v11, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v15, v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$002(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    :cond_1f
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_21
    const/4 v0, 0x1

    :goto_21
    if-nez v2, :cond_22

    .line 201
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_22
    const/4 v8, 0x0

    :goto_22
    const/4 v9, 0x2

    if-ge v8, v9, :cond_23

    .line 204
    aget-object v9, v15, v8

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 206
    :cond_23
    iget-object v8, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v8, v2, v7, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v6, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v6, v2, v5, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v0, v4, :cond_24

    .line 209
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    const/4 v3, 0x0

    aget-object v5, v16, v3

    invoke-static {v0, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$102(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v5, v16, v4

    invoke-static {v0, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$202(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v5, v16, v3

    invoke-virtual {v0, v2, v12, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v3, v16, v4

    invoke-virtual {v0, v2, v10, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 215
    :cond_24
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0, v2, v12, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0, v2, v10, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_23
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 219
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v11, v19

    invoke-virtual {v0, v2, v11, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v13, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_29

    :catch_25
    move-object v14, v3

    move-object v3, v11

    move-object v11, v2

    const/4 v2, 0x0

    move-object/from16 v17, v2

    :goto_24
    :try_start_f
    const-string v0, "POST request is not supported"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    move-object/from16 v19, v11

    move-object/from16 v18, v14

    const/4 v14, 0x0

    :try_start_10
    new-array v11, v14, [Ljava/lang/Object;

    .line 169
    invoke-static {v13, v0, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    const-string v11, "Session request error"

    invoke-static {v0, v11}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$002(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    if-eqz v17, :cond_26

    .line 188
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_26
    const/4 v0, 0x0

    :goto_25
    const/4 v11, 0x2

    if-ge v0, v11, :cond_29

    .line 193
    aget-object v11, v16, v0

    if-nez v11, :cond_28

    .line 194
    iget-object v11, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v11}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_27

    .line 195
    iget-object v11, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v15, v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$002(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    :cond_27
    const/4 v0, 0x0

    goto :goto_26

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_29
    const/4 v0, 0x1

    :goto_26
    if-nez v2, :cond_2a

    .line 201
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_2a
    const/4 v8, 0x0

    :goto_27
    const/4 v9, 0x2

    if-ge v8, v9, :cond_2b

    .line 204
    aget-object v9, v15, v8

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 206
    :cond_2b
    iget-object v8, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v8, v2, v7, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v6, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v6, v2, v5, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2c

    .line 209
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    const/4 v3, 0x0

    aget-object v5, v16, v3

    invoke-static {v0, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$102(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v5, v16, v4

    invoke-static {v0, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$202(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v5, v16, v3

    invoke-virtual {v0, v2, v12, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v3, v16, v4

    invoke-virtual {v0, v2, v10, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 215
    :cond_2c
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0, v2, v12, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0, v2, v10, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_28
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 219
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v11, v19

    invoke-virtual {v0, v2, v11, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v13, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :goto_29
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->getNativeContext()J

    move-result-wide v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v4, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$300(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;JLjava/lang/String;)V

    goto/16 :goto_2f

    :catchall_9
    move-exception v0

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    goto/16 :goto_30

    :catch_26
    move-object v14, v3

    move-object v3, v11

    move-object v11, v2

    const/4 v2, 0x0

    move-object/from16 v17, v2

    .line 165
    :goto_2a
    :try_start_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    move-object/from16 v18, v14

    :try_start_12
    const-string v14, "MediaTailor session URL is not valid: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->val$urlString:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    move-object/from16 v19, v11

    const/4 v14, 0x0

    :try_start_13
    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v13, v0, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    const-string v11, "Session URL is not valid"

    invoke-static {v0, v11}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$002(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    if-eqz v17, :cond_2e

    .line 188
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2e
    const/4 v0, 0x0

    :goto_2b
    const/4 v11, 0x2

    if-ge v0, v11, :cond_31

    .line 193
    aget-object v11, v16, v0

    if-nez v11, :cond_30

    .line 194
    iget-object v11, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v11}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2f

    .line 195
    iget-object v11, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v15, v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$002(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2c

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_31
    const/4 v0, 0x1

    :goto_2c
    if-nez v2, :cond_32

    .line 201
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_32
    const/4 v8, 0x0

    :goto_2d
    const/4 v9, 0x2

    if-ge v8, v9, :cond_33

    .line 204
    aget-object v9, v15, v8

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 206
    :cond_33
    iget-object v8, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v8, v2, v7, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v6, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v6, v2, v5, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v0, v4, :cond_34

    .line 209
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    const/4 v3, 0x0

    aget-object v5, v16, v3

    invoke-static {v0, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$102(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v5, v16, v4

    invoke-static {v0, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$202(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v5, v16, v3

    invoke-virtual {v0, v2, v12, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v3, v16, v4

    invoke-virtual {v0, v2, v10, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 215
    :cond_34
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0, v2, v12, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0, v2, v10, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_2e
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 219
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v11, v19

    invoke-virtual {v0, v2, v11, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v13, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_29

    :goto_2f
    return-void

    :catchall_a
    move-exception v0

    move-object/from16 v14, v18

    goto :goto_30

    :catchall_b
    move-exception v0

    :goto_30
    if-eqz v17, :cond_36

    .line 188
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_36
    move-object/from16 v17, v0

    move-object/from16 v18, v13

    const/4 v0, 0x0

    :goto_31
    const/4 v13, 0x2

    if-ge v0, v13, :cond_39

    .line 193
    aget-object v13, v16, v0

    if-nez v13, :cond_38

    .line 194
    iget-object v13, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v13}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_37

    .line 195
    iget-object v13, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    move-object/from16 v19, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v15, v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$002(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_32

    :cond_37
    move-object/from16 v19, v14

    :goto_32
    const/4 v0, 0x0

    goto :goto_33

    :cond_38
    move-object/from16 v19, v14

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_39
    move-object/from16 v19, v14

    const/4 v0, 0x1

    :goto_33
    if-nez v2, :cond_3a

    .line 201
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_3a
    const/4 v8, 0x0

    const/4 v9, 0x2

    :goto_34
    if-ge v8, v9, :cond_3b

    .line 204
    aget-object v13, v15, v8

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 206
    :cond_3b
    iget-object v8, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v8, v2, v7, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v6, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v6, v2, v5, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3c

    .line 209
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    const/4 v3, 0x0

    aget-object v5, v16, v3

    invoke-static {v0, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$102(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v5, v16, v4

    invoke-static {v0, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$202(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v5, v16, v3

    invoke-virtual {v0, v2, v12, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    aget-object v3, v16, v4

    invoke-virtual {v0, v2, v10, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 215
    :cond_3c
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0, v2, v12, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0, v2, v10, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_35
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 219
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v11, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v4, v18

    invoke-static {v4, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v0, v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->getNativeContext()J

    move-result-wide v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v4, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->access$300(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;JLjava/lang/String;)V

    .line 222
    throw v17
.end method
