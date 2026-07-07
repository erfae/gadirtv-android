.class public Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;
.super Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;
.source "VOOSMPMediaTailorTrackingAdaptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPMediaTailorTrackingAdaptor"


# instance fields
.field private final mAdaptor:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

.field private mContentURL:Ljava/lang/String;

.field private mSessionLoadingError:Ljava/lang/String;

.field private mTrackingTimer:Ljava/util/Timer;

.field private mTrackingTimerTask:Ljava/util/TimerTask;

.field private mTrackingURL:Ljava/lang/String;

.field nextMsg:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 76
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->nextMsg:I

    .line 67
    iput-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mAdaptor:Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mSessionLoadingError:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mContentURL:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mTrackingURL:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mTrackingTimer:Ljava/util/Timer;

    .line 73
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mTrackingTimerTask:Ljava/util/TimerTask;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPMediaTailorTrackingAdaptor"

    const-string v3, "Constructing VOOSMPMediaTailorTrackingAdaptor"

    .line 77
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq p0, p0, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mAdaptor != this"

    .line 79
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->initEventHandlerOnMainThread()V

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mSessionLoadingError:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mSessionLoadingError:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mContentURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mTrackingURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;JLjava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->nativeSendSDKEventToAdsMgr(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->downloadAdInfo()V

    return-void
.end method

.method private appendToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 341
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 342
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 343
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private downloadAdInfo()V
    .locals 6

    const-string v0, "@@@VOOSMPMediaTailorTrackingAdaptor"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 281
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mTrackingURL:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "GET"

    .line 283
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v4, "Mozilla/5.0"

    .line 284
    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Language"

    const-string v4, "en-US,en;q=0.5"

    .line 285
    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Encoding"

    const-string v4, "gzip,deflate"

    .line 286
    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0x12c

    if-ge v2, v4, :cond_2

    const-string v2, "gzip"

    .line 292
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 295
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 296
    :goto_0
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 298
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 299
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 300
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 302
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v3, :cond_3

    .line 326
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catch_0
    move-object v2, v3

    goto :goto_2

    :catch_1
    move-object v2, v3

    goto :goto_3

    :catch_2
    move-object v2, v3

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_3
    :goto_2
    :try_start_2
    const-string v3, "IO exception"

    new-array v1, v1, [Ljava/lang/Object;

    .line 322
    invoke-static {v0, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_3

    goto :goto_4

    :catch_4
    :goto_3
    const-string v3, "GET request is not supported"

    new-array v1, v1, [Ljava/lang/Object;

    .line 319
    invoke-static {v0, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    .line 326
    :goto_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    .line 316
    :catch_5
    :goto_5
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaTailor tracking URL is not valid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mTrackingURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    :goto_6
    return-void

    :goto_7
    if-eqz v2, :cond_4

    .line 326
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 327
    :cond_4
    throw v0
.end method

.method private downloadAdInfoInThread()V
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$3;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$3;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 275
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isDebug()Z
    .locals 4

    .line 333
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    .line 335
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPMediaTailorTrackingAdaptor"

    invoke-static {v3, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private native nativeSendSDKEventToAdsMgr(JLjava/lang/String;)V
.end method

.method private startTrackingThread()V
    .locals 7

    .line 238
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mTrackingURL:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mTrackingTimerTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPMediaTailorTrackingAdaptor"

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Tracking timer is not null (alreay started?)"

    .line 242
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Starting tracking"

    .line 246
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mTrackingTimer:Ljava/util/Timer;

    .line 248
    new-instance v2, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$2;

    invoke-direct {v2, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$2;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;)V

    iput-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mTrackingTimerTask:Ljava/util/TimerTask;

    .line 256
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mTrackingTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopTrackingThread()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPMediaTailorTrackingAdaptor"

    const-string v2, "Stopping tracking"

    .line 261
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mTrackingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mTrackingTimer:Ljava/util/Timer;

    .line 265
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->mTrackingTimerTask:Ljava/util/TimerTask;

    :cond_0
    return-void
.end method


# virtual methods
.method public init()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPMediaTailorTrackingAdaptor"

    const-string v3, "Init MediaTailor"

    .line 97
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "sessionUrl"

    .line 98
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "MediaTailor session URL is not set"

    .line 100
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;

    invoke-direct {v2, p0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor$1;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 224
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public initializeJavaSDK()Z
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->init()Z

    move-result v0

    return v0
.end method

.method public unInit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public unInitializeJavaSDK()Z
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;->unInit()Z

    move-result v0

    return v0
.end method
